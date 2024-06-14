import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradu_go/src/core/dependency_injection.dart';
import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/domain/use_case/authenticate_graduate_use_case.dart';
import 'package:gradu_go/src/domain/use_case/get_graduate_details_use_case.dart';
import 'package:gradu_go/src/helpers/util.dart';
import 'package:gradu_go/src/presentation/digital_id_card/digital_id_card_page.dart';

final class LoginFragment extends StatefulWidget {
  const LoginFragment(this.scaffoldKey);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<StatefulWidget> createState() => _LoginFragmentState();
}

final class _LoginFragmentState extends State<LoginFragment> {
  final TextEditingController _userTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();
  var _canLogin = true;

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.all(Util.defaultPadding),
        shrinkWrap: true,
        children: [
          _buildCredentials(),
          _buildDivider(),
          _buildContacts(),
          _buildCompanyLogo(),
        ],
      );

  Column _buildCredentials() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            controller: _userTEC,
            decoration: const InputDecoration(
              labelText: 'Usuário',
              hintText: 'CPF (somente números)',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            maxLength: 11,
            autofocus: true,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (term) =>
                FocusScope.of(context).requestFocus(_passwordFocusNode),
          ),
          TextFormField(
            controller: _passwordTEC,
            decoration: const InputDecoration(
              labelText: 'Senha',
              hintText: 'Data de nascimento (somente números)',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            obscureText: true,
            maxLength: 8,
            focusNode: _passwordFocusNode,
            onFieldSubmitted: (value) => _onLoginClick(),
          ),
          Util.buildSpaceBetweenWidgets(),
          _buildLoginButton(),
          Util.buildSpaceBetweenWidgets(),
        ],
      );

  FutureBuilder<Object?> _buildLoginButton() => FutureBuilder(
        future: null,
        builder: (context, snapshot) {
          return ElevatedButton(
            onPressed: _canLogin ? _onLoginClick : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            child: Text(
              _canLogin ? 'Entrar' : 'Entrando\u2026',
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      );

  Column _buildDivider() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[const Divider(), Util.buildSpaceBetweenWidgets()],
      );

  Widget _buildContacts() => Util.buildExternalWithDescription(
        context,
        'whatsapp://send?phone=+55012996270806',
        Util.whatsappImagePath,
        'NÃO CONSEGUE ACESSAR?',
        'Entre em contato conosco',
      );

  Widget _buildCompanyLogo() => Util.buildCompanyLogo(context);

  Future<void> _onLoginClick() async {
    _disableLoginButton();

    try {
      try {
        final authenticationResult =
            await getIt<AuthenticateGraduateUseCase>().invoke(
          credential: GraduateCredential(
            email: _userTEC.text,
            password: _passwordTEC.text,
          ),
        );
        if (authenticationResult != '1') {
          throw Exception('Usuário e/ou senha incorretos');
        }
      } catch (e) {
        throw Exception(
          'Falha na autenticação. Verifique seus dados e a conexão com a rede e tente novamente',
        );
      }

      final graduate =
          await getIt<GetGraduateDetailsUseCase>().invoke(id: _userTEC.text);
      if (graduate == null) throw Exception('Falha ao recuperar seus dados');

      if (mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) =>
                DigitalIdCard(graduate: graduate),
          ),
        );

        _userTEC.text = '';
        _passwordTEC.text = '';
      }
    } catch (e) {
      _showSnackBar(e.toString().replaceFirst('Exception: ', ''));
    } finally {
      _enableLoginButton();
    }
  }

  void _enableLoginButton() => setState(() => _canLogin = true);

  void _disableLoginButton() => setState(() => _canLogin = false);

  void _showSnackBar(String text) {
    final snackBar = SnackBar(content: Util.buildJustifiedText(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

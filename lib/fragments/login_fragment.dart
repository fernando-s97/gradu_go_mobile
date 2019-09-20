import 'package:celebra_club/dao/graduate_dao.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:celebra_club/pages/digital_id_card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginFragment extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  LoginFragment(this.scaffoldKey);

  @override
  State<StatefulWidget> createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFragment> {
  final TextEditingController _userTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();
  var _canLogin = true;

  @override
  Widget build(BuildContext context) => ListView(
          padding: EdgeInsets.all(Util.DEFAULT_PADDING),
          shrinkWrap: true,
          children: [
            _buildCredentials(),
            _buildDivider(),
            _buildContacts(),
            _buildCelebraLogo()
          ]);

  _buildCredentials() =>
      Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        TextFormField(
            controller: _userTEC,
            decoration: InputDecoration(
                labelText: 'Usuário', hintText: 'CPF (somente números)'),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            maxLength: 11,
            autofocus: true,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (term) =>
                FocusScope.of(context).requestFocus(_passwordFocusNode)),
        TextFormField(
            controller: _passwordTEC,
            decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Data de nascimento (somente números)'),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            obscureText: true,
            maxLength: 8,
            focusNode: _passwordFocusNode,
            onFieldSubmitted: (value) => _onLoginClick()),
        Util.buildSpaceBetweenWidgets(),
        _buildLoginButton(),
        Util.buildSpaceBetweenWidgets()
      ]);

  _buildLoginButton() => FutureBuilder(
      future: null,
      builder: (context, snapshot) {
        return Container(
            child: RaisedButton(
                child: Text(_canLogin ? 'Entrar' : 'Entrando\u2026',
                    style: TextStyle(color: Colors.white)),
                onPressed: _canLogin ? _onLoginClick : null,
                color: Theme.of(context).accentColor));
      });

  _buildDivider() => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[Divider(), Util.buildSpaceBetweenWidgets()]);

  _buildContacts() => Util.buildExternalWithDescription(
      context,
      'tel://+55012996270806',
      Util.PHONE_IMG_PATH,
      'NÃO CONSEGUE ACESSAR?',
      'Entre em contato conosco');

  _buildCelebraLogo() => Util.buildCelebraClubImage(context);

  _onLoginClick() async {
    _disableLoginButton();

    try {
      try {
        var authenticationResult =
            await GraduateDao.authenticate(_userTEC.text, _passwordTEC.text);
        if (authenticationResult != '1') {
          throw Exception('Usuário e/ou senha incorretos');
        }
      } catch (e) {
        throw Exception(
            'Falha na autenticação. Verifique seus dados e a conexão com a rede e tente novamente');
      }

      var graduatesList;
      try {
        graduatesList = await GraduateDao.read(_userTEC.text);
        if (graduatesList.isEmpty) {
          throw Exception('Formando não encontrado');
        }
      } on Exception {
        throw Exception('Falha ao recuperar seus dados');
      }

      try {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              DigitalIdCard(graduate: graduatesList[0]),
        ));
      } on Exception {
        throw Exception('Falha ao abrir sua carteirinha');
      }

      _userTEC.text = '';
      _passwordTEC.text = '';
    } catch (e) {
      _showSnackBar(e.toString().replaceFirst('Exception: ', ''));
    } finally {
      _enableLoginButton();
    }
  }

  _enableLoginButton() => setState(() => _canLogin = true);

  _disableLoginButton() => setState(() => _canLogin = false);

  _showSnackBar(String text) {
    final snackBar = SnackBar(content: Util.buildJustifiedText(text));
    widget.scaffoldKey.currentState.showSnackBar(snackBar);
  }
}

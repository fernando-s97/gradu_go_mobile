import 'package:gradu_go/src/helpers/util.dart';
import 'package:intl/intl.dart';

final class Graduate {
  Graduate.fromJson(Map<String, dynamic> json)
      : user = json[Graduate.userKey] as String,
        name = json[Graduate.nameKey] as String,
        program = json[Graduate.programKey] as String,
        institution = json[Graduate.institutionKey] as String,
        clientCode = json[Graduate.clientCodeKey] as String,
        project = json[Graduate.projectKey] as String,
        graduationDate =
            DateTime.parse(json[Graduate.graduationDateKey] as String),
        password = json[Graduate.passwordKey] as String;

  static const key = 'graduate';
  static const userKey = 'user';
  static const nameKey = 'name';
  static const programKey = 'program';
  static const institutionKey = 'institution';
  static const clientCodeKey = 'clientCode';
  static const projectKey = 'project';
  static const graduationDateKey = 'graduationDate';
  static const passwordKey = 'password';

  String user;
  String name;
  String program;
  String institution;
  String clientCode;
  String project;
  DateTime graduationDate;
  String password;

  Map<String, dynamic> toJson({bool toDatabase = false}) => {
        Graduate.userKey: user,
        Graduate.nameKey: name,
        Graduate.programKey: program,
        Graduate.institutionKey: institution,
        Graduate.clientCodeKey: clientCode,
        Graduate.projectKey: project,
        Graduate.graduationDateKey:
            DateFormat(Util.shortDateFormat).format(graduationDate),
        Graduate.passwordKey: password,
      };
}

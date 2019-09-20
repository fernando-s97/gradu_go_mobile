import 'package:celebra_club/helpers/util.dart';
import 'package:intl/intl.dart';

class Graduate {
  static const KEY = 'graduate';
  static const USER_KEY = 'user';
  static const NAME_KEY = 'name';
  static const PROGRAM_KEY = 'program';
  static const INSTITUTION_KEY = 'institution';
  static const CLIENT_CODE_KEY = 'clientCode';
  static const PROJECT_KEY = 'project';
  static const GRADUATION_DATE_KEY = 'graduationDate';
  static const PASSWORD_KEY = 'password';

  String user;
  String name;
  String program;
  String institution;
  String clientCode;
  String project;
  DateTime graduationDate;
  String password;

  Graduate(this.user, this.name, this.program, this.institution,
      this.clientCode, this.project, this.graduationDate, this.password);

  Graduate.fromJson(Map<String, dynamic> json)
      : user = json[Graduate.USER_KEY],
        name = json[Graduate.NAME_KEY],
        program = json[Graduate.PROGRAM_KEY],
        institution = json[Graduate.INSTITUTION_KEY],
        clientCode = json[Graduate.CLIENT_CODE_KEY],
        project = json[Graduate.PROJECT_KEY],
        graduationDate = DateTime.parse(json[Graduate.GRADUATION_DATE_KEY]),
        password = json[Graduate.PASSWORD_KEY];

  Map<String, dynamic> toJson({var toDatabase = false}) => {
        Graduate.USER_KEY: user,
        Graduate.NAME_KEY: name,
        Graduate.PROGRAM_KEY: program,
        Graduate.INSTITUTION_KEY: institution,
        Graduate.CLIENT_CODE_KEY: clientCode,
        Graduate.PROJECT_KEY: project,
        Graduate.GRADUATION_DATE_KEY:
            DateFormat(Util.SHORT_DATE_FORMAT).format(graduationDate),
        Graduate.PASSWORD_KEY: password
      };
}

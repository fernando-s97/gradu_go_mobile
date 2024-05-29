import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/helpers/util.dart';

final class Repository {
  static const cities = [
    Util.allCitiesKey,
    'São José dos Campos',
    'Jacareí',
    'Taubaté',
    'Caçapava',
    'Pindamonhangaba',
    'Guaratinguetá',
    'Lorena',
    'Minas Gerais',
    'Sorocaba',
  ];

  static const segments = [
    Util.allSegmentsKey,
    'Bar e Balada',
    'Cursos',
    'Estética e saúde',
    'Dentista',
    'Aluguel fantasias',
    'Alimentação',
    'Aluguel Trajes',
    'Academia e esportes',
    'Transporte',
    'Salão de beleza',
    'Barbeiro',
    'Hospedagem',
    'Seguros',
    'Jóias',
    'Gráfica',
    'Tatuagens',
    'Auto escola',
    'Óticas',
    'Informatica e Celulares',
    'Brindes',
  ];

  static List<Event> events = [];

  static List<Partner> partners = [];

  static List<Partner> allPartners = [];

  static String? currentCity;

  static String? currentSegment;

  static String? searchedPartner;

  static FilterType filterType = FilterType.name;
}

enum FilterType { name, citySegment }

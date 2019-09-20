import 'package:celebra_club/domain/event.dart';
import 'package:celebra_club/domain/partner.dart';
import 'package:celebra_club/helpers/util.dart';

class Repository {
  static const CITIES = [
    Util.ALL_CITIES_KEY,
    'São José dos Campos',
    'Jacareí',
    'Taubaté',
    'Caçapava',
    'Pindamonhangaba',
    'Guaratinguetá',
    'Lorena',
    'Minas Gerais',
    'Sorocaba'
  ];

  static const SEGMENTS = [
    Util.ALL_SEGMENTS_KEY,
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
    'Brindes'
  ];

  static List<Event> events = [];

  static List<Partner> partners = [];

  static List<Partner> allPartners = [];

  static String currentCity;

  static String currentSegment;

  static String searchedPartner;

  static FilterType filterType = FilterType.NAME;
}

enum FilterType { NAME, CITY_SEGMENT }

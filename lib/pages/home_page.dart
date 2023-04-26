import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:gikuyu_dictionary/models/dictionary.dart';
import 'package:gikuyu_dictionary/widgets/dictionary_list_widget.dart';

import '../widgets/appbar_widget.dart';

class HomePage extends StatefulWidget {
  final String alphabet;

  const HomePage({Key? key, required this.alphabet}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  bool isRef = false;

  late final List<Map<String, dynamic>> _allUsers;
  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    super.initState();
    // {
    //   "title": "_agu",
    // "desc1": "",
    // "desc2": "kuuga kīna gītironeka mūhano: mbūri nī njagu: kīnya nī kīagu",
    // "desc3": ""
    // },
    if(widget.alphabet == 'A') {
      _allUsers = [
        {
          "title": "(w)aki(ī)-",
          "desc1": "",
          "desc2": "kīhūthagīrwo mbere wa ciugo iria cionanagia gīīko kuonania mūndū mūna nīwe wekire ūndū ūcio",
          "desc3": ""
        },
        {
          "title": "_agu",
          "desc1": "",
          "desc2": "kuuga kīna gītironeka mūhano: mbūri nī njagu: kīnya nī kīagu",
          "desc3": ""
        },
        {
          "title": "a-",
          "desc1": "",
          "desc2": "īhūthagīrwo mbere wa ciugo iratarīria gīīko mūndū mūna akīarīrīria mūndū ūngī; kūūria andū arīkū; kuonania kwaga gūkena",
          "desc3": ""
        },
        {
          "title": "aatūmire",
          "desc1": "",
          "desc2": "nī kiugo kīhūthagīrwo kuga mūndū mūna nī we wacūngīrīirie ūndū mūna gwīkīka.",
          "desc3": ""
        },
        {
          "title": "abai",
          "desc1": "",
          "desc2": "ithe wa mūndū; kīhūthagīrwo nī arūme makīaria na arūme arīa angī; kīhūthagīrwo kūheana mūkana mūhano: abai ndikwīrire ndūteithīka ( Gīkuyu kia rûgongo )",
          "desc3": ""
        },
        {
          "title": "abaita",
          "desc1": "",
          "desc2": "kiugo gīa kuonania kūmakio na kūng'ūrīkio nī ūndū",
          "desc3": ""
        },
        {
          "title": "abo",
          "desc1": "",
          "desc2": "kiugo gīa kwīhīta kīhūthagīrwo nī atumia gīkagwetanīrio na mūhīrīga wa mwīhīti kana kiugo 'baba' mūhano: abo njirū itū ī,kūu ndingīkinya!; abo baba,ndingīkūhe o na kī!;  kiugo kīgwetagwo nī atumia gīkagwetanīrio na mūhīrīga wa mūndū ūrīa ūrakīgweta kuonania kūmaka mūhano: abo mbura itū ī!",
          "desc3": ""
        },
        {
          "title": "aca",
          "desc1": "",
          "desc2": " kūrega kana gūkararia ūndū",
          "desc3": ""
        },
        {
          "title": "acenji",
          "desc1": "",
          "desc2": "andū matigīte rūthiomi na mītugo yao ya kīmerera makoya rūthiomi ona mītugo ya andū angī,",
          "desc3": ""
        },
        {
          "title": "aciari",
          "desc1": "",
          "desc2": "andū arīa makūgīire ūgīūka thī īno; andū arīa makūrerete",
          "desc3": ""
        },
        {"title": "acūhia", "desc1": "", "desc2": "icūhia", "desc3": ""},
        {
          "title": "acūka",
          "desc1": "",
          "desc2": "kīndū gīa kūrīo kwagīra; itunda kwīrua na gūthakara; tīri kūniara ūndū ūngīrīmīka wega",
          "desc3": ""
        },
        {
          "title": "aga",
          "desc1": "",
          "desc2": "korwo ūtarī; korwo ūtekuona kīndū harīa kīrī",
          "desc3": ""
        },
        {
          "title": "agaga",
          "desc1": "",
          "desc2": "korwo ūtarī na thayū kana gīkindīrio",
          "desc3": ""
        },
        {
          "title": "agagia",
          "desc1": "",
          "desc2": "inania maī me handū thīiniī na hinya",
          "desc3": ""
        },
        {
          "title": "agagia",
          "desc1": "",
          "desc2": "tūma mūndū kana kīndū kīage thayū kana gīkindīrio;",
          "desc3": ""
        },
        {
          "title": "agagīra",
          "desc1": "",
          "desc2": "tuīka mwega kūrī ūrīa ūrarī mbere: tiga gūthūka mūno",
          "desc3": ""
        },
        {
          "title": "agana",
          "desc1": "",
          "desc2": "īka ciīko ironania wagi wa mītugo mīega",
          "desc3": ""
        },
        {
          "title": "aganu",
          "desc1": "",
          "desc2": "andū matarī mītugo mīega",
          "desc3": ""
        },
        {
          "title": "agarara",
          "desc1": "",
          "desc2": "hingīria mūndū ūndū mbere ya ūrīa wagīrīire kwanjia",
          "desc3": ""
        },
        {
          "title": "agarara",
          "desc1": "",
          "desc2": "hītūkīra igūrū rīa kīndū na njīra ya gūkīria kūgūrū kūmwe mbere ya kūrīa kūngī",
          "desc3": ""
        },
        {
          "title": "agarara",
          "desc1": "",
          "desc2": "una watho; regenyūka mītaratara īrīa mīheane",
          "desc3": ""
        },
        {
          "title": "agatha",
          "desc1": "",
          "desc2": "rehe mūcamo mūūru ūhana tarī gūthecathecwo mūhano: ngwacī njīthī tiyo ndūma, ndūma nī yagathaga",
          "desc3": ""
        },
        {
          "title": "agendi",
          "desc1": "",
          "desc2": "andū maumagarīte magathiī kūraya na kwao",
          "desc3": ""
        },
        {
          "title": "ageni",
          "desc1": "",
          "desc2": "andū mecerete handū",
          "desc3": ""
        },
        {
          "title": "agī-",
          "desc1": "",
          "desc2": "kiugo kīongagīrīrwo mbere wa ciugo ironania gīīko kuonania mūndū wekīte ūndū mūna mahinda mathiangu",
          "desc3": ""
        },
        {
          "title": "agīka",
          "desc1": "",
          "desc2": "igīrīra kīndū ta nyūngū riko-inī",
          "desc3": ""
        },
        {
          "title": "agīra",
          "desc1": "",
          "desc2": "tuīka mwega; tuīka kīega; hona mūrimu kana ndwari",
          "desc3": ""
        },
        {
          "title": "agīrīra",
          "desc1": "",
          "desc2": "ītīkīrīka harī kīndū, mūndū kana ūndū; kenia",
          "desc3": ""
        },
        {
          "title": "agīrīru",
          "desc1": "",
          "desc2": "andū arīa akinyanīru mūno ūndū-inī mūna",
          "desc3": ""
        },
        {
          "title": "agu",
          "desc1": "",
          "desc2": "guka; agu na agu: kuma tene wa tene kinya mīndī na mīndī",
          "desc3": ""
        },
        {
          "title": "agūthi",
          "desc1": "",
          "desc2": "aici; andū arīa matunyaga andū angī indo ciao",
          "desc3": ""
        },
        {
          "title": "ahia",
          "desc1": "",
          "desc2": "ingīrīra ūndū na mūkoroko mūhano: atongoria mathiaga kwahia nda ciao handū matungatīre mūingī",
          "desc3": ""
        },
        {
          "title": "ahīra",
          "desc1": "",
          "desc2": "hang'īra mūndū ūngī kīndū angīrīa mūhano:tonya hau riko wahīre mūnyanyaguo kanyamū ga kūrīa",
          "desc3": ""
        },
        {
          "title": "ai",
          "desc1": "",
          "desc2": "hai: haicū: kīhūthagīrwo kuonania mūthikīrīria nī agīa nganja na ūndū ūrīa erwo; kīhūthagīrwo kaingī nī andū maikangītie matukū kuonanīrīria kīndū: ici",
          "desc3": ""
        },
        {
          "title": "aikana",
          "desc1": "",
          "desc2": "īka igongona rīa kūrathima ūciari thīiniī wa andū-a-nja",
          "desc3": ""
        },
        {
          "title": "aīkania",
          "desc1": "",
          "desc2": "aikania",
          "desc3": ""
        },
        {
          "title": "aingī",
          "desc1": "",
          "desc2": "andū makīrīte ūmwe; andū makīrīte arīa marendekana",
          "desc3": ""
        },
        {
          "title": "aka",
          "desc1": "",
          "desc2": "thondeka kindu na njira ya gutura mbito, mbau kana mahiga",
          "desc3": ""
        },
        {
          "title": "akaa",
          "desc1": "",
          "desc2": "andū a mūhīrīga wa nga",
          "desc3": ""
        },
        {"title": "akana", "desc1": "", "desc2": "gwata mwaki", "desc3": ""},
        {"title": "akania", "desc1": "", "desc2": "tūma mwaki ūgwate", "desc3": ""},
        {
          "title": "akeni",
          "desc1": "",
          "desc2": "andū arīa mathurītwo magatuo agūtīyo nī Ngai; andū arīa matarī na kīeha",
          "desc3": ""
        },
        {
          "title": "(w)aki(ī)-",
          "desc1": "",
          "desc2": "kīhūthagīrwo mbere wa ciugo iria cionanagia gīīko kuonania mūndū mūna nīwe wekire ūndū ūcio",
          "desc3": ""
        },
        {"title": "akia", "desc1": "", "desc2": "gwatia mwaki", "desc3": ""},
        {"title": "akūra", "desc1": "", "desc2": "tharia: momora", "desc3": ""},
        {
          "title": "amba",
          "desc1": "",
          "desc2": "iga mūtego;iga kīndū gīa kūhīnga;thondeka hema īta gīikaro; iga kīndū gīkorwo kīyambīte; īka ūndū mbere ya gwīka ūndū ūngī",
          "desc3": ""
        },
        {"title": "ambata", "desc1": "", "desc2": "thiī na rūgongo", "desc3": ""},
        {
          "title": "ambīka",
          "desc1": "",
          "desc2": "rehe kīng'ang'a-inī; ambīrīria",
          "desc3": ""
        },
        {
          "title": "ambīra",
          "desc1": "",
          "desc2": "igīra mūtego; igīra kīndū gīa kūhīnga;",
          "desc3": ""
        },
        {
          "title": "ambīrīria",
          "desc1": "",
          "desc2": "gīa na kīanjio kīa ūndū ūgūthiī na mbere; anjia",
          "desc3": ""
        },
        {
          "title": "ambūra",
          "desc1": "",
          "desc2": "eheria mūtego; eheria kīhīīnga; eheria hema",
          "desc3": ""
        },
        {
          "title": "ambūrūrūka",
          "desc1": "",
          "desc2": "kūrūgūrūrūka  o rīmwe ta harī na ūūru; (mwaki kana rūhuho) kumīra o rīmwe na ūingī na hinya mūnene",
          "desc3": ""
        },
        {"title": "amu", "desc1": "", "desc2": "nī ūndū", "desc3": ""},
        {
          "title": "amūkīra",
          "desc1": "",
          "desc2": "kinyīrwo nī kīndū kana ūndū kuma he mūndū ūngī",
          "desc3": ""
        },
        {
          "title": "amūkīria",
          "desc1": "",
          "desc2": "ina rūīmbo thutha wa mūkūi",
          "desc3": ""
        },
        {
          "title": "amūra",
          "desc1": "",
          "desc2": "eheria harī indo, andū kana maūndū; tua kīndū kana mūndū tarī we mwega makīria",
          "desc3": ""
        },
        {
          "title": "ananga",
          "desc1": "",
          "desc2": "hūthīra indo na ūnūhi",
          "desc3": ""
        },
        {
          "title": "anda",
          "desc1": "",
          "desc2": "kīndū kūhihinya harīa kīnyitīrīire mūhano: ngū ici nguīte nī iranyanda ng'ong'o",
          "desc3": ""
        },
        {"title": "andamana", "desc1": "", "desc2": "rūrūngana ", "desc3": ""},
        {
          "title": "andandūka",
          "desc1": "",
          "desc2": "ararama; gīa na meciria maariī",
          "desc3": ""
        },
        {
          "title": "andandūra",
          "desc1": "",
          "desc2": "cūngīrīria kwararama; cūngīrīria kūgīa na meciria mariī",
          "desc3": ""
        },
        {
          "title": "andīka",
          "desc1": "",
          "desc2": "cana ūhoro ibuku-inī",
          "desc3": ""
        },
        {
          "title": "andū",
          "desc1": "",
          "desc2": "ciūmbe cia mūhīrīga wa akaa na arūme",
          "desc3": ""
        },
        {"title": "andū-a-njaa", "desc1": "", "desc2": "akaa", "desc3": ""},
        {
          "title": "andwo",
          "desc1": "",
          "desc2": "hihinywo nī kīndū ūkuīte kana gīkwīnyitīrīire handū hana mūhano: ndīrandwo nī nguo īno njohero-inī ; hihinywo nī irio kana maī mūmero-inī kana nda",
          "desc3": ""
        },
        {
          "title": "anga",
          "desc1": "",
          "desc2": "nganja; kiugo kīhūthagīrwo na kīnyūrūri kuuga kuoguo mūhano: anga ndūngīhotire kūrīma?; kīhūthagīrwo kuuga 'kuoguo' kuonania mwaria nī amenya ūndū mūna mūhano: anga ndūnahota gūthiī?",
          "desc3": ""
        },
        {"title": "angaīka", "desc1": "", "desc2": "ikara na mwagago", "desc3": ""},
        {
          "title": "angī-",
          "desc1": "",
          "desc2": "mū3    kīongagīrīrīrwo harī ciugo cia gīīko kuuga mūndū ūcio korwo eka ūndū mūna, ūna no woneke",
          "desc3": ""
        },
        {
          "title": "ania",
          "desc1": "",
          "desc2": "mūgambīre wa nyamū ta mbūri, ng'ombe kana nyau",
          "desc3": ""
        },
        {
          "title": "ania",
          "desc1": "",
          "desc2": "tambūrūkia rūhī kana thani nīguo wīkīrīrwo kīndū ho",
          "desc3": ""
        },
        {
          "title": "anīka",
          "desc1": "",
          "desc2": "iga kīndū riūa-inī nīguo kīūme",
          "desc3": ""
        },
        {
          "title": "anīka",
          "desc1": "",
          "desc2": "kwarīrīria ūhoro mūhithe kīng'ang'a-inī",
          "desc3": ""
        },
        {
          "title": "anīrīra",
          "desc1": "",
          "desc2": "aria na mūgambo mūnene",
          "desc3": ""
        },
        {
          "title": "anīrīria",
          "desc1": "",
          "desc2": "iga kīndū handū nīguo kīndū kīraitīka gītonye ho; tūma kīndū kīraruta mūgambo, ta tibii, kīongerere mūgambo kīūrute wī mūnene",
          "desc3": ""
        },
        {
          "title": "anjanja",
          "desc1": "",
          "desc2": "aria na kanua monjore; aria ūtarī na gīthimi",
          "desc3": ""
        },
        {
          "title": "anjia",
          "desc1": "",
          "desc2": "tuīka wa mbere gwīka ūndū mūna",
          "desc3": ""
        },
        {"title": "anjīrīria", "desc1": "", "desc2": "ambīrīria", "desc3": ""},
        {
          "title": "anūka",
          "desc1": "",
          "desc2": "gambūrūrūka o rīmwe na mūgambo mūnene",
          "desc3": ""
        },
        {"title": "anūra", "desc1": "", "desc2": "curūria", "desc3": ""},
        {
          "title": "anūra",
          "desc1": "",
          "desc2": "eheria riūa-inī; hūra mbara ",
          "desc3": ""
        },
        {
          "title": "anyu",
          "desc1": "",
          "desc2": "arīa mwītainwo nao na njīra ya rūrīra kana mūhīrīga",
          "desc3": ""
        },
        {
          "title": "ara",
          "desc1": "",
          "desc2": "andū marī mīgendere ya kwīhithanīra",
          "desc3": ""
        },
        {
          "title": "ara",
          "desc1": "",
          "desc2": "mweri kana riūa kumīra na gūcangararia ūtheri",
          "desc3": ""
        },
        {
          "title": "ara",
          "desc1": "",
          "desc2": "tambūrūkia igūrū rīa kīndū kana handū haraganu",
          "desc3": ""
        },
        {
          "title": "ara",
          "desc1": "",
          "desc2": "iga ūrūmanīrīirie na mūtaratara mūna; tambūrūkia mūhano: ara ūrīrī waku macuka macio ; ania mūhano: ara guoko ngwīkīrīre irio",
          "desc3": ""
        },
        {
          "title": "aragana",
          "desc1": "",
          "desc2": "tambūrūka hatarī kīndū kīrī igūrū rīa kīngī; thī gūtambūrūka gūtarī irīma kana mīkuru",
          "desc3": ""
        },
        {
          "title": "aragania",
          "desc1": "",
          "desc2": "kūiga ūndū hatarī gīkomeire kīrīa kīngī",
          "desc3": ""
        },
        {
          "title": "aragūri",
          "desc1": "",
          "desc2": "andū arīa mataūraga maūndū marīa maroneka ",
          "desc3": ""
        },
        {
          "title": "araha ",
          "desc1": "",
          "desc2": "kūiyūra handū haraganu: mūhano: maī marahīte kīwaanja gīothe",
          "desc3": ""
        },
        {
          "title": "arahūka",
          "desc1": "",
          "desc2": "uma toro; uma thīinī wa ūndū ūrīa ūrakuohete meciria-inī; ūkīra",
          "desc3": ""
        },
        {
          "title": "arahūra",
          "desc1": "",
          "desc2": "ūkīria kuuma toro; tūma mūndū aikare eiguīte maūndū-inī",
          "desc3": ""
        },
        {
          "title": "aramati",
          "desc1": "",
          "desc2": "arīa matigīiruo ūndū kana kīndū makīrore ithenya-inī rīa mwene",
          "desc3": ""
        },
        {
          "title": "aranīria",
          "desc1": "",
          "desc2": "heana ūhoro mūndū na ūrīa ūngī",
          "desc3": ""
        },
        {
          "title": "arara",
          "desc1": "",
          "desc2": "hutia tarī kūhutīrīria igūrū nīguo ūhorerie",
          "desc3": ""
        },
        {
          "title": "arata",
          "desc1": "",
          "desc2": "andū arīa marī thiritū na ūiguano mūnene",
          "desc3": ""
        },
        {
          "title": "arī",
          "desc1": "",
          "desc2": "ciana cia mūndū mūna cia mūhīrīga wa andū-anja",
          "desc3": ""
        },
        {
          "title": "arīa",
          "desc1": "",
          "desc2": "kiugo gīa gūtarīria andū mararī ho ihinda rīhītūku",
          "desc3": ""
        },
        {
          "title": "arīa",
          "desc1": "",
          "desc2": "kiugo gīa kuonanīrīria andū me gatīīna karaihu",
          "desc3": ""
        },
        {"title": "aria", "desc1": "", "desc2": "ruta ūhoro na kanua", "desc3": ""},
        {
          "title": "aro-",
          "desc1": "",
          "desc2": "kīhūthagīrwo mbere wa ciugo cia gīīko kuuga arīa mekaga ūndū mūna mūhano: arogi kuma he kiugo roga; kuonania mūndū akīendera mūndū ūndū mūna mūhano: arotoma, arotonga",
          "desc3": ""
        },
        {
          "title": "arūka",
          "desc1": "",
          "desc2": "ingīrīra ūndū kana mūndū na njīra nene",
          "desc3": ""
        },
        {"title": "arūka", "desc1": "", "desc2": "korwo ūtarī mware", "desc3": ""},
        {
          "title": "arūme",
          "desc1": "",
          "desc2": "andū a mūhīrīga wa njamba",
          "desc3": ""
        },
        {
          "title": "arunya",
          "desc1": "",
          "desc2": "nyitwo nī ruo tarī rwa gūciara",
          "desc3": ""
        },
        {
          "title": "arutani",
          "desc1": "",
          "desc2": "andū arīa meheragia ūndū ūyū, magekīra ūrīa ūngī meciria-inī ma mūndū",
          "desc3": ""
        },
        {"title": "atendi", "desc1": "", "desc2": "andū aganu ", "desc3": ""},
        {
          "title": "atene",
          "desc1": "",
          "desc2": "arīa maarī kuo mbere mahinda mathiangu",
          "desc3": ""
        },
        {
          "title": "atha",
          "desc1": "",
          "desc2": "thamakīra na njīra ya mawatho marīa matuītwo",
          "desc3": ""
        },
        {
          "title": "athamaki",
          "desc1": "",
          "desc2": "athuri arīa mehokerwo gūtongoria rūrīrī kana būrūri wa Agīkūyū",
          "desc3": ""
        },
        {
          "title": "athamia",
          "desc1": "",
          "desc2": "hingūra kanua gothe",
          "desc3": ""
        },
        {
          "title": "atheri",
          "desc1": "",
          "desc2": "andū anaa marī oike hatarī angī",
          "desc3": ""
        },
        {
          "title": "athīiniī",
          "desc1": "",
          "desc2": "andū arīa makuhīrīirie mūndū mūna mūno",
          "desc3": ""
        },
        {
          "title": "athika",
          "desc1": "",
          "desc2": "mūndū arīkia kumbīka kīndū rungu rwa tīīri kana handū hangī ta hau",
          "desc3": ""
        },
        {
          "title": "athīka",
          "desc1": "",
          "desc2": "rūmīrīra mītaratara kana mawatho marīa mathane ūtekwagarara",
          "desc3": ""
        },
        {
          "title": "athīni",
          "desc1": "",
          "desc2": "andū arīa matarī indo cia kūmaigana",
          "desc3": ""
        },
        {
          "title": "athuri",
          "desc1": "",
          "desc2": "arūme arīa mahikanītie",
          "desc3": ""
        },
        {
          "title": "atī",
          "desc1": "",
          "desc2": "kīhūthagīrwo kuonania mwarīrio ndanaigua kana ndanataūkwo nī ūhoro na no ende ugwo rīngī",
          "desc3": ""
        },
        {
          "title": "atia",
          "desc1": "",
          "desc2": "atūra na gatagati: mūhano, atia itharigo ūrute tombo",
          "desc3": ""
        },
        {
          "title": "atio",
          "desc1": "",
          "desc2": "cinwo nī riūa; tuurwo; cucīka",
          "desc3": ""
        },
        {
          "title": "atīrī",
          "desc1": "",
          "desc2": "atīrīrī; kiugo gīkī kīhūthagīrwo kūgucīrīria andū maigue ūhoro; thikīrīria",
          "desc3": ""
        },
        {
          "title": "atūka",
          "desc1": "",
          "desc2": "kīndū kūgīa na mūgayūkano gīkarekania; gīa na ngarari igūcūngīrīria ngayūkano",
          "desc3": ""
        },
        {
          "title": "atumia",
          "desc1": "",
          "desc2": "andū-anja arīa ahiku",
          "desc3": ""
        },
        {
          "title": "atūra",
          "desc1": "",
          "desc2": "amūrania kīndū kīnyitanu ūkīhūthīra kīndū ta kahiū kūgayūkania",
          "desc3": ""
        },
        {
          "title": "aūra",
          "desc1": "",
          "desc2": "ruta matonyo; ruta mūrigo igūrū rīa mūndū ūwūige thī",
          "desc3": ""
        },
        {
          "title": "awa",
          "desc1": "",
          "desc2": "mūciari mūndūrūme; Ngai",
          "desc3": ""
        },
        {
          "title": "aya",
          "desc1": "",
          "desc2": "mu3 ūyū; icūhia mūtī ume kīndū ta mwatū; anjia ūndū mūhano: ūkwaya kūhanda gūtarī kūrīme",
          "desc3": ""
        },
        {
          "title": "ayūwa",
          "desc1": "",
          "desc2": "aīwa: wayūa: ndūrūme īheagwo nyina wa mūirītu nī mwanake ūrīa ūmūhikītie",
          "desc3": ""
        },
        {
          "title": "aūka",
          "desc1": "",
          "desc2": "kīndū mūndū eigīrīire ta nguo kana mūrigo kūgwa",
          "desc3": ""
        },
        {
          "title": "aūkwo",
          "desc1": "",
          "desc2": "umwo nī nguo; ehererwo nī mūrigo ūgūkuīte; ehererwo nī ūndū mūritū ūgūgūthīnagia",
          "desc3": ""
        }
      ];

    }
    if(widget.alphabet == 'B') {
       _allUsers = [{"title":"_bataire","desc1":"","desc2":"batara mūhano: ūbataire mbeca cigana cia kūrīha irio?; bataire gūkaroka kuo tene nīguo ndīmakorerere","desc3":""},{"title":"_batiī","desc1":"","desc2":"_bataire","desc3":""},{"title":"baaca","desc1":"","desc2":"hūra nguo baathi; tuga mūgeni","desc3":""},{"title":"baba","desc1":"maithe","desc2":"mūciari mūndūrūme","desc3":""},{"title":"babaya","desc1":"","desc2":"moca; butha","desc3":""},{"title":"babura","desc1":"","desc2":"bebera ","desc3":""},{"title":"baca","desc1":"","desc2":"ūndū mūna gūthiī ūūru ūrīa ūtekwendetwo ūthiī; mūtabarīre wa rwīmbo gūthūka","desc3":""},{"title":"bacana","desc1":"","desc2":"gūa thī ūūru","desc3":""},{"title":"bacania","desc1":"","desc2":"rekania thī ūtarī na ūbacīrīri","desc3":""},{"title":"bacia","desc1":"","desc2":"remwo nī kūrūmīrīra mūtaratara; remwo nī kūrūmīrīra mūtaratara rūīmbo-inī","desc3":""},{"title":"bacia","desc1":"","desc2":"cūngīrīria kūbaca","desc3":""},{"title":"bacīrīra","desc1":"","desc2":"korwo na wīigīrīrīki mūnene mwīkīre-inī wa ūndū mūna","desc3":""},{"title":"bagabaga","desc1":"","desc2":"kwaga gīkindīrio","desc3":""},{"title":"baithikiri","desc1":"","desc2":"maithikiri","desc3":""},{"title":"bana","desc1":"","desc2":"gīrima; gemia na njano: cana","desc3":""},{"title":"banga","desc1":"mabanga","desc2":"kiswahili rūhiū rwa gūtinia indo kana gūtua mahuti","desc3":""},{"title":"bangiri","desc1":"","desc2":"mathaga mekagīrwo moko","desc3":""},{"title":"bangūra","desc1":"","desc2":"iga indo ikūigītwo na mūtaratara hatarī na mūtaratara","desc3":""},{"title":"banya","desc1":"","desc2":"manya","desc3":""},{"title":"bara","desc1":"","desc2":"rora na njīra ndikīru","desc3":""},{"title":"bara\/barabara","desc1":"kiswahili","desc2":"njīra nene","desc3":""},{"title":"barabaria","desc1":"","desc2":"hutia kīndū kīinaine na kīgambe ta mahuti momū mahurutītwo nī rūhuho; īhīkahīka","desc3":""},{"title":"baracūka","desc1":"","desc2":"atūka ume rekerecū rūnene","desc3":""},{"title":"baragacūka","desc1":"","desc2":"ūmagara watūkange","desc3":""},{"title":"baraganya","desc1":"","desc2":"kūndū kūūmū: rūng'ūrī; nyūmba ītarī ngae thīiniī; indo kūharagana itarī na mūrori","desc3":""},{"title":"baragu","desc1":"","desc2":"mūthuri gītonga","desc3":""},{"title":"baranīki","desc1":"","desc2":"mūcūthi wa ngwacī wī na maguta ma nyamū","desc3":""},{"title":"barara","desc1":"","desc2":"mūhari warītwo nī andū marūgamīte o mwena wa ūrīa ūngī","desc3":""},{"title":"baribari","desc1":"","desc2":"inegene rīa mahuti makīhurutwo nī rūhuho; ngūī; mbeca kūneanwo i hamwe hatarī thiirī: mbeca kūneanwo irī mbeca cio nyene","desc3":""},{"title":"barigici","desc1":"","desc2":"mūthenya kūrī na ūtheri wa riūa","desc3":""},{"title":"barikūi","desc1":"","desc2":"ng'ombe īna rūnyaga rwa gītīīri rūtarī rūcamu","desc3":""},{"title":"barikūma","desc1":"","desc2":"mūthaiga wa aturi wa kūingata mbura","desc3":""},{"title":"barita","desc1":"","desc2":"nyoni kūrūgarūga īkīhūrithagia mathagu; kwarahūkīra ūndū na njīra īna mwago","desc3":""},{"title":"bata","desc1":"mabata","desc2":"ūndū ūrīa ūrendekana nīguo ūndū mūna ūhotekeke","desc3":""},{"title":"bata","desc1":"","desc2":"kwenda gwīteithia; kūmīa kana gūthuguma","desc3":""},{"title":"bata","desc1":"","desc2":"kunya","desc3":""},{"title":"bata","desc1":"","desc2":"nyoni kūhūrithania mathagu","desc3":""},{"title":"batara","desc1":"","desc2":"kwenda ūndū nīgetha ūndū ūngī ūhinge","desc3":""},{"title":"batha","desc1":"","desc2":"tonga","desc3":""},{"title":"bathabatha","desc1":"","desc2":"gīa na ūtonga wīigananīirie","desc3":""},{"title":"bathi","desc1":"","desc2":"Kiswahili kīndū gīkagīrwo makara ma mwaki kana gīkahiūhio na thitima gīkahūthīrwo kūnyorokia nguo","desc3":""},{"title":"bathīka","desc1":"","desc2":"tongororoka","desc3":""},{"title":"bathitora","desc1":"","desc2":"Kiswahili bastola mūcinga mūnini wa gūikia njirūngi","desc3":""},{"title":"batīrī","desc1":"","desc2":"Latin padre mūhunjia wa kanitha wa Roma kana ūngī wa mūtaratara ta ūcio","desc3":""},{"title":"batithia","desc1":"","desc2":"Greek baptizo: Kiswahili batiza igongona rīa kūrinda maī-inī ","desc3":""},{"title":"batūra","desc1":"","desc2":"atūra mūtī icere ume mbaū","desc3":""},{"title":"bebera","desc1":"","desc2":"unanga ngerecū nyingī; thethera","desc3":""},{"title":"bebere","desc1":"","desc2":"kūbeberwo: mūhano: mahīndī make marabeberetwo bebere","desc3":""},{"title":"bebeta","desc1":"","desc2":"mūrimū wa kūgīa mwīthūa mwīrī","desc3":""},{"title":"bebeta","desc1":"","desc2":"tanuka mbembe kuma mūcakwe-inī kana kīndū kīngī kīngīrīo ūguo mūhano: Wandahuhu abebeta kagwa kagima ndīmwīroreire","desc3":""},{"title":"beca","desc1":"","desc2":"aria na ngoro yaku yothe; aria na inegene rīingī","desc3":""},{"title":"becū","desc1":"","desc2":"ngū njeke mūno itangīhīithia irio; o ūguo mūhano: tiga gūikara becū; o ūguo hatarī kīharīro","desc3":""},{"title":"becūra","desc1":"","desc2":"atūra kīndū kiume ngerecū","desc3":""},{"title":"bengi","desc1":"","desc2":"English bank kūrīa kūigagwo na gūgakombithanio mbeca","desc3":""},{"title":"bengū","desc1":"","desc2":"kiswahili macegera ma kuoha andū","desc3":""},{"title":"berecūra","desc1":"","desc2":"becūra","desc3":""},{"title":"berū","desc1":"","desc2":"becū; mūkana wa kwīrwo ndūkarie ūtumie","desc3":""},{"title":"bethūra","desc1":"","desc2":"una na njīra ya kūrutania na hinya","desc3":""},{"title":"betinarī","desc1":"","desc2":"English veterinary mūrigiti wa mahiū ","desc3":""},{"title":"betūrū","desc1":"","desc2":"English petrol mūthemba wa maguta ma gūtwarithia injini","desc3":""},{"title":"bibūi","desc1":"","desc2":"mīīro: irima rīa kūrutīra kīoro kīnene","desc3":""},{"title":"bicirīra","desc1":"","desc2":"thirūo nī hinya","desc3":""},{"title":"bīgī","desc1":"","desc2":"nyūmba ndirike itatūragwo","desc3":""},
         {
           "title":"bīndu",
           "desc1":"",
           "desc2":"nyamū theūku mwīrī; English kīndū kiumīte rūnyaga rūrīa rūcamu gīgatigwo kīhunyūkīrīire",
           "desc3":""

         },
         {
           "title":"bīndu",
           "desc1":"",
           "desc2":"ng'ombe īna rūnyaga rwa kībīndu",
           "desc3":""

         },
         {"title":"bīra","desc1":"","desc2":"thiūrūrūkia na hinya","desc3":""},{"title":"bīrīrīka","desc1":"","desc2":"thiūrūrūka na hinya","desc3":""},{"title":"biū","desc1":"","desc2":"gīkīro kīnene","desc3":""},{"title":"boboto","desc1":"","desc2":"mbura nene; maī marauma handū na hinya mūnene","desc3":""},{"title":"boi","desc1":"","desc2":"thome; nja īrīa ī mbere wa nyūmba","desc3":""},{"title":"borora","desc1":"","desc2":"itūrūra; gūita indo ikoima na wūingī","desc3":""},{"title":"bubu","desc1":"","desc2":"mūndū ūtaragia","desc3":""},{"title":"bucuca","desc1":"","desc2":"magego ma marīa mameraga mbere kwanjia kuuma nīguo mangī mamere","desc3":""},{"title":"bucuna","desc1":"","desc2":"hīa nī marakara","desc3":""},{"title":"buīria","desc1":"","desc2":"irīria","desc3":""},{"title":"būrūbūrū","desc1":"","desc2":"tūcuma twī na mūhianīre wa gīthiūrūrī; njirūngi irīa ciikagio na mūcinga","desc3":""},{"title":"burugīi","desc1":"","desc2":"mūgūnda mūhīnju; baraganya","desc3":""},{"title":"būrūri","desc1":"mabūrūri","desc2":"kūndū kwīnyitīirwo nī andu magagūtua kwao na makagīa na mītaratara ya mwathanīre wao","desc3":""},{"title":"buta","desc1":"","desc2":"munya njoya","desc3":""},{"title":"butha","desc1":"","desc2":"ora;mumuthūka thutha wa gūkua","desc3":""},{"title":"būthi","desc1":"","desc2":"magetha maingī","desc3":""},{"title":"buthūka","desc1":"","desc2":"tuīkanga ūrekanie","desc3":""},{"title":"buuta","desc1":"kiswahili","desc2":"ingata mūndū wīra harīa aronaga mūcaara","desc3":""},{"title":"buya","desc1":"","desc2":"munya njuīrī; buta","desc3":""}];

    }
    if(widget.alphabet == 'C') {
        _allUsers = [{"title":"cabi","desc1":"macabi","desc2":"kīndū gīthondeketwo gī gīa kūhinga kana kūhingūra handū hatangīhingūrīka na kīngī tiga kīo","desc3":""},{"title":"caca","desc1":"","desc2":"gīa kwa wūingī; īkīka na njīra nene","desc3":""},{"title":"cacaīka","desc1":"","desc2":"hatīrīrio nī ruo kinya ūrūo nī hinya; ikara ta wī na ruo na ūkorwo nī hinya","desc3":""},{"title":"cacī","desc1":"","desc2":"mwīgatho kaingī wa kinya kīrīa ūtarī","desc3":""},{"title":"cacia","desc1":"","desc2":"atūra kīndū kiume njatū njeke","desc3":""},{"title":"cacu","desc1":"njacu","desc2":"hīnju īkaaga hinya","desc3":""},{"title":"cagacia","desc1":"","desc2":"ihūgia na maī matekwaraha; rwario rwa mwanya gūthūkia ūndū uma mūtabarīre wega","desc3":""},{"title":"cai","desc1":"","desc2":"Kiswahili chai","desc3":""},{"title":"caīra","desc1":"","desc2":"iguīra tha","desc3":""},{"title":"cakara","desc1":"","desc2":"hunyūka","desc3":""},{"title":"cakaya","desc1":"","desc2":"girīka nī kīeha gīa gūkuīrwo","desc3":""},{"title":"cama","desc1":"","desc2":"mūcamo mwega; kīndū gīa kuongerera mūcamo kūnyita; rūnyaga kūnyita wega harīa rūkūhakagwo; ekera kindū kanua kana ūkīhutie na rūrīmī niguo wīigue mūcamo wa kīo","desc3":""},{"title":"camania","desc1":"","desc2":"cemania: koranīrīra na mūndū handū","desc3":""},{"title":"cambia","desc1":"","desc2":"kwarīrīria na njīra njūru ya gūthūkīrīria","desc3":""},{"title":"camiū","desc1":"","desc2":"thanju njeke","desc3":""},{"title":"camūra","desc1":"","desc2":"gūtha na hinya ūkīhūthīra thanju njeke; therūkia kīndū gītweku ta iria kana maī","desc3":""},{"title":"cana","desc1":"","desc2":"tema njano; tema ndemwa ingītaūrīka ta ūhoro","desc3":""},{"title":"canda","desc1":"","desc2":"ina gīcandī","desc3":""},{"title":"canga","desc1":"","desc2":"kwaga gūtaūkīka","desc3":""},{"title":"canga","desc1":"","desc2":"onganīrīria indo cia gwīka ūndū mūna","desc3":""},{"title":"cangacanga","desc1":"","desc2":"ūrūra ta ūtarī na thayū kana kīhurūko","desc3":""},{"title":"cangamūka","desc1":"","desc2":"canjamūka","desc3":""},{"title":"cang'ang'a","desc1":"","desc2":"ndeto cia tūhū itarī na ūguni","desc3":""},{"title":"cangarara","desc1":"","desc2":"henia na ūtheri mwega wa gūkenia maitho","desc3":""},{"title":"cangararūka","desc1":"","desc2":"gūcangarara na gīkīro kīnene","desc3":""},{"title":"canjamūka","desc1":"","desc2":"kenūka; ikara ūtarī na kīeha kana guoya","desc3":""},{"title":"canūka","desc1":"","desc2":"ūhīgīrīra maūndū-inī ma mūtūrīre; njuīrī kana guoya gūkorwo ītogothanīte; kenerera ūtonga","desc3":""},{"title":"canūka","desc1":"","desc2":"ruta kīro: gīa na mahūa","desc3":""},
          {
            "title":"canūra",
            "desc1":"",
            "desc2":"ogothanūra njuīrī kana guoya; ūhīgia maūndū-inī ma mūtūrīre",
            "desc3":""
          },
          {
            "title":"cararūkū",
            "desc1":"",
            "desc2":"ūhoro kūheanwo ūrīa ūtariī ūtarī mūhithīrīre",
            "desc3":""
          },
          {"title":"caria","desc1":"","desc2":"etha ","desc3":""},{"title":"carīka","desc1":"","desc2":"atūkanga tūcere tūnini tūingī tūkūrūgarūga tūgīatūka","desc3":""},{"title":"carīkia","desc1":"","desc2":"gwatūra tūcere tūingī tūkūrūgarūga tūgīatūka","desc3":""},{"title":"caya","desc1":"","desc2":"hihia na ruo; igua tha","desc3":""},{"title":"ceceni","desc1":"","desc2":"English: station handū harīa hamūrītwo he ha kūrūgamwo nī mīgithi kana ngari; mūtambo wa rediū kana tiibi","desc3":""},
          {
            "title":"ceeha",
            "desc1":"",
            "desc2":"tinia kīndū kīīgwatīrīire handū nīguo ūkīamūranie",
            "desc3":""
          },
          {
            "title":"cehūra",
            "desc1":"",
            "desc2":"kiugo gīa kīnyūrūri mūndū wīyendagia mwīrī wake na wara akomwo nake akarīhwo",
            "desc3":""
          },
          {"title":"cekeha","desc1":"","desc2":"hīnja; korwo ūtarī mūtungu kana mūnoru","desc3":""},{"title":"cema","desc1":"","desc2":"thiī ūkinyūkītie kahora ūtegūkubia makinya; rora maūndū ūtarī na ihenya namo","desc3":""},{"title":"cemania","desc1":"","desc2":"rora camania","desc3":""},{"title":"cembia","desc1":"","desc2":"uma handū kahora ūtekuonwo","desc3":""},{"title":"cendūka","desc1":"","desc2":"ehera gwa kahinda no nī ūgūcoka","desc3":""},{"title":"ceneneka","desc1":"","desc2":"korwo na mūcene","desc3":""},{"title":"cenga","desc1":"","desc2":"herithia mūndū mūthako-inī wa gūteng'erania na gūtunyana kīndū","desc3":""},{"title":"ceng'ū","desc1":"","desc2":"rīingīrīro rītarī rīhinge; kīng'eū","desc3":""},{"title":"ceng'ūka","desc1":"","desc2":"mūromo kūhingūka;ng'eūka","desc3":""},{"title":"ceng'ūra","desc1":"","desc2":"hingūra mūromo ūtigwo o ūguo ūrī kīng'eū","desc3":""},
          {
            "title":"cenia",
            "desc1":"",
            "desc2":"mbura kūrūgama kuura gwa kahinda",
            "desc3":""
          },
          {
            "title":"cera",
            "desc1":"",
            "desc2":"hurahuria thī ūtekwenja mūno; rīma mūgūnda ūtekūrikia mūno; huria makara kuma mumbo-inī; arīrīria ndeto njūru cia gūcambia mūndū",
            "desc3":""
          },
          {
            "title":"cera",
            "desc1":"",
            "desc2":"gena",
            "desc3":""
          },
          {
            "title":"cerehūra",
            "desc1":"",
            "desc2":"amūrania hatarī na ūbacīriri",
            "desc3":""
          },
          {
            "title":"chachachachacha",
            "desc1":"",
            "desc2":"kiugo gīa gūtarīria mūitīkīre wa tūnyamū tūnini mūhano: thuraku iraitīka chachachachacha",
            "desc3":""
          },
          {
            "title":"chi",
            "desc1":"",
            "desc2":"kiugo gīa kwerethera wūirū kuga kīna nī kīirū biū mūhano: ūtuku wa gūkīa ūmūthī uma na nduma njirū chi gūtikuonanagwo",
            "desc3":""
          },
          {
            "title":"chi",
            "desc1":"",
            "desc2":"kiugo gīa gūtarīria wūirū mūhano: Kīirū nī mūirū chi",
            "desc3":""
          },
          {
            "title":"chwa",
            "desc1":"",
            "desc2":"cwa",
            "desc3":""
          },
          {
            "title":"cia",
            "desc1":"",
            "desc2":"indo ikonainio na kīndū kana mūndū mūna",
            "desc3":""
          },{"title":"ciacio","desc1":"","desc2":"indo ikonainio na indo naa","desc3":""},{"title":"ciake","desc1":" ciao","desc2":"indo ikonainio na mūndū mūna","desc3":""},{"title":"ciaku","desc1":"cianyu","desc2":"indo ikonainio na mūndū ūrīa ūrarīrio","desc3":""},{"title":"ciakwa","desc1":"ciitū","desc2":"indo ikonainie na mwaria","desc3":""},{"title":"ciama","desc1":"kīama","desc2":"gīkundi gīa gūtabarīra ūndū mūna","desc3":""},{"title":"ciao","desc1":"","desc2":"rora ciake","desc3":""},{"title":"ciara","desc1":"","desc2":" harī nga ohoka ihu; gīa na mbeū","desc3":""},{"title":"ciara","desc1":"","desc2":"kaara","desc3":""},{"title":"ciarwo","desc1":"","desc2":"uma nyūngū ya ūciari thutha wa kūrīkia mahinda ma gūkūrīra kuo; anjīrīrio; matunda kūrutwo nī mūmera","desc3":""},{"title":"cici","desc1":"","desc2":"maitho matonaga wega na marīraga","desc3":""},
          {
            "title":"ciene",
            "desc1":"kīene",
            "desc2":" itakoniī mūndū kana kīndū kīna",
            "desc3":""
          },
          {
            "title":"cii",
            "desc1":"",
            "desc2":"kiugo gīa kuonania ūndū ūrahanīka ūhwererekeire mūhano: mwaki ūrakana cii no ndogo tu nyingī",
            "desc3":""
          },
          {
            "title":"ciīko",
            "desc1":"",
            "desc2":"gwīka maūndū mangītaūrwo ta rwario ūkīhūthīra ciīga cia mwīrī",
            "desc3":""
          },
          {
            "title":"ciira",
            "desc1":"maciira",
            "desc2":"ndereti ya gūtuithania andū  īrūmīrīire ma na kīhooto irongoreirie kūrehe ūiguano ",
            "desc3":""
          },
          {
            "title":"ciīrūnde",
            "desc1":"",
            "desc2":"andū-a-nja arīa matatīīte ūthingu wao meheyanaga kīmwīrī mekenie",
            "desc3":""
          },
          {
            "title":"cimbica",
            "desc1":"",
            "desc2":"rūgarūga nī gīkeno",
            "desc3":""
          },
          {
            "title":"cina",
            "desc1":"",
            "desc2":"gwatia na mwaki",
            "desc3":""
          },
          {
            "title":"cinda",
            "desc1":"",
            "desc2":"kīria hinya, ūgī kana wara kīhītahītano-inī",
            "desc3":""
          },
          {
            "title":"cindana",
            "desc1":"",
            "desc2":"korwo kīhītahītano-inī",
            "desc3":""
          },
          {"title":"cingimana","desc1":"","desc2":"ūtheri kūhora; nduma gutumana","desc3":""},{"title":"cinīrīra","desc1":"","desc2":"nyitithania na mwaki; ongerera ndeto cia kūmenereria","desc3":""},{"title":"ciothe","desc1":"gīothe","desc2":"hatarī kīngī gītigaru","desc3":""},{"title":"ciringi","desc1":"","desc2":"mbeca cia Kenya na mabūrūri mangī ma Africa; ciringi īmwe","desc3":""},{"title":"ciūra","desc1":"kīūra","desc2":"mūhīrīga wa ciūmbe irūgarūgaga na magūrū ma thutha ta ciengere","desc3":""},{"title":"cocora","desc1":"","desc2":"thathaya mwīrī nīguo ūnogoke","desc3":""},{"title":"cogotha","desc1":"","desc2":"īka mūndū kana nyamū ūndū mūna nīguo wone ūrīa angīka","desc3":""},{"title":"cokereria","desc1":"","desc2":"rehe hamwe thutha wa kūhurunjūka","desc3":""},{"title":"cokia","desc1":"","desc2":"rehe harīa kīndū, mūndū kana ūndū warī o mbere","desc3":""},{"title":"conoka","desc1":"","desc2":"nyitwo nī thoni nī ūndū wa ūndū mūna","desc3":""},{"title":"conora","desc1":"","desc2":"humba thoni","desc3":""},{"title":"cooka","desc1":"","desc2":"thiī harīa ","desc3":"warī mbere"},{"title":"coora","desc1":"","desc2":"ūrūra ūtarī na ūndū wa bata ūreka; rītwa rīa kīhūthanio gakundi ka andū a kīriika kīmwe","desc3":""},{"title":"coorero","desc1":"","desc2":"thingira wa anake na airītu: ndomo; kīrīrī","desc3":""},{"title":"coorithia","desc1":"","desc2":"tongoria rūīmbo; twarithia na tūwara tuingī","desc3":""},{"title":"cora","desc1":"","desc2":"cana kīruru gīa kīndū; kurura; thagathaga mūtaratara wī na wara","desc3":""},{"title":"coro","desc1":"macoro","desc2":"mūtūrirū mūthondeke na rūhīa wa kūhuhwo na kanua","desc3":""},{"title":"coroga","desc1":"","desc2":"hīngīca na wara","desc3":""},{"title":"corora","desc1":"","desc2":"tuīria na maitho ūtekwaria","desc3":""},{"title":"cuca","desc1":"","desc2":"temenga na rūhiū; tūma mūndū orwo nī hinya","desc3":""},{"title":"cucanga","desc1":"","desc2":"cuca","desc3":""},{"title":"cucangwo","desc1":"","desc2":"temengwo ūūru maita maingī ","desc3":""},{"title":"cucīka","desc1":"","desc2":"ūrwo nī hinya mwīrī nī gūtorio nī mūrimū kana kīeha","desc3":""},{"title":"cūcū","desc1":"","desc2":"nyina wa thoguo kana nyūkwa","desc3":""},{"title":"cucura","desc1":"","desc2":"thuthuria ūmenye wega","desc3":""},{"title":"cucwo","desc1":"","desc2":"torio nī ūndū mwīrī ūrwo nī hinya","desc3":""},{"title":"cūga","desc1":"","desc2":"inama mwena na mwena ","desc3":""},{"title":"cūgacūga","desc1":"","desc2":"inama mwena na mwena nī gīkeno","desc3":""},{"title":"cūgīra","desc1":"","desc2":"iguithia andū matonye ngūī-inī","desc3":""},{"title":"cuha","desc1":"","desc2":"njuīrī ndaya icunjurīte: mīndīga; gera rīera-inī wīnyitīrīire kīndū gīcunjurīte","desc3":""},{"title":"cuka","desc1":"macuka","desc2":"gītaama gīa kūhumbīra kana kwarwo","desc3":""},{"title":"cukuma","desc1":"","desc2":"thūgūna","desc3":""},{"title":"Cuma","desc1":"","desc2":"kīgera","desc3":""},{"title":"cumīkia","desc1":"","desc2":"iguithia thuti","desc3":""},{"title":"cumīkīra","desc1":"","desc2":"nyotera kīndū gītarī gīaku","desc3":""},{"title":"cūna","desc1":"","desc2":"hutia na rūrīmī","desc3":""},{"title":"cūnga","desc1":"","desc2":"hītwo nī toro wanjie gūkoma","desc3":""},{"title":"cunga","desc1":"","desc2":"hatūkīria kīndū handū nīguo kīrīa kīnini kīhītūke nakīo kīnene gītigwo","desc3":""},{"title":"cūngīrīria","desc1":"","desc2":"tuīka gītūmi kīa ūndū kūhanīka","desc3":""},{"title":"cunguruma","desc1":"","desc2":"Cuma nene na nditū","desc3":""},{"title":"cunguruma","desc1":"","desc2":"rūkurukuhī rwa mūtī","desc3":""},{"title":"cūnjūma","desc1":"","desc2":"nyita kīndū na hinya","desc3":""},{"title":"cunjura","desc1":"","desc2":"rera rīera-inī wīnyitīrīire handū he igūrū","desc3":""},{"title":"cura","desc1":"","desc2":"hīa makīria nginya hagīe na wūirū","desc3":""},
          {
            "title":"curacura",
            "desc1":"",
            "desc2":"cangacanga ta he kīndū ūgwetha",
            "desc3":""
          },
          {"title":"cūrū","desc1":"","desc2":"ūcūrū: irio nduge na mūtu mūmata ","desc3":""},{"title":"cūrūrūbe","desc1":"","desc2":"mūmbīre wa mwīrī ūragucīrīria kana ūgakenia maitho","desc3":""},{"title":"cūtha","desc1":"","desc2":"ringa na rūthanju","desc3":""},{"title":"cūthia","desc1":"","desc2":"rorera mwanya-inī wīhithīte","desc3":""},
          {
            "title":"cūūgia",
            "desc1":"",
            "desc2":"inia mwena na mwena",
            "desc3":""
          },
          {
            "title":"cuuma",
            "desc1":"",
            "desc2":"ruta mathaga mwīrī-inī wa mūndū ūkuīte; tunya indo na hinya",
            "desc3":""
          },
          {"title":"cuuria","desc1":"","desc2":"hocia igūrū rīa kīndū","desc3":""}];
    }
    if(widget.alphabet == 'E') {
      _allUsers = [{"title":"ebuta","desc1":"ehera hakuhī na mūndū","desc2":"","desc3":""},{"title":"egega","desc1":"cūga nī kūaga kūrūma wega","desc2":"","desc3":""},{"title":"egeka","desc1":"kwarara nīgetha ūiguithie thithi","desc2":"","desc3":""},{"title":"egetha","desc1":"mūgambo umaga nī ūndū wa gūitwo nī mīrukī īkīgeria gūtonya nda īgerete kanua-inī","desc2":"","desc3":""},{"title":"ehera","desc1":"gūthiī handū hangī","desc2":"","desc3":""},{"title":"eheria","desc1":"twara handū hangī","desc2":"","desc3":""},{"title":"ehuta","desc1":"ehera hakuhī na mūndū","desc2":"","desc3":""},{"title":"eka","desc1":"kinya gūtahīka no matahīko matiume","desc2":"","desc3":""},{"title":"ema","desc1":"eherera mwena-inī tarī kūinama wainama","desc2":"","desc3":""},{"title":"emba","desc1":"korwo ūtarī na hinya; gūtigwo ūtarī kīndū","desc2":"","desc3":""},{"title":"embanīra","desc1":"kūhumbīra mūtego na mahuti ndūkoneke","desc2":"","desc3":""},{"title":"embembana","desc1":"kūiyūra kinya gūgaitīkīrīra","desc2":"","desc3":""},{"title":"emūria","desc1":"tagania indo ihutanītie kana ikuhanīrīirie mūno","desc2":"","desc3":""},{"title":"enda","desc1":"gūcīrīrio nī gūkenio; ūmbwo","desc2":"","desc3":""},{"title":"endekithia","desc1":"kūheana meciria nīgetha marūmīrīrwo","desc2":"","desc3":""},{"title":"enderera","desc1":"kūguna mwena ūmwe ūkīhinyīrīria ūrīa ūngī","desc2":"","desc3":""},{"title":"endia","desc1":"kūrithania he na thogora ","desc2":"","desc3":""},{"title":"endithia","desc1":"teithia kwendia; tūma kīndū, ūndū kana mūndū endwo","desc2":"","desc3":""},{"title":"endwa","desc1":"rora mwendwa","desc2":"","desc3":""},{"title":"ene","desc1":"rora mwene","desc2":"","desc3":""},{"title":"enenia","desc1":"kūmūrīka na ūtheri ūtarī mūingī ta wa gīcicio kana kīmūrī; gīa na mwīhoko mūnini atī ūndū nī ūkūgīa","desc2":"","desc3":""},{"title":"eng'era","desc1":"gūthiī na ihenya inene","desc2":"","desc3":""},{"title":"enja","desc1":"kweheria njuīrī harīa īmerete na kīndū gīa gūtinia","desc2":"","desc3":""},{"title":"enja","desc1":" kūhukūria hagīe na irima ; gūthuthuria maūndū marīa mahīthīku","desc2":"","desc3":""},{"title":"enjera","desc1":"kūhukūria nīguo mūthia ūrīa mūthike wonekane","desc2":"","desc3":""},{"title":"enjera","desc1":"gūthuthuria maūndū marīa mahithiku","desc2":"","desc3":""},{"title":"enjerera","desc1":"kwenjera na ūbacīrīri","desc2":"","desc3":""},{"title":"enya","desc1":"gwīkenia na maūndū ma mwago","desc2":"","desc3":""},{"title":"enyenya","desc1":"inaina nī kwaga kūrūma wega","desc2":"","desc3":""},{"title":"enyenyia","desc1":"inainia kīndū nīguo kīregere harīa kīhandītwo","desc2":"","desc3":""},{"title":"enyera","desc1":"enge'era","desc2":"","desc3":""},{"title":"enyūka","desc1":"kīndū kīūmbītwo na tūcunjī tūingī tūnyitanīte gītangīkūnjīka gūtinīka gīkoima cienyū","desc2":"","desc3":""},{"title":"enyūra","desc1":"kwamūrania kīndū kīnyitaine ūkīhūthīra moko kana kīndū gīa gūtheca kiume icunjī ","desc2":"","desc3":""},{"title":"eregethūka","desc1":"kuongerereka werū; gūtiga kūira mūno","desc2":"","desc3":""},{"title":"erekera","desc1":"thiī ūrorete na handū hana; ūkīrīra na ndeto","desc2":"","desc3":""},{"title":"erera","desc1":"kūriūnga hatarī na muoroto","desc2":"","desc3":""},{"title":"ererūka","desc1":"cokia kindū ūkūrīte kana ūkanyua hamwe na mīrukī mūmero-inī kuuma nda","desc2":"","desc3":""},{"title":"erūka","desc1":"cokia mīrukī na mūmero kuuma nda","desc2":"","desc3":""},{"title":"eterera","desc1":"kindīria na mwīrīgīrīro wa gūkinyanīra, kwīgwatīra kana kuona","desc2":"","desc3":""},{"title":"etha","desc1":"rora kīndū, ūndū kana mūndū harīa arī","desc2":"","desc3":""},
        {
          "title":"etherera",
          "desc1":"etha  handū he na ūkunderu wa kīrīa kīrendeka",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"eya",
          "desc1":"enja kiugū kana gīcegū weherie thumu kuo; enja kīeya ; enja na njīra ya gūkūrūta",
          "desc2":"",
          "desc3":""
        }
        ];
    }
    if(widget.alphabet == 'G') {
      _allUsers = [{"title":"gaacīra","desc1":"","desc2":"therema; gīa na umithio mwega maūndū-inī ","desc3":""},{"title":"gaanda","desc1":"","desc2":"irio kūgīa na mūheera ūtarī mwega nīūndū wa kwanjia gūthūka","desc3":""},{"title":"gaanda","desc1":"","desc2":"ciīga cia mwīrī kūhoherera na ikaheha mūno nī kūringwo nī heho; ","desc3":""},{"title":"gaanda","desc1":"","desc2":"mwīrī gūkorwo ūtekūigua ruo, kūhota gwītambūrūkia kana gwīkūnja; ","desc3":""},{"title":"gaanda","desc1":"","desc2":"mbembe njūa kūhoherera nī gūtūūra","desc3":""},{"title":"gabitūri","desc1":"tūbitūri","desc2":"kīndū kīnini mūno gīkīoneka ","desc3":""},{"title":"gabutūri","desc1":"tūbutūri","desc2":"thoo nene īnyitanagīrwo nī mūndū mūthia ūmwe na ūngī mūthia ūrīa ūngī īkarenga mītī","desc3":""},{"title":"gabūūthū","desc1":"tūbūūthū","desc2":"mbūūthū: iciaragwo nī mūngū na ihūthagīrwo kūiga maī","desc3":""},{"title":"gaca","desc1":"","desc2":"gīa gīko gītarathera ona gīathambio","desc3":""},{"title":"gacembe","desc1":"tūcembe","desc2":"icembe inini rīhūthagīrwo kwenja tūrima, kūhanda na kūrīmīra irio na rīkoragwo rī rīa mīena īrī","desc3":""},{"title":"gacīra","desc1":"tūcīra","desc2":"njīra ītarī njariī: njīra ya gūthiīrwo na magūrū","desc3":""},{"title":"gacūmbīrī","desc1":"","desc2":"mūthia wa kīndū kīraya na igūrū","desc3":""},{"title":"gacunjī","desc1":"tūcunjī","desc2":"gīcunjī","desc3":""},{"title":"gagata","desc1":"","desc2":"mūcamo ūrīa kīndū kīgīaga kīarindwo kana matunda mamwe magīaga makīanjia gūthūka","desc3":""},{"title":"gagatia","desc1":"","desc2":"rinda kīndū nīguo kīgīe na mūcamo mūgagatu","desc3":""},
        {
          "title":"gaīra",
          "desc1":"",
          "desc2":"neana mwanya mwanya; īkīra handū mwanya mwanya",
          "desc3":""
        },
        {
          "title":"gaithia",
          "desc1":"",
          "desc2":"mūkamo kūiyūra iria",
          "desc3":""
        },
        {
          "title":"gakarakū",
          "desc1":"",
          "desc2":"mūmera ūhūthagīrwo gwīkīra thararīni na mīri ya guo nī ītherūkagio īkoima rūnyaga rwa kūhaka indo ta njora; rūnyaga ta rwa mīri ya gakarakū",
          "desc3":""
        },
        {"title":"gakenge","desc1":"","desc2":"kaana ka mūndū ga gūciarwo gatanahota gwītwara kana gūikara thī","desc3":""},{"title":"gamba","desc1":"","desc2":"ruta mūgambo ūtangītaūrīka ta rwario","desc3":""},{"title":"gambūrūrūka","desc1":"","desc2":"gamba o rīmwe na kayū kanene","desc3":""},{"title":"gana","desc1":"","desc2":"heana ūhoro ūūrūmanīrīirie mahinda ma ūria wahanīkire","desc3":""},{"title":"gana","desc1":"","desc2":"kumia","desc3":""},{"title":"gana","desc1":"","desc2":"mūcamo mūrūrū ta wa kīnya gītarī gīthambie kana maī marīa moimaga ho gīathambio","desc3":""},{"title":"gandīra","desc1":"","desc2":"ritūhīria mītaratara nīguo īreme kūrūmīrīrīka","desc3":""},{"title":"gangara","desc1":"","desc2":"kenia mwīrī na mīago","desc3":""},{"title":"garagara","desc1":"","desc2":"kīndū gwītara gīthiūrūrūkīte ","desc3":""},{"title":"garagaria","desc1":"","desc2":"gūtwarithia na njīra ya gūthiūrūrūkīria thī","desc3":""},{"title":"garamīria","desc1":"","desc2":"cūngīrīria kīndū gūikara kīgariī","desc3":""},{"title":"garīra","desc1":"","desc2":"agīra nī kūgīa na ūthaka","desc3":""},{"title":"garū","desc1":"","desc2":"garūka","desc3":""},{"title":"garūka","desc1":"","desc2":"mūndū ūtirikīte andū ake akamokīrīra hamwe na thū ciao; mūndū ūtirikīte kīrīko arīte agagīūkīrīra","desc3":""},{"title":"garūra","desc1":"","desc2":"roria mwena ūngī","desc3":""},{"title":"garūrīra","desc1":"","desc2":"tigana woerere kīndū,ūndū kana mūndū ūngī","desc3":""},{"title":"garūrūka","desc1":"","desc2":"hūgūka ūrore na kūngī; tigana na mithiīre woerere īngī ngūrani","desc3":""},{"title":"gataa","desc1":"","desc2":"garūra indo cia gūtwarithio ta ngari kana ngono","desc3":""},{"title":"gatagatī","desc1":"","desc2":"gatīīna kaiganaine harīa mīthia īīrī īranyitanīra; kīnaa thīinī wa nyingī","desc3":""},
        {
          "title":"gatambi",
          "desc1":"tūtambi",
          "desc2":"ciūmbe irī kīūga kīnini ithiagīra thī kana igūrū rīa kīndū ta mūmera kana nyamū",
          "desc3":""
        },
        {
          "title":"gatandatū",
          "desc1":"",
          "desc2":"6th",
          "desc3":""
        },
        {
          "title":"gatandatū",
          "desc1":"",
          "desc2":"mūthenya wa gatandatū wa kiumia",
          "desc3":""
        },
        {
          "title":"gatano",
          "desc1":"",
          "desc2":"mūthenya wa gatano wa kiumia",
          "desc3":""
        },
        {
          "title":"gatano",
          "desc1":"",
          "desc2":"5th",
          "desc3":""
        },
        {"title":"gatarū","desc1":"tūtarū","desc2":"ngari ya kūgera maī igūrū irerete","desc3":""},
        {
          "title":"gatatū",
          "desc1":"",
          "desc2":"3rd",
          "desc3":""
        },
        {
          "title":"gatatū",
          "desc1":"",
          "desc2":"mūthenya wa gatatū wa kiumia",
          "desc3":""
        },
        {
          "title":"gatha",
          "desc1":"",
          "desc2":"kumia na kwarīrīria ūnene na ūkaru; guucia kindu niguo kīrūme; guucia kīndū na mīthia yakīo yothe hamwe",
          "desc3":""
        },
        {
          "title":"gathandambūirū",
          "desc1":"",
          "desc2":"igego rīrīa rīkoragwo gatagatī ka igegeo rīa mūthangiri na ikambucu rīa mbere",
          "desc3":""
        },
        {
          "title":"Gathano",
          "desc1":"",
          "desc2":"mweri ūrīa heho īkoragwo īcacīte ūkaga mbere ya mweri wa Muoria-nyoni Gīthūngū July",
          "desc3":""
        },
        {
          "title":"Gathathanwa",
          "desc1":"",
          "desc2":"kīanjīrīria gīa kīmera kīa heho ūkaga gatagatī ka mweri wa  Mūgira-njara na wa Gathano Gīthūngū June",
          "desc3":""
        },
        {"title":"gathīka","desc1":"","desc2":"ingīria kīndū kīnyitane na kīndū kīngī","desc3":""},{"title":"gathīkania","desc1":"","desc2":"ingīrania indo inyitane","desc3":""},{"title":"gathima","desc1":"","desc2":"hiūhia maguta ma nyamū nyūngū-inī matweke na moime ngarango","desc3":""},{"title":"gathīra","desc1":"","desc2":"ūmīria maūndū hatikagīe na umithio mwega","desc3":""},{"title":"gathirange","desc1":"","desc2":"mwanake wī na hinya wa wīthī; mwanake ūtari onana na mūndū kīmwīrī ","desc3":""},{"title":"gathīrīria","desc1":"","desc2":"gana wega wa kīndū kana mūndū nīguo etīkīrwo","desc3":""},{"title":"gathūra","desc1":"","desc2":"regeria kīndū kiuma kīgathe","desc3":""},{"title":"gatigithū","desc1":"","desc2":"kanyūngū gaceke kanini ga kūiga maguta","desc3":""},
        {
          "title":"gatīīna",
          "desc1":"",
          "desc2":"mahinda maigana ūna; ūraihu wa handū ūkīgerwo na mahinda; icunjī cia ūndū igaītwo na kīgeri kīa mahinda",
          "desc3":""
        },
        {
          "title":"Gatumu",
          "desc1":"",
          "desc2":"mweri ūyū ūkaga mbere ya mweri wa Mūgaa wa themithū. Nīrīo magongona ma irua makoretwo magīkwo thutha ūyū Gīthūngū December",
          "desc3":""
        },
        {"title":"gaturu","desc1":"tūturu","desc2":"kanyamū ke mūhianīre wa mbīa no ke mūting'oe mūnene wī na guoya mūingī gaikaraga marima-inī na kendete kūrīa irio nyūmū","desc3":""},{"title":"gatūrūme","desc1":"tūtūrūme","desc2":"kagondu ka njamba gatarī kanene ","desc3":""},{"title":"gatūū","desc1":"","desc2":"kūmenyeka mūno nī ūndū wa ūhoti mūna","desc3":""},{"title":"gaya","desc1":"","desc2":"amūrania ; iga mwanya mwanya","desc3":""},{"title":"gayania","desc1":"","desc2":"amūrania ikundi itigakorwo hamwe; amurania nīguo o mūheyo egīīre kīndū ","desc3":""},{"title":"geeta","desc1":"","desc2":"guucia ūta nīguo ūikie mūguī","desc3":""},{"title":"gega","desc1":"","desc2":"kūrora handū hamwe ūtekwaria kana kūrora na kūngī","desc3":""},
        {
          "title":"gegeara",
          "desc1":"",
          "desc2":"makio nī ūndū ūgūtige ūgegete",
          "desc3":""
        },
        {
          "title":"geka",
          "desc1":"",
          "desc2":"tūma mūndū eke ūndū ūkūmūrehithīria ndirū mūhano: mūciari kuonia mwana wake njaga nī kūmūgeka",
          "desc3":""
        },
        {"title":"gema","desc1":"","desc2":"thakara nī kūhumbwo indo thaka","desc3":""},
        {
          "title":"gemia",
          "desc1":"",
          "desc2":"humba na indo cia gūthakaria",
          "desc3":""
        },
        {
          "title":"gena",
          "desc1":"",
          "desc2":"thiī handū hana wī na itūmi itarī cia kīwīra kana ithama",
          "desc3":""
        },
        {"title":"genda","desc1":"","desc2":"umagara kūndū kūraya na muoroto mūna","desc3":""},{"title":"gendera","desc1":"","desc2":"gūikara ūng'athītie","desc3":""},{"title":"gera","desc1":"","desc2":"hitūkīra; tuīria mūigana wa kīndū","desc3":""},{"title":"gera ","desc1":"","desc2":"īka kīndū kana mūndū ūndū mūna: gera ngero","desc3":""},{"title":"gere","desc1":"","desc2":"njūru makīria īkīringithanio na īngī njūru","desc3":""},{"title":"geria","desc1":"","desc2":"īka ūndū ūtarī na ūma kana no ūūhote","desc3":""},{"title":"geria","desc1":"","desc2":"ringa itherū","desc3":""},{"title":"geria","desc1":"","desc2":"roria ūkinyanīru","desc3":""},{"title":"geta","desc1":"","desc2":"thugunda kwanjīrīria","desc3":""},{"title":"getha","desc1":"","desc2":"maatha maciaro kuma mūgūnda-inī ma kūigwo ikūmbī","desc3":""},{"title":"gia","desc1":"","desc2":"gwīka ūndū wa kwagithia gīkeno","desc3":""},{"title":"gīake","desc1":"ciao","desc2":"mu3","desc3":"kīrīa gītanītio na mūndū  ūcio ūrarīrīrio"},{"title":"gīake","desc1":"","desc2":"kīndū gīakītwo ta nyūmba","desc3":""},{"title":"gīathi","desc1":"athi","desc2":"andū a rūruka rwa Ndūrūbū arīa maarī ene ithaka","desc3":""},{"title":"gīathī","desc1":"ciathī","desc2":"mūthī wamūrīirwo ūndū mūna; karīīko ga gūtūngana ","desc3":""},{"title":"gīatū","desc1":"njatū","desc2":"gīcunjī kiumanīte na gwatūrwo mūhano: gīatu kīa ngwacī","desc3":""},{"title":"gībungo","desc1":"ibungo","desc2":"kīūma gītumīrīirwo handū gī gīa kūhinga","desc3":""},{"title":"gīcacī","desc1":"","desc2":"mwītīo","desc3":""},{"title":"gīcakūri","desc1":"icakūri","desc2":"kīndū gīthondeketwo kīrī gīa kūhakūra indo thī","desc3":""},{"title":"gīcambio","desc1":"","desc2":"gīko gīa kwaria ndeto cia gūcambia","desc3":""},{"title":"gīcandī","desc1":"icandī","desc2":"mbūūthū īkīrītwo indo thīinī nīguo yainio īrute mūgambo; rūīmbo rūrīa rūinagwo na mbūūthū ya gīcandī","desc3":""},{"title":"gīcanūri","desc1":"icanūri","desc2":"kīndū gīa gūtambūrūkia njuīrī","desc3":""},{"title":"gīcegū","desc1":"icegū","desc2":"handū hamūre thīinī wa nyūmba ha kūigwo mbūri","desc3":""},{"title":"gīcere","desc1":"icere","desc2":"gīcunjī kiumīte he kīndū gītambūrūku ta ibati kana nguo, gīcerehūrītwo","desc3":""},{"title":"gīcicio","desc1":"icicio","desc2":"kīndū gīkuhītwo, gīkanyoroka na gīkahenia, ūndū atī no wīrore kīruru gīaku ho","desc3":""},{"title":"gīcigīrīra","desc1":"","desc2":"thī nyūmū īrigicīirio nī maī; handū hana  harigicīrie nī kīndū","desc3":""},
        {
          "title":"gīcigo",
          "desc1":"icigo",
          "desc2":"gīcunjī kīa handū haramera kīndū, mūhano gīcigo kīa njuīri; gīcigo kīa mūgūnda; gatīīna ka handū ke na maūndū mako mekūraine na kūrīa kūngī",
          "desc3":""
        },
        {
          "title":"gicii",
          "desc1":"",
          "desc2":"ngoro ya irigū ī na marigū matarī makūrū; ithaga rī na ciūma inyitīrīirwo na karigi, rīthayagwo guoko-inī kuma thutha wa irongo rīa mwīrī kinya hakuhī na kīgokora; ithaga rīa aka rīthondeketwo na ciūma ciohereirwo karūa-inī, rīthondekagwo na icere cia makorogoca ma matumbī ma nyaga rīhumbagwo ngingo",
          "desc3":""
        },
        {"title":"gīciko","desc1":"iciko","desc2":"kīndū gīthondeke kīrī gīa gūtahia irio","desc3":""},{"title":"gīcinga","desc1":"icinga","desc2":"rūkū rūrakana mwaki mwena ūmwe","desc3":""},{"title":"gīcoka","desc1":"icoka","desc2":"nyama ciūnganīte hamwe iria itūmaga moko maceere","desc3":""},{"title":"gīcokio","desc1":"","desc2":"mūtumia ūtetwo nī mūrūme akamūcokia kūri aciari ake","desc3":""},{"title":"gīcoro","desc1":"macoro","desc2":"mūtondo wa mai ma ng'ombe kana mbūri","desc3":""},{"title":"gīcūīro","desc1":"icūīro","desc2":"handū harīa hombagwo nī nyoni","desc3":""},{"title":"gīcūīro","desc1":"","desc2":"nyūmba ndaya na igūrū","desc3":""},{"title":"gīcungi","desc1":"icungi","desc2":"kīndu kī na tūrimarima tūnini twa kūgiria indo nene ikīre no tūkahītūkia indo itarī njariī","desc3":""},{"title":"gīcūni","desc1":"","desc2":"kīboko gīthondeke na ndigi mūthia-inī ciohereirwo kamūti-inī gīa kūhūra mbirūri","desc3":""},
        {
          "title":"gīcunjī",
          "desc1":"icunjī",
          "desc2":"kīamūranie, gīkaigwo mwanya; gīkonainie na kīndū kīna na kīnyitaine nakīo no nīkīrūgamītie",
          "desc3":""
        },
        {
          "title":"gīcure",
          "desc1":"",
          "desc2":"mbūri īkahītwo matū",
          "desc3":""
        },
        {"title":"gīcūrūcūrū","desc1":"icūrūcūrū","desc2":"kīndū o gīothe kīhaana tīīri kana mūtu gītukanītio na maī ikaiguana","desc3":""},{"title":"gīcuthī","desc1":"icuthī","desc2":"gīting'oe kīrutītwo nyamū-inī, kaingī ng'ombe gīkuagwo nī athuri kana gīkahūthīrwo kūhūra ngi","desc3":""},{"title":"giginyana","desc1":"","desc2":"īka ūndū mūritū ūtegūtiga ona woneka ta ūrarema","desc3":""},{"title":"giīka","desc1":"","desc2":"thīnio nī ūndū wagīte njīra ya kūūtoria","desc3":""},{"title":"gīikaro","desc1":"","desc2":"handū harīa haakītwo mīciī ya gūtūrwo nī andū; nyūmba","desc3":""},{"title":"gīīko","desc1":"iko","desc2":"mūtūrirū wa kūnyuīra ndogo ya mbakī kana kīraikū; nyamū ya thī īimbagia mūtwe na ngingo na īhotaga kūrūga  igūrū","desc3":""},{"title":"gīīko","desc1":"","desc2":"ūndū ūronwo kana ūkaiguo ūkiumana na handū, kīndū kana mūndū mūna","desc3":""},{"title":"giitū","desc1":"ciitū","desc2":"mu1 wu:kīndū gīkonainie na arīa mararia","desc3":""},{"title":"gīkabū","desc1":"ikabū","desc2":"kiswahili:kīondo gīa gūkuo na moko","desc3":""},{"title":"gīkang'ū","desc1":"makang'ū","desc2":"andū mahekeete gītīyo na monagwo marī a bata: ing'ara","desc3":""},{"title":"gīkang'ū","desc1":"","desc2":"gītheri kīa mbembe nyūmū","desc3":""},{"title":"gīkeno","desc1":"","desc2":"ūhoro wa kūigua wūiganīire na ūcanjamūkīte nī kūgacīra ūndū-inī, kwīrīgīrīra ūndū mwega kana ūndū ūngī ta ūcio","desc3":""},{"title":"gīkiatho","desc1":"","desc2":"kīnyita kīa njohi kana ūcūrū ","desc3":""},{"title":"gīkīro","desc1":"ikīro","desc2":"ngūrani  ciumanīte na ūtiganu gatagatī ka andū, kīndū kana indo: mūhano Kamau ti wa gīkīro kīmwe na Karanja, karanja nī mūtongu mūno ","desc3":""},{"title":"gīko","desc1":"","desc2":"kīrīa gīcūngagīrīria waagi wa ūtheru","desc3":""},{"title":"gīkombe","desc1":"ikombe","desc2":"kīndū kīhaana kamee gīa kūnyuīrwo indo ndweku","desc3":""},
        {
          "title":"gīkonde",
          "desc1":"ikonde",
          "desc2":"rūūa rūrīa rūruithagio kīīga-inī kīa ūndūrūme; rūūa rūmerete rūkarekania tiga o harīa rūmereire rūgatigwo rūcuhīte",
          "desc3":""
        },
        {
          "title": "gīkonyo",
          "desc1": "",
          "desc2": "kīndū kīyumīrītie handū kīna mūhianīre ta wa mūkonyo wa mūndū",
          "desc3": ""
        },
        {"title":"gīkore","desc1":"ngore\/makore","desc2":"rūūa rwa kīndū ta thanda ya mbembe kana kīūngūyū","desc3":""},{"title":"gīkoro","desc1":"makoro","desc2":"rora ikoro","desc3":""},{"title":"gīkundi","desc1":"ikundi","desc2":"andū kana indo nyūnganie igakorwo handū hamwe","desc3":""},{"title":"gīkundo","desc1":"","desc2":"harīa mūkanda kana kīndū kīa mūhīrīga ūcio kīohetwo kīogothanītio","desc3":""},{"title":"gīkūnjo","desc1":"ikūnjo","desc2":"kīndū gītambūrūku gīkaunanīrwo; mandīko ma ibuku rīa Ahimbirania","desc3":""},{"title":"gīkuū","desc1":"ikuū","desc2":"ūhoti ūrīa ūtigithūkanagia muoyo na mwīri","desc3":""},{"title":"Gīkūyū","desc1":"","desc2":"mūthuuri ūrīa wanjīrīirie rūrīrī rwa Agīkūyū; rwario rūrīa rwaragio nī Agīkūyū","desc3":""},{"title":"gimara","desc1":"","desc2":"kūra ūigane","desc3":""},{"title":"gīothe","desc1":"ciothe","desc2":"hatarī kīndū gītigaru","desc3":""},{"title":"gīra","desc1":"","desc2":"thiī handū hana nīguo woe ūcoke ūcokie harīa umire mbere","desc3":""},{"title":"giria","desc1":"","desc2":"hingīrīria ūndū mūna gwīkwo","desc3":""},{"title":"gīrima","desc1":"","desc2":"tinia muting'oe wa kagondu; mūting'oe wa koori warīkia gūtinio","desc3":""},{"title":"gīrima","desc1":"","desc2":" īkīra ruoro","desc3":""},{"title":"gita","desc1":"","desc2":"hinga mīanya rūgito-inī kana igūrū rīa nyūmba ","desc3":""},{"title":"gītaa","desc1":"","desc2":"ūhoti wa kūrehera ūūru na mīario ya kanua","desc3":""},{"title":"gītaama","desc1":"itaama","desc2":"kīndū gītaambūrūku gītumītwo na ndigi kīngīhumbīrwo nakīo","desc3":""},{"title":"gītahīro","desc1":"itahīro","desc2":"handū hatahagīrwo maī","desc3":""},{"title":"gītaigua","desc1":"itaigua","desc2":"mūndū wī matū matangīhota kūigua mīgambo","desc3":""},{"title":"gītama","desc1":"ndama","desc2":"rora ndama","desc3":""},
        {
          "title":"gītambaya",
          "desc1":"itambaya",
          "desc2":"kiswahili gītaama",
          "desc3":""
        },
        {
          "title":"gītang'a",
          "desc1":"itang'a",
          "desc2":"gītonga kīnene",
          "desc3":""
        },
        {"title":"gītango","desc1":"","desc2":"gīīko gīa gūthīnia nī ūndū wa gūcokerera ūndū ūtarendwo","desc3":""},{"title":"gītara","desc1":"itara","desc2":"gīikaro gīake na mahuti kana ngerecū gīa gūtūūrwo nī nyamū ta nyoni kana mbīa; gītūūro kīa nyamū gīake mūtī igūrū","desc3":""},{"title":"gītarū","desc1":"","desc2":"kīndū gīthondeketwo gīa gūthiīra maī-inī gīkuīte andū kana indo Kiswahili mashua","desc3":""},{"title":"gitarūrū","desc1":"itarūrū","desc2":"kīndū kīogothetwo kīrī gīa gūthurīrwo irio nyūmū ta mboco","desc3":""},{"title":"gītathira","desc1":"itathira","desc2":"nda yothe īrīa īkuīte ciaga ta nda ya irio, ini, higo na mara harī mūndū; nda ya mbere ya nyamū irīa icokagia ithagumia","desc3":""},{"title":"gītatī","desc1":"itatī","desc2":"gītūngano gīa gīkundi kīa andū marongoreirie ūndū mūna","desc3":""},{"title":"gītembe","desc1":"","desc2":"ikinya rīa njogu kana nyamū īngī ī kūgūrū ta kūu; kūgūrū kūhana ta kwa njogu rīngī ta kwa mūndū kūrengetwo","desc3":""},{"title":"gītende","desc1":"matende","desc2":"ikinya rīa kūgūrū kwa nyamū kana mūndū","desc3":""},{"title":"gīteng'ū","desc1":"","desc2":"nyūngū nene","desc3":""},{"title":"gīteo","desc1":"iteo","desc2":"kīndū gītarī bata gībatiī kweherio","desc3":""},
        {
          "title":"gītete",
          "desc1":"",
          "desc2":"kīndū gīceke kīraihu kīumaga rūngū-inī gīa gwīkīrwo indo ndweku ta iria kana cūrū",
          "desc3":""
        },
        {
          "title":"gīthairū",
          "desc1":"",
          "desc2":"mūndū ūruithītio nī mūndū ūtamūrīirwo wīra ūcio",
          "desc3":""
        },
        {
          "title":"gīthaka",
          "desc1":"ithaka",
          "desc2":"mūtitū;kīndū kīega gīkīonwo:kīrorerwa; gīcigo kīnene kīa mūgūnda",
          "desc3":""
        },
        {
          "title":"gīthaku",
          "desc1":"ithaku",
          "desc2":"handū ha thondekagwo rūgito-inī ha humbīrītwo nī nyeki kana mabati marīa magitīte nyūmba igūrū mwena wayo wa mbere; rūciaro rwa mūtumia: nyūmba mūhano: gwa Gatokaya nī gwa ithaku igīrī, kīa Nyambura na kīa Wanjirū","desc3":""},
        {
          "title":"gīthambo",
          "desc1":"ithambo",
          "desc2":"gīikaro gīa thambo",
          "desc3":""
        },
        {
          "title":"gīthana",
          "desc1":"",
          "desc2":"iria rīa mbere rīrīa nyamū yambaga kūruta ya ciara rīkoragwo rīhana rūnyaga rwerū rwī na ngoikoni",
          "desc3":""
        },
        {"title":"gīthatū","desc1":"","desc2":"kībii","desc3":""},{"title":"gīthayo","desc1":"","desc2":"itumbī rīkomereirio kana rīthūku; kīgūūta","desc3":""},{"title":"gīthemengū","desc1":"","desc2":"ūhoti wa kūnūha na ciugo kana meciria","desc3":""},{"title":"gīthemithū","desc1":"mathemithū","desc2":"irema njerū igīaga mwīrī-inī","desc3":""},{"title":"gīthendū","desc1":"","desc2":"gacunjī ka mūtī karīa koimaga harīa wa temwo ","desc3":""},{"title":"gīthenya","desc1":"mathenya","desc2":"gītithio mūhari-inī; gacigīrīra gatarī kīndū thīini wa gīcigo kīmeru indo","desc3":""},{"title":"gītheri","desc1":"","desc2":"irio cia mūtukanio wa mbembe na mboco itherūkie","desc3":""},{"title":"gītheru","desc1":"theru","desc2":"gītarī na gīkoo","desc3":""},{"title":"gīthethwa","desc1":"ithethwa","desc2":"indo cia mūhīrīga wa kīgwa ina mūcamo ūtarī mwega nī kwaga gūkūra","desc3":""},{"title":"githī","desc1":"","desc2":"tondū","desc3":""},{"title":"gīthii","desc1":"ithii","desc2":"itonyo rīcunjuragio ciande-inī rīthondeketwo na rūa rwa nyamū ","desc3":""},{"title":"gīthiita","desc1":"ithiita","desc2":"kindū kīmerete mwīrī-inī gīcunjurīte; kīīga kīa ūndūrūme gī kīruithie","desc3":""},{"title":"gīthima","desc1":"ithima","desc2":"handū harakunūka maī na andū no matahe ma kūnyuo","desc3":""},{"title":"gīthinīkanio","desc1":"ithinīkanio","desc2":"gīīko gīa gūtirika mūndū na kūmwīka ūūru rīrīa abatairio nī ūteithio waku","desc3":""},{"title":"gīthīnjīro","desc1":"ithīnjīro","desc2":"handū harīa hamūrītwo he ha gūthīnjīrwo nyamū","desc3":""},
        {
          "title":"gīthioro",
          "desc1":"ithioro",
          "desc2":"handū njīra ītigīte gūthiī ī nūngarū īkarora mwena ūngī",
          "desc3":""
        },
        {
          "title":"gīthita",
          "desc1":"ithita",
          "desc2":"giting'oe kia ng'ondu",
          "desc3":""
        },
        {"title":"gīthithi","desc1":"mathithi\/ithithi","desc2":"ūthiū-inī  gatagatī ka maitho na harīa njuīrī yanjagia kūmerera; muonekere wa mūndū akīrorwo na maitho kana no atīyo kana ca","desc3":""},{"title":"gīthitū","desc1":"ithitū","desc2":"kīndū gīthondeke nīguo kīgirīrīrie maūru gūkinyīra ūrīa kīragitīra","desc3":""},{"title":"gīthiūrūrī","desc1":"mathiūrūrī","desc2":"kīndū kana mūcoro ūthondeketwo wī mūhari ūmwe mūnyitanu ūtarī mūthia mūhano: riūa nī rīa gīthiūrūrī","desc3":""},{"title":"gīthu","desc1":"","desc2":"ikinya rīa nyamū iria i ndwara ta nyau kana ngui","desc3":""},
        {
          "title":"gīthukī",
          "desc1":"ithukī",
          "desc2":"gītina kīa mūtī kīrīa gītigaraga kīnyitaine na mīri thutha wa mūtī gūtemwo",
          "desc3":""
        },
        {
          "title":"gīthūkū",
          "desc1":"",
          "desc2":"gatutu ka njoya kamerete handū hamwe mūtwe-inī wa nyoni ta ūrīa mīthū īkoragwo",
          "desc3":""
        },
        {
          "title":"gīthuma",
          "desc1":"ithuma",
          "desc1":"ithuma",
          "desc2":"ngo īthondeketwo na rūa; kīnyamū gītandayie kīohagīrīrwo nda ya nyamū cia njamba nīguo itikahote kūhaica cia nga; kīgera gīthondeke gīgītandayie",
          "desc3":""
        },
        {
          "title":"gīthūmbī",
          "desc1":"",
          "desc2":"gīthiūrūrī gītigītio njuīrī kīongo-inī kīa mūtumia",
          "desc3":""
        },
        {"title":"Gīthūngū","desc1":"","desc2":"rūthiomi na mītugo ya Athūngū","desc3":""},{"title":"gīthūnū","desc1":"ithūnū","desc2":"ciikaro itarī cia gūtūūra ciakagwo nī agendi kana igakwo kūraya na mūciī; gīikaro kīa anake","desc3":""},{"title":"gīthuri","desc1":"","desc2":"mūtambūrūko wa irīma","desc3":""},{"title":"gīthūri","desc1":"ithūri","desc2":"Kīiga kia mwīrī kīrīa kīnyitaine na mbaru gīkoragwo mweza wa mbere wa mūndū kana nyamū igūrū rīa nda","desc3":""},{"title":"gīthūūri","desc1":"ithūūri","desc2":"mūtī honge ciaguo itagiaga mahuti na watemwo ni umaga iria, kaingī nīūkoragwo na rangi mwerū","desc3":""},
        {
          "title":"gīti",
          "desc1":"",
          "desc2":"mūromo wa andū-a-nja harīa mathugumo moimagīra; kīino",
          "desc3":""
        },
        {
          "title":"gītī",
          "desc1":"itī",
          "desc2":"kiswahili kiti: kīndū gīthondeketwo gī gīa gūikarīrwo",
          "desc3":""
        },
        {"title":"gītīa","desc1":"itīa","desc2":"kīohe kīa indo cia mūhīrīga wa nyeki ta ngano","desc3":""},{"title":"gītiiro","desc1":"itiiro","desc2":"rūīmbo rwainagwo nī atumia akūrū","desc3":""},{"title":"gītīīyo","desc1":"itīīyo","desc2":"mūtugo wa kuonania kwīnyihīria na gūkenio nī mūndū ","desc3":""},{"title":"gītimū","desc1":"ndimū","desc2":"karūgi kombūkaga ke rūnyaga rūirū na rwa ngoikoni mathagu-inī gakagīrīra nyūmba yako indo-inī","desc3":""},{"title":"gītina","desc1":"itina","desc2":"mūthia wa kīndū ūrīa gīikarīire gīkehanda","desc3":""},{"title":"gītindo","desc1":"itindo","desc2":"harīa haumagaragīrwo hagaikarwo no tiho hararagwo","desc3":""},{"title":"gīting'oe","desc1":"","desc2":"mūting'oe","desc3":""},{"title":"gītingī","desc1":"","desc2":"kīrung'o kīa mūtī mūrūngarū mūteme, ūkahūrūrwo thari na ūgaicūhio","desc3":""},{"title":"gitīra","desc1":"","desc2":"hūthīra ūhoti kūgiria ūnūhu ūgwate kīndū kana mūndū mūna","desc3":""},
        {
          "title":"gītira",
          "desc1":"itira",
          "desc2":"gīcigo kīa mūgūnda kīmerete nyeki",
          "desc3":""
        },
        {
          "title":"gītira",
          "desc1":"",
          "desc2":"mūgūnda ūmerete nyeki",
          "desc3":""
        },
        {
          "title":"gītiro",
          "desc1":"",
          "desc2":"nyīmbo cinagwo nī atumia ahiku kaingī thutha wa mambura ta ma ngurario",
          "desc3":""
        },
        {"title":"gītonga","desc1":"itonga","desc2":"mūndū ūrī na indo ciake nyingī imūiganīte na igatigara","desc3":""},{"title":"gītono","desc1":"itone","desc2":"karūgi ka mūhīrīga wa ngigī ke rūnyaga rwa mūkūyū","desc3":""},{"title":"gītoore","desc1":"itoore","desc2":"kīūmbe kīnene ta mbūkū kīhaana mbīa gīikaraga mīhunguru-inī ya mahiga","desc3":""},{"title":"gītuamba","desc1":"ituamba","desc2":"mūkuru wī na tīīri mūnoru na mūnyotoku maī ūngīrīmīka ","desc3":""},{"title":"gītumbī","desc1":"","desc2":"kīara gīa guoko kīrīa gītungu kūrī ciothe","desc3":""},{"title":"gītūmi","desc1":"itūmi","desc2":"kīhooto gīa gwīka ūndū","desc3":""},{"title":"gītumumu","desc1":"itumumu","desc2":"ūrī na maitho matonaga","desc3":""},{"title":"gītūngūrū","desc1":"itūngūrū","desc2":"kiswahili - mūmera ūhūthagīrwo gūīkīra irio mūcamo na watinangio nī ūrūragīra maitho","desc3":""},{"title":"gīturi","desc1":"ituri","desc2":"mūthia biū","desc3":""},{"title":"gīturwa","desc1":"","desc2":"gīikariro kīrīa mūthuri aikaragīra e thingira agītua matua ma mūciī wake","desc3":""},{"title":"gītutu","desc1":"","desc2":"andū, indo kana nyamū nyingī ciūnganīte hamwe","desc3":""},{"title":"gītūūro","desc1":"itūūro","desc2":"harīa hatuītwo mūciī wa guikaragwo","desc3":""},{"title":"gīūthi","desc1":"ciūthi","desc2":" gūcuuka mītī mūndū akagwīrwo nī mūtī kī mūnyaka","desc3":""},{"title":"gocithia","desc1":"","desc2":"heithia gītīyo nī kūgana ūhoti na wega","desc3":""},{"title":"gocogoco","desc1":"","desc2":"inegene rīa ngarari","desc3":""},{"title":"gogota","desc1":"","desc2":"titika mūrigo mūritū ūtarahota gūkuua wega","desc3":""},{"title":"goma","desc1":"","desc2":"kisawahili rega gwīka ūndū","desc3":""},{"title":"gona","desc1":"","desc2":"gīcoka kūrema gūtambūrūka kana gūkūnjīka nīūndū wa kūgūthwo; mwīrī kūgaandio na mīthaiga ya gūtūma mwene ndakaigue ruo","desc3":""},{"title":"gonderera","desc1":"","desc2":"ikara o ūguo ta ūtarī na hinya: ikara ta wī na ūgūta","desc3":""},{"title":"gonyoka","desc1":"","desc2":"gīa na kīgoci","desc3":""},{"title":"gooca","desc1":"","desc2":"tīīya na ciugo cia kūgana ūhoti na wega","desc3":""},{"title":"goromoka","desc1":"","desc2":"ruta mūgambo o rīmwe wa marakara; mūraramo wa nyamū ī na marakara","desc3":""},{"title":"goru","desc1":"","desc2":"ūiru ","desc3":""},{"title":"gothe","desc1":"tuothe","desc2":"kanyamū kanini: hatarī gatigaru","desc3":""},{"title":"gotora","desc1":"","desc2":"gucia kīndū kinya kiunīke harīa kīnyitīrīire","desc3":""},{"title":"guanyīrī","desc1":"maguanyīrī","desc2":"guoya ūmerete rūa-inī; nguo ya rūa rwī na guoya","desc3":""},{"title":"guca","desc1":"","desc2":"tiga nī ūndū wa","desc3":""},{"title":"gucia","desc1":"","desc2":"hūthīra hinya wa moko kūrehe kīndū na kūrīa ūrī","desc3":""},{"title":"gugua","desc1":"","desc2":"kīūmbe kīnene gīa kūmakania","desc3":""},{"title":"guguna","desc1":"","desc2":"gūteta na mūgambo ūtaroiguīka wega","desc3":""},
        {
          "title":"gūgūnyara",
          "desc1":"",
          "desc2":"gūnyara",
          "desc3":""
        },
        {
          "title":"gūgūta",
          "desc1":"",
          "desc2":"nyua kīndū ūtegūtigithīria; nyua njohi īkīre gīkīro",
          "desc3":""
        },
        {"title":"guīka","desc1":"","desc2":"humbīra na taama; theca na kīndū gī gūikio ta mūguī; mūndūrūme kūgīa na ngwatanīro ya ūrīrī na mūndū-wa-nja","desc3":""},{"title":"gūīka","desc1":"","desc2":"kūruta gīīko","desc3":""},{"title":"guka","desc1":"","desc2":"ithe wa nyūkwa kana thoguo; mūndūrūme mūkūrū mūno","desc3":""},{"title":"gūkanda","desc1":"","desc2":"gūkima kīndū gīthīe ta mūtu kana tīīri mūtukanu na maī ūkīhūthīra moko","desc3":""},{"title":"gukuma","desc1":"","desc2":"gūkunga ūgītonya handū","desc3":""},{"title":"gūkunda","desc1":"","desc2":"gwīkīra kīndū gītweku kanua nīguo ukīmerie","desc3":""},{"title":"guma","desc1":"","desc2":"gīa na gutu nīgūikara handū he na ūhehu kana kwaga kūhūthīka kwa ihinda","desc3":""},
        {
          "title":"gūma",
          "desc1":"",
          "desc2":"kūūnūha na njīra nene",
          "desc3":""
        },
        {
          "title":"gūmba",
          "desc1":"",
          "desc2":"rehithīria ūgwati mūnene",
          "desc3":""
        },
        {"title":"gumia","desc1":"","desc2":"tūma gutu ūnyite kīndū","desc3":""},{"title":"gūmīra","desc1":"","desc2":"ūūru kūnyita na kūūnūha na njīra nene","desc3":""},{"title":"guna","desc1":"","desc2":"tuīka ūteithio mūnene","desc3":""},{"title":"gunya","desc1":"","desc2":"ihūga o hanini","desc3":""},{"title":"gūnyara\/gūgūnyara","desc1":"","desc2":"gucaīrīria tarī gūkūnjakūnjana","desc3":""},{"title":"guoko","desc1":"moko","desc2":"ciīga iria icunjurīte ciande-inī ihūthagīrwo kūnyita indo; magūrū ma mbere ma nyamū cia magūrū mana ","desc3":""},{"title":"guoya","desc1":"maguoya","desc2":"mūhianīre wa njuirī ūrīa ūmeraga rūa-inī rwa nyamū iria itombūkaga","desc3":""},{"title":"guoya","desc1":"","desc2":"ūndū wa gwītigīra maūndū marīa ūtaramenya mekūrīkīrīra atīa","desc3":""},{"title":"guoyohia","desc1":"","desc2":"makania; īkanīra guoya","desc3":""},{"title":"gurara","desc1":"","desc2":"ringwo ūtihio kana ūgīe na ūimbo; ūrūo nī indo iria ūraigithītie wone umithio mwega","desc3":""},{"title":"guraria","desc1":"","desc2":"cūngīriria nguraro; īka igongonga rīa ngurario","desc3":""},{"title":"gūrūka","desc1":"","desc2":"umwo nī ngoma: gīo nī ngoma njūru; gwīka maūndū moranītwo na mwīcirīrie mwega nīūndū wa kūrūara tombo","desc3":""},{"title":"guruma","desc1":"","desc2":"kiswahili nyamū kūrarama ","desc3":""},{"title":"gurumūka","desc1":"","desc2":"ūkīra kuuma toro o rīmwe na mūthitūku","desc3":""},{"title":"gutha","desc1":"","desc2":"tunya o rimwe hatari kugiginyana","desc3":""},{"title":"gūtha","desc1":"","desc2":"ringa","desc3":""},{"title":"gūthiī","desc1":"","desc2":"kuuma handū hamwe kinya handū hangī","desc3":""},{"title":"gūthugua","desc1":"","desc2":"gūthiūrūrūkīria mīthia ya twara kana rūhī handū hamwe ūhahinyīrīirie","desc3":""},{"title":"gūthuguma","desc1":"","desc2":"kūruta gīko kīa mwīri gī gītweku ta maī kūhītūkīra ciīga cia uciari ","desc3":""},{"title":"guthūka","desc1":"","desc2":"teng'era gatīīna gatarī karaya na ihenya rīnene","desc3":""},{"title":"gūthūka","desc1":"","desc2":"aria na mūgambo mūnene wa gwathana","desc3":""},{"title":"guthūra","desc1":"","desc2":"teng'eria gatīīna gatarī karaya na ihenya rīnene","desc3":""},{"title":"gūtirī","desc1":"","desc2":"wagi handū hana","desc3":""},{"title":"gutu","desc1":"","desc2":"rūkūngū rūrīa rwīnyitagīrīra indo-inī cia kīgera nī ūndū wa ūgunyu kana kwaga kūhūthīrwo kwa ihinda","desc3":""},{"title":"gūtū","desc1":"matū","desc2":"kīīga kīrīa kīhūthagīrwo kūigua; ref","desc3":""},{"title":"gūtuba","desc1":"","desc2":"kūrika kamūriko o rīmwe; gūkorwo nī ūndū mūritū ta gūkuīrwo nī mūndū ūrehokete","desc3":""},{"title":"gutūka","desc1":"","desc2":"maka o rīmwe","desc3":""},{"title":"gūtuka","desc1":"","desc2":"mūthenya gūthira; nduma kūingīra; gīthithi gūikara ta mwene e mūrakaru","desc3":""},{"title":"gwake","desc1":"kwao","desc2":"kūndū gūkonainie na mūndū mūna","desc3":""},{"title":"gwata","desc1":"","desc2":"nyita mwaki; mūngūrwa kūanjia kūmera; kinya hīndī na","desc3":""},{"title":"gwatanīra","desc1":"","desc2":"nyitanīra","desc3":""},{"title":"gwathīkīra","desc1":"","desc2":"kūigua mawatho mana","desc3":""},
        {
          "title":"gwatia",
          "desc1":"",
          "desc2":"akania na mwaki; nyita ihu",
          "desc3":""
        },

        {
          "title":"gwatia",
          "desc1":"",
          "desc2":"gwatūra ihīndī kana kīndū kīngī kīrūngarū ta ūguo na gatagatī",
          "desc3":""
        },
        {
          "title":"_gwete",
          "desc1":"",
          "desc2":"ūkinyanīru kūna mūhano: Karīithi nī mūthuri wa gītīyo, ekaga maūndū na njīra īgwete",
          "desc3":""
        },
        {"title":"gwībarita","desc1":"","desc2":"kwīyarahūra na ūndū wī na mwago","desc3":""},{"title":"gwīcūnjūma","desc1":"","desc2":"gwīthuna taarī magūrū ūikarīire; gwīthūthūma","desc3":""},
        {
          "title":"gwīkana",
          "desc1":"",
          "desc2":"gwīkīra ūngī o ūrīa we arī a gwīka; kūgīa na ngwatanīro ya gīīko kīa ūrīrī",
          "desc3":""
        },
        {
          "title":"gwīkithia",
          "desc1":"",
          "desc2":"ithako rīa ciana rīa kwīhithanīra ūmwe agacaria arīa angī",
          "desc3":""
        },
        {
          "title":"gwītemania",
          "desc1":"",
          "desc2":"kwīrekania thī o ūguo hatarī kīharīro",
          "desc3":""
        },
        {"title":"gwīthikīra","desc1":"","desc2":"gūikara ūkirīte na gīthiithi gītarī gīkengu, ūtekwenda kwaria nī ūndū wa kīeha kana kūmaka","desc3":""},{"title":"gwīthūthūma","desc1":"","desc2":"gwīcūnjūma","desc3":""},{"title":"gwītigīra","desc1":"","desc2":"kūmakio nī kīndū kana ūndū ūngīcūngīrīria ūgwati","desc3":""},
        {
          "title":"gwītirimia","desc1":"","desc2":"gwītirīrīra na kīndū nīguo ūhote gūthiī","desc3":""},
        {"title":"gwitū","desc1":"gwakwa","desc2":"kūndū gūkonainie na mwaria","desc3":""},
        {"title":"gwītwo","desc1":"","desc2":"kūūrio ūthiī handū hana; gūkua","desc3":""}];
    }
    if(widget.alphabet == 'H') {
      _allUsers = [{"title":"haa","desc1":"kuu","desc2":"kiugo gīkī kīhūthagīrwo gī kīūria:handū mwaria ataramenya","desc3":""},{"title":"haara","desc1":"","desc2":"igua na ūtaūkwo nī ūndū; thingata mūndū ūgwīkīte ūūru nīguo arīhe ūūru ūcio kana amenye ndūkenetio nī ūrīa ekīte; hang'a indo kūndū na kūndū ūcicokanīrīrie hamwe; nyamū gwetha irio","desc3":""},{"title":"haarīa","desc1":"","desc2":"handū he gatīna kaigana ūna kuuma harīa mwaria arī","desc3":""},{"title":"haata","desc1":"","desc2":"tindīka kīndū ūkīhūthīra kīndū gīthondekeirwo wīra ūcio kaingī nīguo ūtherie handū mūhano: haata rūragara rūrīa ūrūte kīara-inī","desc3":""},{"title":"haca","desc1":"","desc2":"hinyīrīria ūkīgayania","desc3":""},{"title":"hacwo","desc1":"","desc2":"hinyīrīrio nī ūrīa ūragayanīra","desc3":""},{"title":"hagaiga","desc1":"","desc2":"tangīka ngoro nī kūmakīra ūndū","desc3":""},{"title":"hagaria","desc1":"","desc2":"kurutithia kīndū igūrū rīa kīngī nīguo kīūhīge","desc3":""},{"title":"hagī","desc1":"","desc2":"harīa nyūngū īikaragīra riko-inī rīthondeketwo na kahagī; rora kahagī","desc3":""},{"title":"hagūka","desc1":"","desc2":" kīndū kūgūa kuuma harīa kīigīrīirwo: mūhano: nyūngū nīyahagūka gītheri gīothe gīaitīka; kūgūa na rwere","desc3":""},{"title":"hagūra","desc1":"","desc2":"gūithania kīndū kīrūngiī hatarī ūbacīrīri; Eheria mūndū wathani-inī kia hinya na negetha wathane ithenya riake","desc3":""},{"title":"haha","desc1":"","desc2":"harīa mwaria arī","desc3":""},{"title":"hahaatīria","desc1":"","desc2":"kwīyoera indo nyingī hatarī gūcaīra arīa angī matikaage","desc3":""},{"title":"hahama","desc1":"","desc2":"hahaatīria indo ciene","desc3":""},{"title":"hahūka","desc1":"","desc2":"nyitwo nī kīmako o rīmwe na gwa kahīnda kanini nī ūndū wa kumīrīrwo nī ūndū kana kīndū o rīmwe ūterīgīrīire","desc3":""},{"title":"hahūra","desc1":"","desc2":"tūma nyamū kana mūndū ahahūke","desc3":""},{"title":"haica","desc1":"","desc2":"ambata igūrū rīa kīndū; nyamū ya njamba kuonana kī mwīrī na ya nga","desc3":""},{"title":"haicwo","desc1":"","desc2":"nyamū ya nga kuonanwo nayo kīmwīrī nī ya njamba","desc3":""},
        {
          "title":"hairū",
          "desc1":"kūirū",
          "desc2":"handū he na rūnyaga ta rwa makara; handū he na ūgwati mūnene",
          "desc3":""
        },
        {
          "title":"haiya",
          "desc1":"",
          "desc2":"kiugo gīa kuonania kīmako, mūthitūko kana mūhahūko mūhano: haiya! Atī kwanyu gūtiīrīga mbura na gwitū yurīte karī thī gakongoya!",
          "desc3":""
        },
        {"title":"haka","desc1":"","desc2":"tandayia kīndū gītenderū ta maguta igūrū rīa kīndū; heana ihaki ","desc3":""},{"title":"hake","desc1":"hao","desc2":"mu3","desc3":"handū hakonainio na ūrīa ūrarīrīrio"},{"title":"hakiri","desc1":"","desc2":"Kiswahili rūkobe","desc3":""},{"title":"hakuhī","desc1":"gūkuhī","desc2":"handū he na gatīīna gatarī kanene","desc3":""},{"title":"hakūra","desc1":"","desc2":"hokora; nina ūhoti wa njamba gūciarithia na ūndū wa kūnūha kīīga gīa kūruta mbegū cia ūciari","desc3":""},{"title":"hamba","desc1":"","desc2":"thiī handū igūrū","desc3":""},{"title":"hamwe","desc1":"","desc2":"handū hana hatarī na hangī; gūīka ūndū na ngwatanīro","desc3":""},{"title":"hana","desc1":"kūna","desc2":"handū hakonainie na ūhoro ūrīa ūrarīrīrio no hatiragwetwo nīha","desc3":""},{"title":"handa","desc1":"","desc2":"īkīra kīndū tīīri-inī nīguo kīmere; rūgamia kīndū kīnyitīrīirwo nī tīīri gītikagūe","desc3":""},{"title":"handū","desc1":"kūndū","desc2":"harīa hangīonwo, hahutio kana hathio ","desc3":""},{"title":"hang'a","desc1":"","desc2":"thiī haha na harīa ūgīetha wīhokete kuona umithio wa gwīka ūguo","desc3":""},{"title":"hangī","desc1":"kūngī","desc2":"handū hana tiga harīa he kūgwetetwo mbere","desc3":""},{"title":"hang'i","desc1":"","desc2":"mathaga ma atumia mekagīrwo gūtū-inī mathondekagwo na rūgucio rwa gīthiūrūrī rūīkīrītwo ciūma","desc3":""},{"title":"hangīra","desc1":"","desc2":"īkīra kīndū gīa kūhūthīrwo wīra-inī ta ithanwa kana rūhiū mūnyito","desc3":""},{"title":"hang'ūra","desc1":"","desc2":"hagūra","desc3":""},{"title":"hang'ūranio","desc1":"","desc2":"gūithio rīrīa ūrūngiī ūtegūbacīrīrwo ","desc3":""},{"title":"hanya","desc1":"","desc2":"tiihia na ndwara; irema cia gūtiihio na ndwara; rūma ūthecete na ndwara","desc3":""},{"title":"hanyūka","desc1":"","desc2":"thiī handū hana na ihenya rīnene","desc3":""},{"title":"hao","desc1":"hake","desc2":"mu3","desc3":"wūingī wa hake"},{"title":"hara","desc1":"","desc2":"thirīrwo nī ūtonga; tiihia na ndwara kana kīndū kīna tūmīthia tūkuhī; nguraro ciumanīte na kūharwo","desc3":""},{"title":"haragana","desc1":"","desc2":"amūkana hatarī mūtaratara; ūndū uuma mūtabarīre gūthira hatarī mūtaratara","desc3":""},{"title":"haranio","desc1":"","desc2":"ngūī ciumanīte na mūtonyano mūhano: acio matūire na haranio kuma rīrīa maregire kūhanda ngiri","desc3":""},{"title":"harata","desc1":"","desc2":"kwaria ndeto thuthurie na kinyi","desc3":""},{"title":"harī","desc1":"kūrī","desc2":"handū he na kīndū, mūndū kana ūndū mūna","desc3":""},{"title":"harīa","desc1":"","desc2":"handū haragwetetwo ihinda rīhītūku; handū hana","desc3":""},{"title":"harīria","desc1":"","desc2":"thagathaga kīndū nīguo kīhūthīke ","desc3":""},{"title":"harīrīria","desc1":"","desc2":"harīria","desc3":""},{"title":"harūka","desc1":"","desc2":"tonya handū hakundeeru ","desc3":""},{"title":"harūkia","desc1":"","desc2":"tonyia handū hakunderu","desc3":""},{"title":"harūria","desc1":"","desc2":"tihia nī kūhara na kīndū","desc3":""},{"title":"hata","desc1":"","desc2":"remererwo kuuma handū ūnyitītwo nīho","desc3":""},{"title":"hatha","desc1":"","desc2":"thabai; makīria ma kīndū kīmwe gūciaranīrwo hamwe iciara-inī rīmwe","desc3":""},{"title":"Hatĩka","desc1":"","desc2":"Ũndũ ũkũhatĩkĩte; ũndũ mũritũ ta wa mũrimũ, ndwari nene kana thĩna mũnene: mũnyamarĩko","desc3":""},{"title":"Hatĩka","desc1":"","desc2":"tindĩka kinya ũrĩa mũtindĩke atigĩrio handũ hakunderu ataraiganĩra;Nyamaria","desc3":""},{"title":"hatīra","desc1":"","desc2":"tindīkīrīria kīndū handū hakunderu gūgīkīra","desc3":""},{"title":"hatirī","desc1":"","desc2":"gūkorwo kīrīa kīrarīrīrio gītikoretwo ho: wagi wa gītūmi kīa ūndū mūna mūhano: hatirī kīrīa kīramūrīria","desc3":""},{"title":"hatīrīria","desc1":"","desc2":"agarara kīhooto kīrīa gīkoniī mūndū ūngī kana nyamū; hatīra","desc3":""},{"title":"hau","desc1":"kūu","desc2":"handū hana harekīrwo ūndū kana hakaigwo kīndū","desc3":""},
        {
          "title":"haya",
          "desc1":"",
          "desc2":"kiugo gīa gwītīkīra ",
          "desc3":""
        },
        {
          "title":"haya",
          "desc1":"",
          "desc2":"kuoya indo ūgīciganagīrīra handū igūrū",
          "desc3":""
        },
        {
          "title":"haya",
          "desc1":"",
          "desc2":"korora karūkorora karecokera na gatiroimūkana",
          "desc3":""
        },
        {"title":"he","desc1":"","desc2":"kiugo gīa kūhoya kīndū","desc3":""},{"title":"he","desc1":"","desc2":"neana ","desc3":""},{"title":"heega","desc1":"kwega","desc2":"hagīrīru hatarī na ūnūhi","desc3":""},{"title":"heeha","desc1":"","desc2":"heherera","desc3":""},{"title":"heherera","desc1":"","desc2":"arīria na mūgombo mūnini matū-inī ma mūndū ūndū ūtangīiguīka kūnene","desc3":""},{"title":"heene","desc1":"kwene","desc2":"harīa hatagūkoniī","desc3":""},{"title":"heenia","desc1":"","desc2":"īra ndeto itarī cia maa","desc3":""},{"title":"heho","desc1":"","desc2":"rīera ihehu","desc3":""},{"title":"heke","desc1":"","desc2":"kīīga kīa nyamū ya njamba kīrīa kīrutaga mbegū cia ūciari","desc3":""},{"title":"henereria","desc1":"","desc2":"hīngīca na waara werekeirie mūhīngīcwo handū hana","desc3":""},{"title":"heneria","desc1":"","desc2":"heana ndumīrīri ya hitho na njīra ya ciīko handū ha ciugo","desc3":""},{"title":"henia","desc1":"","desc2":"kūruta ūtheri ūramūrīka ūgītithagia","desc3":""},{"title":"henūka","desc1":"","desc2":"hiūka o rīmwe hatarī gūcokera","desc3":""},{"title":"heo","desc1":"","desc2":"nengerūo kīndū wītīkīrītio kūhūthīra kana gwatha; ciara","desc3":""},{"title":"herekia","desc1":"","desc2":"thirīkia; gūcokera maūndū ūrakanio gwīka nīguo ūrakarie ūria ūragūkania","desc3":""},{"title":"heta","desc1":"","desc2":"kweheria kīndū kīrahumbīra handū","desc3":""},{"title":"hetwo","desc1":"","desc2":"eherio harīa ūhumbīrīte; kīrīgū kūrua","desc3":""},{"title":"hīa","desc1":"","desc2":"gūcinwo nī kīndū kīhiū; rugīka","desc3":""},{"title":"hīa","desc1":"rora","desc2":"ruhīa","desc3":""},{"title":"higo","desc1":"","desc2":"ciīga ciī thīinī wa mwīrī nduune, ina mūmbīre ta wa noe, irīa ihūthīkaga gūthambia thakame ikaruta gīko kī mathugumo","desc3":""},{"title":"higūka","desc1":"","desc2":"mahīndī kūrekania igathīkanīrio-inī; kīndū kūgūa kuuma harīa kīigīrīirwo: mūhano: nyūngū nīyahigūka gītheri gīothe gīaitīka","desc3":""},{"title":"hiha","desc1":"","desc2":"hihinya kīndū kiume maī","desc3":""},
        {
          "title":"hīha",
          "desc1":"",
          "desc2":"eheria mai thī",
          "desc3":""
        },
        {
          "title":"hihi",
          "desc1":"",
          "desc2":"kiugo kīgwetagwo nī mūndū akīyūria ūndū e na nganja na guo mūhano: ī hihi Wairimū nī aramenyire ūhoro ūcio?; kiugo kīhūthagīrwo gwīkīra ūhoro mūna ūritū makīria mūhano: hihi nī ūramenya ūngīgakinya hau nyūkwa onete maigana?",
          "desc3":""
        },
        {"title":"hihia","desc1":"","desc2":"kūgucia na kūruta rīera mahūri-inī","desc3":""},{"title":"hīhia","desc1":"","desc2":"cina na mwaki","desc3":""},{"title":"hihinya","desc1":"","desc2":"gūtindīka kīndū gītarehera harīa kīrī","desc3":""},{"title":"hiinga","desc1":"","desc2":"mūndū wītuaga ūrīa atarī","desc3":""},{"title":"hinga","desc1":"","desc2":"ūndū ūrarī mweterere gūkinyanīra","desc3":""},{"title":"hīīnga","desc1":"","desc2":"kīndū kīhandīte kūhīngīca magūru ma kīndū kīrathiī; rakaria mūndū nī ūndū wa mīario kana gīīko ekīte","desc3":""},{"title":"hīīra","desc1":"","desc2":"gīthaka kīhīu","desc3":""},
        {
          "title":"hīka",
          "desc1":"",
          "desc2":"hiūhia kīndū kīrīke kana gīkinye na ihenya",
          "desc3":""
        },
        {
          "title":"hīkīkī",
          "desc1":"",
          "desc2":"o rīmwe na ihenya ūterīgīrīirwo",
          "desc3":""
        },
        {
          "title":"hīkīkī",
          "desc1":"",
          "desc2":"ūhoro wa gūkorwo ūkīhīka ūndū ūtarī na wetereri",
          "desc3":""
        },
        {
          "title":"hīmbīria",
          "desc1":"",
          "desc2":"nyita mūndū gīthūri-inī ūmūrigicīte na moko; kwīyoera ciothe hatarī tha na arīa angī",
          "desc3":""
        },
        {
          "title":"hinahi",
          "desc1":"",
          "desc2":"ihenya rītarī gītūmi",
          "desc3":""
        },
        {"title":"hīnda","desc1":"","desc2":"kūnyua mbakī na maniūrū kana kīromo","desc3":""},{"title":"hīndī","desc1":"","desc2":"ihinda rīna","desc3":""},{"title":"hinga","desc1":"","desc2":"kirimania handū he na mwanya nīguo mwanya ūthire; tiga ūndū mūna wa kīmerera nīguo wambe ūhingie ūndū mūna","desc3":""},{"title":"hīngīca","desc1":"","desc2":"kūhe mūndū ūhoro mūgarū na ūrīa arenda kūmenya; ingīra njīra-inī ya kīndū","desc3":""},{"title":"hīngīcwo","desc1":"","desc2":"heyo ūhoro mūgarū na ūrīa ūrenda kūmenya","desc3":""},{"title":"hingīra","desc1":"","desc2":"kirimania handū nīguo kīrīa gī thīini gītikahote kuuma; kirimania njīra nīguo kīndū kana mūndū mūna ndakagere ho","desc3":""},{"title":"hingo","desc1":"","desc2":"ihinda rīna","desc3":""},{"title":"hingūra","desc1":"","desc2":"kirimanūra handū hagīe na mwanya ūngītonyerwo","desc3":""},{"title":"hīngwo","desc1":"","desc2":"ringwo ūgīthii, nī kīndū kīhandīte mbere yaku; īkwo kaūndū gategūgūkenia nī mūndū ūngī","desc3":""},{"title":"hīnja","desc1":"","desc2":"mwīrī gūkorwo ūtarī na nyama kana maguta maingī","desc3":""},{"title":"hinya","desc1":"","desc2":"ūhoti","desc3":""},{"title":"hinya","desc1":"","desc2":"thīīka ūtuīke mūtutu mūceke; ithīrana","desc3":""},{"title":"hinyara","desc1":"","desc2":"hīnja na wage hinya","desc3":""},{"title":"hinyīrīria","desc1":"","desc2":"gūtindīkīrīria kīndū gītarehera harīa kīrī; agarara kīhooto gīa kīndū kana mūndū","desc3":""},
        {
          "title":"hira",
          "desc1":"",
          "desc2":"kweheria ūkaiga handū hana; īkīra mūndū-wa-nja ūtahikītie ihu",
          "desc3":""
        },
        {
          "title":"hīīra",
          "desc1":"",
          "desc2":"mbembe kūharīrīka kwanjia gūthuka; ihīī kuonania gūkinyanīra kūrua na kwanjia gwīka maūndū ma kūonanania nī ikinyire kūrua ta kūina nyīmbo cia mūhīīro",
          "desc3":""
        },
        {"title":"hīrīga","desc1":"","desc2":"kūgita thiingo cia nyūmba na mīhīrīgo","desc3":""},{"title":"hīrīgo","desc1":"","desc2":"rora mūhīrīgo","desc3":""},{"title":"hīrīre","desc1":"","desc2":"ūtaaro","desc3":""},{"title":"hīrīrī","desc1":"","desc2":"rūtere","desc3":""},{"title":"hīrīta","desc1":"","desc2":"andū gūikara marigicīirie kīndū ta ūrīa andū marigicagīria mwaki makīwota","desc3":""},{"title":"hīta","desc1":"","desc2":"guīma; teng'eria mūndū kana kīndū ūkīroretie handū hana","desc3":""},{"title":"hiti","desc1":"","desc2":"nyamū ndīa - nyama ya gīthaka īhana ta ngui na ī magūrū ma thutha makuhī kwī ma mbere na mwīrī wayo ūkorogwo na maroro","desc3":""},{"title":"hitha","desc1":"","desc2":"iga handū hatoīyo","desc3":""},{"title":"hitho","desc1":"","desc2":"ūndū ūtarī mumbūranīre","desc3":""},{"title":"hithūria","desc1":"","desc2":"umbūra hitho; ona kīrīa kīrarī kīhithe","desc3":""},{"title":"hītūkia","desc1":"","desc2":"ītīkīria kīndū gīkīre kuma mwena ūmwe kinya mwena ūrīa ūngī; ītīkīra atī kīndū nī kīagīrīru","desc3":""},{"title":"hiūha","desc1":"","desc2":"kīndū gūkorwo kīnyitīte ūrugarī; gūthiī na ihenya ūtegūteng'era","desc3":""},{"title":"hiūhia","desc1":"","desc2":"kūgwatithia kīndū ūrugarī gīkahiūha; kūhanyūka na kīndū nīgetha ūgīkinyie narua","desc3":""},{"title":"hiūkīrwo","desc1":"","desc2":"ng'ūrīka","desc3":""},{"title":"hoboka","desc1":"","desc2":"tonyerera thīiniī mūhano: nda yake īhobokete nī kūhūūta. Tīīri ūrīa ūrahumbīrīte irima nī ūrahobokire wothe","desc3":""},{"title":"hoca","desc1":"","desc2":"hinyīrīrīka nī mūrimū kana ūndū ūratūma ūrwo nī hinya mwīrī-inī","desc3":""},{"title":"hocerera","desc1":"","desc2":"haana ta ūra hoca","desc3":""},{"title":"hocia","desc1":"","desc2":"cuuria kīndū handū gīikare gīcunjurīte","desc3":""},{"title":"hoha","desc1":"","desc2":"kwaga ūruru nī ūndū wa kūūrwo nī maī, nī ūndū wa gūtūūra mūno kana kūhīa nī riūa  ","desc3":""},{"title":"hokora","desc1":"","desc2":"rogota kīndū ūkīhūthīra kīndū gīa gūtahia kuuma thī","desc3":""},{"title":"homa","desc1":"","desc2":"kūhinyīrīrīka mwīrī nī kwaga gūkūra wega","desc3":""},{"title":"homboya","desc1":"","desc2":"tota","desc3":""},{"title":"homia","desc1":"","desc2":"tūma kīndū gītigakūre wega; tūma kīndū giīgūkūraga kīhaane ta gīacoka na thutha","desc3":""},{"title":"hondera","desc1":"","desc2":"handū hororo kūrikīra na thīiniī","desc3":""},{"title":"hong'ora","desc1":"","desc2":"eheria kīndū handū harīa harī hakīo; garūra ndeto na ūhoro wa maheni","desc3":""},{"title":"honia","desc1":"","desc2":"ninīra mūrimū kana ndwari","desc3":""},{"title":"honia","desc1":"mīhonia","desc2":"thanju njeke irīmītwo mūgūnda","desc3":""},
        {
          "title":"honokia",
          "desc1":"",
          "desc2":"amūrania na ūūru kana mūtino",
          "desc3":""
        },
        {
          "title":"hoo",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria kīndū kīraitika mūhano: ndigithū īraita maī hoo",
          "desc3":""
        },
        {"title":"hoohio","desc1":"","desc2":"kwagithio ūruru nī riūa kana ūndū ūngī ūngītūma mūmera ūrwo nī maī","desc3":""},{"title":"hoorera","desc1":"","desc2":"ikara handū hamwe ūkindīirie; tigana na matūkūya","desc3":""},{"title":"hoota","desc1":"","desc2":"tooria nī gūkīra hinya kana ūgī ūndū-inī uma na gīcindano","desc3":""},{"title":"hora","desc1":"","desc2":"tiga gwakana; heha","desc3":""},{"title":"horera","desc1":"","desc2":"kīmūrī kūhora o rīrīa kīrabatarīkana kīmūrīke","desc3":""},{"title":"horia","desc1":"","desc2":"tigithia gwakana","desc3":""},{"title":"horio","desc1":"","desc2":"muthuri wa horio: irūngū rīmwe rīa marūngū ma mūndūrūme","desc3":""},{"title":"horohio","desc1":"","desc2":"igongona rīa kūhoreeria ūūru ūrīa umanaga na ihītia","desc3":""},{"title":"horora","desc1":"","desc2":"ita o rīmwe","desc3":""},{"title":"hororera","desc1":"","desc2":"itīrīra handū o rīmwe","desc3":""},
        {
          "title":"hororoka",
          "desc1":"",
          "desc2":"thererania maī",
          "desc3":""
        },
        {
          "title":"hota",
          "desc1":"",
          "desc2":"kīria hinya ūrīa ūkīte kūrī we gūcindana nawe kana gūgwīka ūru",
          "desc3":""
        },
        {"title":"hotaa","desc1":"","desc2":"tooria gwīka ūndū ","desc3":""},{"title":"hotha","desc1":"","desc2":"heyana nīguo ūteithie hatarī kīndū wīrīgīrīire gūcokerio","desc3":""},{"title":"hothe","desc1":"guothe","desc2":"handū harīa hararīrīrio hatarī ona hanini haho hatige","desc3":""},{"title":"hoti","desc1":"","desc2":"Ngai; īrīa īrī hinya mūingī wa gwīka o ūrīa īngīrirīria","desc3":""},{"title":"hotoma","desc1":"","desc2":"ūrūo nī ūhoti taarī gūthira ūrathira","desc3":""},{"title":"hotomia","desc1":"","desc2":"uma kīhoto; aga kūrūmīrīra kīhooto cira-inī","desc3":""},{"title":"hotora","desc1":"","desc2":"kwīrigica njohero na kīndū ta kīnyata kana taama","desc3":""},{"title":"hoya","desc1":"","desc2":"ūria ūneyo kīndū kīrīa mūkūnei nī wendi wake gūkūne kana kwaga","desc3":""},{"title":"hūa","desc1":"","desc2":"maī gūthira handū mekwarahīte kana megūthereraga; kīndū kiuma kīimbu kūimbūka","desc3":""},{"title":"hūcūka","desc1":"","desc2":"nda kūimbūka ītige kūhūūhita; rūī kūhūa maī ma mūiyūro ","desc3":""},{"title":"hūgūka","desc1":"","desc2":"garūra ngingo ūrore mwena ūngī","desc3":""},{"title":"hūgūra","desc1":"","desc2":"hūgūka; tūma kīndū kīhūgūke","desc3":""},{"title":"hūgūrūrū","desc1":"","desc2":"kūndū gūtarī maī  kūhakaine na iria kana rūī","desc3":""},{"title":"hūgūya","desc1":"","desc2":"gūrūka","desc3":""},{"title":"huha","desc1":"","desc2":"ruta mīhūmū na kanua; totia mūndū mūremi","desc3":""},{"title":"hūhi","desc1":"","desc2":"gūikanīria ciugo cia kīnyenyo ","desc3":""},{"title":"hūhita","desc1":"","desc2":"imba nda; rūī kūiyūra rūkoina","desc3":""},{"title":"huho","desc1":"rūhuho","desc2":"rora rūhuho","desc3":""},{"title":"huhūka","desc1":"","desc2":"umwo nī mīrukī īrīa īgūtūmīte ūimbe","desc3":""},{"title":"hūhūngi","desc1":"","desc2":"īrī mūhahī","desc3":""},{"title":"hūhūtīka","desc1":"","desc2":"aria mīario ītarī na wīigīrīrīki na ītarī kīguni","desc3":""},{"title":"huhuya","desc1":"","desc2":"ororoa nī kūihūgio nī maī","desc3":""},{"title":"huka","desc1":"","desc2":"thira biū kwage ona matigari","desc3":""},{"title":"huko","desc1":"","desc2":"kīūmbe kīhaana ta mbīa no gīikaraga mīthongorima-inī","desc3":""},{"title":"hūma","desc1":"","desc2":"huhia naihenya ta ūrīa mūndū ahuhagia nī ūndū wa gūteng'era","desc3":""},{"title":"humba","desc1":"","desc2":"īkīra matonyo","desc3":""},{"title":"humbīka","desc1":"","desc2":"humbīra kīndū nīguo gītikonwo","desc3":""},
        {
          "title":"humbīra",
          "desc1":"",
          "desc2":"igīrīra kīndū igūrū rīa kīngī ",
          "desc3":""
        },
        {
          "title":"hūmī",
          "desc1":"",
          "desc2":"igego rīkūrīte igūrū wa rīrīa rīngī",
          "desc3":""
        },
        {"title":"hūmūka","desc1":"","desc2":"tiga kūhūma; tiga gwīka ūndū wī na mīnoga","desc3":""},{"title":"hunaa","desc1":"","desc2":"mwana kuuma nda ya nyina e mūkuū ihinda rīa gūciarwo rītarī ikinyu","desc3":""},{"title":"hungura","desc1":"","desc2":"gūkunga handu ta ūria mūndū angīkunga rūgiri","desc3":""},{"title":"hungurucūka","desc1":"","desc2":"tuīkanīria handū na ihenya ","desc3":""},{"title":"hūngūtūka","desc1":"","desc2":"uma handū ūhatiganīrie ūthiī handū hatangīkūguna","desc3":""},{"title":"hūni","desc1":"","desc2":" gūkorwo nda īganītie irio; mwītīyo uumanīte na gūkorwo ūingīhīirwo nī kīndū","desc3":""},{"title":"hunia","desc1":"","desc2":"huutia na kīndū ūkīhītūkīirie ta arī kūringa ūraringa nakīo","desc3":""},{"title":"hūnia","desc1":"","desc2":"he irio cia kūigana; he kīndū kana indo cia kūigana","desc3":""},{"title":"hunīria","desc1":"","desc2":"heneria","desc3":""},{"title":"hunyīrīra","desc1":"","desc2":"rīma ta arī kūhurahuria, ūtegūikia mūro thī mūno; rengerera igūrū ūtekūmunya na mīri; īka ūndū oro ūguo","desc3":""},{"title":"hunyū","desc1":"","desc2":"kīrīa kīratūma handū hahunyūke; waagi wa ūruru umanīte na kūhunyūka","desc3":""},{"title":"hunyūka","desc1":"","desc2":"aga ūruru nī kwaga maguta kana kūgīa rūkūngū","desc3":""},
        {
          "title":"hura",
          "desc1":"",
          "desc2":"handa mbeū na njīra ya gūikia o harīa ī kagūa; eheria kīndū taarī kūhaata ūkūhaata na kīndū ta rūhī kana gataama",
          "desc3":""
        },
        {
          "title":"hūra",
          "desc1":"",
          "desc2":"mūhīrīga arī wa njamba kana nga mūhano: ihiko cia hūra ūmwe nī mūgiro Gīkūyū-inī",
          "desc3":""
        },
        {"title":"hūra","desc1":"","desc2":"ringa na hinya ūkīhūthīra kīndū","desc3":""},{"title":"hūrana","desc1":"","desc2":"gūthana; regana na ūndū","desc3":""},
        {
          "title":"huria",
          "desc1":"",
          "desc2":"oya kīndū naigūrū o rīmwe; enja tīīri ūkīwīikagia ta ūrīa ngūkū īkaga",
          "desc3":""
        },
        {
          "title":"huria",
          "desc1":"",
          "desc2":"thinwa",
          "desc3":""
        },
        {"title":"hurunja","desc1":"","desc2":"eherania indo itigaikare hamwe ciikare o kīndū kīrī mwamū na kīrīa kīngī; ikia indo ithiī mwamū; ananga ūtonga","desc3":""},{"title":"hurunjūka","desc1":"","desc2":"ikara mwamū","desc3":""},{"title":"hūrūra","desc1":"","desc2":"guucia kīndū kīgwatīrīire handū nīguo ūkīamūranie","desc3":""},{"title":"hūrūria","desc1":"","desc2":"nyua kīndū ūkīgambagia taarī kūgucia ūrakīgucia na mīrukī gītonye kanua","desc3":""},{"title":"huruta","desc1":"","desc2":"rūruho kūmbūrana; rūhuho gūtwara kīndū","desc3":""},{"title":"hurutīka","desc1":"","desc2":"ūmbūrīka nī rūhuho","desc3":""},{"title":"hurutīra","desc1":"","desc2":"inainia kīndū kīrute rūhuho rwa kūhuruta kīndū kīngī mūhano:hurutīra mwaki","desc3":""},{"title":"hūta","desc1":"","desc2":"nda kwaga irio ūkenda kūrīa","desc3":""},{"title":"hutata","desc1":"","desc2":"ehera wūikare haraya ","desc3":""},{"title":"hutatīra","desc1":"","desc2":"ehera wūikare haraya ūtiganīirie","desc3":""},{"title":"hūtha","desc1":"","desc2":"aūkwo nī kīrīa kīrakūritūhītie","desc3":""},{"title":"hūthia","desc1":"","desc2":"nyarara","desc3":""},{"title":"hūthīka","desc1":"","desc2":"īkwo nawe ūndū mūna; thira nī ūndū wa gūtūmīrwo","desc3":""},{"title":"hūthīra","desc1":"","desc2":"mūtugo umanīte na gūcokera kaingī mūhano: nīarī hūthīra kūnyua maī rūī-inī atanaringa","desc3":""},{"title":"hūthīra","desc1":"","desc2":"īka ūndū na kīndū kīna gī gīagūtūma ūndū ūcio ūhūthe kana wīkīke","desc3":""},{"title":"hūthīrīria","desc1":"","desc2":"aga kuoya ūndū na ūritū ūrīa ūwagīrīire","desc3":""},{"title":"hūthū","desc1":"","desc2":" ūtarī hinya wa ūtonga kana ūhoti mūnene","desc3":""},{"title":"hūti","desc1":"","desc2":"hūūta","desc3":""},{"title":"hūtīro","desc1":"","desc2":"gatagatī ka harīa mbaru ithirīire na honge mwīrī-inī wa nyamū kana wa mūndū ","desc3":""},
        {
          "title":"hutithia",
          "desc1":"",
          "desc2":"tūma kīndū kīhuutie handū hana",
          "desc3":""
        },
        {
          "title":"huu",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria kīndū kīrahuruta mūhano: rūhuho rūrahurutanaga huu",
          "desc3":""
        },
        {"title":"hūūna","desc1":"","desc2":"igania irio","desc3":""},{"title":"hūūta","desc1":"","desc2":"wagi wa irio nda","desc3":""},{"title":"huutia","desc1":"","desc2":"igīrīra kīīga kīa mwīrī ta guoko handū; kīndū kīngī gwīka ta ūguo; igīrīra kīīga kīa mwīrī ta guoko handū nīguo ūigūe ūrīa hatariī","desc3":""},{"title":"huya","desc1":"","desc2":"huhuya","desc3":""},
        {
          "title":"huyo",
          "desc1":"",
          "desc2":"njuīrī iria imeraga njegeke kana kīīga-inī kīa ūndūrūme kana kīa ūtumia ",
          "desc3":""
        },
        {
          "title":"hwa",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria ūndū wīkīkīte na ihenya rīnene mūhano: arahītūkire mūndū ūcio hwa!",
          "desc3":""
        },
        {
          "title":"hwaa",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria ūndū wīkīkīte kahora ūrūmīrīirie ūtegūtigithīria mūhano: rūī rūu nī rūnene rūthereraga hwaa",
          "desc3":""
        },
        {"title":"hwaī","desc1":"","desc2":"ūtukū wa mūthī mūhītūku","desc3":""},
        {"title":"hwaī-inī","desc1":"","desc2":"kwanjia kūgīa mairia nduma īkīingīra","desc3":""},
        {"title":"hwee","desc1":"","desc2":"hwererekera","desc3":""},
        {"title":"hwererekera","desc1":"","desc2":"thira kahora kahora; ūrwo nī hinya kahora kahora","desc3":""}];
    }
    if(widget.alphabet == 'I') {
      _allUsers = [{"title":"_itū","desc1":"","desc2":"kiugo gīa kuuga mwaria nīwe mwene kīrīa kīrarīrīrio mūhano: maitū, witū, citū, gitū","desc3":""},{"title":"ī-","desc1":"","desc2":"kiugo kīonganagīrīrio na ciugo ingī gī gīakuonanīrīria mūhano: īno nīyo; kiugo gīa kuonania gwītīkīra mūhano: ī nī tūgūthiī;","desc3":""},{"title":"īagīria","desc1":"","desc2":"gwītua mwega; īagīrithia","desc3":""},{"title":"īanda","desc1":"","desc2":"īiyūria na irio nda","desc3":""},{"title":"ibata","desc1":"","desc2":"ūndū ūrendekana nīguo ūndū mūna ūgacīre: ibataro","desc3":""},{"title":"ibataro","desc1":"mabataro","desc2":"ibata","desc3":""},
        {
          "title":"ibati",
          "desc1":"",
          "desc2":"kīgera gīturītwo gī gīa kūgita",
          "desc3":""
        },
        {
          "title":"ibebe",
          "desc1":"",
          "desc2":"mūmera wa mbembe ūrīa ūkūrīte kuma tīīri-inī na nīho mbembe īkūragīra",
          "desc3":""
        },
        {"title":"ibuba","desc1":"mabuba","desc2":"inyamū inene rīa kūiga indo ndweku ta maī","desc3":""},{"title":"ibuku","desc1":"mabuku","desc2":"handū handīkītwo kana handīkagīrwo mohoro mana nīguo mathomagwo ho","desc3":""},{"title":"iburi","desc1":"maburi","desc2":"gītaama gītumīrīirwo handū he na mūnyito gī gīa kwīhumbīra mbura kana riūa","desc3":""},{"title":"ibuurū","desc1":"","desc2":" rūbūa","desc3":""},{"title":"ībuya","desc1":"","desc2":"kwīitīrīria mūhu kana rūkūngū","desc3":""},{"title":"ibūyū","desc1":"kībūyū","desc2":"rora kībūyū","desc3":""},{"title":"īcaara","desc1":"","desc2":"ītīa","desc3":""},{"title":"icembe","desc1":"macembe","desc2":"Kiswahili","desc3":"mūraū ūhangīrītwo mūnyito mūraihu wa kūrīma kana kwenja irima na njīra ya gūtema tīīri"},{"title":"icere","desc1":"gīcere","desc2":"kīndū kīamūranītio na njīra ya gūcerehūrwo; kīndū gītambūrūku kīamūranītio he kīngī ","desc3":""},{"title":"iciara","desc1":"maciara","desc2":"gīko gīa gūciara mwana ","desc3":""},{"title":"iciciara","desc1":"aciciara","desc2":"rītwa rīrīa mūtumia etaga ithe wa mūthuriwe","desc3":""},{"title":"icoki","desc1":"njoki","desc2":"mītī īrīa īkagīrwo nyamū ngingo nīgetha īhote kūguucia kīndū gī thutha wacio ta mīraū","desc3":""},{"title":"icokio","desc1":"macokio","desc2":"ūhoro ūheanītwo thutha wa ūhoro ūngī gūkorwo ūheanītwo kana kīūria kīūrītio.","desc3":""},{"title":"icoya","desc1":"macoya","desc2":"ihuti rīa mūramba wa irigū kana ihīndu","desc3":""},{"title":"icūhia","desc1":"","desc2":"ruta makoro ma kīndū kīrūngarū ta kīgwa; temerera mūthia wa kīndū kīrūngarū ūhane mūthece mūhano: ciana nī ciī tihagia mūno igī-icūhia tūramu","desc3":""},{"title":"icungwa","desc1":"macungwa","desc2":"Kiswahili: itunda rīa mūmera wa mūcungwa","desc3":""},{"title":"iga","desc1":"","desc2":"tūma kīndū kana mūndū akorwo handū hana na ūndū wa wīko waku kīūmbe","desc3":""},{"title":"īga","desc1":"","desc2":"īgūmīra","desc3":""},{"title":"igai","desc1":"magai","desc2":"indo iria mūndū atigagīrwo nī aciari ake","desc3":""},{"title":"igana","desc1":"magana","desc2":"","desc3":""},{"title":"igana","desc1":"","desc2":"kinya gīkīro kīrīa kīrendekana","desc3":""},{"title":"igania","desc1":"","desc2":"gīa mūigana ūrīa ūrabatara ","desc3":""},{"title":"igania","desc1":"","desc2":"iga ūtarī na ūbacīrīri","desc3":""},{"title":"iganīra","desc1":"","desc2":"ītīkīra kīrīa kīho ona akorwo tikīo kīega ona kana kīiganu","desc3":""},{"title":"iganīra","desc1":"","desc2":"kīndū kūhaorka handū gīgakorwo ti kīnene kūhakīra na ti kīnini gūkīra ūrīa kīagīrīire","desc3":""},{"title":"iganjo","desc1":"maganjo","desc2":"handū hathamītwo hagatigwo hatarī na atūūri","desc3":""},{"title":"igata","desc1":"","desc2":"mahiga moimaga maī-inī mathīyagwo me ma gwīkīra irio mūcamo","desc3":""},{"title":"igegania","desc1":"","desc2":"ūndū wa kūmakania ūtarī wonwo","desc3":""},{"title":"igego","desc1":"magego","desc2":"rīkoragwo thīinii wa kanua rīmerete kīni-inī rī rīa kūrūma, gūtambura kana gūtanuka ","desc3":""},{"title":"igerio","desc1":"","desc2":"ūndū wa kūgera wīkindīru wa mūndū","desc3":""},{"title":"igima","desc1":"magima","desc2":"rīothe rītarī itinie kana rīkeherio kīndū","desc3":""},{"title":"igīrīra","desc1":"","desc2":"iga kīndū gīikarīire igūrū rīa kīndū kana handū","desc3":""},{"title":"igoko","desc1":"","desc2":"rūa rwa mūtī","desc3":""},{"title":"igongona","desc1":"magongona","desc2":"gīīko kīrongoreirie ūndū mūna kiumanīte na wītīkio ūkonainie na ūngai","desc3":""},{"title":"igoogo","desc1":"magoogo","desc2":"mūhīrīga wa nyoni cia rīera-inī ikoragwo irī njirū na mūhīrīga ūmwe nī ūrī rūnyaga rwerū gīthūri-inī","desc3":""},{"title":"igooti","desc1":"magooti","desc2":"English itonyo rīhumbagwo mwīrī wa igūrū rīgekīrwo igūrū rīa nguo cia thīinī","desc3":""},
        {
          "title":"igota",
          "desc1":"",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"igothe",
          "desc1":"magothe",
          "desc2":"ūndū kana kīndū gīa kūgegania kana kīa bata mūno mūhano: kahīī nī magothe",
          "desc3":""
        },
        {"title":"igoti","desc1":"ngoti","desc2":"thuutha wa kīongo kīa mūndū harīa ngingo na kīongo inyitanagīra","desc3":""},{"title":"igoto","desc1":"","desc2":"igoko rīa mūramba","desc3":""},{"title":"igua","desc1":"","desc2":"matū kwamūkīra mūgambo; mwīrī kwamūkīra maūndū marīa maūrigicīirie ta heho kana rugarī; meciria gūtaūra maūndū ta ma gīkeno, kīeha,wega kana ūūru","desc3":""},{"title":"iguana","desc1":"","desc2":"nina ngarari; indo itukanītio gūtukana wega igatonyana biū","desc3":""},{"title":"iguithia","desc1":"","desc2":"taarīria mūno nīguo wītīkio ona akorwo ndūraria ma; tūma mūndū kana nyamū īigue īngenu kana ītarī ngenu","desc3":""},{"title":"iguku","desc1":"maguku","desc2":"kīīga gīkoragwo mūgongo-inī hakuhī na ngingo thīinī wa nyamū ta ngamīra kana mīhīrīga īmwe ya ng'ombe na gīkoragwo kīiyūire maguta; waathe ūgīaga thīini wa mūnyiginyigi wa mūndū ūgekūnja akahaana ta arī iguku e nario ","desc3":""},{"title":"igukumīro","desc1":"","desc2":"harīa hatonyagīrwo mūndū akungīte","desc3":""},
        {
          "title":"īgūmīra",
          "desc1":"",
          "desc2":"īga: geria gwīka ūndū ūkīmenyaga ndūngīūhota",
          "desc3":""
        },
        {
          "title":"īgūmīra",
          "desc1":"",
          "desc2":"īkīra hinya wa mwīrī ūndū-inī ūrīa ūreka",
          "desc3":""
        },
        {
          "title":"igūrū",
          "desc1":"",
          "desc2":"kūrīa njata, mweri, riūa na matu ikoragwo; handū hatūūgīru gūkīra harīa hangī; gacūmbīrī; mūthia ūrīa ūtahutītie thī kīndū-inī kīhandīte",
          "desc3":""
        },
        {
          "title":"igūta",
          "desc1":"",
          "desc2":"nyamū irīa irīithagio kūhaicwo ikagwatia ihu",
          "desc3":""
        },
        {"title":"īha","desc1":"","desc2":"thūka makīria","desc3":""},{"title":"ihaki","desc1":"mahaki","desc2":"kīndū kīheanītwo nīguo mūndū one kīndū agararīte kīhooto","desc3":""},{"title":"ihanda","desc1":"mahanda","desc2":"ihinda rīrīa mbeū irekīrwo tīīri-inī nīguo imere","desc3":""},{"title":"ihariria","desc1":"mehariria","desc2":"mwīthagathago nī ūndū wa ūndū mūnene ūkirie gūkinya","desc3":""},{"title":"ihatha","desc1":"mahatha","desc2":"kīrīa gīciaranīirwo ihinda rīmwe kuuma nda īmwe; kīndū gīkūrīte kīnyitaine no kīnyitīrīirwo mūthia-inī ūmwe","desc3":""},{"title":"ihati","desc1":"mahati","desc2":"gūikia kūgūrū ūringe nakuo","desc3":""},{"title":"ihenya","desc1":"","desc2":"mītūkī ya gwīka ūndū hatarī na thieya","desc3":""},{"title":"ihera","desc1":"mahera","desc2":"gīīko gīa kūiguithia ūūru ūrīa ūhītītie","desc3":""},{"title":"iherero","desc1":"","desc2":"kūrīa andū maheagīrwo ihera kana mathīnīkagīra mūno","desc3":""},{"title":"ihīa","desc1":"","desc2":"nguraro yumanīte na kūhīa nī mwaki kana kīndū kīhiū","desc3":""},{"title":"īhia","desc1":"","desc2":"una mūgiro","desc3":""},{"title":"ihiga","desc1":"mahiga","desc2":"kīndū kīūmū gītangīmumuthūrwo na moko kīenjagwo tīīri-inī;kīndū kīyūmbīte gīgakorwo kīūmīte ","desc3":""},{"title":"ihihīro","desc1":"","desc2":"harīa hahihagīrwo","desc3":""},{"title":"ihinda","desc1":"mahinda","desc2":"gatīna kageretwo na mīgendere ya riūa kuuma rīaratha kinya rīthūe, na kuuma rīa thūa kinya rīrathe rīngī, mīthenya kana imera","desc3":""},{"title":"ihīndī","desc1":"mahīndī","desc2":"kīīga kīūmū na kīerū kīrīa nīkīo nyama cia mwīrī ikoragwo inyitithanītio na kīo","desc3":""},{"title":"ihīndu","desc1":"","desc2":"mūmera wa mūhīrīga wa marigū na maciaro maguo nī marī mbegū nene njirū","desc3":""},{"title":"ihītia","desc1":"mahītia","desc2":"gwīka kana kuuga ūndū ūrīa ūtagīrīire","desc3":""},{"title":"ihoro","desc1":"mahoro","desc2":"irima","desc3":""},{"title":"ihoru","desc1":"","desc2":"gwīthikīra nī kīeha","desc3":""},{"title":"ihu","desc1":"mahu","desc2":"mūtumia kana nyamū ya nga gūkorwo īkuuīte mwana ūrethūnga nyūngū-inī ya ūciari","desc3":""},{"title":"ihūa","desc1":"mahūa","desc2":"kīroo;kīroo kana mūmera ūrahūthīka kūgemia nīūndū wa ūruru waguo","desc3":""},{"title":"ihūga","desc1":"","desc2":"kīndū kūgīo nī maī mūhano: itonyo rīake rīihūgītio nī maī ma mbura","desc3":""},{"title":"ihūha","desc1":"mahūha","desc2":"wūimbo ūgīaga mwīrī-inī ūiyūrīte mahira na wī mūrarako mūnene ūhaana tarī kūhīahīa ","desc3":""},{"title":"ihūhi","desc1":"","desc2":"kīanda gīceke kīī na rūī","desc3":""},{"title":"ihuhūkanio","desc1":"kīhuhūkanio","desc2":"rūhuho rūnene iria-inī; kīūndū kīnene gīūkīte o rīmwe gīterīgīrīirwo","desc3":""},{"title":"ihūngū","desc1":"mahūngū","desc2":"ikinya rīa nyamū iria itarī ndwara ta ndigiri kana ng'ombe","desc3":""},{"title":"ihūra","desc1":"","desc2":"īkīra irio cia kūrīyo handū ingīrīrwo ta kīihūri-inī","desc3":""},{"title":"ihūri","desc1":"mahūri","desc2":"kīīga thīiniī wa mwīrī kīrīa kīamūkagīra rīera kuuma na nja wa mwīrī na gīkaruta kuuma mwīrī-inī","desc3":""},{"title":"ihuru","desc1":"mahuru","desc2":"mūhīrīga wa nyoni cia rīera-inī ndīa nyama","desc3":""},{"title":"ihuti","desc1":"mahuti","desc2":"rīkoragwo rīmerete honge-inī cia mīmera na rīkoragwo rīrī itambūrūku na rīceke","desc3":""},{"title":"ihūūra","desc1":"mahūūra","desc2":"ūrirū umanīte na Ngai wa kūrehera andū ūūru nī ūndū wa ūremi wao","desc3":""},{"title":"ika","desc1":"","desc2":"gīa na nganja","desc3":""},{"title":"īka","desc1":"","desc2":"hingia ūndū","desc3":""},{"title":"ikai","desc1":"makai","desc2":"rūūa na nyama iria ihumbīrīte thīa cia mūndū na inyitithanītio na rūthīa rwa igūrū na rwa kīanda; irūma rīa kīndū gīkaiyūra kanua","desc3":""},{"title":"ikama","desc1":"ngama","desc2":"ithanga rīcinītwo nīguo rīturwo riume kīgera","desc3":""},{"title":"ikamburu","desc1":"makumburu","desc2":"igego rīrīa rītanukaga irio: ikambucu","desc3":""},{"title":"ikara","desc1":"makara","desc2":"ngū njigū icinītwo na mumbo ikahīa no itituīkane igakorwo irī tūrung'o tūirū; gīcinga kīhīīte gīgatunīha gīothe","desc3":""},{"title":"ikara","desc1":"","desc2":"tūūra mūno ūngīgakinya; kindīria handū hana","desc3":""},{"title":"ikaya","desc1":"makaya","desc2":"ndeto cia gūtarīria thīna ūkīhoya ūteithio","desc3":""},{"title":"ikere","desc1":"makere","desc2":"nyama ciūnganīte hamwe kūgūrū-inī kwa mūndū mwena wa thutha wa mūthirimo","desc3":""},
        {
          "title":"ikia",
          "desc1":"",
          "desc2":"tindīka o rīmwe na hinya nīguo kīrīa ūratindīka kīehere hakuhī nawe; nyuguta; gwīkīra kīndū handū taarī gūkīrekia ūrakīrekia gīkagwa ho",
          "desc3":""
        },
        {
          "title":"ikindūi",
          "desc1":"",
          "desc2":"mūndūrūme wī na kīūga kī na hinya",
          "desc3":""
        },
        {
          "title":"ikinū",
          "desc1":"",
          "desc2":"ikindūi",
          "desc3":""
        },
        {"title":"ikinya","desc1":"makinya","desc2":"harīa kūgūrū kwa mūndū kūrangaga naho thī agīthiī; mūhianīre wa ikinya rīa mūndū, ihūngū, gīthu kīa nyamū kana kūgūrū kwa nyoni ūrīa wīcoraga thī mūndū, nyamū kana nyoni īgīthiī","desc3":""},{"title":"ikio","desc1":"","desc2":"tindīkwo; nyugutwo; īkīrwo handū tarī kūrekio warekio ho","desc3":""},{"title":"īkīrīra","desc1":"","desc2":"īkīra nī ūndū wa mūndū kana kīndū kīna; oya na ūritū: tīīya","desc3":""},{"title":"ikongo","desc1":"makongo","desc2":"mūmera wīkaga wega kūndū gūtarī na maī maingī, ūkūraga mathangū kuma gītina-inī kīaguo me na mīthia ī mīigua na nī moimaga ndigi ikogothwo","desc3":""},{"title":"ikoni","desc1":"","desc2":"igoko rīororo rīngīūnūrūo riume tarī mūkanda: mūhano: ikoni rīrī nī rīa mūtī wa muondoe","desc3":""},{"title":"īkonota","desc1":"","desc2":"īthuna, īkuna; ikara na kwīguucia maūndū-inī","desc3":""},{"title":"ikoro","desc1":"makoro","desc2":"kīrīa mīmera-inī kīūagwo, gīkonūrwo, gīgaicūhio kana gīgathigwo nīguo kīeherio kīrīa gī thīinī kīhumbīirwo kīoneke","desc3":""},{"title":"ikorobea","desc1":"makarobea","desc2":"itunda rīa mūtī wa mūkorobea","desc3":""},{"title":"ikorogoca","desc1":"makorogoca","desc2":"rūa rūrīa rūkoragwo rūhumbīrīte mūruru na maī ma itumbī magaikara thīinī wa ruo","desc3":""},{"title":"ikūmbī","desc1":"makūmbī","desc2":"handū hakītwo he ha kūigwo mūthithū wa irio kana magetha: kīūmba kīa ngari ya mwaki kana kīndū kīngī kīūmbītwo na mūhianīre ta ūcio","desc3":""},{"title":"ikundi","desc1":"gīkundi","desc2":"rora gīkundi","desc3":""},{"title":"ikundo","desc1":"makundo","desc2":"harīa ndigi, mūkanda kana kīndū kīngī kīhana ūguo kīogothanīirio nīguo kīohwo, kīohithanio kana kīohererwo handū","desc3":""},{"title":"ikūnia","desc1":"ngūnia","desc2":"Kiswahili mondo ītarī mīcuurio yogothetwo na ndigi","desc3":""},{"title":"ikunū","desc1":"makunū","desc2":"mūmera ūkunūkaga tīīri-inī kana handū he na ūnoru ūkoragwo kīongo-inī ūrī wa gīthīūrūrī kīnyitīrīire kamūrica-inī","desc3":""},{"title":"ikūrūka","desc1":"","desc2":"uma handū he igūrū ūthiī handū harī thī kūhakīra","desc3":""},{"title":"ima","desc1":"","desc2":"rega kūhe:uma","desc3":""},{"title":"imba","desc1":"","desc2":"mūndū kana kīndū kūneneha thīiniī wa kahinda kanini ūndū ūyū ūcūngīrīrio nī maūndū mangī: mūhano: mūgate waimba nī indo iria ūrugītwo nacio. Aimba thithi nī kūringwo na ihiga","desc3":""},{"title":"imbīrīra","desc1":"","desc2":"kūhaana ta handū haraimba","desc3":""},{"title":"imbūka","desc1":"","desc2":"mwīrī gūtiga kūimba ūgacokereria ūrīa ūkoragwo","desc3":""},{"title":"ime","desc1":"","desc2":"maī marīa maitīkaga ūtukū kuuma igūrū gūtarī mbura","desc3":""},{"title":"ina","desc1":"","desc2":"kwaria ciugo itabarīirwo ituīke rwīmbo; cūga mwena na mwena nī kwaga kūrūma","desc3":""},{"title":"īna","desc1":"","desc2":"4","desc3":""},{"title":"inagī","desc1":"managī","desc2":"kīndū gīa kūnaga","desc3":""},{"title":"inaina","desc1":"","desc2":"ina na ihenya rīnene nī kūhurutwo kana nī gītūmi kīngī; mwīrī kūina na ihenya rīnene nīūndū wa heho kana guoya ","desc3":""},{"title":"inama","desc1":"","desc2":"aga kūrūngara werekeire na thī","desc3":""},{"title":"inamia","desc1":"","desc2":"tūma kīndū kīiname","desc3":""},{"title":"inamūka","desc1":"","desc2":"tiga kūinama ūikare ūrūngarīte","desc3":""},
        {
          "title":"inanathi",
          "desc1":"mananathi",
          "desc2":"itunda rīa rūnyaga rwa nyeni, rītuīkaga rīa ngoikoni rierua , rīgaīte mīhari na mathangū marīo makūraga igūrū warīo",
          "desc3":""
      },
        {
          "title":"inanda",
          "desc1":"kinanda",
          "desc2":"rora kinanda",
          "desc3":""
        },
        {
          "title":"indo",
          "desc1":"kīndū",
          "desc2":"rora kīndū",
          "desc3":""
        },
        {
          "title":"ine",
          "desc1":"inei",
          "desc2":"kiugo gīa kuonereria mūndū nī guo arore",
          "desc3":""
        },
        {"title":"ingata","desc1":"","desc2":"gwatha mūndū kana nyamū yehere ","desc3":""},{"title":"īngī","desc1":"ingī","desc2":"kīndū tiga kīrīa gīkūgwetetwo (ririkana kiugo gīkī kīhūthagīrwo kwarīrīria indo iria kiugo gīacio gītagarūrūkaga kuma ūnini kinya ūingī ta mbūri īmwe, mbūri igīrī)","desc3":""},{"title":"ingi-","desc1":"tūngi-","desc2":"kīhūthagīrwo na ciugo cia gīīko iria cianjagia na mūgambo wa 'u' kuonania mūndū ūcio angīkire kana angīka ūndū mūna no kūhanīke ūna (mūtamūkīre wa mūndū akīgweta ūndū ūngīkīkire na ūndū ūngīkīka nī ngūrani)","desc3":""},{"title":"ingī-","desc1":"tūngī-","desc2":"kīhūthagīrwo kīonganīrīirio na ciugo cia gīīko kuonania ūndū mūna no ūhanīke korwo mūndū ūcio nī arī kīrīa agweta  ","desc3":""},{"title":"ingīa-","desc1":"","desc2":"kīhūthagīrwo kīonganīrīirio na ciugo cia gīīko kuonania mūndū ūcio korwo nī eka ūndū mūna, nīkūngīoneka ūna","desc3":""},{"title":"ingīra","desc1":"","desc2":"tonya handū thīiniī","desc3":""},{"title":"ingorome","desc1":"","desc2":"imone cia maitho","desc3":""},{"title":"ing'ūrīkīro","desc1":"","desc2":"gīikarīro kīa mūtumia mwene mūciī","desc3":""},{"title":"ini","desc1":"mani","desc2":"kīīga gītuune kīnene gīkoragwo thīiniī wa gītathira mwena wa ūrīo na nīkīo kīhūranaga na gīko thakame-inī","desc3":""},{"title":"inia","desc1":"","desc2":"tūma kīndū kīine rwīmbo; tūma kīndū kīine nī kwaga kūrūma wega","desc3":""},{"title":"iniūrū","desc1":"maniūrū","desc2":"kīīga kīrī ūthiū-inī kī marima merī ma kūingīrīra rīera rīthiī mahūri-inī na nokīo kīmenyaga mīhera, mīnungo na mīciingū","desc3":""},{"title":"inooro","desc1":"manooro","desc2":"ihiga rīa kūnoora indo ihūthīkaga gūtinia ta hiū","desc3":""},{"title":"inūka","desc1":"","desc2":"coka mūciī","desc3":""},{"title":"inūkia","desc1":"","desc2":"twara mūciī gwaku kana kwa mwene kīrīa ūratwara","desc3":""},{"title":"inyuī","desc1":"wee","desc2":"rora wee","desc3":""},{"title":"inyui","desc1":"kīnyui","desc2":"iria inyuaga","desc3":""},{"title":"inyuīro","desc1":"kīnyuīro","desc2":"rora kīnyuīro","desc3":""},{"title":"ira","desc1":"","desc2":"hana rūnyaga rūirū; ira gīthithi: gīa na gīthithi gītaronania gīkeno; hūthia mūndū, kīndū kana ūndū nī kuona ta ūtaiganīte kana ūgakinya gīkīro kīna","desc3":""},{"title":"ira","desc1":"","desc2":"tīīri mwerū ūkoragwo Kīrīnyaga; maī mahehete makanyitana ta ihiga makoragwo me merū","desc3":""},{"title":"ira","desc1":"","desc2":"mūthenya ūrīa ūratukire nīguo gūkīe ūmūthī ","desc3":""},{"title":"īra","desc1":"","desc2":"he ūhoro","desc3":""},{"title":"irangi","desc1":"","desc2":"rora kīrangi","desc3":""},{"title":"irathimo","desc1":"kīrathimo","desc2":"rora kīrathimo","desc3":""},{"title":"irathīro","desc1":"","desc2":"mwena ūrīa riūa riumagīra rūcinī","desc3":""},{"title":"iratū","desc1":"kīratū","desc2":"kiswahili: kīndū gīthondeke gī gīakūharūkio magūrū nīguo matigathecwo nī mīigua kana marange gīko ","desc3":""},{"title":"iraya","desc1":"maraya","desc2":"mūndū ūkomagwo nake kīmwīrī akarīhwo","desc3":""},{"title":"irebe","desc1":"marebe","desc2":"kīndū gīthondeketwo na kīgera kī na gītina kīiganaine mīena yothe kīhūthagīrwo kūgera mūigana wa indo ta mbembe kana njahī","desc3":""},{"title":"irebeta","desc1":"marebeta","desc2":"gīkundi gīa ciugo irarīrīria ūhoro mūna itabarīirwo ciugagwo na mugīre mūna taarī rwīmbo","desc3":""},
        {
          "title":"irera",
          "desc1":"",
          "desc2":"ime ",
          "desc3":""
        },
        {
          "title":"irī",
          "desc1":"",
          "desc2":"ūtonga wa ng'ūndū, mahiū, ciana, mūthuri kana atumia",
          "desc3":""
        },
        {"title":"īrī","desc1":"","desc2":"kiugo gīkī kīhūthagīrwo kuuga kīndū kīrīa kīrarīrīrio  harīa gīikaire. Kīhūthīkaga na marītwa ma indo ingītarīka no marītwa macio matigarūrūkaga kuuma ūnini kinya ūingī ta: nyūmba īrī ha?","desc3":""},{"title":"iria","desc1":"","desc2":"indo i  handū gatīna na harīa mwaria arī agīcionanīrīria","desc3":""},{"title":"iria","desc1":"","desc2":"handū he na maī maingī marūgamīte","desc3":""},{"title":"iria","desc1":"","desc2":"kīndū gītweku kiumaga nyondo-inī cia nga kana mītī-inī gīkoragwo na rūnyaga rwerū","desc3":""},{"title":"iria","desc1":"","desc2":"tūma kīndū kīire","desc3":""},{"title":"iria","desc1":"mahinda mahītūku","desc2":"","desc3":"indo iragwetetwo, irarī ho kana ironetwo mahinda mahītūku"},{"title":"iriga","desc1":"","desc2":"rigicīria handū na kūhakīrīra kana kūhahandīrīra kīndū kīharigicīirie","desc3":""},{"title":"iriga","desc1":"kiriga","desc2":"ūndū ūtaraharīka","desc3":""},
        {
          "title":"īrīga",
          "desc1":"",
          "desc2":"rīrīa rīamūthia wonire kana ūkīigua mūndū, ūndū kana kīndū; īka ūndū kahinda gatarī gathiu mūno",
          "desc3":""
        },
        {
          "title":"irigithathi",
          "desc1":"",
          "desc2":"mwana wa mbere gūciarwo arī wa kahīī",
          "desc3":""
        },
        {"title":"irigū","desc1":"marigū","desc2":"itunda rīria rīciaragwo nī mūramba","desc3":""},{"title":"irīgū","desc1":"kirīgū","desc2":"rora kirīgū","desc3":""},{"title":"irigūka","desc1":"","desc2":"rūirigo kwehera","desc3":""},{"title":"irigūra","desc1":"","desc2":"eheria rūirigo","desc3":""},{"title":"irima","desc1":"marima","desc2":"handū henjeku hangītonywo kana haikio kīndū","desc3":""},{"title":"irīma","desc1":"kīrīma","desc2":"rora kīrīma","desc3":""},{"title":"irimū","desc1":"marimū","desc2":"ciūmbe ciarī kuo tene iheanagwo ūhoro wa cio ta ng'ano ciarī na maūthī mamwanya ta kūneneha mūno na rīngī gūkorwo na ritho rīmwe inene thiithi-inī na ona kūmeria andū","desc3":""},{"title":"irimū","desc1":"","desc2":"mūndū kana nyamū î na kīūga kīnene","desc3":""},
        {
          "title":"irinda",
          "desc1":"marinda",
          "desc2":"matonyo mehumbagwo nī aka ma Gīthūngū mahana mūthuru",
          "desc3":""
        },
        {
          "title":"īringithia",
          "desc1":"",
          "desc2":"īigīrīra mūrigo wa ūndū ūkorwo ūkīwīciria mūhano: Kang'ethe nī mūndū kīgūta, nī ūkuona ona ndangīringithia gūthiī kūrora mūgūnda.",
          "desc3":""
        },
        {"title":"irio","desc1":"","desc2":"indo irīa ingīrīīka ","desc3":""},{"title":"irīra","desc1":"kīrīra","desc2":"rora kīrīra","desc3":""},{"title":"irīrī","desc1":"kīrīrī","desc2":"rora kīrīrī","desc3":""},
        {
          "title":"irīria",
          "desc1":"",
          "desc2":"kīndū gūthiī gīkīagaga kuoneka wega o ūrīa kīrathiī kīraihīrīirie",
          "desc3":""
        },
        {
          "title":"iriūko",
          "desc1":"",
          "desc2":"handū rūī-inī harīa hatahagīrwo maī kana nyamū ikanyuithīrio maī ho o na kana harīa hethambagīrwo",
          "desc3":""
        },
        {"title":"iroro","desc1":"","desc2":"rūnyaga rūhakītwo handū taarī igūrū rīa rūnyaga rūngī: kīndū kīngī kīhaana ta ūguo mūhano: itonyo riake nī itune na rīna iroro rīirū: mūthuru waku wī na iroro rīa gīko","desc3":""},{"title":"iru","desc1":"maru","desc2":"mwena wa mbere wa igathīkanīro rīa mūthirimo na kīero","desc3":""},{"title":"irua","desc1":"","desc2":"igongona rīa kūrua","desc3":""},
        {
          "title":"īrua",
          "desc1":"",
          "desc2":"itunda gūkūra rīkaigana kūrīo; mwīrī wa mūndū kūgīa thundo īna mahira ī kahana ngoikoni kana īgakorwo ī njerū",
          "desc3":""
        },
        {
          "title":"iruga",
          "desc1":"",
          "desc2":"ndīa",
          "desc3":""
        },
        {"title":"īruha","desc1":"","desc2":"īrua","desc3":""},{"title":"irūngo","desc1":"marūngo","desc2":"gīkīro; gīcunjī kīmwe kīa indo irīa ikoragwo ciagaīte icunjī no no inyitaine ta kīgwa kana mahīndī","desc3":""},{"title":"irura","desc1":"","desc2":"mahuti macinagwo makoima mūhu wa gūcamia irio; mūhu ūcinītwo mahuti macio","desc3":""},{"title":"ita","desc1":"","desc2":"hinga mūmero rīera rītikahītūke","desc3":""},{"title":"īta","desc1":"","desc2":"gweta rītwa rīa mūndū kana nyamū nīguo yūke harī we kana īkūrore","desc3":""},{"title":"ita ","desc1":"","desc2":"andū monganīte marūe na angī; inamia kīndū nīguo kīrīa gīthīiniī wakīo kiume","desc3":""},{"title":"itaha","desc1":"mataha","desc2":"irīo hīu cihūrītwo ","desc3":""},{"title":"itandiūro","desc1":"mītandiūro","desc2":"mūnyamarīko mūnene","desc3":""},{"title":"itanga","desc1":"","desc2":"ananga","desc3":""},{"title":"itangi","desc1":"matangi","desc2":"kīndū kīnene gīa kūiga indo ndweku ","desc3":""},{"title":"itangi-","desc1":"tūtangi-","desc2":"īhūthagīrwo na ciugo cianjīrīirie na mūgambo wa 'u' kuuga mwaria tiga ekire ūndū mūna gūtingīhanīkire ūna","desc3":""},{"title":"itangī-","desc1":"tūtangī-","desc2":"kīonganagīrīrio na ciugo cia gīīko kuuga tiga mwaria eke ūndū mūna, ūna ndūngīahanīka","desc3":""},{"title":"itangīa-","desc1":"tūtangīa-","desc2":"kīonganagīrīrio na ciugo cia gīīko kuuga atī tiga mwaria eka ūndū mūna ūna ndūngīoneka","desc3":""},{"title":"itangīko","desc1":"matangīko","desc2":"matarania maingī nī ūndū wa mathīna kūingīha","desc3":""},{"title":"itara","desc1":"matara","desc2":"handū hathondeketwo nyūmba thīinī igūrū wa riko hacuragio ngū","desc3":""},{"title":"itata","desc1":"matata","desc2":"kīrīa kīgūaga kīndū gītweku gīgīitīka ta mbura Kiswahili tone","desc3":""},{"title":"ītatū","desc1":"","desc2":"3","desc3":""},{"title":"ite-","desc1":"mu1","desc2":"kiugo gīa kuonania mwaria ndegūkorwo agīka ūndū mūna; kiugo gīa kuonania indo na itigwīka ūndū mūna ","desc3":""},{"title":"itega","desc1":"matega","desc2":"kīndū kīrutītwo gī gīa kūheanwo nīguo gīteithīrīrie ūndū-inī mūna","desc3":""},{"title":"itete","desc1":"","desc2":"gītete","desc3":""},{"title":"ithaga","desc1":"mathaga","desc2":"kīndū gīa kwīgemia; kīndū kīronwo kīrī gīathogora mūno harī mwene","desc3":""},{"title":"ithagu","desc1":"mathagu","desc2":"kīīga kīrīa nyoni ihūraga nakīo rīera nīguo ihote kūmbūka; kīndū kīhūthīkaga ta ithagu rīa nyoi ta ndege-inī","desc3":""},{"title":"ithanga","desc1":"","desc2":"mūthemba wa tīīri","desc3":""},{"title":"ithangū","desc1":"mathangū","desc2":"rūhonge rwa mūtī rwī na mahuti","desc3":""},{"title":"ithanjī","desc1":"mathanjī","desc2":"mahuti makūraga handū haarahīte maī","desc3":""},{"title":"ithanwa","desc1":"mathanwa","desc2":"kīgera kīhangīre mūnyito ta wa mūtī gīturītwo gī gīa gūtema mītī","desc3":""},{"title":"itharara","desc1":"","desc2":"icoya rīūmū","desc3":""},{"title":"ithatha","desc1":"mathatha","desc2":"ihiga rīa gūkuuha","desc3":""},
        {
          "title":"ithe",
          "desc1":"maithe",
          "desc2":"mūciari mūndūrūme wa mūndū mūna",
          "desc3":""
        },
        {
          "title":"ithemba",
          "desc1":"",
          "desc2":"itega rīa irio rīheagwo ciumīri; igongona rīa itega rīa irio kūrī ciumīri",
          "desc3":""
        },
        {"title":"ithenya","desc1":"mathenya","desc2":"handū hatarī kīndū he gatagatī wa indo: mūhano: mūhari ūyū wa mbembe wī na ithenya rīratigirwo","desc3":""},{"title":"ithenya","desc1":"","desc2":"mweke wa gūtonya handū","desc3":""},{"title":"itherero","desc1":"","desc2":"mwena waku wa ūrīo ūrorete irathīro; kūrīa rūī rūrathiī","desc3":""},{"title":"itheru","desc1":"matheru","desc2":"inyamū rītarī na kameni","desc3":""},{"title":"itherū","desc1":"","desc2":"gīīko kana mīario ītarī na wīigīrīrīki rīmwe īrī ya gūthakīra mūndū","desc3":""},{"title":"itherūkīro","desc1":"matherūkīro","desc2":"handū hakunūkaga maī kuuma na thī wa tīīri","desc3":""},{"title":" -ithia","desc1":"","desc2":"kĩongagĩrĩrwo mbere wa ciugo cia gĩko kuonania kũrehithĩria ũndũ kana gũtũma ũndũ wĩkĩke mũhano: agithia thayũ. Ciarithia","desc3":""},{"title":"īthing'īrīria","desc1":"","desc2":"gwītindīkīrīria handū hakunderu","desc3":""},{"title":"ithinīkanio","desc1":"","desc2":"gīīko gīa gūthinīkania","desc3":""},{"title":"ithīrania","desc1":"","desc2":"taūkwo; iga na mūtaratara mūkinyanīru","desc3":""},{"title":"ithīria","desc1":"","desc2":"nyita ūndū na ūtaūkwo nīguo","desc3":""},{"title":"ithiriro","desc1":"","desc2":"mūthia wa ūndū; harīa kīndū kīna gīakinya gīticokaga kuonwo rīngī; ūdini mahinda marīa magakorwo nīmo ma mūthia thī īthire","desc3":""},{"title":"īthithimūkwo","desc1":"","desc2":"inaina nī kūigua thithi mwīrī","desc3":""},
        {
          "title":"ithūīro",
          "desc1":"",
          "desc2":"mwena ūrīa riūa rīūragīra gwatuka",
          "desc3":""
        },
        {
          "title":"itiema",
          "desc1":"",
          "desc2":"mwana o wothe ūciarītwo thutha wa irigithathi kana thutha wa mūirītu ūrīa wahingūrire nda ya nyina",
          "desc3":""
        },
        {"title":"ītīīra","desc1":"","desc2":"kenera ūndū mwega wīkīte kana ūkūhanīkīire","desc3":""},
        {"title":"itīīri","desc1":"matīīri","desc2":"handū hamūre hagwīkīrwo ūndū mūna: harīa ihīī na irīgū iruagīra","desc3":""},
        {"title":"itīka","desc1":"","desc2":"anjia rūgendo; haragana kuuma handū harīa kīndū gīkīrītwo","desc3":""},
        {"title":"ītīka","desc1":"","desc2":"cookia mūgambo wa kuonania nī waigua ūgīītwo","desc3":""},
        {"title":"itiki","desc1":"","desc2":"rūtungu rūhūrūrītwo mathangū: mūgogo; handū hathondeke igūrū rīa rūī kana iria he ha kūringīrwo ho ","desc3":""},
        {"title":"itimū","desc1":"matimū","desc2":"itharaita rīturītwo na kīgera rīkahangīrwo mūra-inī, rīa gūtheca thū","desc3":""},
        {"title":"itina","desc1":"matina","desc2":"kīīga kīa aka kīrī igūrū wa ciero mwena wa thutha na nīkīo gīikaragīrwo","desc3":""},
        {"title":"itina","desc1":"gītina","desc2":"rora gītina","desc3":""},
        {"title":"itingī","desc1":"gītingī","desc2":"rora gītingī","desc3":""},
        {"title":"īting'ūria","desc1":"","desc2":"ītīīra ūndū mūna","desc3":""},
        {"title":"itira","desc1":"","desc2":"rora gītira","desc3":""},
        {"title":"ītīra","desc1":"","desc2":"īta ithenya-inī rīa mūndū ūngī; īta mūndū nī ūndū wa gītūmi kīna","desc3":""},
        {"title":"itīrīra","desc1":"","desc2":"ita kīndū thīiniī kana igūrū rīa kīndū kīngī","desc3":""},
        {"title":"ititi","desc1":"matiti","desc2":"gītarūrū kīnyinyi gīa kūiga irio","desc3":""},
        {"title":"ītīya","desc1":"","desc2":"kwīyamba ","desc3":""},
        {"title":"itomboya","desc1":"","desc2":"handū thī īromboya","desc3":""},
        {"title":"itonya","desc1":"","desc2":"gīko gīa kūingīra handū na mītaratara yaho","desc3":""},
        {"title":"itonyero","desc1":"","desc2":"harīa haingagīrīrwo","desc3":""},
        {"title":"itonyo","desc1":"matonyo","desc2":"kīndū gīthondeke gī gīa kwīhumbwo mwīrī","desc3":""},
        {"title":"itote","desc1":"","desc2":"mwana mwende mūno: gītūūnio","desc3":""},
        {"title":"itu","desc1":"matu","desc2":"rīera ihehu rīreraga igūrū, rīhana ngūmba ya guoya wa ng'ondu kana njoya cia nyoni, rī rūnyaga rwerū kana rwa kībuu na nī rīo rīcokaga kuura mbura","desc3":""},
        {"title":"itū","desc1":"ciitū","desc2":"nī kīndū gīkonainie na andū arīa maregweta. Kiugo gīkī kīhūthagīrwo na indo kana nyamū irīa wūingī wacio ndūgarūraga kiugo kīa ūnini ta nyūmba itū…nyūmba ciitū","desc3":""},{"title":"itua","desc1":"matua","desc2":"ūndū ūrīa mūthugundīre na ūgaciirīrwo gwīkwo","desc3":""},{"title":"itua","desc1":"","desc2":"ūndū ūrīa mūndū eyathīte nī ekūwīka kana aūrūmīrīre","desc3":""},{"title":"ituanda","desc1":"matuanda","desc2":"ūndū kana kīndū gīa kūmakania mūno; kīmako kīnene","desc3":""},{"title":"itūhūhū","desc1":"","desc2":"iturutu","desc3":""},{"title":"ituīka","desc1":"","desc2":"ihinda rīa matamu ma wathani kūneanwo kuuma riika rīmwe rīa wathani kinya rīrīa rīngī; igongona rīa kūneana  wathani wa marika","desc3":""},{"title":"ituīro","desc1":"matuīro","desc2":"wathani wa mūthia ciira-inī ūkoniī mūthitangwo","desc3":""},{"title":"itumbī","desc1":"matumbī","desc2":"hinya wa ūciari wa nga ūrīa wīkagīrwo mbegū ya ūndūrūme nīguo matuīke njiarwa; inyamū rīrekagio nī mīhīrīga ya nyoni na nyamū ingī rī gīkorogoca kīhingīire mūūruru na maī kaingī me rūnyaga rwerū na rīngīkomererio nīrīo riumaga gacui kana kaana ka mūhīrīga wa nyina","desc3":""},{"title":"itunda","desc1":"matunda","desc2":"maciaro ma mīmera makūraga macuhīrīire honge; umithio wa ūndū","desc3":""},{"title":"iturīro","desc1":"","desc2":"harīa indo cia kīgera ithondekagīrwo","desc3":""},{"title":"itūrūra","desc1":"","desc2":"itīrīra hatarī na gīthimi","desc3":""},{"title":"iturutu","desc1":"","desc2":"ūndū wa kūmakania; ūndū ūtarataūkīka","desc3":""},{"title":"itūūra","desc1":"matūūra","desc2":"handū hakīītwo ciikaro nī andū aingī","desc3":""},{"title":"ituya","desc1":"matuya","desc2":"matunda ma mūtī wa mūtuya","desc3":""},{"title":"itwo","desc1":"","desc2":"hingwo mīmero ya rīera nīguo rītikaingīre mahūri-inī kana riume","desc3":""},{"title":"ītwo","desc1":"","desc2":"īrwo ūthiī harī ūrīa ūrakūbatara","desc3":""},{"title":"iya","desc1":"","desc2":"oya indo ciene wīigīre ūtarī mwītīkīrie nī mwene","desc3":""},{"title":"iyīra","desc1":"","desc2":"iya nīguo ūheyane; iya ūtūmītwo nī mūndū ūngī wīke guo nīguo ūmūtwarīre","desc3":""},{"title":"iyīruo","desc1":"","desc2":"ūngī kūiya nīguo akūrehere","desc3":""},{"title":"iyūkia","desc1":"","desc2":"amūkīra na wendo mūnene; oya naigūrū na moko","desc3":""},
        {"title":"iyūrūo","desc1":"","desc2":"gīo nī kīndū kinya haage hangī hatigaru hangīgīa","desc3":""}];
    }
    if(widget.alphabet == 'K') {
      _allUsers = [
        {
          "title":"_koniī",
          "desc1":"",
          "desc2":"ūrīa ūhutainie na ūngī mūhano: ūhoro ūcio niī ndūngoniī ona atīa",
          "desc3":""
        },
        {
          "title":"ka",
          "desc1":"",
          "desc2":"kiugo kīhūthagīrwo kuga kīndū nī kīūmū biū mūhano: mūtī ūcio ūmīte ka; kiugo gīa gūtarīria ūrīa kīndū kīūmū gītarī kīnene kīgūthire handū hana mūhano: mūndū ūcio amūringire kīongo ka na rūthanju",
          "desc3":""
        },
        {
          "title":"kaana",
          "desc1":"",
          "desc2":"kahīī kana kairītu kanini kena mīaka ītakīrīte ītano",
          "desc3":""
        },
        {"title":"kaana","desc1":"","desc2":"rega atī nīwīkīte ūndū ūkīmenyaga nī ūwīkīte; rega atī nīūī ūndū na ūma nī atī nīūī ūndū ūcio","desc3":""},{"title":"kaara","desc1":"twara","desc2":"kīīga gīkoragwo mūthia-inī wa guoko kīnyitaine na rūhī na nīkīo kīnyitaga indo","desc3":""},{"title":"kabaikū","desc1":"","desc2":"kamūndū kanini kena hinya komīrīru","desc3":""},
        {
          "title":"kabeere",
          "desc1":"",
          "desc2":"nda",
          "desc3":""
        },
        {
          "title":"kagatho",
          "desc1":"",
          "desc2":"mūndū wa gwītīkīra maūndū mothe ūtarī ūndū ona ūrīkū akararanagia naguo",
          "desc3":""
        },
        {
          "title":"kagica",
          "desc1":"",
          "desc2":"nyīmbo cinagwo nī anake me ikundi o gīkundi kīrūgamīte mūrīmo wao makaina ta arī thimo maroinanīra",
          "desc3":""
        },
        {
          "title":"kagondu",
          "desc1":"",
          "desc2":"ng'ondu ītarī nene kana kori kayo",
          "desc3":""
        },
        {
          "title":"kagwaī",
          "desc1":"",
          "desc2":"wīra mūhūthū ūtarabatara ūgī mūnene, mahinda maingī kana hinya mūnene",
          "desc3":""
        },
        {
          "title":"kaha",
          "desc1":"",
          "desc2":"tinīrīria kīndū wega na ūbacīrīri mūhano: Njūnū nī arakahire mbūri ciake ciothe matū nī guo aikūranage",
          "desc3":""
        },
        {"title":"kahagī","desc1":"tūhagī","desc2":"kīndū gīthondeketwo na kīgera kī na magūrū ma kwīrūgamia na gīgathondekwo kīna handū hakūigīrīra nyūngū. Mwaki wakagio rungu rwa kahagī ūkahiuhia nyūngū","desc3":""},{"title":"kahīī","desc1":"tūhīī","desc2":"mwana mūndūrūme ūtarī mūruu","desc3":""},{"title":"kahinda","desc1":"","desc2":"ihinda rīa ūndū mūna; kūigua gūthiī kīoro gwīteithia; thakame īrīa yuraga andū-a-nja o mweri; hīndī īrīa thakame ya mweri yuraga","desc3":""},{"title":"kahiū","desc1":"tūhiū","desc2":"kīgera gīturītwo na gīkanoorwo gī gīa gūkera kana gūtinia na ūraihu wakīo harīa hatinagia ndūnenehagīra rūhī rwa mūndū mūgima na hanene","desc3":""},{"title":"kahuno","desc1":"tūhuno","desc2":"mwana ūciarītwo e mūkuū","desc3":""},
        {
          "title":"kahūra",
          "desc1":"",
          "desc2":"ahūra: kohora: una kīndū gīkūrīte kīnyitīrīire handū ta rūhonge kana mbembe mūhano: mūkohori nī arīkia gūkahūra mbembe ciothe",
          "desc3":""
        },
        {
          "title":"kaī",
          "desc1":"",
          "desc2":"kiugo gīa kūria kīūria kīronania kīmako mūhano: ī kaī gwathiī atīa tondū mwakira; kiugo gīa kūria kīūria kīronania kwaga kūiganīra na ūndū (kīhūthagīrwo nī mūndū ūreigua atī we e na gīkīro gītūgīru kūrī ūrīa ūrorio) mūhano: kaī arī we ū atinde agīkūma andū gūkū!",
          "desc3":""
        },
        {
          "title":"kaimana",
          "desc1":"",
          "desc2":"biū biū mūhano: tūrenda ūtunyani ūthire kaimana",
          "desc3":""
        },
        {"title":"kairītu","desc1":"tūirītu","desc2":"mūndū-wa-nja ūtarī mūhiku. Tene kairītu nī karīa kaarī karuu no ūmūthī kiugo gīkī nī kīhūthagīrwo mūndū akīgweta karīīgū gatagimarīte kīmaūthī","desc3":""},
        {
          "title":"kama",
          "desc1":"",
          "desc2":"guucia nyondo na moko ciume iria",
          "desc3":""
        },
        {
          "title":"kamanū",
          "desc1":"",
          "desc2":"nyīmbo cinagwo nī kamatimū na kang'ei",
          "desc3":""
        },
        {"title":"kamatimū","desc1":"","desc2":"mūndūrūme ūhikanītie no ciana ciake no nini itigimarīte : mūka etagwo kang'ei","desc3":""},{"title":"kamee","desc1":"tūmee","desc2":"kanyamū kanini gathondeketwo na matunda ma mūngū kahūthagīrwo kūnyuīrwo indo kana gūtahia indo: kaingī indo ndweku","desc3":""},{"title":"kameme","desc1":"tūmeme","desc2":"mūndū ūrīa ūtambagia ūhoro; rediū","desc3":""},{"title":"kameni","desc1":"","desc2":"gīko kīnyitīrīire handū hamwe","desc3":""},{"title":"kamūira","desc1":"","desc2":"kaara ga guoko karīa kanini gwī tuothe","desc3":""},{"title":"kamūira","desc1":"","desc2":"kiugo kīhūthagīrwo kuuga &quot;ita neka ūndū mūna&quot; mūhano: kamūira nyumīte nī ngūkwīra nīguo ume tūcamanie","desc3":""},
        {
          "title":"kamūra",
          "desc1":"",
          "desc2":"gūthambia na maī matheru thutha wa gūthambia na maī mangī makagīa gīko",
          "desc3":""
        },
        {
          "title":"kana",
          "desc1":"",
          "desc2":"mūthenya wa kana wa kiumia",
          "desc3":""
        }
        ,{"title":"kana","desc1":"","desc2":"4th","desc3":""},{"title":"kana","desc1":"","desc2":"kiugo gīa kūendekithia ūndū ūngi tiga ūria ūkūgwetetwo","desc3":""},{"title":"kanda","desc1":"","desc2":"kima mūtū na moko kana kīndū kīngī kīhinyu ta mūtū","desc3":""},{"title":"kanda","desc1":"","desc2":"kiugo kīhūthagīrwo kwarīria mūndū wa gīkīro gīa thī gūgūkīra","desc3":""},{"title":"kandīra","desc1":"","desc2":"kūra na ūgīe na hinya","desc3":""},{"title":"kang'aurū","desc1":"tūng'aurū","desc2":"kīūmbe kīa magūrū manana kī mīthece īrī kanua-inī na ūngī mūting'oe-inī gīthecaga nyamū ingī nayo gīgekīra ūrogi ī ta njīra ya kwīgitīra","desc3":""},{"title":"kang'ei","desc1":"","desc2":"mūka wa kamatimū","desc3":""},{"title":"kangama","desc1":"","desc2":"gegeara nī kūmaka","desc3":""},{"title":"kanitha","desc1":"","desc2":"nyūmba ya ihoero ya Akiristiano","desc3":""},{"title":"kanua","desc1":"tūnua","desc2":"kīīga kīrī ūthiū-inī kīhūthīragwo kūrīa irio na kwaria","desc3":""},{"title":"kanya","desc1":"","desc2":"mweke","desc3":""},{"title":"kanyīra","desc1":"","desc2":"tonyania kīndū kīhinge","desc3":""},
        {
          "title":"kanyitīra",
          "desc1":"tūnyitīra",
          "desc2":"kīmūrī kīhūthagīra rūtambī rūrikītio maguta-inī kūmūrīka: kagwatīra",
          "desc3":""
        },
        {
          "title":"Kanyua-hungu",
          "desc1":"",
          "desc2":"Gīthananwa: mweri ūrīa irio irīmagirwo irīa irahandītwo hīndī ya mbura ya njahi. ūkaga mbere ya Gatumu Gīthūngū November",
          "desc3":""
        },
        {
          "title":"kanyunyui",
          "desc1":"tūnyunyui",
          "desc2":"kīīga kīa ūndūrūme kana kīa ūtumia gīa kaana kanini",
          "desc3":""
        },
        {
          "title":"karagacūka",
          "desc1":"",
          "desc2":"gīa na mīatūka nī ūndū wa kūma mūno; kīndū kīūmū gwatūkanga tūcunjī",
          "desc3":""
        },
        {"title":"karanga","desc1":"","desc2":"ruga na maguta","desc3":""},{"title":"karīnga","desc1":"tūrīnga","desc2":"kīgera gīturītwo ūndū kīngīrutīrwo wīra mūna kana kīohithanio na kīngī","desc3":""},{"title":"kaya","desc1":"","desc2":"ītana na kayū kanene ūkīhoka gūteithio","desc3":""},{"title":"kayū","desc1":"","desc2":"mūgambo mūnene","desc3":""},{"title":"keera","desc1":"","desc2":"ita kīndū gītweku kahora nīguo kīrīa kīrikīte gītigwo thīiniī","desc3":""},{"title":"keheri","desc1":"tweheri","desc2":"harīa mūndū angīthiī nīguo eyamūranie na andū no nī egūcoka harīo arīkia ūrīa egwīkaga","desc3":""},{"title":"kena","desc1":"","desc2":"igua gūcanjamūka; igua mwago","desc3":""},{"title":"kenda","desc1":"","desc2":"9","desc3":""},{"title":"kenera","desc1":"","desc2":"kenio nī ūndū mūna","desc3":""},{"title":"kenerera","desc1":"","desc2":"kenera ūndū mūna","desc3":""},
        {
          "title":"kenererūka",
          "desc1":"",
          "desc2":"kena mūno na gīkeno kīnene",
          "desc3":""
        },
        {
          "title":"kenga",
          "desc1":"",
          "desc2":"henahenia na ūtheri mūthaka",
          "desc3":""
        },
        {
          "title":"kengeta",
          "desc1":"",
          "desc2":"mūgambo ūrīa ūrutagwo nī mīhīrīga īmwe ya nyoni ta ngūkū  mūhano: ngūkū īyo nī ya kengeta, kaī yarekia itumbī",
          "desc3":""
        },
        {"title":"kengeūka","desc1":"","desc2":"kena mūno ūcanjamūkīte","desc3":""},{"title":"kenja","desc1":"twenja","desc2":"gīikarīro gīa tūirītu na airītu","desc3":""},{"title":"kenya","desc1":"","desc2":"kanya; kia ūcūrū; kenyūra;tūnyamū tūnini kūhenahenia; irio kwanjia kūhīa: kūhīhio","desc3":""},{"title":"kenyūka","desc1":"","desc2":"kenererūka","desc3":""},
        {
          "title":"kera",
          "desc1":"",
          "desc2":"tinangia tūcunjī tūnini ūkīhūthīra kīndū ta kahiū; kīndū ta rūrigi gūtema handū ",
          "desc3":""
        },
        {
          "title":"kerī",
          "desc1":"",
          "desc2":"2nd",
          "desc3":""
        },
        {
          "title":"kerī",
          "desc1":"",
          "desc2":"wa kerī mūthī ūrīa ūkaga thutha wa kiumia",
          "desc3":""
        },
        {"title":"kerūra","desc1":"","desc2":"kwamūrania kīndū gītweku na kīndū kīngī gītarī gītweku ūkunīkīte na kīndū kīngīhītūkia kīndū gītweku harīa mūtukanio wa indo icio ūrī","desc3":""},{"title":"kerūra","desc1":"","desc2":"kwamba gūtonya handū kwa ihinda inini ūcoke ūthie na mbere na rūgendo","desc3":""},
        {
          "title":"kerūria",
          "desc1":"",
          "desc2":"eheria njīra",
          "desc3":""
        },
        {
          "title":"keūka",
          "desc1":"",
          "desc2":"ngonde cia mwīrī, rūa kana kīndū kīngī ta kīu kūgīa na mwatūka kaingī umanīte na kwīgatha makīria",
          "desc3":""
        },
        {
          "title":"ki",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria ūhoro wa gūkorwo gūtarī na mūgambo ona ūrīkū mūhano: nyūmba īyo īgūkirīte ki, gūtiuma curu kana cere",
          "desc3":""
        },
        {"title":"kia","desc1":"","desc2":"tukania kīndū kīhaana mūtutu na maī ūgīkorogaga kinya kīmate","desc3":""},{"title":"kīa","desc1":"","desc2":"nduma gūthira ūtheri wa mūthenya ūkaingīra; mbura gūtiga kuura","desc3":""},{"title":"kīaga","desc1":"","desc2":"būrūri ūtarī atūūri:  rūaga","desc3":""},{"title":"kīaga","desc1":"","desc2":"kanyūmba kanini ga kūrīithīrio mūhano: kīaga kīa ngūkū; kanyūmba kanini karīa mūrangīri aikaraga arangīrīte; njoku","desc3":""},
        {
          "title":"kīagago",
          "desc1":"ciagago",
          "desc2":"kwaga gīkindīrio na thayū",
          "desc3":""
        },
        {
          "title":"kīagarīra",
          "desc1":"",
          "desc2":"kīndū kana ūndū ūrīa ūngīthahia mūndū:kūrīa kīagarīra",
          "desc3":""
        },
        {
          "title":"kīahū",
          "desc1":"",
          "desc2":"gacūmbīrī ga Kīrīnyaga karīa gakoragwo keigīte mwanya na Njathi na Ūtheri na gatirī ira",
          "desc3":""
        },
        {"title":"kīama","desc1":"Ciama","desc2":"ciama ; ūndū wīkīkīte ūkīrīte hinya wa andū mūhano: nī kīama kīnene mbura kuura Mūgaa","desc3":""},{"title":"kīambi","desc1":"ciambi","desc2":"kīndū kīhūthagīrwo kwamba kīndū; kīrīa kīanjagia ūndū","desc3":""},{"title":"kīambīrīria","desc1":"ciambīrīria","desc2":"harīa ūndū mūna wanjagīrīria","desc3":""},
        {
          "title":"kīana",
          "desc1":"ciana",
          "desc2":"gīkundo gīthondeketwo ūndū mūkanda wagucio ūgekundīka",
          "desc3":""
        },
        {
          "title":"kīanda",
          "desc1":"",
          "desc2":"handū harīa hatarī igūrū: mūhuro mūhano: rūī rwī kīanda wa kīrīma",
          "desc3":""
        },
        {"title":"kīandarūa","desc1":"ciandarūa","desc2":"kīndū gītumanītio gīkanyitithanio, gīgakorwo gī gītambūrūku, gīa kwarwo thī kīigagīrīrwo indo","desc3":""},{"title":"kiande","desc1":"ciande","desc2":"mwena wa thutha wa ihīndī na nyama harīa guoko kūgathikanagīrio na mwīrī","desc3":""},{"title":"kīano","desc1":"","desc2":"mūtī ūrīa ūnyitagīrīra mūguī nīguo wīikīke mūhano: mūguī ūcio ndūngīikīka wega kīano kīaguo nī kīritū mūno, kaba ūthondeke kīa mūrangi","desc3":""},{"title":"kīara","desc1":"ciara","desc2":"handū harīa hateagwo gīko","desc3":""},{"title":"kīara","desc1":"ciara","desc2":"kaara","desc3":""},{"title":"kīara","desc1":"","desc2":"thīīna biū","desc3":""},{"title":"kīaragana","desc1":"","desc2":"kūndū gūtambūrūku kwaraganīte","desc3":""},{"title":"kīaraho","desc1":"","desc2":"harīa mahiū mahurūkaga riūa rīahiūha me rūru-inī","desc3":""},
        {
          "title":"kībaara",
          "desc1":"",
          "desc2":"mūndū wa ngūī",
          "desc3":""
        },
        {"title":"kībaata","desc1":"","desc2":"nyīmbo ciainagwo nī arūme a kamatimū","desc3":""},{"title":"kībaba","desc1":"","desc2":"Kiswahili kibaba kīndū kīhana īrebe kīhūthagīrwo gwīkīrwo indo ta maguta ","desc3":""},{"title":"kībabaī","desc1":"","desc2":"kīhohoe","desc3":""},{"title":"kībabayū","desc1":"","desc2":"mūndū ūtarī hinya; kīndū o ro ūguo gītangīguna","desc3":""},{"title":"kībaca","desc1":"","desc2":"harīa hahūthagīrwo na kūigwo indo ta arī ikūmbī rungu rwa harīa mīitīrīro īcuhaga nja wa rūthingo rwa nyūmba mūhano: ciana cia ngū irī hau kībaca","desc3":""},{"title":"kībanda","desc1":"","desc2":"Kiswahili kibanda mwako wakītwo oro ūguo ūtarī wa gūtūra wakītwo na indo oro ūguo; mwako ta ūyū wa kwenderio indo","desc3":""},{"title":"kībandī","desc1":"","desc2":"kīndū mūndū ahetwo nī wathani wa būrūri kana wa handū hana gīa kwīmenyithania nīwe ū;Kiswahili kinyasa: kipande kīnyatha mūbuuto mūkuhī ūtahumbīrīte mīthirimo biū","desc3":""},{"title":"kībarī","desc1":"ibarī","desc2":"kīndū gīagūkomerwo nī mūndū mūrūaru agakuo nakīo","desc3":""},{"title":"kībatī","desc1":"","desc2":"ithaga rīa andū-a-nja rīcuragio ngingo","desc3":""},{"title":"kībaū","desc1":"","desc2":"kīrūmi: ciringi mīrongo īrī","desc3":""},{"title":"kībebero","desc1":"","desc2":"kīndū gīcurītīo mūtī-inī kīhurutagwo nī rūhuho gī gīa kūheana ndūmīrīri na kana kuonania ūthamaki mūna mūhano: kībebero gīa būrūri wa Kenya nī kīa manyaga mana no kīa Mūgīkūyū nī kīa matatū","desc3":""},{"title":"kībeco","desc1":"","desc2":"ithaga rītumītwo na ndarwa rīhumbagwo ng'ong'o;  gūkorwo mūndū e mwaria mūhano: Kamau nī wa kībeco","desc3":""},{"title":"kībeeco","desc1":"","desc2":"njūgūma ī mūthia mwariī na mūtambūrūku īkuagwo nī ihīī hingo ya irua","desc3":""},{"title":"kībeeri","desc1":"","desc2":"nyūmba ītarī kīndū thīiniī; kūndū gūtarī kīndū","desc3":""},{"title":"kīberethi","desc1":"","desc2":"itimu rīturītwo rīhaana ihuti mūthia-inī warīo; kībīrīrīki ","desc3":""},{"title":"kibibana","desc1":"","desc2":"ihūra to;  hingana biū; humbīrīka biū na nguo kana mīrīngīti; hana ta ūkīgīte nī kūiyūrwo nī maūndū meciria","desc3":""},{"title":"kibibania","desc1":"","desc2":"hingania biū; ringa mūndū erigwo; ihūria biū","desc3":""},{"title":"kībii","desc1":"","desc2":"rīera iritū rīhana ndogo rīūkaga hīndī ya heho","desc3":""},
        {
          "title":"kībindo",
          "desc1":"",
          "desc2":"kīgera kī na ūraihu ūtanyihīire rūhī rūmwe na nuthu rwa mūndū mūgima gīturītwo na gīkanorwo kīrī gīa gūthiī ita-inī",
          "desc3":""
        },
        {
          "title":"kībīndu",
          "desc1":"",
          "desc2":"rūnyaga rūhana ūtune mūtukanu na gītīīri ta rwa mwīrī wa ng'ombe",
          "desc3":""
        },
        {
          "title":"kībīrīrīki",
          "desc1":"",
          "desc2":"mūtī ūicūhītio ta itimū wohagīrīrwo rūrigi ūgathiūrūrūkio nī ciana ūgambe; mūthemba wa ndege English helicopter",
          "desc3":""
        },
        {
          "title":"kiboboto",
          "desc1":"",
          "desc2":"mbura nene mūno",
          "desc3":""
        },
        {
          "title":"kībogo",
          "desc1":"",
          "desc2":"rūnyaga rūtarī rūirū mūno na rūtarī rwa kībuu ta rwa mwīrī wa mbogo",
          "desc3":""
        },
        {
          "title":"kīboo",
          "desc1":"",
          "desc2":"irebe rītūre kamūromo kanini gītina-inī rīakagīrio mwaki kaingī nī tūhīī kana agendi, rīohereirwo mūnyito wa rūgucio",
          "desc3":""
        },
        {
          "title":"kībuu",
          "desc1":"",
          "desc2":"rūnyaga ta rwa mūhu",
          "desc3":""
        },
        {
          "title":"kībūiya",
          "desc1":"",
          "desc2":"nyīmbo cia ihīī mbere ya kūrua ihinda-inī rīa mūhīīro",
          "desc3":""
        },
        {"title":"kībūyū","desc1":"","desc2":"Kiswahili kibuyu kīndū gīa gwīkīrwo indo ndweku kī na mūniūrū mūkunderu ta wa gītete","desc3":""},{"title":"kīega","desc1":"njega","desc2":"kīndū kīagīrīru ūndū-inī mūna","desc3":""},{"title":"kīeni","desc1":"cieni","desc2":"kūndū kwaraganu ","desc3":""},{"title":"kīenja","desc1":"cienja","desc2":"gīikarīro kīa mūgeni","desc3":""},{"title":"kīenyū","desc1":"cienyū","desc2":"gīcunjī kīenyūrītwo kuuma he kīndū kīumbītwo na tūcunjī tūnini tūingī tūkanyitana. Mūhano: ihiga rīrenyūkire kīenyū kīnene","desc3":""},{"title":"kīere","desc1":"","desc2":"kīgīmbī kīgwatanagio na njīra ya kuonana kīmwīrī","desc3":""},{"title":"kīero","desc1":"ciero","desc2":"gīcunjī gīa kūgūrū rūgongo rwa iru kinya itina-inī harī mūndū na harī nyamū nī rūgongo rwa kūgūrū kuma harīa kwīyunagīra rūgongo rwa itharigo kinya harīa kūgathīkanīirio na honge","desc3":""},{"title":"kīerū","desc1":"njerū","desc2":"kīndū kī na rūnyaga rwerū; kīndū kīgūrītwo gītarī kīahūthīrwo nī mūndū ūngī","desc3":""},{"title":"kīeya","desc1":"","desc2":"handū haharīrīirio nīguo hakwo nyūmba","desc3":""},{"title":"kīga","desc1":"ciīga","desc2":"gīcunjī kīa mwīrī kīīkagīra maūndū makīo ma kūguna mwīrī wī wothe ta ini kana guoko","desc3":""},
        {
          "title":"kīgaanda",
          "desc1":"",
          "desc2":"harīa irui ciikaraga ikīhona; Kiswahili kūrīa gūthondekagīrwo indo",
          "desc3":""
        },
        {
          "title":"kīgacwa",
          "desc1":"",
          "desc2":"ūhoro ūheanītwo wī wa gūteithīrīria mūndū kūhota gūcokia kīūria orītio",
          "desc3":""
        },
        {"title":"kīgenyo","desc1":"igenyo","desc2":"wūira wa maheni ","desc3":""},{"title":"kīgera","desc1":"igera","desc2":"ithanga rītheretio na mwaki rīgaturwo","desc3":""},{"title":"kīgi","desc1":"magi","desc2":"kīūmbe kīūmbūkaga gīgaikara marima-inī gīthogothete mbito-inī kana mbaū-inī","desc3":""},{"title":"kīgoci","desc1":"","desc2":"mwīyuno","desc3":""},{"title":"kīgoi","desc1":"","desc2":"mūndū mūgondereru mwīrī na meciria","desc3":""},{"title":"kīgokora","desc1":"igokora","desc2":"ihīndī rīrīa rīkoragwo igathīkanīrio-inī rīa guoko kīanda wa gīcoka","desc3":""},{"title":"kīgondoro","desc1":"","desc2":"njohi ītarī na ūrīu mūnene","desc3":""},{"title":"kīgonyi","desc1":"igonyi","desc2":"mūtwarithia wa ngari ","desc3":""},{"title":"kīgotho","desc1":"igotho","desc2":"Ngai; mūciari mūndūrūme","desc3":""},{"title":"kīgugua","desc1":"igugua","desc2":"mūndū mūtungu mūno ūhaana ta atarī mūūgī","desc3":""},{"title":"kīgunyī","desc1":"ciīgunyī","desc2":"handū ha kwīhitha ūgwati: handū ūngīhonokera","desc3":""},{"title":"kīgunyū","desc1":"igunyū","desc2":"tūtambi tūrīaga mahuti ta twa mūhīriga wa ngūnga kana igunya mbara","desc3":""},{"title":"kīguoya","desc1":"iguoya","desc2":"mūndū kana nyamū ī guoya","desc3":""},{"title":"kīguū","desc1":"","desc2":"maī ma mbura kana rūī runīte marathiī mathererete","desc3":""},{"title":"kīgūūta","desc1":"igūūta","desc2":"mūndū ūtendete kūruta wīra; gīthayo","desc3":""},{"title":"kīhango","desc1":"","desc2":"kībeeco kīhūthagīrwo gūtua mahuti ma mūtī wa mūgumo hīndī ya irua","desc3":""},{"title":"kīhara","desc1":"ihara","desc2":"gīcigo gītameraga njuīrī mūtwe-inī","desc3":""},{"title":"kīharīro","desc1":"","desc2":"wūigīrīrīki","desc3":""},{"title":"kīhato","desc1":"ihaato","desc2":"kīndū kīhūthagīrwo kūhaata","desc3":""},{"title":"kīhembe","desc1":"","desc2":"ūkī ūcokanīrīirio nī njūkī harīa maana macio maraikaraga","desc3":""},{"title":"kīheo","desc1":"iheo","desc2":"kīndū ūtugītwo nakīo","desc3":""},{"title":"kīhīī","desc1":"ihīī","desc2":"mūndūrūme ūtarī mūruu","desc3":""},
        {
          "title":"kīhīīnga",
          "desc1":"ihīīnga",
          "desc2":"kīndū kīgiragīrīria mūndū kūhītūka kana ūndū ūhingagīrīria mūndū gūkinyanīria ūndū mūna",
          "desc3":""
        },
        {
          "title":"kīhinga",
          "desc1":"ihinga",
          "desc2":"mungu ūthondeketwo nī muhuti gūkūra makahumbīra handū",
          "desc3":""
        },
        {
          "title":"kīhinga-nda",
          "desc1":"",
          "desc2":"mwana wa mūthia gūciarwo nī mūtumia mūna kana mūthuri mūna na mūtumia mūna",
          "desc3":""
        },
        {
          "title":"kīhithūria-ngoro",
          "desc1":"",
          "desc2":"ciugo cionanagia kūmaka, gūkena, gūthitūka na maūndū mangī ta macio mūhano: hī! Nī wa makia",
          "desc3":""
        },
        {
          "title":"kīhiū",
          "desc1":"",
          "desc2":"Taraxacum officinale mūmera wī kūragia ūrutaga ihūa rīa ngoikoni riumaga tūbutha twerū tūmbūkaga na rūhuho na mathangū maguo marīagwo ta nyeni",
          "desc3":""
        },
        {
          "title":"kīhiū",
          "desc1":"ihinga",
          "desc2":"mungu ūthondeketwo nī muhuti gūkūra makahumbīra handū",
          "desc3":""
        },
        {"title":"kīhoe","desc1":"","desc2":"kwaria ta mīmero yūrīte nī ūndū wa kwanīrīra mūno","desc3":""},{"title":"kīhohoe","desc1":"","desc2":"itunda ibuthu rīa rūngū ","desc3":""},{"title":"kīhonge","desc1":"honge","desc2":"njahīrīra ya mūtī ī na thari","desc3":""},
        {
          "title":"kīhoto",
          "desc1":"ihoto",
          "desc2":"gītūmi kīa ūndū; ūndū ūrīa ūkoniī kīndū, nyamū kana mūndū ūtabatiī kwagararwo ona atīa mūhano: nī kīhooto kīa mūndū o wothe gūkorwo na irio cia kūrīa",
          "desc3":""
        },
        {
          "title":"Kīhu",
          "desc1":"",
          "desc2":"mweri ūrīa mbura nene yanjagia kuura gatagatī ka Mūgetho na Mūthatū Gīthūngū March",
          "desc3":""
        },
        {"title":"kīhuhūkanio","desc1":"ihuhūkanio","desc2":"rūhuho rūnene rūrombūrana o rīmwe; ūndū ūroimīra o rīmwe wa kūmakania","desc3":""},{"title":"kīhumbu","desc1":"ihumbu","desc2":"kīrīma kīūmbītwo nī gūitwo hība ya tīīri, mahiga kana kīndū kīngī","desc3":""},{"title":"kīhuruta","desc1":"ciīhuruta","desc2":"kīūmbe kīrīa kiumaga he wakaguku na nīkīo kīrekagia itumbī īirīa rīcokaga gūtuīka kīgunyū","desc3":""},{"title":"kīhuruto","desc1":"","desc2":"mūrimū ūnyitaga nyoni ta ngūkū igaikara igūithītie mathagu","desc3":""},{"title":"kīhutatī","desc1":"","desc2":"gūthiī ūcokete thutha mwīrī ūrorete mbere, ","desc3":""},{"title":"kīīga","desc1":"","desc2":"aga ūgī","desc3":""},{"title":"Kĩihũri","desc1":"","desc2":"itunda rĩa rũngũ rĩtarĩ inene mũno rĩtinĩtio na gatagatĩ kuma igũrũ kinya gĩtina rĩhũthagĩrwo kũihũra kana kũihũrĩrwo irio","desc3":""},{"title":"kīimba","desc1":"ciimba","desc2":"mwīrī mūkuū","desc3":""},{"title":"kīinii","desc1":"ciniī","desc2":"kīndū kīinamu ","desc3":""},{"title":"kīino","desc1":"ciino","desc2":"kīīga kīa ūciari kīa mūndū-wa-nja","desc3":""},{"title":"kiinya","desc1":"","desc2":"thambia magego na mūkiinyī","desc3":""},
        {
          "title":"kiinyana",
          "desc1":"",
          "desc2":"mūrīano wa indo irathiī kana irathiūrūrūka mūhano: nīguo igera itigathūke nī gūkiinyana ihakagwo maguta",
          "desc3":""
        },
        {
          "title":"kīmai",
          "desc1":"",
          "desc2":"mūrimū ūgīaga kaingī ciana ikoimaga thundo marūngo-inī na ngingo-inī iroima maī Gīthūngū ectopic eczema",
          "desc3":""
        },
        {
          "title":"kīmakia",
          "desc1":"imakia",
          "desc2":"kīndū kīratūma mūndū amake; mweri rīrīa ūtherete na wī mūgima",
          "desc3":""
        },
        {
          "title":"kīmakia-thinwa",
          "desc1":"",
          "desc2":"mweri ūrīa ūtherete umīraga wī mūgima",
          "desc3":""
        },
        {
          "title":"kīmako",
          "desc1":"imako",
          "desc2":"mūikarīre ūronania kūmaka",
          "desc3":""
        },
        {
          "title":"kīmamo",
          "desc1":"",
          "desc2":"harīa nyamū ya gīthaka īraraga",
          "desc3":""
        },
        {
          "title":"kīmendero",
          "desc1":"",
          "desc2":"njohi ndūrū ī na ūrīu mūnene",
          "desc3":""
        },
        {
          "title":"kīmene",
          "desc1":"imene",
          "desc2":"mūndū kana kīndū kīnyararītwo na gīgathūūrwo mūno",
          "desc3":""
        },
        
        {
          "title":"kīmenge",
          "desc1":"",
          "desc2":"rūhiū rwariī rūnore mbarī cierī: mengere",
          "desc3":""
        },
        {
          "title":"kīmengemenge",
          "desc1":"",
          "desc2":"kīndū o gīothe kīnoru kīiyūire maguta mūhano: mwana ūcio nī kīmengemenge",
          "desc3":""
        },
        {
          "title":"kīmengere",
          "desc1":"",
          "desc2":"kīmenge",
          "desc3":""
        },
        {
          "title":"kīmenyano",
          "desc1":"",
          "desc2":"gwīkīra andū na ūndū wa ūrīa ūmoī ūgatiga arīa ūtaratīa tao kana ūtoī",
          "desc3":""
        },
        {
          "title":"kīmenyi",
          "desc1":"imenyi",
          "desc2":"mūndū wītuaga nī mūūgī mūno maūndū-inī kinya marīa atoī",
          "desc3":""
        },
        {
          "title":"kīmenyithia",
          "desc1":"imenyithia",
          "desc2":"ūhoro ūranīrīrwo kana ūgacanwo nīguo andū makinyīrwo nīguo ma ūmenye",
          "desc3":""
        },
        {"title":"kīmera","desc1":"imera","desc2":"ihinda rīrīa ūndū mūna wīkagwo kana ūhanīkaga","desc3":""},{"title":"kīmere","desc1":"","desc2":"mūtu ūkiītwo","desc3":""},
        {
          "title":"kīmerera",
          "desc1":"",
          "desc2":"ūndū kana kīndū rīrīa kīrī kīhumo-inī gīakīo gītarī kīrute kana gīkongererwo ūndū ūngī",
          "desc3":""
        },
        {
          "title":"kimi",
          "desc1":"",
          "desc2":"kiugo gīa kuuga ūhoro mūna ndūkarīrīrio ūkirwo na guo mūhano:ndeto icio kimi",
          "desc3":""
        },
        {"title":"kīmira","desc1":"imira","desc2":"kīmaīmaī gītenderū kīrutagwo nī nyamū, andū ona kana mīmera mūhano: mwana agīkorora nīarutaga kīmira na maniūrū","desc3":""},{"title":"kīmiri","desc1":"","desc2":"ūndū ūrarehe mūthiro; rika rīa irua","desc3":""},{"title":"kīmone","desc1":"imone","desc2":"gīkonde kīrīa kīhumbagīra ritho","desc3":""},{"title":"kīmūrī","desc1":"imūrī","desc2":"kīndū kīrakana gīkaruta ūtheri ","desc3":""},{"title":"kīnanda","desc1":"","desc2":"kiswahili  indo cia kūina irutaga mūgambo","desc3":""},{"title":"kīmore","desc1":"imore","desc2":"","desc3":""},
        {
          "title":"kīnandū",
          "desc1":"",
          "desc2":"mbūūthū ya kūiga maguta",
          "desc3":""
        },
        {
          "title":"kīnatha",
          "desc1":"",
          "desc2":"gīthana",
          "desc3":""
        },
        {"title":"kindana","desc1":"","desc2":"komania nga na njamba","desc3":""},{"title":"kindīra","desc1":"","desc2":"tindīka kīrīa kīrahūthīrwo gūthika irima nīguo kīrūme biū; ongerera ūhoro mwarie ciugo cia kūwīkīra hinya;","desc3":""},{"title":"kīndū","desc1":"indo","desc2":"kīrīa kīronwo na maitho","desc3":""},{"title":"kīng'ang'a","desc1":"ing'ang'a","desc2":"mbere ya andū; ndūnyū","desc3":""},{"title":"kīng'ang'a","desc1":"","desc2":"ndūnyū; mbere ya andū","desc3":""},{"title":"kīng'ang'i","desc1":"","desc2":"nyamū nene ndīa-nyama īikaragaga maī-inī na hūgūrū-inī cia maī ī mūhianīre ta wa njagathi","desc3":""},{"title":"kīng'ara","desc1":"ing'ara","desc2":"njamba īrī hinya mūnene","desc3":""},{"title":"kīng'aratua","desc1":"","desc2":"njīra ya gītwari","desc3":""},{"title":"kīng'ore","desc1":"ing'ore","desc2":"gīkundi kīa andū monganīte hamwe","desc3":""},{"title":"kīng'ūki","desc1":"ing'ūki","desc2":"ūūru ūraninana ūkīte nī ūndū wa thahu","desc3":""},{"title":"kīngī","desc1":"","desc2":"kīndū tiga kīrīa kīarīrīrio mūhano: kīmera kīngī gīoka andū nī makahanda","desc3":""},
        {
          "title":"kīngī-",
          "desc1":"",
          "desc2":"kīndū kīna kuonanio atī korwo gīeka ūndū mūna ūna no ūhanīke",
          "desc3":""
        },
        {
          "title":"kīng'oothi",
          "desc1":"",
          "desc2":"igongona ria kueheria uthata hari andu-a-nja; rūgoci rwa harīa mūrīyo gwacī wīgwatagīrīra mūri-inī wa yo; kiugo gīa kūringithania mūhianīre wa rūng'ura na kīng'oothi kīa ngwacī",
          "desc3":""
        },
        {
          "title":"kīng'ootho",
          "desc1":"",
          "desc2":"igongona rīa gūthahūra",
          "desc3":""
        },
        {"title":"kīngwete","desc1":"","desc2":"gūtheca ūgatūrīkania","desc3":""},{"title":"kīni","desc1":"ini","desc2":"harīa magego makoragwo menyitīrīire kanua-inī","desc3":""},{"title":"kīnunwa","desc1":"inunuwa","desc2":"mūndū mūkīgu agaikara ta mūgūrūki","desc3":""},{"title":"kinya","desc1":"","desc2":"ranga kīndū na kūgūrū","desc3":""},{"title":"kinya","desc1":"","desc2":"rīkia rūgendo ūkorwo harīa ūgūthiaga","desc3":""},{"title":"kīnya","desc1":"inya","desc2":"kīndū gīthondeketwo na itunda rīa mūngū gī gīa gwīkīrwo indo ndweku ta cūrū","desc3":""},{"title":"kinyanīra","desc1":"","desc2":"agīrīra ūrīa kūbatiī","desc3":""},{"title":"kinyanīria","desc1":"","desc2":"tūma ūndū kana kīndū gīkinyanīre; tambanīria ūndū wonete kana ūkaigua","desc3":""},{"title":"kīnyata","desc1":"inyata","desc2":"mwīhotoro mūgemie na mathaga","desc3":""},{"title":"kīnyatha","desc1":"inyatha","desc2":"Kiswahili itonyo rīa kwīhumbwo mwīrī wa kīanda kīa njohero rīhumbaga o kīero rīoheirwo njohero rīgakinya maru-inī","desc3":""},{"title":"kinyīra","desc1":"","desc2":"kinya harīa mūndū kana kīndū gīgūthiaga nawe ūgakiuma thutha kīrī","desc3":""},{"title":"kīnyiria","desc1":"","desc2":"kūigua ūtekwenda kīndū nī gūkīrīa mūno","desc3":""},{"title":"kinyīrīria","desc1":"","desc2":"kinya na hinya ūtegūkinyūkia; hingia ūndū wabatie kūhinga harī andū makonainie na arīa mawanjītie","desc3":""},
        {
          "title":"kīnyita",
          "desc1":"inyita",
          "desc2":"kīrīa gīīkeraga gīgathiī gītina gīa kīndū gīkīrītwo kīndū gītweku mūhano: maī me na gīko mekeraga kīnyita gītina kīa nyūngū",
          "desc3":""
        },
        {
          "title":"kīnyitithania-ūhoro",
          "desc1":"",
          "desc2":"ciugo irīa inyitithanagia ciugo kana ūhoro mūhano: Ndirangū na Karīithi nī andū a bata",
          "desc3":""
        },
        {
          "title":"kīnyongo",
          "desc1":"",
          "desc2":"marūrū moimanīte na ūiru; mūndū kīguoya",
          "desc3":""
        },
        {"title":"kīnyugo","desc1":"","desc2":"kīnyenya; kīnyararo; kīnyaka; mīcohio: mīario ya gūkīrīra ūkīnyararithia","desc3":""},{"title":"kīnyuīro","desc1":"","desc2":"handū harīa hanyuagīrwo","desc3":""},{"title":"kinyūkia","desc1":"","desc2":"tiga gūkinya; twarithia magūrū na mūthiīre mūna","desc3":""},
        {
          "title":"kīnyūrūri",
          "desc1":"inyūrūri",
          "desc2":"gīīko gīa kūhūthia na kūiguithia ūūru",
          "desc3":""
        },
        {
          "title":"kīnyongo",
          "desc1":"",
          "desc2":"marūrū moimanīte na ūiru; mūndū kīguoya",
          "desc3":""
        },
        {"title":"kīo","desc1":"","desc2":"kīndū kīna; gītūmi kīna mūhano: kīu nī kīo kīratū gīake; auma mūnogu nī kīo akomire","desc3":""},{"title":"kīoho","desc1":"cioho","desc2":"gatīīna karīa mūndū kana nyamū īngīkorwo īhingīrīirio kuma harīa īrī kana yumītwo wīyathi","desc3":""},
        {
          "title":"kīondo",
          "desc1":"ciondo",
          "desc2":"kīndū gīa gūkuīra indo gītumītwo na ndigi njogothanie na gīgekīrwo mūkanda wa gūcuria mūtwe-inī kana ciande-inī ",
          "desc3":""
        },
        {
          "title":"kīonereria-ūhoro",
          "desc1":"",
          "desc2":"ciugo cionanagia harīa kīndū, mūndū kana ūndū ūrī na no cionanagia mahinda mūhano: arūgamīte nyunjurī",
          "desc3":""
        },
        {"title":"kīongo","desc1":"ciongo","desc2":"kīīga kīa mūndū kīrīa gīkoragwo gīkuīte ciīga ingī ta maitho na matū, gīkoragwo kīnyitīrīirwo nī ngingo","desc3":""},{"title":"kīoni","desc1":"cioni","desc2":"mūndū ūrīa ūhotaga kuona maūndū marīa mahithīku makīrīte muoyo ūyū kaingī marīa mahanīkīte tene matoīo","desc3":""},{"title":"kīoro","desc1":"cioro","desc2":"harīa andū mathiaga gwīteithia; mai kana mathugumo","desc3":""},{"title":"kira","desc1":"","desc2":"ikara ūtekwaria","desc3":""},
        {
          "title":"kīra",
          "desc1":"",
          "desc2":"uma mwena ūmwe wa handū he na mūhaka kinya mūkīra ūrīa ūngī; ambatīra ikīro gūkīra mūndū kana kīndū kīngī",
          "desc3":""
        },
        {
          "title":"kīragu",
          "desc1":"",
          "desc2":"thenge kana ndūrūme ng'imaru ya igongona kana ya kūrīo",
          "desc3":""
        },
        {
          "title":"kīrangi",
          "desc1":"irangi",
          "desc2":"irūngo rīa mūrangi rīthondeketwo rī rīa gūikia mīguī",
          "desc3":""
        },
        {
          "title":"kīraro",
          "desc1":"",
          "desc2":"handū agendi matuīte hakūrarīrīra marī rūgendo-inī",
          "desc3":""
        },
        {"title":"kīrathimo","desc1":"","desc2":"ūtugi wa Ngai; gīīko gīa gūtūma ūgaacīre kiumanīte na mūndū wa gīkīro kīnene gūgūkīra ta mūciari","desc3":""},{"title":"kīratina","desc1":"","desc2":"maciaro ma mūtī wa mūratina marīa marindagwo na indo ingī magathondeka njohi ya mūratina","desc3":""},{"title":"kīratū","desc1":"iratū","desc2":"itonyo rīa kwīhumbwo magūrū nīguo matigathecwo","desc3":""},{"title":"kīremba","desc1":"iremba","desc2":"kiswahili itonyo rīa kwīyohwo mūtwe","desc3":""},{"title":"kīrembuī","desc1":"","desc2":"gīcunjī gītigarīte kīa nyamū īrītwo nī īngī","desc3":""},{"title":"kīremithia","desc1":"iremithia","desc2":"gītūmi gītarī kīiganu gīa kwaga gwīka ūndū","desc3":""},
        {
          "title":"kīrengeri",
          "desc1":"irengeri",
          "desc2":"mūgathī ūcunjuraga ngingo-inī ūgakinya o gīthūri-inī",
          "desc3":""
        },
        {
          "title":"kīrera",
          "desc1":"",
          "desc2":" gīkonde kīa nyama gīkoragwo mītwe-inī ya nyoni imwe ta ngūkū mūhano: ngūkū ya njamba ī kīrera kīnene gūkīra mwera",
          "desc3":""
        },
        {"title":"kīreru","desc1":"ireru","desc2":"ūthiū-inī wa mūndū mūhuro wa kanua","desc3":""},{"title":"kiria","desc1":"","desc2":"tūma kīndū kana mūndū ūkūrutaga mūgambo kana akaria atige","desc3":""}, {"title":"kĩrĩi","desc1":"","desc2":"ũndũ wĩkĩtwo ũrĩmũhithanie wa kũnina kana kũnũha ũrĩa ũrongoreirio","desc3":""},{"title":"kīrīa","desc1":"irīa","desc2":"kīndū kīrarīho ihinda rīhītūku kana kīragwetetwo; kiugo gīkī kīhūthagīrwo kwarīrīria kīndū kīmwe kīa indo irarīrīrio i hamwe","desc3":""},{"title":"kīrīa","desc1":"irīa","desc2":"kīndū kīronanīrīrio gī gatīīna karaihu kuma harīa mwaria arī","desc3":""},
        {
          "title":"kīrica",
          "desc1":"irica",
          "desc2":"mūthemba wa gīkundo",
          "desc3":""
        },
        {
          "title":"kīriethe",
          "desc1":"",
          "desc2":"thenge kana ndegwa ī maburaburīki; mūndū ūrī njuīrī nyingī mwīrī-inī wake",
          "desc3":""
        },
        {"title":"kīriga","desc1":"","desc2":"ūndū ūtaraithīranīka kana ūgataūkīka wega","desc3":""},{"title":"kirigica","desc1":"","desc2":"ogothania indo nīguo ihinge mwanya","desc3":""},{"title":"kīrīgu","desc1":"irīīgū","desc2":"mūndū-wa-nja ūtarī mūruu","desc3":""},{"title":"kīriha","desc1":"iriha","desc2":"kīndū gītūmagīrwo kūhūra indo kana kūhūrīra kīndū gītonye handū Kiswahili nyundo","desc3":""},{"title":"kīrika","desc1":"marika","desc2":"gīkundi kīa andū maciarītwo ihinda-inī rītatiganīte mūno","desc3":""},{"title":"kīrīkanīro","desc1":"irīkanīro","desc2":"ūndū mūiguanīre nī andū erī kana makīria, kana ikundi ūrī wa kūrūmagīrīrwo na kūhingagio; mbuku īrīa īthomagwo nī etīkia a ndini ya Catholic na Akristiano","desc3":""},{"title":"kīrīkīro","desc1":"irīkīro","desc2":"mūthia wa ūndū","desc3":""},{"title":"kīrīko","desc1":"irīko","desc2":"ūndū wūiguanīirwo wa gūkahingio ihinda rīna","desc3":""},{"title":"kīrīma","desc1":"","desc2":"handū hatūgīru na igūrū hagakorwo hambatīrīire","desc3":""},{"title":"kirimania","desc1":"","desc2":"iga indo handū he na mwanya nīguo mwanya ūcio ūthire biū","desc3":""},{"title":"kīrimū","desc1":"","desc2":"mūndū mūkīgu: mūndū ūtarī mūkuūku; maguta marīa mareraga iria-inī rīa therūkio","desc3":""},{"title":"kīrīra","desc1":"irīra","desc2":"ūtaaro wa kūhīgia mūndū; ndeto irario","desc3":""},{"title":"Kĩrĩrĩ","desc1":"","desc2":"harĩa airĩtu matarĩ ahiku na mataciarĩte makomaga","desc3":""},{"title":"kīririkano","desc1":"","desc2":"gīīko gīa kūririkana ūndū","desc3":""},{"title":"kīrīrīmbī","desc1":"nīnīmbī","desc2":"nīmī cia mwaki","desc3":""},{"title":"kirīrīria","desc1":"","desc2":"ūmīrīria maūndū maritū ūtekūnuguna","desc3":""},{"title":"kīrīro","desc1":"irīro","desc2":"inegene rīa kūrīra; mateta maheanītwo nī ūndū wa thīna","desc3":""},{"title":"kirita","desc1":"","desc2":"mūndū, nyamū kana kīndū gūthiī gīīkururītie thī","desc3":""},{"title":"kīrīti","desc1":"irīti","desc2":"mūtitū ūtarī watemwo mītī, ūkoinwo ngū kana ūkarīmwo","desc3":""},{"title":"kīroko","desc1":"","desc2":"rūcinī: riūa rīaratha","desc3":""},{"title":"kīromo","desc1":"iromo","desc2":"kīīga kīrīa kīhumbagīra kanua","desc3":""},{"title":"kīronda","desc1":"ironda","desc2":"handū hatihītio rūa rūkehera ","desc3":""},{"title":"kīroo","desc1":"","desc2":"mahūa marīa marutagwo nī mūmera kīmera gīa gūciara matunda gīakuhīrīria","desc3":""},{"title":"kīrore","desc1":"","desc2":"rūri rwīkīrītwo na mīhari ya ciara kana rūhī kuonania mūira kana mwene ūndū ūcio nī mwene mīhari īyo; mīhari īrīa īkoragwo rūhī-inī rwa guoko kwa mūndū kana twara-inī ","desc3":""},{"title":"kīrotero","desc1":"","desc2":"gīko kiumaga maitho-inī mūndū e toro gīkomanīrīra; rūta rūmanīrīire iromo-inī mūndū agīaga kaingī e toro; ūbai ūmanīrīire ","desc3":""},
        {
          "title":"kīroto",
          "desc1":"iroto",
          "desc2":"ūndū ūrīa wonagwo nī meciria ma mūndū rīrīa e toro",
          "desc3":""
        },
        {
          "title":"kīrugū",
          "desc1":"",
          "desc2":"ndīa",
          "desc3":""
        },
        {"title":"kīrui","desc1":"irui","desc2":"mūndū warua atanoima kīgaanda","desc3":""},{"title":"kīruka","desc1":"","desc2":"mūtaranīrie wa ciūmbe wa hakuhī mūno mūhano: kīruka kīa magogo ti kīo kīa mahuru","desc3":""},{"title":"kīrumi","desc1":"irumi","desc2":"mūgambo watigītwo nī mūndū ūkuīte ūtabatiī kwagararwo","desc3":""},{"title":"kīrūmi","desc1":"","desc2":"nyau ya gīthaka ī manyaga ta ma ngarī ","desc3":""},{"title":"kīrumia","desc1":"","desc2":"ūrīrī ūtarī magūrū","desc3":""},{"title":"kīruru","desc1":"ciīruru","desc2":"mūhanīre wa kīndū ūrīa ūgīaga kīamūrīkwo nī ūtheri; mūhianīre wa kīndū ūcoretwo kana ūkarutwo na kamera","desc3":""},{"title":"kīrurumī","desc1":"irurumī","desc2":"mūgambo mūnene ūgīaga rīrīa heni ikūhenūka","desc3":""},{"title":"kiuga","desc1":"ciuga","desc2":"kanyamū kahana kaihūri ga kūnyuīra ūcūrū kana maī","desc3":""},{"title":"kīūga","desc1":"ciūga","desc2":"ūraihu kana ūkuhī wa mwīrī wa mūndū kana nyamū; ūrīa mwīrī wa mūndū kana nyamū ūroneka wī na hinya kana wī mūhinyīrīrīku","desc3":""},{"title":"kiugo","desc1":"ciugo","desc2":"mūgambo ūhūthagīrwo kuuga ūndū mūna; ūhoro warītio werekeirio ūndū mūna","desc3":""},{"title":"kiugū","desc1":"ciugū","desc2":"handū hathondeketwo nja wa nyūmba harī ha kūhingīrwo mahiū","desc3":""},{"title":"kīūgū","desc1":"ciūgū","desc2":"mūndū kana nyamū īciarītwo ītarī nginyanīru ī na wonje wa mūthemba","desc3":""},{"title":"kīūgū","desc1":"","desc2":"mūndū ūtarī mūkinyanīru kī meciria kana kī mwīrī aga korwo ndangī hingia maūndū mamwe","desc3":""},
        {
          "title":"kīūma",
          "desc1":"ciūma",
          "desc2":"gatagatī ka ritho harīa hakoragwo harī hairū; indo kaingi ihūthagīrwo kūgemia ikoragwo ciūmbītwo kana igaicūhio mahiga-inī momū ta irīa ciīkīragwo kīnyata-inī",
          "desc3":""
        },
        {
          "title":"kīūmba",
          "desc1":"",
          "desc2":"gīikaro kīa nyamū ta ngūkū kana ngui",
          "desc3":""
        },
        {"title":"kīūmbani","desc1":"ciūmbani","desc2":"mūndūrūme ūtahaga aka agatuma ndūgū nao","desc3":""},{"title":"kīūmbe","desc1":"ciūmbe","desc2":"indo iria i muoyo","desc3":""},{"title":"kīūmbe","desc1":"","desc2":"we mwene ","desc3":""},{"title":"kiumia","desc1":"","desc2":"mūthī wa mbere ūrīa ūkaga thutha wa mūūthī wa mūgwanja; thikū mūgwanja kuuma mūūthī wa kiumia kinya mūūthī wa mūtīīro","desc3":""},{"title":"kīūngano","desc1":"ciūngano","desc2":"handū andū macokanīrīire hamwe nīguo meke ūndū mūna; andū macokanīrīire hamwe me na muoroto ūmwe","desc3":""},{"title":"kīūngūyū","desc1":"ciūngūyū","desc2":"ciūmbe irīa ciikaraga thīiniī wa maī ta iria-inī itarī magūrū ciongoyaga igīthambīra kuo","desc3":""},{"title":"kīūra","desc1":"ciūra","desc2":"kīūmbe kī magūrū mana gīthiaga gīkīrūgarūgaga gīikaraga kūndū kūgunyu kana kwarahīte maī","desc3":""},{"title":"kīūria","desc1":"ciūria","desc2":"ūhoro ūheanītwo nīguo macokio maguo maheanwo kana ūtaarīrio guo mwene ","desc3":""},{"title":"kīyo","desc1":"","desc2":"wendo na hinya wa gwīka ūndū mūna mūhano: arutīte wīra na kīyo agatherema","desc3":""},{"title":"kohora","desc1":"","desc2":"kahūra","desc3":""},{"title":"koma","desc1":"","desc2":"gwītandaiya handū  kana kūigīrīra mūtwe handū taarī toro ūrī; gūthiī toro; gīa ngwatanīro ya mūndūrūme na mūndū mūka","desc3":""},{"title":"komerera","desc1":"","desc2":"inamīrīra taarī kwīhitha ūrehitha","desc3":""},{"title":"komereria","desc1":"","desc2":"koma hamwe na mūndū ūngī nīgetha acūnge; nyamū irīa irekagia matumbī kūmahumbīra na mīīrī yacio nīguo magīe rugarī matūrīke ","desc3":""},{"title":"konorwo","desc1":"","desc2":"rutania kīndū harīa kīgathīkītwo mūhano: mūndū ūcio arakonorirwo ritho nī rūhīa rwa ndegwa","desc3":""},{"title":"konya","desc1":"","desc2":"guucia kīndū kīhandītwo tīīri-inī ūgīkīgucia kuuma na igūrū kiume na mīri yothe","desc3":""},{"title":"konyora","desc1":"","desc2":"ruta thanda makore; thambia ūtherie biū","desc3":""},{"title":"kora","desc1":"","desc2":"thiī handū nīguo wonane na mūndū mūna kaingī ūthugundīire ūndū ūtarī mwega; kinya handū wone mūndū, kīndū kana ūndū mūna ho na ndūkwīrīgīrīire","desc3":""},
        {
          "title":"koranīrīra",
          "desc1":"",
          "desc2":"cemania handū hatarī ona ūmwe ūkwīrīgīrīire kana agathugundīra",
          "desc3":""
        },
        {
          "title":"korerera",
          "desc1":"",
          "desc2":"kinya handū ūkore ūndū mūna o ūgīthiī na mbere kana o hīndī ūrekīka",
          "desc3":""
        },
        {"title":"koroga","desc1":"","desc2":"gūthiūrūrūkia kīndū gītweku ūkīhūthīra kīndū ta mūiko","desc3":""},{"title":"korokoro","desc1":"","desc2":"Kiswahili: handū harīa andū arīa mathitangītwo mahingagīrwo","desc3":""},
        {
          "title":"korwo",
          "desc1":"",
          "desc2":"onekana handū hana; gīa kana onekana na kīndū kīna",
          "desc3":""
        },
        {
          "title":"ku",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria kūgūthwo nī kīndū kīūmū",
          "desc3":""
        },
        {"title":"kua","desc1":"","desc2":"tiga gūkorwo muoyo; enyūka","desc3":""},{"title":"kuburi","desc1":"","desc2":"Kiswahili kīndū kīhūthagīrwo kūhinga ","desc3":""},{"title":"kūga","desc1":"","desc2":"mūgambīre wa mīthemba īmwe ya nyamū ta ngui kana ngūkū","desc3":""},{"title":"kūgīrima","desc1":"","desc2":"gūtinia mūting'oe wa ng'ondu; gwīkīra ruoro","desc3":""},{"title":"kūharwo","desc1":"","desc2":"gūthiī kīoro kīnene gītweku","desc3":""},{"title":"kūhe","desc1":"","desc2":"kūnengera kīndū hatarī thogora mūneo akīrutīire","desc3":""},{"title":"kuhīrīria","desc1":"","desc2":"thiī hakuhī na mūndū, kīndū kana handū; korwo ūtigairie o hanini ūndū mūna wīkīke","desc3":""},{"title":"kūimana","desc1":"","desc2":"kūrega kūheana kīndū","desc3":""},
        {
          "title":"kūīnona",
          "desc1":"",
          "desc2":"gūtithia",
          "desc3":""
        },
        {
          "title":"kūma",
          "desc1":"",
          "desc2":"arīria na njīra ya gwatha na kūgūthūkīra",
          "desc3":""
        },
        {
          "title":"kūma",
          "desc1":"",
          "desc2":"ūigū kūniara biū; mīmera gūthira ūcū",
          "desc3":""
        },
        {"title":"kūmakania","desc1":"","desc2":"gūcūngīrīria kīmako","desc3":""},{"title":"kumbacīria","desc1":"","desc2":"hingīra kīndū rūhī-inī ūkīrūmītie; hahaatīria","desc3":""},{"title":"kumbata","desc1":"","desc2":"oya mbeca cia ngombo gīkundi-inī kīa andū monganīte hamwe","desc3":""},{"title":"kumbūka","desc1":"","desc2":"ūndū ūrarī mūhithe kūhithūka ūkamenyeka","desc3":""},{"title":"kūmbūka","desc1":"","desc2":"gūthiīra rīera-inī na mathagu","desc3":""},{"title":"kumia","desc1":"","desc2":"gwīkīrīra na njīra ya gūtīa","desc3":""},{"title":"kūmīa","desc1":"","desc2":"gūthiī kīoro kīnene: kūruta irio thīe kūgerera njīra ya kīoro kīnene i mai","desc3":""},
        {
          "title":"kumīrīra",
          "desc1":"",
          "desc2":"kuunga ndūkoneke",
          "desc3":""
        },
        {
          "title":"kūmithia",
          "desc1":"",
          "desc2":"menereria ūndū mūna, kaingī ūndū mūūru wīkītwo mūhano: ciīko cia njūragano nī irakūmithirio mūno",
          "desc3":""
        },
        {"title":"kumutha","desc1":"","desc2":"gūkiritithia kīndū igūrū wa kīngī ūhinyīrīirie","desc3":""},{"title":"kuna","desc1":"","desc2":"thuna","desc3":""},{"title":"kūna","desc1":"","desc2":"rora hana; hūra","desc3":""},{"title":"kunda","desc1":"","desc2":"īkīra kīndū gītweku kanua","desc3":""},
        {
          "title":"kundīka",
          "desc1":"",
          "desc2":"oha gīkundo",
          "desc3":""
        },
        {
          "title":"kundu",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria mūmererie wa kīndū ta maī mūhano: arameragia maī na ihenya kundu kundu ta aterīga kūnyua kīndū",
          "desc3":""
        },
        {"title":"kundūka","desc1":"","desc2":"gīkundo kuohoka","desc3":""},{"title":"kūndūka","desc1":"","desc2":"kīrīrīria gūthūka mītugo-inī","desc3":""},{"title":"kundūra","desc1":"","desc2":"ohora gīkundo","desc3":""},{"title":"kunga","desc1":"","desc2":"kūhītūkīra handū hakuhī ūinamīrīire; kūinama ng'ong'o nī ūkūrū kana ūndū ūngī","desc3":""},{"title":"kūngi","desc1":"hangī","desc2":"rora hangī","desc3":""},{"title":"kūngūīra","desc1":"","desc2":"kenera ūndū mūna na ndīa kana nyīmbo na maūndū mangī ta macio","desc3":""},{"title":"kūngūiya","desc1":"","desc2":"korwo mwago-inī wa gūkūngūīra ","desc3":""},{"title":"kungutīria","desc1":"","desc2":"andū kana nyamū gūikara marigicīirie handū mūhano: ciana ciothe nī cia kungutīria mwaki riko","desc3":""},{"title":"kunīka","desc1":"","desc2":"humbīra mūromo wa kīndū kīngīkīrwo kīndū thīiniī ta irima kana nyūngū ","desc3":""},{"title":"kunīkania","desc1":"","desc2":"kunīka biū ūtegūtiga kamwanya ona kanini; kunīka ūtarī na wīigīrīrīki","desc3":""},{"title":"kūnja","desc1":"","desc2":"unanīra ","desc3":""},{"title":"kūnjana","desc1":"","desc2":"gūnyara","desc3":""},{"title":"kūnjūra","desc1":"","desc2":"gūtambūrūkia kīndū gīgūkūnjītwo","desc3":""},{"title":"kunya","desc1":"","desc2":"nyita na twara ūgucie nīguo ūiguithie ruo kana ūtinie; kīndū kūnyita ta ūrīa twara tūkunyaga","desc3":""},{"title":"kunyanīra","desc1":"","desc2":"umbūra hitho ūbatiī gūikara ūhithīte","desc3":""},{"title":"kura","desc1":"","desc2":"ūndū wī thīiniī wa mūndū kūmūhīka ende kūūhingia mūhano: kwī na heho mathugumo nī makuraga mūndū mūno","desc3":""},{"title":"kūra","desc1":"","desc2":"kūrūta kīndū nīguo kīrīa kīnyitīrīire ho kiume mūhano: nū wakūra mīkūro nyūngū-inī","desc3":""},{"title":"kūra","desc1":"","desc2":"mūmera kūneneha ūgakinyanīra thutha wa kūhandwo; mwana kūneneha akagimara; mūndū kana nyamū gūkorwo atūrīte matukū maingī agathirwo nī hinya wa wīthīī","desc3":""},{"title":"kūraya","desc1":"haraaya","desc2":"kūndū kūraihu","desc3":""},{"title":"kūrema","desc1":"","desc2":"kwaga kūhoteka; gūthiī na mbere gwīka maūndū makananie ona thutha wa gūkanio na rīngī ona thutha wa kūherithīrio maūndū macio","desc3":""},{"title":"kūrīra","desc1":"","desc2":"kūgamba nī ruo kana kīeha ūgīitaga maithori; gūteta nī gūkorwo na mathīna","desc3":""},{"title":"kūrua","desc1":"","desc2":"mūndū gūtinio ngonde kīīga-inī kīa ūndūrūme kana kīa ūtumia","desc3":""},{"title":"kūrūa","desc1":"","desc2":"kūhūrana","desc3":""},{"title":"kūruga","desc1":"","desc2":"gūthondeka irio na mwaki ciororoe nīguo irīke","desc3":""},{"title":"kūruma","desc1":"","desc2":"gwīta ciugo itarī njagīrīru; kwaria ciugo irī mūkana kūrī andū matikana ciagarare","desc3":""},{"title":"kūrūma","desc1":"","desc2":"gūtiihia kana kūnyita na magego kana kīni; kīndū kūnyita wega harīa kīhandīrīirwo kana gīkohererwo","desc3":""},{"title":"kurumana","desc1":"","desc2":"gūa ūtigwo ūgarūrūkanīte","desc3":""},{"title":"kurumania","desc1":"","desc2":"tūma kīndū gīkurumane; iga kīndū mwena wa gītina ūrorete na igūrū","desc3":""},{"title":"kurūo","desc1":"","desc2":"hīkwo nī ūndū mūhano: nī nda kurūo nī mai","desc3":""},{"title":"kurura","desc1":"","desc2":"tema kana ūcane mūhari","desc3":""},{"title":"kūrūra","desc1":"","desc2":"kurutūkithia kīndū handū nīguo weherie kīrīa kīrī igūrū rīaho mūhano:kūrūra rūrua rwa ng'ombe na gīcakūri","desc3":""},{"title":"kururia","desc1":"","desc2":"gucia kīndū gīkuume thutha ūtegūkīoya igūrū","desc3":""},{"title":"kuruta","desc1":"","desc2":"cora handū nī ūndū wa gūkurutūkīra ho kana gūkurutūkithia kīndū ho mūhano: nū wa kuruta rūthingo na nī rūkūnyoroketio","desc3":""},{"title":"kūrūta","desc1":"","desc2":"hara hara na kīndū nīguo weherie kīrīa kīrakūrūtwo","desc3":""},{"title":"kurutūka","desc1":"","desc2":"kiritīra handū hatarī hanyororoku","desc3":""},{"title":"kuua","desc1":"","desc2":"gūthiī na kīndū kīrī igūrū rīaku","desc3":""},{"title":"kuua","desc1":"","desc2":"andū a gūkua mīrigo","desc3":""},{"title":"kūūa","desc1":"","desc2":"gwīcirīria ūtarī na ūma","desc3":""},{"title":"kuuha","desc1":"","desc2":"kumutha nīgetha harīa harakumuthwo hanyoroke","desc3":""},{"title":"kuumia","desc1":"","desc2":"kūruta kīndū na nja; mbeū gūciara","desc3":""},{"title":"kūūmia","desc1":"","desc2":"gūtūma kīndū kīūme","desc3":""},{"title":"kuuna","desc1":"","desc2":"gūtūma kīndū kiunīke; ","desc3":""},{"title":"kuura","desc1":"","desc2":"mbura gūitīka; thakame kuuma mwīrī-inī","desc3":""},{"title":"kūūra","desc1":"","desc2":"munya kīndū na mīri yakīo ūkīhūthīra kīndū ta rūhiū","desc3":""},{"title":"kwagana","desc1":"","desc2":"gwīka maūndū marīa makananie gwīkwo","desc3":""},{"title":"kwega","desc1":"heega","desc2":"rora heega","desc3":""},{"title":"kwegetha","desc1":"","desc2":"kūgamba na kanua mīrukī īkīgeria kūingīra nda kaingī thutha wa kūrīa: ūndū ūyū ūhanīkagīra mūndū atarī we ūraūrehe","desc3":""},{"title":"kwene","desc1":"heene","desc2":"rora heene","desc3":""},{"title":"kwerū","desc1":"heerū","desc2":"handū hageni; handū he na rūnyaga rwerū","desc3":""},{"title":"kwerū","desc1":"","desc2":"harīa mbūri iraraga nyūmba-inī ya mūtumia thīiniī","desc3":""},{"title":"kwī-","desc1":"","desc2":"gwīka ūndū waku mwene kana kwīīka ūndū: kiugo gīīkī kīnyitithanagio na ciugo cia gīīko","desc3":""},{"title":"kwīgita","desc1":"","desc2":"kwīhitha thutha wa kīndū kana mūndū nīguo ndūkahutio kana ūkinyīrwo nī kīndū kana ūndū mūna; kwīyoha matharaita nī ūndū wa mbara; kwīharīria nī ūndū wa ūru ūroka","desc3":""},
        {
          "title":"kwiguucia","desc1":"","desc2":"gwīka maūndū na thieya taarī ūgūta","desc3":""},
        {"title":"kwīhanda","desc1":"","desc2":"kūrūgama ūrūngarīte; kūgacīra","desc3":""},
        {"title":"kwīhīta","desc1":"","desc2":"kuuga ūndū ūtuīte matua marūmu maūkoniī","desc3":""},
        {"title":"kwīhotora","desc1":"","desc2":"kwīyoherera kīndū njohero; kwarahūka wī harīirie gwīka ūndū mūna","desc3":""},
        {"title":"kwīremwo","desc1":"","desc2":"kūremwo nī kwīīkīra maūndū","desc3":""},
        {"title":"kwīrica","desc1":"","desc2":"gwītiria ūkahonoka ūndū mūritū ūgūgūkorete","desc3":""},
        {"title":"kwīrīga","desc1":"","desc2":"gūkorwo wīkīte kana ūkona ūndū ica ikuhī","desc3":""},
        {"title":"kwīyamba","desc1":"","desc2":"kwīyona ta wī mwagīrīru kūrī andū arīa angī: kwīgana; kīndū gūkorwo kīīgathīte na gīkoimīra ta kīimbīrīire ","desc3":""},
        {"title":"kwīyūa","desc1":"","desc2":"kwīhitha handū nīguo ndūgeke ūndū mūna kana ūkinyīrwo nī ūndū kana kīndū ","desc3":""}];
    }
    if(widget.alphabet == 'M') {
      _allUsers = [{"title":"Ma","desc1":"","desc2":"ũhoro ũrĩa guo ũtarĩ mweherie ũndũ  ona kana ũkongererwo","desc3":""},{"title":"Maagū","desc1":"","desc2":"Ngai","desc3":""},{"title":"maana","desc1":"","desc2":"harīa njūkī irekagia matumbī na ikamarera ","desc3":""},{"title":"maarara","desc1":"","desc2":"maroro me mwīrī-inī wa nyamū; nda ya kerī ya nyamū irīa irī nda inya; kīhembe kīa ūkī ","desc3":""},{"title":"maarūa","desc1":"","desc2":"njohi ya mwere","desc3":""},{"title":"maatha","desc1":"","desc2":"caria na ūcokanīrīrie maciaro ma mūgūnda kana umithio ūngī ūhana ta ūcio","desc3":""},{"title":"maathina","desc1":"","desc2":"maī menyitagīrīra makomanīrīra harīa maitīkīra moimaga mīmera-inī ta marigū matarī meru kana mīramba-inī","desc3":""},{"title":"mabage","desc1":"","desc2":"matū manene; matū mahaana ta marorete na mbere mūno","desc3":""},{"title":"macakaya","desc1":"","desc2":"ihinda rīa kīeha gīa gūkuīrwo","desc3":""},{"title":"macani","desc1":"","desc2":"mūmera ūrīa ūthondeka cai","desc3":""},{"title":"macegera","desc1":"","desc2":"igera cia kuoha andū","desc3":""},{"title":"macemanīrio","desc1":"","desc2":"handū njīra makīria ma īmwe inyitanīire","desc3":""},{"title":"macoko","desc1":"","desc2":"ūbai","desc3":""},{"title":"macūa","desc1":"","desc2":"mahuti matarī momū","desc3":""},{"title":"magegania","desc1":"igegania","desc2":"rora igegania","desc3":""},
        {
          "title":"magego",
          "desc1":"igego",
          "desc2":"rora igego",
          "desc3":""
        },
        {
          "title":"magenda mbīa",
          "desc1":"",
          "desc2":"mītī īrīa īikaragīrwo nī mīitīrīro nyūmba-inī harīa rūthingo na mīitīrīro inyitanagīra",
          "desc3":""
        },
        {"title":"magerio","desc1":"igerio","desc2":"rora igerio","desc3":""},{"title":"magigi","desc1":"","desc2":"kīūndū kīūru mūno na gīa kūmakania","desc3":""},{"title":"maguanyīrī","desc1":"guanyīrī","desc2":"rora guanyīrī","desc3":""},{"title":"mahīa","desc1":"ihīa","desc2":"rora ihīa","desc3":""},{"title":"mai","desc1":"","desc2":"kīrīa kīrutagwo nī mwīrī thutha wa irio gūthīo gīkoimīra bibūi-inī","desc3":""},{"title":"maī","desc1":"","desc2":"kīndū gītweku kiumanaga na mbura, maria kana njūī","desc3":""},{"title":"mairang'a","desc1":"","desc2":"maitho matarona wega","desc3":""},{"title":"mairia","desc1":"","desc2":"hwainī riūa rīgīthūa nduma yanjia kūingīra; nduma ītarī ndumanu biū","desc3":""},{"title":"mairīria","desc1":"","desc2":"kūndū kūraya mūno kūrīa hinya wa maitho ūkinyaga","desc3":""},{"title":"maīrīria","desc1":"","desc2":"thieya wa gwīka ūndū ūrīa ūbatiī gwīkwo ihinda-inī rīa guo: mamīrīria","desc3":""},{"title":"maithikiri","desc1":"","desc2":"English bicycle kīgaragari kīa magūrū merī gīcoceragwo matanga gīgathiī","desc3":""},{"title":"maitho","desc1":"ritho","desc2":"rora ritho","desc3":""},{"title":"maithori","desc1":"rīithori","desc2":"maī marīa maitīkaga kuuma maitho-inī mūndū akīrīra","desc3":""},{"title":"maitū","desc1":"","desc2":"mūciari mūtumia; nyina wa mūndū ","desc3":""},{"title":"makambucu","desc1":"ikambucu","desc2":"rora ikamburu","desc3":""},{"title":"makandūi","desc1":"","desc2":"imūndū ciī hinya","desc3":""},{"title":"makangaī","desc1":"","desc2":"tūcunjī twa nganga kana mbarabu tūnyitaine","desc3":""},{"title":"makoro","desc1":"ikoro","desc2":"rora ikoro","desc3":""},
        {
          "title":"mama",
          "desc1":"",
          "desc2":"kiugo gīkī kīhūthagīrwo kuonania kīndū nī kīingī biū mūhano: ena mbembe nyingī mama",
          "desc3":""
        },

        {
          "title":"mama",
          "desc1":"",
          "desc2":"mūrū wa nyina na nyina wa mūndū kana mūthuri wa mwarī wa nyina na ithe wa mūndū; karema mūndū aciaragwo nako kana tūnyamū tūirū tūgīaga mwīrī-inī wa mūndū",
          "desc3":""
        },
        {
          "title":"mambarita",
          "desc1":"",
          "desc2":"gatagatī ka rūgito rūrīa rūgitīte nyūmba igūrū na mīitīrīro",
          "desc3":""
        },
        {"title":"mambura","desc1":"","desc2":"ihinda rīrīa igongona rīna, rī na gūkenerera rīkagwo ta mambura ma irua; ūndū ūrekwo wī na ūkūngūīri mūhano: ūmūthī kūrīa kwī na mambura ma ūhiki ; ihinda rīa mweri wa mūndū-wa -nja","desc3":""},{"title":"mamia","desc1":"","desc2":"komia","desc3":""},
        {
          "title":"mamīrīria",
          "desc1":"",
          "desc2":"maīrīria",
          "desc3":""
        },
        {
          "title":"mana",
          "desc1":"",
          "desc2":"ūtarī umithio mūhano: ūcio ndarī kīrīko, ona kwaria nake no wīra wa mana",
          "desc3":""
        },
        {"title":"managī","desc1":"","desc2":"maūndū monekaga na mūndū kana nyamū matarī ma kīmerera na maroneka me ma kūgegania","desc3":""},{"title":"mang'ūrī","desc1":"","desc2":"ūndū wīkītwo na marakara manene mūhano: araririe na mang'ūrī maingī gūtiri mūndū ūtanamenya nī mūrakaru","desc3":""},{"title":"mangī","desc1":"","desc2":"tiga marīa marī ho kana magwetetwo","desc3":""},{"title":"mangī-","desc1":"","desc2":"rora angī-; rora ūngī-","desc3":""},{"title":"manya","desc1":"","desc2":"gūkuo nī gīkeno kana kīeha na njīra īkīrūkīte","desc3":""},{"title":"mara","desc1":"","desc2":"kīīga kīrīa kiumīte nda-inī na nīho irio thīe cioyagīrwo nī mwīrī nakīo gīko gīgatiguo nīguo gītindīkwo kiumīre njīra ya kīoro","desc3":""},{"title":"maragara","desc1":"","desc2":"mahuti momū maitīkīte thī","desc3":""},
        {
          "title":"maramu",
          "desc1":"",
          "desc2":"mwarī wa nyina na mūka waku",
          "desc3":""
        },
        {
          "title":"maramu",
          "desc1":"",
          "desc2":"mūndūrūme ūrīa mūhikītie arī a nyina ūmwe kana a ithe ūmwe nake",
          "desc3":""
        },
        {"title":"marengeta","desc1":"","desc2":"handū hagunyītio nī maī hakahaana mūtondo","desc3":""},
        {
          "title":"marī",
          "desc1":"",
          "desc2":"kiugo gīa kuuga arīa kana marīa mararīrīrio nī makoragwo na kīrīa kīrarīrīrio mūhano: nī marī ngari; kīnyitithanagio na ciugo ingī kuuga arīa mararīrīrio me harīa hagwetwo mūhano: marī kuo",
          "desc3":""
        },
        {
          "title":"maricū",
          "desc1":"",
          "desc2":"ndicū: mūndū ūtangīrīgīrīrwo mūno maūndū-inī",
          "desc3":""
        },
        {"title":"maroro","desc1":"iroro","desc2":"rora iroro","desc3":""},{"title":"marotero","desc1":"kīrotero","desc2":"rora kīrotero","desc3":""},{"title":"maru","desc1":"iru","desc2":"rora iru","desc3":""},{"title":"marūrū","desc1":"","desc2":"ūūru umanīte na ūndū mūna","desc3":""},{"title":"mata","desc1":"","desc2":"kīndū gītweku kīrutagwo nī ngaī i thīiniī wa kanua gīteithagīrīria irio igītanukwo; kīndū gītweku kūnyitana gīkaritūha","desc3":""},{"title":"mataaro","desc1":"","desc2":"mīario īrongoreirio kūhīgia kana kūongerera ūgī ūkoniī ūndū mūna","desc3":""},{"title":"matandara","desc1":"","desc2":"magoko matumītwo matuīke ngo","desc3":""},
        {
          "title":"matanya",
          "desc1":"",
          "desc2":"mīhoko",
          "desc3":""
        },
        {
          "title":"mathaara",
          "desc1":"",
          "desc2":"ūtarī wa ma: ūtangīhokwo",
          "desc3":""
        },
        {
          "title":"mathaga",
          "desc1":"ithaga",
          "desc2":"rora ithaga",
          "desc3":""
        },
        {
          "title":"mathegenyūa",
          "desc1":"",
          "desc2":"matigio",
          "desc3":""
        },
        {
          "title":"mathirī",
          "desc1":"",
          "desc2":"ciīko ciī na ūūru mūingī umanīte na marakara kana marūrū mūhano: mathirī marīa ararī namo na mūka maratūmire aringe ng'ombe hakuhī amīonjie",
          "desc3":""
        },
        {
          "title":"matiba",
          "desc1":"",
          "desc2":"njohi ya mūtū wa mbembe",
          "desc3":""
        },
        {
          "title":"matigio",
          "desc1":"",
          "desc2":"irio itigītio nī mūndū ūihūrīirwo akarīa na ndanine",
          "desc3":""
        },
        {"title":"matongo","desc1":"","desc2":"gīko gītenderūku kiumaga maitho-inī ","desc3":""},{"title":"matū","desc1":"gūtū","desc2":"rora gūtū","desc3":""},{"title":"matukū","desc1":"","desc2":"mīthenya mīingī","desc3":""},{"title":"matūkūya","desc1":"","desc2":"ciīko ciakuonania marakara manene; mathirī","desc3":""},{"title":"matura-nguru","desc1":"","desc2":"mūhīrīga mūna wa mūtī; irūngo rīa athuri a mīaka ta igana  gūthiī na igūrū","desc3":""},
        {
          "title":"Mau mau",
          "desc1":"",
          "desc2":"gīkundi kīa njamba kīrīa gīatongoretio nī Agīkūyū Aembu na Amīrū kūrūīrīra ithaka na wīyathi wa mūndū mūirū kīrīa gīatoririe Mūngeretha na Kenya īkīgwatīra wīyathi mwaka wa 1963",
          "desc3":""
        },
        {
          "title":"memenyi",
          "desc1":"",
          "desc2":"ciūmbe ithecaga irio nyūmū ta mbembe na mboco Gīthūngū weevil",
          "desc3":""
        },
        {"title":"memerekia","desc1":"","desc2":"hunjia ūhoro ūkinyīre andū aingī","desc3":""},{"title":"mena","desc1":"","desc2":"thūūra ","desc3":""},{"title":"mendeera","desc1":"","desc2":"hihinya kīndū kinya kīmotoke","desc3":""},{"title":"mengere","desc1":"","desc2":"rūhiū rūnoore mīena īīrī rwa kūrīma","desc3":""},
        {
          "title":"menithīrīria",
          "desc1":"",
          "desc2":"arīrīria ūūru nīguo kīrīa ūrarīrīria kīmenwo",
          "desc3":""
        },
        {
          "title":"manjarara",
          "desc1":"",
          "desc2":"harīa hinya wa maitho ūkinyaga",
          "desc3":""
        },
        {"title":"menya","desc1":"","desc2":"korwo ūī","desc3":""},{"title":"meria","desc1":"","desc2":"ikūrūkia kīndū gīthiī nda kīgereire mūmero","desc3":""},{"title":"merūka","desc1":"","desc2":"kīndū gūthiī nda kīgereire mūmero","desc3":""},{"title":"methūkanga","desc1":"","desc2":"umana kīrīa gī thīinī kīoneke","desc3":""},{"title":"methūra","desc1":"","desc2":"kūrutania kīndū nīguo kīrīa gī thīiniī wa kīo kīoneke ","desc3":""},{"title":"mīaraho","desc1":"","desc2":"mūthenya gatagatī","desc3":""},{"title":"mica","desc1":"","desc2":"irīria","desc3":""},{"title":"mīcohio","desc1":"","desc2":"mīario ya gūtinia mūndū akīaria hatarī na gītīyo; mīario ya kīnyararo: kīnyugo","desc3":""},{"title":"mīenū","desc1":"mwenū","desc2":"mwīnū","desc3":""},{"title":"mīhehū","desc1":"","desc2":"mīario ya kūhehanīrīrwo; njuukū","desc3":""},{"title":"mīhīndo","desc1":"mūhīndo","desc2":"mūkanda wa kuoha ūthondeketwo wī na kīana mūthia-inī ūmwe","desc3":""},{"title":"mīhīrīgo","desc1":"mūhīrīgo","desc2":"rora mūhīrīgo","desc3":""},
        {
          "title":"mīkumba",
          "desc1":"",
          "desc2":"njuīrī ciīthiorete",
          "desc3":""
        },
        {
          "title":"mīndīga",
          "desc1":"",
          "desc2":"njuīrī ireketwo ikūre ciogathanīte",
          "desc3":""
        },
        {
          "title":"mīnīga",
          "desc1":"",
          "desc2":"ūgūrūki",
          "desc3":""
        },
        {"title":"mīnyīrī","desc1":"","desc2":"mīhenahenio īrīa yonekaga rīrīa riūa rīarīte kūndū kwaraganu","desc3":""},{"title":"mīndī na mīndī","desc1":"","desc2":"mahinda matagathira","desc3":""},{"title":"mīokia","desc1":"","desc2":"mīcoora mīgemu","desc3":""},{"title":"mīrukī","desc1":"","desc2":"rīera rīcokanīrīirio rīkahingīrwo handū","desc3":""},{"title":"mīrūri","desc1":"mūrūri","desc2":"rora mūrūri","desc3":""},{"title":"mitīka","desc1":"","desc2":"mitūka","desc3":""},{"title":"mīting'oe","desc1":"mūting'oe","desc2":"kīīga gīkoragwo nyamū-inī ta ng'ombe kana ndigiri kīnyitaine na mūnyiginyigi gīgacunjura mūthia-inī waguo: mūcuthī","desc3":""},{"title":"mitūka","desc1":"","desc2":"thira biū nī ūndū wa mbaara, ng'aragu kana mūrimū","desc3":""},
        {
          "title":"mītūkī",
          "desc1":"",
          "desc2":"ihenya rīa gwīka ūndū",
          "desc3":""
        },
        {
          "title":"miura",
          "desc1":"",
          "desc2":"kīrīa gīkoragwo mbembe-inī kīhana ndigi kana njuīrī na gīgīcūa gīkoragwo gīkīmirūrūku",
          "desc3":""
        },
        {
          "title":"miūra",
          "desc1":"",
          "desc2":"ūnūra ta ūrīa maī matherūku monūraga ngonde cia mwīrī wa mūndū mamūitīkīra",
          "desc3":""
        },
        {"title":"moca","desc1":"","desc2":"hinyīrīrīka mwīrī na ūrūo nī hinya","desc3":""},{"title":"mondo","desc1":"","desc2":"kīndū gītumītwo na rūa kana ngora gīa gūkuīra indo","desc3":""},{"title":"moni","desc1":"","desc2":"mūthia wa gūtū ūrīa ūkoragwo wīnyitīrīire rūthīa-inī","desc3":""},{"title":"monjora","desc1":"","desc2":"kwīyendithīrīria harī mūndū; anjanja","desc3":""},{"title":"monjore","desc1":"","desc2":"mwarīrie ūtarī na gīthimi kana kīharīro","desc3":""},{"title":"mori","desc1":"","desc2":"ng'ombe ya nga","desc3":""},{"title":"motoka","desc1":"","desc2":"kīndū kīororo gūkua gīkoima tūcunjī tūnini","desc3":""},
        {
          "title":"moya",
          "desc1":"",
          "desc2":"arara taarī gūcocora ",
          "desc3":""
        },
        {
          "title":"mu",
          "desc1":"",
          "desc2":"mūgambo wa kīndū gīkīgwa thī kana gīkīringa kīngī mūhano: Kamau aragūire thī mu ta mūrigo wa ngū",
          "desc3":""
        },
        {"title":"mū-","desc1":"","desc2":"gīkagīrwo mbere wa ciugo cia gīīko kana cia gūtarīria gīīko kuuga ūrīa wīkaga kana wīkīte ūguo mīhano: mūhiki, mūgī,mūraihu,mūhīnga","desc3":""},{"title":"mūbabaī","desc1":"","desc2":"mūmera ūrīa ūciaraga mababaī","desc3":""},{"title":"mūbage","desc1":"","desc2":"Caesalpina sepiaria","desc3":""},{"title":"mūbaibū","desc1":"","desc2":"mūtī ūrīa ūmeraga ikongo-inī gatagatī wī na marūngo ta ma mūrangi; kīndū gīthondeketwo gīgīa kūgerwo nī indo ndweku ta maī: mūberethi","desc3":""},{"title":"mūbakī","desc1":"","desc2":"mūmera ūrīa umaga mbakī","desc3":""},{"title":"mūbara","desc1":"","desc2":"kīndū gīa gīthiūrūrī kīgaragaragio nī ciana igathaka nakīo","desc3":""},{"title":"mūbarano","desc1":"","desc2":"mūkanīrīro umanīte na mūingīrano: haranio ","desc3":""},{"title":"mūbariti","desc1":"mībariti","desc2":"mūkīma","desc3":""},{"title":"mūbaū","desc1":"","desc2":"mūringamu: Eucalyptus globulus","desc3":""},{"title":"mūbebe","desc1":"mībebe","desc2":"mūmera ūrīa ūciara mbembe","desc3":""},
        {
          "title":"mūberethi",
          "desc1":"",
          "desc2":"Kiswahili mferenji mūbaibū",
          "desc3":""
        },
        {
          "title":"mūberethi",
          "desc1":"mīberethi",
          "desc2":"Kiswahili  kīndū gīthondeketwo kīna irima gatagatī gīa kūgererwo nī indo ndweku kana mīrukī: mūrica",
          "desc3":""
        },
        {
          "title":"mūbibi",
          "desc1":"",
          "desc2":"mūthia wa mara manene harīa mai maikaraga matanamīo",
          "desc3":""
        },
        {"title":"mūbuuto","desc1":"","desc2":"mūgutho: itonyo rīhumbagwo kuma njohero gūikūrūka rīkoragwo rītumītwo ūndū o kūgūrū kūraingīra ha kuo ūgacoka ūkoherwo njohero","desc3":""},
        {
          "title":"mūcaara",
          "desc1":"mīcaara",
          "desc2":"Kiswahili   marīhi nī ūndū wa kūruta wīra",
          "desc3":""
        },
        {
          "title":"mūcacana",
          "desc1":"",
          "desc2":"mūmera ūtarī mūkūrū mūno ūtarī ūromīrīria ūrī o muororo",
          "desc3":""
        },
        {
          "title":"mūcakwe",
          "desc1":"mīcakwe",
          "desc2":"harīa thanda cia mbembe ikoragwo ciīnyitīrīire",
          "desc3":""
        },
        {
          "title":"mūcang'ang'a",
          "desc1":"",
          "desc2":"mūrūro wa tūhū; mūhahī",
          "desc3":""
        },
        {"title":"mūcarī","desc1":"mīcarī","desc2":"mūnyegerera wī na mahira ūgīaga ciara-inī kana makinya","desc3":""},
        {
          "title":"mūcarica",
          "desc1":"mīcarica",
          "desc2":"kīndū kīororo kīngīkūnjīka gīa gūcūtha",
          "desc3":""
        },
        {
          "title":"mūcau",
          "desc1":"mīcau",
          "desc2":"mbembe ītarī ngūrū biū īroima iria",
          "desc3":""
        },
        {"title":"mūcayo","desc1":"","desc2":"gīīko gīa gūcaya","desc3":""},{"title":"mūcemanio","desc1":"mīcemanio","desc2":"gīikaro kīa andū mokīte hamwe kwarīrīria ūndū kana maūndū marīa mamakoniī","desc3":""},{"title":"mūcene","desc1":"","desc2":"mūtugo wa kwenda kūingīrīra maūndū matagūkoniī na kwaria mūno kinya rīrīa ūtabatiī kana kwarīrīria maūndū matagūkoniī","desc3":""},{"title":"mūceneneko","desc1":"","desc2":"mūcene","desc3":""},{"title":"mūciari","desc1":"aciari","desc2":"mūndū ūrīa ūgūciarīte kana ūngīheka gītīo ta kīa mūndū ūciarīte nīgūkorwo nī aciarīte","desc3":""},{"title":"mūciī","desc1":"mīciī","desc2":"gīikaro gīake nyūmba; gīikaro kūrīa mwaria oimīte","desc3":""},{"title":"mūcinga","desc1":"mīcinga","desc2":"Kiswahili mūnyamū mūthondeke wa gūikia njirūngi","desc3":""},{"title":"mūcingū","desc1":"mīcingū","desc2":"mūnungo wa kīndū kīngīrīo ta nyama","desc3":""},{"title":"mūcobe","desc1":"mīcobe","desc2":"mūthia wa kīndū ūhana mūthonge","desc3":""},{"title":"mūconjo","desc1":"","desc2":"tīīri ūgunyītio nī maī ūkahaana gīcūrūcūrū gītweku","desc3":""},{"title":"mūcora","desc1":"mīcora","desc2":"mūhari ūcoretwo handū mūhano: ndigiri īkoragwo na mūcora ng'ong'o-inī wayo","desc3":""},{"title":"mūcori","desc1":"acori","desc2":"mūndū ūrī ūgī wa gūcora mīcoro","desc3":""},
        {
          "title":"mūcoro",
          "desc1":"mīcoro",
          "desc2":"mūhianīre wa kīndū ūcanītwo handū; gīīko kīa wara",
          "desc3":""
        },
        {
          "title":"mūcūng'wa",
          "desc1":"",
          "desc2":"rwīmbo rwa anake na airītu rwainagwo mūthenya",
          "desc3":""
        },
        {
          "title":"mūcūnjūri",
          "desc1":"",
          "desc2":"mūhari wa indo ithiīte cikūrūkīte ta ūrīa ciugo ingīandīkwo handū kiugo gīgoka rungu wa kīrīa kīngī",
          "desc3":""
        },
        {"title":"mūcūnū","desc1":"mīcūnū","desc2":"ngūkū ītarī njoya ngingo:nyoni ītarī njoya ngingo","desc3":""},{"title":"mūcūrī","desc1":"mīcūrī","desc2":"Handū haumīru thīinī wa indo ihūthīkaga gwīkīrwo indo ta nyūngū kana kīnya hangīhūthīrwo ta mūnyito kana hakumīra kīrīa kīigītwo thīinī wa indo ta icio","desc3":""},{"title":"mūcūnūro","desc1":"mīcūnūro","desc2":"waru itarī ngūrū wega igakorwo na rūa rūronūka","desc3":""},{"title":"mūcuthī","desc1":"mīcuthī","desc2":"kīīga kīa mūndūrūme gītarī kīruu; gīcuthī gītarutītwo nyamū-inī","desc3":""},
        {
          "title":"mūcūthi",
          "desc1":"",
          "desc2":"gīcūrūcūrū kīa irio itherūkītio igakuanga: maī matherūkītio na irio ikīhīa",
          "desc3":""
        },
        {
          "title":"mūgaa",
          "desc1":"",
          "desc2":"mīeri īrīa riūa rīaraga mūno kīmera-inī kīa mwere/themithū na kīa njahī/thano Gīthūngū nī January na Septembe",
          "desc3":""
        },
        {
          "title":"mūgaa",
          "desc1":"migaa",
          "desc2":"mūtī ūkūraga kūndū gūtarī mbura nyingī ūgīaga ndongu ciī na mīigua na nī wa mūhīrīga ūmwe na mūrera",
          "desc3":""
        },
        {"title":"mūgamba","desc1":"","desc2":"mūtī ūkīranītie ūrīa wakagīrīrwo mīarīro mūhano: mūgamba wa ūrīrī ūkoragwo mwena wohithanītio na magūrū ma ūrīrī","desc3":""},{"title":"mūgambo","desc1":"mīgambo","desc2":"mūrurumo ūraiguīka na matū","desc3":""},{"title":"mūgathī","desc1":"mīgathī","desc2":"ithaga rīcuragio ngingo","desc3":""},{"title":"mūgendere","desc1":"mīgendere","desc2":"mīthiīre; mītugo","desc3":""},
        {
          "title":"mūgendi",
          "desc1":"agendi",
          "desc2":"mūndū umagarīte agathiī rūgendo",
          "desc3":""
        },
        {
          "title":"mūgendi",
          "desc1":"",
          "desc2":"mwana wa mūrū wa nyina na maitūguo: mwana wa mwarī wa nyina na thoguo",
          "desc3":""
        },
        {
          "title":"mūgendi wa ithe/awa",
          "desc1":"",
          "desc2":"mūndūrūme maciaranīirwo na thoguo",
          "desc3":""
        },
        {
          "title":"mūgetho",
          "desc1":"",
          "desc2":"mweri ūrīa ūkaga gatagatī ka Mūgaa wa themithū na Kīhu Gīthūngū February",
          "desc3":""
        },
        {
          "title":"mūgīka",
          "desc1":"",
          "desc2":"mūgīko",
          "desc3":""
        },
        {
          "title":"mūgīko",
          "desc1":"mīgīko",
          "desc2":"kīndū gīkīranītio handū nīguo hatikahītūkīke: mūgīka",
          "desc3":""
        },
        {
          "title":"Mūgira-njara",
          "desc1":"",
          "desc2":"ūndū mūgiranie gwīkwo na ūrīa ūngīwīka agwatagwo nī thahu mūhano: nī mūgiro mūndū kūraga mūndū ūrīa ūngī",
          "desc3":""
        },
        {
          "title":"mūgiro",
          "desc1":"",
          "desc2":"mweri-inī ūyū nīrīo magongona ma irua    mahingagwo Gīthūngū May",
          "desc3":""
        },
        {
          "title":"mūgo",
          "desc1":"ago",
          "desc2":"mūndū ūciarītwo arī na ūgī mūna akaūtungata agakorwo ohīgīrīire ūndū-inī ūcio",
          "desc3":""
        },
        {
          "title":"mūgoiyo",
          "desc1":"",
          "desc2":"nyīmbo cia ngomanio cinagwo nī anake na airītu ūtukū mathiūrūrūkīirie mwaki mūnene",
          "desc3":""
        },
        {
          "title":"mūgoma",
          "desc1":"mīgoma",
          "desc2":"mūhīrīga wa mbūri irīa imeraga guoya mūnyoroku na kaingī iharaga mahuti marīa matambīrīire igūrū kana mathangū ma mītī na mīting'oe yacio ndīraihaga",
          "desc3":""
        },
        {
          "title":"mūgongo",
          "desc1":"mīgongo",
          "desc2":"Kiswahili rora ng'ong'o",
          "desc3":""
        },
        {
          "title":"mūgūgūta",
          "desc1":"",
          "desc2":"rūa rwa ng´ombe o hīndī yathīnjwo rūtarī rūroma; ng'ombe ngūrū mūno kinya īgatorio nī ūkūrū",
          "desc3":""
        },
        {"title":"mūguī","desc1":"mīguī","desc2":"itharaita rīnooretwo mūthia ūmwe na ūrīa ūngī ūgatumīrīrwo njoya cia nyoni wūikagio na ūta","desc3":""},{"title":"mūguīmi","desc1":"aguīmi","desc2":"ūrīa ūhītaga nyamū cia gīthaka agaciūraga nī ūndū wa nyama cia cio kana gītūmi kīngī","desc3":""},{"title":"mūgūnda","desc1":"mīgūnda","desc2":"handū hatheretio, hakarīmwo na hakahandwo irio","desc3":""},{"title":"mūgūrūki","desc1":"agūrūki","desc2":"mūndū umītwo nī ngoma:mūndū wī na thīīna wa meciria","desc3":""},{"title":"mūgutuko","desc1":"","desc2":"mūhahūko","desc3":""},{"title":"mūhahī","desc1":"mīhahī","desc2":"mūtugo wa kwaga gīkindīrio maūndū-inī na kwenda kūingīrīra maūndū matagūkoniī","desc3":""},{"title":"mũhano", "desc1":"","desc2":"kiugo kĩonanagia ũndũ na njĩra ya kũgereria ũrĩa ũndũ ũcio ũtariĩ; ũndũ wonanĩtio ũhana ta ũrĩa guo", "desc3":""},{"title":"mūhandano","desc1":"","desc2":"mīmera irahandirwo rīa mbere ītarī yahandwo mbere-inī mūhano: tūgwacī tūtū ndīrenda tūgwate nī twa mūhandano","desc3":""},{"title":"mūharatī","desc1":"","desc2":"handū hathondeketwo he ha gwīkīrīra mahiū kīndū gīa kūrīa kana gīakūnyua mūhano: mūharatī wa mbūri nī ūraunīkire","desc3":""},{"title":"mūhari","desc1":"","desc2":"handū indo cigītwo irūmanīrīire kīmwe thutha wa kīrīa kīngī; mūkururo ūtemetwo mīthia yaguo ītanyitanīte","desc3":""},{"title":"mūheani","desc1":"aheani","desc2":"ūrīa ūkenagīra gūteithia andū angī na indo ciake","desc3":""},{"title":"mūheera","desc1":"mīheera","desc2":"mūnungo ūtarī mwega ūroima handū hana","desc3":""},{"title":"mūheheneko","desc1":"","desc2":"mūhīahīo wa maūndū matagūkoniī","desc3":""},
        {
          "title":"mūhera",
          "desc1":"mīhera",
          "desc2":"ciugo cia kwīrira na kūhoya kūrekerwo ūndū mūūru mūndū ekīte",
          "desc3":""
        },
        {
          "title":"mūhianīre",
          "desc1":"",
          "desc2":"ūrīa kīndū kīhana gīkīonwo na maitho: mūmbīre wa kīndū mūhano: Ikamaba nī rīicūhagia mahiga mīhianīre ya indo ta nyamū kana andū",
          "desc3":""
        },
        {
          "title":"mūhiki",
          "desc1":"ahiki",
          "desc2":"mũirĩti ũrahika; mũirĩtu ũtahikĩte ihĩnda iraya; mũtumia ũhikĩte arĩ ũrĩa mũnini mũno harĩ atumia a mũthiri mũna; mũirĩtu ũmbĩtwo nĩ mũndũrũme mũna",
          "desc3":""
        },
        {"title":"mũhikania","desc1":"","desc2":"mũndũrũme ũrĩa ũrahikia mũirĩtu mũna","desc3":""},{"title":"mũhiki","desc1":"","desc2":"mũirĩti ũrahika; mũirĩtu ũtahikĩte ihĩnda iraya; mũtumia ũhikĩte arĩ ũrĩa mũnini mũno harĩ atumia a mũthiri mũna; mũirĩtu ũmbĩtwo nĩ mũndũrũme mũna","desc3":""},{"title":"mūhīko","desc1":"","desc2":"kaara ga guoko karīa gakoragwo gatagatī wa tuothe","desc3":""},{"title":"mūhīndo","desc1":"mīhīndo","desc2":"mūkanda wogothetwo mūthia ūmwe wī na kīana","desc3":""},
        {
          "title":"mūhingo",
          "desc1":"mīhingo",
          "desc2":"ihinda rīa gūtiga gwīka ūndū mūna",
          "desc3":""
        },
        {
          "title":"mūhingūria",
          "desc1":"",
          "desc2":"mwana wa mūhingūria (ciana cia)mwana ūciarītwo nī nyina atahikīte",
          "desc3":""
        },
        {"title":"mūhīrīga","desc1":"mīhīrīga","desc2":"andū arīa mūndū atarainie nao kūgerera harī ithe; mūtaranīrie wa ciūmbe nīgūkorwo na kīhumo kīmwe na maūthī mamwe","desc3":""},{"title":"mūhīrīgo","desc1":"mīhīrīgo","desc2":"itingī njicūhie cia kūgita nyūmba","desc3":""},{"title":"mūhīrīre","desc1":"","desc2":"ciugo cia gūtaara: ūtaaro","desc3":""},{"title":"mūhu","desc1":"mīhu","desc2":"mūtutu ūrīa ūtigaraga thutha wa kīndū gūcinwo nī mwaki","desc3":""},{"title":"mūhuhu","desc1":"mīhuhu","desc2":"ndeto iraheanwo no ūma wacio ndūrī ūramenyeka wega","desc3":""},{"title":"mūhuhungi","desc1":"","desc2":"mūndū wa mūhahī","desc3":""},
        {
          "title":"mūhūhūtīko",
          "desc1":"",
          "desc2":"mīario ītarī gītūmi kana yarīirio handū ītagīrīire",
          "desc3":""
        },
        {
          "title":"mūhunguru",
          "desc1":"mīhunguru",
          "desc2":"mungu ūtonyete handū ūkoimanīra mwena ūngī",
          "desc3":""
        },
        {
          "title":"mūhuro",
          "desc1":"",
          "desc2":"kīanda wa handū hana",
          "desc3":""
        },
        {"title":"mūhūūro","desc1":"","desc2":"ndeto cia mūhuhu kana cia mūhūhūtīko","desc3":""},{"title":"mūici","desc1":"mīici\/aici","desc2":"mūndū woyaga kīndū kīene atarī mūhe akeigīra kana agakīendia","desc3":""},
        {
          "title":"mūigua",
          "desc1":"mīigua",
          "desc2":"kīndū kīmeraga mītī-inī kana mīmera-inī gīkoragwo no gīthece na gītūrīkie, ta cong'e",
          "desc3":""
        },
        {
          "title":"mūigūto",
          "desc1":"",
          "desc2":"mūrukī thīiniī wa nyamū",
          "desc3":""
        },
        {"title":"mūiko","desc1":"mīiko","desc2":"kiswahili mūindūri","desc3":""},{"title":"mūikūrūko","desc1":"mīikūrūko","desc2":"handū njīra īinamīte īkahana taarī kīrīma kīinamu","desc3":""},{"title":"mūindūri","desc1":"mīindūri","desc2":"mūtī mūthondeke wega wa gūkima irio","desc3":""},{"title":"mūini","desc1":"aini","desc2":"mūndū wūinaga nyīmbo","desc3":""},{"title":"mūīnū","desc1":"mīenū","desc2":"Cassia Alata","desc3":""},{"title":"mūiri","desc1":"mīiri","desc2":"Prunus Africana","desc3":""},{"title":"mūirītu","desc1":"airītu","desc2":"mūndū-wa-nja ūruīte no ti mūhiku kana agaciara (matukū maya ona tūrīgū twagimara kīūga nītwītagwo airītu)","desc3":""},{"title":"mūiru","desc1":"airu","desc2":"mūtumia ūrīa ūhikītio hamwe nake nī mūthuri ūmwe; atumia a ariū a ithe ūmwe","desc3":""},{"title":"mūirū","desc1":"airū","desc2":"wī na rūnyaga rūirū","desc3":""},{"title":"mūitīrīro","desc1":"","desc2":"mītī īrīa yakagīrīrwo nyūmba igūrū nīguo nyeki kana kīrīa kīragita kīigīrīrwo ho; ndūiga","desc3":""},{"title":"mūito","desc1":"mīito","desc2":"indo, nyamū kana andū aingī gūkorwo marī aingī handū hamwe; njūragano nene ya andū","desc3":""},{"title":"mūitū","desc1":"mīitū","desc2":"mūici wīhithīire andū handū nīguo amatunye indo ciao","desc3":""},{"title":"mūiyūro","desc1":"mīiyūro","desc2":"mwaraho mūnene wa maī: rūī kūiyūra rūkoina","desc3":""},{"title":"mūka","desc1":"akaa","desc2":"mūtumia wa mūndū","desc3":""},{"title":"mūkamo","desc1":"mīkamo","desc2":"kīīga kīrīa gīthondekaga iria thīiniī wa nyamū","desc3":""},{"title":"mūkana","desc1":"mīkana","desc2":"rīathani rīa kūgiria ūndū mūna gwīkwo; mwerekera wa ihera ūrīa ūngītūngio mūndū wīkīte ūndū mūna","desc3":""},{"title":"mūkanda","desc1":"mīkanda","desc2":"ndigi ciogothanītio igatumanio ituīke kīndū kīmata na kīariī kīngīhūthīrūo kuoha ","desc3":""},{"title":"mūkaro","desc1":"mīkaro","desc2":"mūkuru ūtarī mūnene mūno","desc3":""},{"title":"mūkawa","desc1":"mīkawa","desc2":"Kiswahili kīenderio kīa irio hīu","desc3":""},
        {
          "title":"mūkayo",
          "desc1":"mīkayo",
          "desc2":"mūgambo mūnene wa ruo; kīrīro gīa kūhoya uteithio",
          "desc3":""
        },
        {
          "title":"mūkengeco",
          "desc1":"",
          "desc2":"ihiga rīhenahenagia rīhūthagīrwo kūnyorokia matimū na gūtūma mahenie",
          "desc3":""
        },
        {"title":"mūkenia","desc1":"mīkenia","desc2":"Lantana camara","desc3":""},{"title":"mũkeũ","desc1":"mĩkeũ","desc2":"Dombeya Torrida","desc3":""},{"title":"mūkiinyī","desc1":"mīkiinyī","desc2":"kīndū gīa gūthambia magego","desc3":""},
        {
          "title":"mūkiha",
          "desc1":"mīkiha",
          "desc2":"harīa thakame īgeragīra  īgīcera",
          "desc3":""
        },
        {
          "title":"mūkiī",
          "desc1":"",
          "desc2":"rūnyaga rūhana ta mahūa ma ndabibi kana matheca ihīī",
          "desc3":""
        },
        {"title":"mukima","desc1":"mikima","desc2":"Grevillea Robusta","desc3":""},{"title":"mūkindo","desc1":"","desc2":"ngomanio ya njamba na nga","desc3":""},{"title":"mūkindū","desc1":"mīkindu","desc2":"Phoenix Sylvestris","desc3":""},{"title":"mūkindūri","desc1":"mīkinduri","desc2":"Croton Megalocarpus","desc3":""},{"title":"mūkinyai","desc1":"mīkinyai","desc2":"","desc3":""},{"title":"mūkio","desc1":"","desc2":"kīrīa gītigagwo mbarīki cia rutwo maguta; kīmere kīa ūcūrū; ndaka īkiītwo","desc3":""},{"title":"mūkīra","desc1":"mīkīra","desc2":"mwena ūrīa ūngī tiga ūrīa mūndū kana kīndū kīrī wa kīndū gītuīkanītie handū ta rūī","desc3":""},{"title":"mūkīrīti","desc1":"mīkīrīti","desc2":"rūgiri rūhandītwo rwī rwa kuonania mūhaka wa mūgūnda","desc3":""},
        {
          "title":"mūkirito",
          "desc1":"mīkirito",
          "desc2":"njīra ya nyamū-ya-thī kana nyamū ya iria-inī īcorete thī ",
          "desc3":""
        },
        {
          "title":"mūkoma",
          "desc1":"mīkoma",
          "desc2":"mūkoma thī: mūirītu ūciarīire nyūmba ya nyina nī gūkorwo ahirītwo ihu atahikīte",
          "desc3":""
        },
        {"title":"mūkonyo","desc1":"mīkonyo","desc2":"kīrema kīrīa gītigagwo nda-inī rūrīra rwatinio","desc3":""},{"title":"mūkora","desc1":"mīkora","desc2":"mūici andū cikaro-inī ciao akamatunya indo ciao","desc3":""},{"title":"mūkori","desc1":"mīkori","desc2":"handū homū gūkīra kūrīa kūngī harīa rūnyeni rwīnyitagīrīra na rūgakūrīra kana hakoragwo itunda gatagatī, thīiniī wa mīthemba īmwe ya nyeni na matunda","desc3":""},{"title":"mūkoro","desc1":"mīkoro","desc2":"irio irīa ciūmanagīrīra nyūngū-inī igatigara mīena-inī na gītina irio cieherio","desc3":""},
        {
          "title":"muku",
          "desc1":"",
          "desc2":"gūkīrīra na ūhinga",
          "desc3":""
        },
        {
          "title":"mūkūikū",
          "desc1":"",
          "desc2":"mūhari wa andū",
          "desc3":""
        },
        {"title":"mūkuru","desc1":"mīkuru","desc2":"mwatūka mūnene: ngurumo i gatagatī ka mīrīmo kana irīma; mwatūka ūrīa ūkoragwo ūgayanītie itina rīa mwena wa ūrīo na rīa mwena wa ūmotho","desc3":""},{"title":"mūkūrū","desc1":"akūrū","desc2":"arīa me na mīaka mīingī","desc3":""},{"title":"mūkuruguthu","desc1":"mīkuruguthu","desc2":"rora mūnyiginyigi","desc3":" "},{"title":"mūkurumuthu","desc1":"","desc2":"rora mūnyiginyigi","desc3":""},{"title":"mūkūrūngū","desc1":"","desc2":"Bergia lacatae","desc3":""},{"title":"mūkūrwe","desc1":"mikurwe","desc2":"Euclea Divinorum","desc3":""},
        {
          "title":"mūkwa",
          "desc1":"mīkwa",
          "desc2":"mūkanda; handū hekīrītwo mbica, thinema kana mīario hangīkīrwo kīnanda-inī kana tibi-inī nīgetha mbica kana thinema ciīrorerwo, kana mīgambo īyo īthikīrīrio",
          "desc3":""
        },
        {
          "title":"mūkwīrī",
          "desc1":"",
          "desc2":"andū aingī moimanīte thutha tarī mūhari hatarī na mūtarara wa gūkorwo ūrūgamīte thutha wa ūrīa ūngī",
          "desc3":""
        },
        {
          "title":"mūmaitha",
          "desc1":"amaitha",
          "desc2":"thū yūkīte gūtaha",
          "desc3":""
        },
        {
          "title":"mumbo",
          "desc1":"miumbo",
          "desc2":"ngū ciumbīkītwo na tīīri nīgetha ihīe ituīke makara",
          "desc3":""
        },
        {
          "title":"mūmbūro",
          "desc1":"",
          "desc2":"nyīmbo cinagwo nī arīa makirie kūrua ciumia mbere ya mūthī wa irua hīndī ya mūhīīro",
          "desc3":""
        },
        {
          "title":"mūmera",
          "desc1":"mīmera",
          "desc2":"mūhīrīga wa ciūmbe irīa ikunūkaga kuma tīīri-inī kana igatambīrīra irīa ingī",
          "desc3":""
        },
        {"title":"mūmero","desc1":"mīmero","desc2":"kīīga gīkoragwo ngingo-inī na nīho indo ihītūkagīra kuma kanua-inī igatonya nda kana rīera rīhītūkagīra kuma maniūrū-inī rīgīthiī mahūri na rīkiuma mahūri-inī","desc3":""},{"title":"mumuthūka","desc1":"","desc2":"tuīkanga tūcunjī tūnini","desc3":""},{"title":"mūmwe","desc1":"","desc2":"ūmwe hatarī ūngī take","desc3":""},{"title":"mumwo nĩ irĩ","desc1":"","desc2":"mũndũ mũru ũkuĩte","desc3":""},
        {
          "title":"mūna",
          "desc1":"ana",
          "desc2":"mūndū ūkonainie na ūhoro ūrīa ūrarīrīrio no ndaragwetwo na rītwa rīake",
          "desc3":""
        },
        {
          "title":"mūnagatho",
          "desc1":"",
          "desc2":"indo irīa iramataga na ikahūthīrwo gūtūria mbeū mūhano: ndegwa īyo nī ya mūnagatho nīkīo ndendaga itherū nayo",
          "desc3":""
        },
        {"title":"mūnderendu","desc1":"mīnderendu","desc2":"Teclea Simplicifolia","desc3":""},{"title":"mūndū","desc1":"andū","desc2":"kīūmbe kīrīa kīrī ūhoti na ūmenyo gūkīra ciūmbe iria ingī ciothe irī thī English: human being","desc3":""},{"title":"mūndū-mūka","desc1":"andū-aka","desc2":"mūndū-wa-nja","desc3":""},{"title":"mūndū-wa-nja","desc1":"andū-a-nja","desc2":"andū a mūhīrīga wa nga","desc3":""},{"title":"mūndūmūrūme","desc1":"arūme","desc2":"mūndū wa mūhīrīga wa njamba","desc3":""},{"title":"mūnene","desc1":"anene","desc2":"wī na kīūga gīkīrīte kīa ūrīa ūngī na wariī kana ūraihu; ūrīa ūratongoria arīa angī ta mūthamaki wao","desc3":""},{"title":"mūng'ūng'ūtū","desc1":"","desc2":"mūkurumuthu ","desc3":""},{"title":"mungu","desc1":"","desc2":"ngurunga","desc3":""},{"title":"mūngūrwa","desc1":"mīūngūrwa","desc2":"mīmera īkūrītwo na mīrī nīguo īhandwo handū hangī","desc3":""},{"title":"mūngūtūko","desc1":"","desc2":"mūrūro ūtarī na gīkindīrio","desc3":""},{"title":"mūnungo","desc1":"","desc2":"ūndū wī rīera-inī ūngīiguo na maniūrū wī mwega kana wī mūūru","desc3":""},{"title":"munya","desc1":"","desc2":"gucia kīndū kīhandītwo kiume tīīri-inī","desc3":""},{"title":"mūnyaka","desc1":"","desc2":"ūndū mwega ūkūhanīkīire hatarī kïyo gīaku","desc3":""},{"title":"mũnyamarĩko","desc1":"","desc2":"Thĩna mũnene ũrakũnyarira","desc3":""},{"title":"mūnyambū","desc1":"mīnyambū","desc2":"mūrūthi","desc3":""},{"title":"mūnyiginyigi","desc1":"","desc2":"mahīndī marīa makoragwo manyitaine kuuma ngata-inī ya nyamū kana igoti-inī rīa mūndū, magaikūrūka kinya honge-inī na nīho mbaru ikoragwo inyitithītio","desc3":""},{"title":"mūnyīrīrī","desc1":"mīnyīrīrī","desc2":"mūcora ūtigītwo handū nī kīndū kīnyūrūrūkīire ho; kīndū kīranyūrūrūka handū","desc3":""},{"title":"mūnyito","desc1":"mīnyito","desc2":"handū hathondeketwo he ha kūnyitwo kīndū gīkīhūthīrwo kana gīgīkuo: mūhano: mūnyito wa rūgīo nī ūratuīkire","desc3":""},{"title":"mūnyongoro","desc1":"mīnyongoro","desc2":"mūhīrīga wa ciūmbe ikiritaga thī kana ciītwaraga na magūrū i mīīrī ī mūhianīre ta wa kamūkanda","desc3":""},{"title":"munyua mai","desc1":"minyua mai","desc2":"Blue gum Eucalyptus Saligna","desc3":""},{"title":"mūnyugi","desc1":"anyugi","desc2":"mūtambia wa ūhoro; mūini","desc3":""},{"title":"mūnyugī","desc1":"mīnyugī","desc2":"Kīndū ;īhangīrītwo handū ta gītukūinī kīhana kamūrica na kaingī andū nīmahūthagīra njoya cia nyoni gūthondeka; kīndū kīhotaga kwamūkīra mītambo kana ndūmīrīri kuma rīera-inī : mūhano: mūnyugī wa tibii nīguo wamūkagīra mīgambo na mbica","desc3":""},
        {
          "title":"munyūka",
          "desc1":"",
          "desc2":"mīri ya kīndū gikūraga kīnyitīrīire nayo kwaga kwīnyitīrīra rīngī",
          "desc3":""
        },
        {
          "title":"muomboko",
          "desc1":"",
          "desc2":"nyīmbo ciokire na andū arīa moimīte mbara-inī ya thī na cinagwo na kīnanda kīa mūgeto (accordion)",
          "desc3":""
        },
        {
          "title":"Muoria-nyoni",
          "desc1":"",
          "desc2":"mweri ūyū nīguo nyoni ikoragwo na irio nyingī mūno nī ūndū mīgūnda nī īkoretwo na mbura ūkaga gatatī ka mweri wa Gathano na Mūgaa wa thano Gīthūngū August",
          "desc3":""
        },
        {"title":"muoroto","desc1":"","desc2":"kara ga guoko karīa karigainie na karīa gatungu na nīko andū morotaga nako kaingī","desc3":""},{"title":"muoroto","desc1":"mīoroto","desc2":"ūndū ūrīa ūrongoreirio","desc3":""},{"title":"muoyo","desc1":"mīoyo","desc2":"mwīrī gūkorwo ūtakuīte; ūhoti ūrīa ūtūmaga kīūmbe gīkorwo gītakuīte","desc3":""},{"title":"mura","desc1":"","desc2":"kūgucia ngūmba cia kīndū kīmerete handū igatuīkanga","desc3":""},{"title":"mūra","desc1":"mīra","desc2":"mūnyito wa itimū","desc3":""},{"title":"mūragūri","desc1":"aragūri","desc2":"mūndū ūtuīragia ūhoro na njīra ya gūita mbūgū; mūndū wīcūranagia ūhoro akamenya gītūmi kīaguo","desc3":""},
        {
          "title":"mūrahuhū",
          "desc1":"",
          "desc2":"mūndū mūūru mūno",
          "desc3":""
        },
        {
          "title":"mūraigi",
          "desc1":"",
          "desc2":"thiarī īicūhītio mūtī-inī ūtarī mūceke no ūngīkuīka ūkūrītwo na mīri īgaicūhio",
          "desc3":""
        },
        {"title":"muramura","desc1":"","desc2":"nyamū irīa irīaga mahuti kūrīa mahuti ihorerete","desc3":""},{"title":"mūrangarī","desc1":"mīrangarī","desc2":"","desc3":""},{"title":"mūrangi","desc1":"mīrangi","desc2":"mūtī wīkaga wega kūndū kwī na maī maingī ūkūraga na marūngo me mahoro thīinī","desc3":""},{"title":"mūrangīri","desc1":"arangīri","desc2":"ūrīa ūikaraga eiguīte nīguo angīona ūūru etane kana ahūrane naguo","desc3":""},{"title":"mūrango","desc1":"mīrango","desc2":"rigī","desc3":""},{"title":"mūrara","desc1":"","desc2":"irio irarugītwo ikarara ","desc3":""},{"title":"mūrarangai","desc1":"mīrarangai","desc2":"mūthece wa mūgwī","desc3":""},{"title":"mūrari","desc1":"ararī","desc2":"ūrīa ūraraga kana ūkūrara handū","desc3":""},{"title":"mūrarī","desc1":"mīrarī","desc2":"rūkūngū rūirū rwīnyitagīrīra handū thutha wa gūtogererwo mūno nī ndogo","desc3":""},{"title":"mūraro","desc1":"","desc2":"mūrara","desc3":""},{"title":"mūraru","desc1":"","desc2":"ūtarī mūhiū na ti mūhehu","desc3":""},{"title":"mūrata","desc1":"arata","desc2":"mūndū mumīranītie ngoro mūkendana","desc3":""},{"title":"mūratina","desc1":"mīratina","desc2":"njohi īrugītwo na kīratina; mūtī ūrīa ūciaraga iratina","desc3":""},
        {
          "title":"mūraū",
          "desc1":"mīraū",
          "desc2":"hiū cia gūkururio nīguo irīme ta irīa ikururagio nī ng'ombe",
          "desc3":""
        },
        {
          "title":"mūraūni",
          "desc1":"",
          "desc2":"mūndū mūceeri mūno",
          "desc3":""
        },
        {
          "title":"mūrekio",
          "desc1":"arekio",
          "desc2":"mūtūmwo",
          "desc3":""
        },
        {
          "title":"mūremamūthūa",
          "desc1":"mīmeramamūthūa",
          "desc2":"Dodonaea Viscosa",
          "desc3":""
        },
        {
          "title":"mūrera",
          "desc1":"mīrera",
          "desc2":"Acacia Xanthophloe",
          "desc3":""
        },
        {
          "title":"mūrera",
          "desc1":"",
          "desc2":"guoya ūrīa ūkūraga mūtwe-inī na ngingo-inī cia nyamū ta mīrūthi, ndigiri na ingī ta icio;",
          "desc3":""
        },
        {"title":"mūreri","desc1":"areri","desc2":"ūrīa ūroraga mwana kinya akagimara","desc3":""},{"title":"mūri","desc1":"mīri","desc2":"kīrīa mīmera īgwatagīrīra nakīo tīīri-inī","desc3":""},{"title":"mūrica","desc1":"","desc2":"gacunjī ka mūmera kororo gatinītio ge gaceke karaihu, kana kīndū kīngī kīhana ta ūguo","desc3":""},{"title":"mūrīa-ng'ūrū","desc1":"","desc2":"mūndū ūtangīiga kīrīko ūtangīhokeka","desc3":""},{"title":"mūrigiti","desc1":"arigiti","desc2":"ūrīa ūrigitaga","desc3":""},{"title":"mūrima","desc1":"","desc2":"njamba cia ita irīa cikaraga na thutha ita-inī","desc3":""},
        {
          "title":"mūrimū",
          "desc1":"mīrimū",
          "desc2":"ūndū ūtūmaga mwīrī ūrware ūcūngīrīirwo nī kwaga kwīgitīra kumana na itūmi irīa irehaga thīna ūcio",
          "desc3":""
        },
        {
          "title":"mūrindūko",
          "desc1":"",
          "desc2":"thama īcūngīrīirio nī kīng'ūki",
          "desc3":""
        },
        {"title":"mūrīnga","desc1":"mīrīnga","desc2":"kīndū gīthondeketwo na irīnga inyitithanītio","desc3":""},{"title":"mūro","desc1":"mīro","desc2":"kīgera gīturītwo gī gīa kūrīma nakīo","desc3":""},{"title":"mūrogi","desc1":"arogi","desc2":"mūndū ūhūthagīra mīthaiga kūnūha","desc3":""},{"title":"mūromo","desc1":"mīromo","desc2":"mwanya wa gūtonyerwo na kumīrwo","desc3":""},{"title":"mūroterwo","desc1":"aroterwo","desc2":"ūrīa ūroteirwo","desc3":""},
        {
          "title":"mūroti",
          "desc1":"aroti",
          "desc2":"mūndū wonaga maūndū e toro",
          "desc3":""
        },
        {
          "title":"mūrū wa awa",
          "desc1":"",
          "desc2":"mūndūrūme ūrīa mūciaranīirwo nī baba ūmwe no manyina ngūrani",
          "desc3":""
        },
        {
          "title":"mūrū wa iya",
          "desc1":"",
          "desc2":"mūndūrūme ūciarītwo nī tataguo kana mamaguo",
          "desc3":""
        },
        {
          "title":"mūrū wa maitū",
          "desc1":"",
          "desc2":"mūndūrūme ūrīa mūciaranīirwo nī nyina ūmwe",
          "desc3":""
        },
        {
          "title":"mūrūai",
          "desc1":"mīrūai",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"mūrūai",
          "desc1":"mīrūai",
          "desc2":"",
          "desc3":""
        },
        {"title":"mūrūgamīrīri","desc1":"arūgamīrīri","desc2":"nyabara; mūtiiri","desc3":""},{"title":"mūrūgamo","desc1":"mīrūgamo","desc2":"itua irūmu rīa mūndū kana andū: mūhano: mūrūgamo wa gīkundi gīkī nī atī athīni maheagwo ūteithio nī būrūri","desc3":""},{"title":"mūrugi","desc1":"arugi","desc2":"mūndū ūrīa ūraruga: mūndū ūhīgīrīire ūhoro-inī wa ūrugi","desc3":""},{"title":"mūrukī","desc1":"","desc2":"nyamū cia nga gūkorwo ikīenda ndume; mūnungo","desc3":""},{"title":"mūrūme","desc1":"arūme","desc2":"mūndūrūme ūrīa ūhikītie mūtumia mūna","desc3":""},{"title":"mūruna","desc1":"","desc2":"kaara ga guoko karīa karigainie na karīa kanini","desc3":""},{"title":"mūruna","desc1":"aruna","desc2":"mwana ūciarītwo e wa gatatū kana thutha wa mwana wa gatatū; rītwa rītanagwo nī andū maciaranīirwo kana athiriti","desc3":""},{"title":"mūrūngarū","desc1":"arūngarū\/mīrūngarū","desc2":"mwerekereru ūtarī ūhinga; ūtarī mūgonyoku","desc3":""},
        {
          "title":"Mūrungu",
          "desc1":"",
          "desc2":"rītwa rīngī rīa Ngai; nyamū ya mūhīrīga wa irīa igīaga hīa no yo ndīrī",
          "desc3":""
        },
        {
          "title":"mūrunye",
          "desc1":"",
          "desc2":"runye (rwenji rūtihoyanagwo nī kīo kiugo runye)",
          "desc3":""
        },
        {"title":"mūrūri","desc1":"mīrūri","desc2":"mūgambo ūrutagwo nī kūhingīrīria mīhūmū; mūgambo mwega wa kūina","desc3":""},{"title":"mūruru","desc1":"mīruru","desc2":"gīcunjī kīa itumbī kīrīa gīkoragwo na rūnyaga rwa ngoikoni","desc3":""},{"title":"mūrurumba","desc1":"mīrurumba","desc2":"kīndū kīgima gītarī gītinangie","desc3":""},{"title":"mūrurumbo","desc1":"","desc2":"mūrurumba","desc3":""},{"title":"mūrurumo","desc1":"mīrurumo","desc2":"mūgambo mūritū; kīndū kūinainio nī mūgambo","desc3":""},{"title":"mūrutani","desc1":"arutani","desc2":"ūrīa weheragia maūndū mana thīinī wa mūndū nīguo amwīkīre mangī merū","desc3":""},{"title":"mūrūthi","desc1":"mīrūthi","desc2":"nyamū ndīa-nyama ya gīthaka īrīa njamba ciayo ikoragwo na njuīrī ndaya ngingo-inī na mūtwe-inī na nīyo nyamū īrīa njītigīre mūno nī irīa ingī mītitū-inī ya Africa","desc3":""},{"title":"mūrutwo","desc1":"arutwo","desc2":"ūrīa ūreherio ūndū mūna onio ūngī mwerū","desc3":""},{"title":"mūruumbo","desc1":"","desc2":"gīikarīro kīrīa mūthuri athiaga na kīo kīama agaikarīre","desc3":""},{"title":"mūtabarīre","desc1":"","desc2":"mwīkīre wa maūndū","desc3":""},{"title":"mūtacū","desc1":"","desc2":"ikinyūkia kuma ikinya rīmwe kinya rīrīa rīngī Gīthūngū stride","desc3":""},{"title":"mūtana","desc1":"atana","desc2":"mūheani","desc3":""},{"title":"mutandambogo","desc1":"mitandambogo","desc2":"","desc3":""},{"title":"mutarakwa","desc1":"mitarakwa","desc2":"","desc3":""},{"title":"mūtaramu","desc1":"ataramu","desc2":"Kiswahili mūndū ūhīgīrīire ūndū-inī mūna","desc3":""},{"title":"mūtaratara","desc1":"mītaratara","desc2":"mūtabarīre wa maūndū","desc3":""},{"title":"mutare","desc1":"mitare","desc2":"","desc3":""},{"title":"mūtaro","desc1":"mītaro","desc2":"handū henjetwo irima rīhana mūhari: mūkaro","desc3":""},{"title":"mūthaiga","desc1":"","desc2":"indo irīa ihūthagīrwo kūrigita mūrimū kana ndwari; kīndū kīhūthagīrwo kūroga","desc3":""},{"title":"mūthaiga","desc1":"mītaiga","desc2":"kīndū kīhūthagīrwo kūrigita ndwari kana mūrimū; kīndū kīhūthīrītwo kūroga","desc3":""},{"title":"mūthako","desc1":"mīthako","desc2":"ūndū ūrekwo wī wa gwīkenia; ūndū wīkītwo wī wa kūringa mūndū  itherū ","desc3":""},{"title":"muthakwa mweru","desc1":"mithakwamieru","desc2":"","desc3":""},{"title":"muthakwa wathi","desc1":"mithakwa wathi","desc2":"","desc3":""},{"title":"mūthamaki","desc1":"athamaki","desc2":"ūrīa ūrathamakīra ūhoro mūna; mūtongoria ūratha andū","desc3":""},{"title":"mūthambia","desc1":"athambia","desc2":"ūrīa ūciarīte mwana ūtarī wake akamūtua wake; ūrīa ūthambagia","desc3":""},{"title":"mūthanga","desc1":"","desc2":"thanda imumuthūkangīte mahiga-inī ikahaana tīīri","desc3":""},{"title":"mūthangiri","desc1":"mīthangiri","desc2":"magego maraya marīa nyamū ndīa nyama ihūthagīra gūtarūra kana gwatūra mahīndī namo mūhano: ngui ī mīthangiri īna","desc3":""},
        {
          "title":"mūtharaba",
          "desc1":"mītharaba",
          "desc2":"Kiswahili mītī īhīngīcithanītio ūmwe ūrūngiī na ūrīa ūngī ūkomete",
          "desc3":""
        },
        {
          "title":"Mūthatū",
          "desc1":"",
          "desc2":"mweri ūrīa mīmera īkoragwo īrirūkīte thutha wa mbura ya Kīhu, ūkaga mbere ya mweri wa Mūgira-njara Gīthūngū April",
          "desc3":""
        },
        {"title":"muthegerendu","desc1":"mithegerendu","desc2":"","desc3":""},
        {"title":"mūthegethege","desc1":"","desc2":"tīīri mūūmū ūhana rūkūngū ","desc3":""},
        {"title":"mūtheko","desc1":"","desc2":"magego ma mūthekomagego mana ma mbere marīa makoragwo kīni-inī kīa igūrū na gīa thī","desc3":""},
        {"title":"mūthemba","desc1":"mīthemba","desc2":"mūhīrīga: kīruka","desc3":""},{"title":"mūthenya","desc1":"mīthenya","desc2":"mahinda marīa kwī na ūtheri wa riūa ","desc3":""},{"title":"mūthenya","desc1":"mīthenya","desc2":"mūūthī","desc3":""},{"title":"mūthia","desc1":"mīthia","desc2":"kīrīkīro kīa ūndū; mwena ūrīa ūthirīrīkīire wī mūkunderu wa kīndū mūhano: amūturuma na mūthia wa mūtirima","desc3":""},{"title":"muthiga","desc1":"mithiga","desc2":"","desc3":""},{"title":"mūthigari","desc1":"","desc2":"Kiswahili: askari mūndū wandīkītwo nī thirikari wīra wa kūnyita arīa maroina watho","desc3":""},{"title":"mūthīgi","desc1":"mīthīgi","desc2":"mūtī ūkuagwo kuonania ūthamaki kana wathani","desc3":""},{"title":"mūthigiū","desc1":"mithigiu","desc2":"","desc3":""},{"title":"mūthigo","desc1":"mithigo","desc2":"","desc3":""},{"title":"mūthii","desc1":"athii","desc2":"ūrī rūgendo-inī","desc3":""},{"title":"mūthiīre","desc1":"mīthiīre","desc2":"ūrīa mūndū, nyamū kana kīndū gīthiaga; mūtugo","desc3":""},{"title":"mūthiita","desc1":"mīthiita","desc2":"kīīga kīa ūndūrūme kīruithie","desc3":""},{"title":"mūthimambūri","desc1":"mithimamburi","desc2":"","desc3":""},{"title":"mūthingi","desc1":"mīthingi","desc2":"Kiswahili harīa kīndū ta nyūmba, gīakīrīirwo","desc3":""},{"title":"mūthīnjani","desc1":"athinjani","desc2":"mūrigiti ūrigitaga na njīra ya gūthīnja ","desc3":""},
        {
          "title":"mūthīnji",
          "desc1":"athīnji",
          "desc2":"ūrīa ūragaga nyamū nīguo ciume nyama cia kūrīo",
          "desc3":""
        },
        {
          "title":"mūthiori",
          "desc1":"",
          "desc2":"mīkiha īrīa īkoragwo īnyitaine na nyee na nīyo ītwaraga hinya wa ūndūrūme nī guo ūkinye kīga-inī kīa ūciari",
          "desc3":""
        },
        {
          "title":"mūthīrīgū",
          "desc1":"",
          "desc2":"rwīmbo rwainirwo 1929-1930 thutha wa hetūro ya airītu kūgirio nī wathani wa Ngeretha Gīkūyū-inī",
          "desc3":""
        },
        {"title":"mūthirimo","desc1":"mīthirimo","desc2":"mwena wa mbere wa kūgūrū kīanda wa iru","desc3":""},{"title":"mūthiririmo","desc1":"mīthiririmo","desc2":"mūthirimo","desc3":""},{"title":"mūthiriti","desc1":"","desc2":"wa thiritū yaku","desc3":""},{"title":"mūthonge","desc1":"mīthonge","desc2":"mūhianīre ūthiīte ūkunderete kuuma gītina-inī kīaguo ūgakorwo na mūthia mūceke: mūcobe","desc3":""},{"title":"mūthongorima","desc1":"","desc2":"mungu ūtarī mwariī wenjetwo kaingī nī nyamū nīguo ciikarage ho","desc3":""},{"title":"mūthū","desc1":"mīthū","desc2":"mūhīrīga wa nyoni ikoragwo na gathūkū na gīting'oe kīraya irīaga matunda merua","desc3":""},
        {
          "title":"mūthūi",
          "desc1":"athūi",
          "desc2":"ūrīa ūmaathaga ūkī wa njūkī ",
          "desc3":""
        },
        {
          "title":"muthunguci",
          "desc1":"",
          "desc2":"nyimbo cia athuri na atumia aniaru cia ngomanio ciainagwo o thutha wa mīaka mūgwanja",
          "desc3":""
        },
        {
          "title":"mūthuri",
          "desc1":"athuri",
          "desc2":"mūndūrūme ūhikanītie; mūndūrūme ūtonyete ndundu ya athuri a kīama",
          "desc3":""
        },
        {
          "title":"mūthuru",
          "desc1":"",
          "desc2":"itonyo rīa andū-a-nja rīhumbagwo kuma njohero kinya magūrū-inī",
          "desc3":""
        },
        {"title":"mūthuthi","desc1":"mithuthi","desc2":"","desc3":""},{"title":"mūtī","desc1":"mītī","desc2":"mūmera ūnenehaga ūkagīa honge na mathari; mūmera ta ūyū ūthondekeirwo wīra mūna ta gwītirimia","desc3":""},
        {
          "title":"mūtiiri",
          "desc1":"atiiri",
          "desc2":"mūndū ūrīa ūroraga na agataara mūndū arua kana akīgerera igongona rīa kūrūga irūngo",
          "desc3":""
        },
        {
          "title":"mūtīīro",
          "desc1":"",
          "desc2":"mūtua rūru",
          "desc3":""
        },
        {"title":"mūtīng'a","desc1":"","desc2":"kūndū gūtigītwo wiki gūtarī kīndū","desc3":""},{"title":"mūting'oe","desc1":"mīting'oe","desc2":"kīīga gīkoragwo nyamū-inī imwe kīmerete kīnyitaine na mahīndī ma mūnyiginyigi: mūcuthī","desc3":""},{"title":"mūtino","desc1":"mītino","desc2":"ūndū mūūru ūhanīkīte na ndūkūīkaine atī no ūhanīke","desc3":""},{"title":"mūtoi","desc1":"itoi","desc2":"mūndū wīkaga ciīko i magigi: mūndū mwaganu mūno","desc3":""},{"title":"mūtondo","desc1":"","desc2":"tīīri ūgunyītio nī maī ūkahaana gīcūrūcūrū kīmata","desc3":""},
        {
          "title":"mūtongoria",
          "desc1":"atongoria",
          "desc2":"ūrīa ūrathiī mbere ya arīa angī nao makamuuma thutha: ūrīa ūreka maūndū nīguo arīa angī meke take; ūrīa ūthurītwo arūgamīrīre andū ūndū-inī mūna",
          "desc3":""
        },
        {
          "title":"mūtongoro",
          "desc1":"",
          "desc2":"mūhari wa andū kana nyamū irūmanīrīire ta ūrīa thuraku ithiaga",
          "desc3":""
        },
        {"title":"mūtonyi","desc1":"atonyi","desc2":"ūrīa wonagia mūndū maūndū mageni akamamenya: mūtaarani: mūheani kīrīra","desc3":""},{"title":"mūtorothua","desc1":"","desc2":"mwanjati","desc3":""},{"title":"mũtiga irĩ","desc1":"","desc2":"mũndũ mwega, ũciarĩte ciana na akaitigĩra ũtonga thutha wa gũkua","desc3":""},
        {
          "title":"mūtu",
          "desc1":"mītu",
          "desc2":"thanda cia irio ta mbembe ciūmithītio igathīo mūtutu mūhinyu",
          "desc3":""
        },
        {
          "title":"mūtua rūru",
          "desc1":"",
          "desc2":"mūthī wa mūgwanja wa kiumia ūrīa Agīkūyū maikaraga o mūndū mūciī-inī wake akaruta magongona ma gwake mūciī",
          "desc3":""
        },
        {"title":"mūtugi","desc1":"atugi","desc2":"ūrīa ūnyitaga andū ūgeni gwake na kūmahe indo ta irio","desc3":""},{"title":"mūtugo","desc1":"mītugo","desc2":"mūikarīre wa mūndū, andū kana nyamū ","desc3":""},{"title":"mūtūme","desc1":"atūme","desc2":"Kiswahili mūtūmwo","desc3":""},{"title":"mūtumia","desc1":"atumia","desc2":"mūndūmūka mūhiku","desc3":""},{"title":"mūtumia wa ndigwa ","desc1":"","desc2":"mūtumia ūkuīrīirwo nī mūthuriwe","desc3":""},{"title":"mūtūmwo","desc1":"atūmwo","desc2":"ūrīa wathītwo gūthiī handū hana ageke ūndū mūna: mūrekio","desc3":""},{"title":"mūtunda","desc1":"mītunda","desc2":"mūmera o wothe ūciaraga matunda","desc3":""},{"title":"mūtūndū","desc1":"mītūndū","desc2":"","desc3":""},{"title":"mūtūndūthūko","desc1":"mītūndūthūkū","desc2":"thundo nyingī kana tūwūimbo tūingī tumīrīte handū hamwe o rīmwe","desc3":""},{"title":"mūtūri","desc1":"","desc2":"thathi wī na marigū","desc3":""},{"title":"mūtutu","desc1":"mītutu","desc2":"kīndū gīthīītwo gīkahinya biū","desc3":""},{"title":"mūtwe","desc1":"mītwe","desc2":"kīīga kīa nyamū kīrīa gīkoragwo gīkuīte ciīga ingī ta maitho na matū gīkoragwo kīnyitīrīirwo nī ngingo","desc3":""},{"title":"mūūgī","desc1":"ogī","desc2":"wī na ūtaūku wa maūndū: ūramenya maūndū","desc3":""},{"title":"mūūkio","desc1":"","desc2":"ūrugarī wa andū wa kwenda gūkomania","desc3":""},{"title":"mūūra huhū","desc1":"","desc2":"mūndū mūru mūno mwīki-naī","desc3":""},{"title":"mūūthī","desc1":"","desc2":"kuuma riūa rīa thūa kinya rīthūe rīngī","desc3":""},{"title":"mūūthī","desc1":"","desc2":"mūtī mwariī ūhūthagīrwo gūkima na ndīrī","desc3":""},{"title":"mwaga","desc1":"","desc2":"mwagi; ūrīa ūtarī kīna mūhano: mwaga thoni; thīiniī wa indo iratarwo, kīrīa kī makīria gīgatūma itikagaike na igīrī; ūrīa ūtaraharūkana na arīa meho (Gīthūngū odd one out)","desc3":""},{"title":"mwagatho","desc1":"","desc2":"kūhiūkīrwo nī ūndū wa ūndū mūna: agathwo mūhano: mwagatho wake nīguo ūratūmire mūka amūtige","desc3":""},{"title":"mwagi","desc1":"","desc2":"ūrīa ūtarī","desc3":""},{"title":"mwago","desc1":"mīago","desc2":"maūndū ma gwīkenia ","desc3":""},{"title":"mwai","desc1":"","desc2":"mūndū ūrīa wayaga mītī agathondeka indo ta ndīrī kana mīharatī","desc3":""},{"title":"mwaiyo","desc1":"","desc2":"mūrendera: Trichocladus ellipticus","desc3":""},{"title":"mwaka","desc1":"mīaka","desc2":"ihinda rīa mīeri ikūmi na īrī: Gīthūngū mwaka wanjagia Mūgaa ūgathira Gatumu no Gīkūyū mwaka wanjagia hīndī ya magetha mweri-inī wa Mūgetho ūgathira Mūgaa","desc3":""},{"title":"mwaki","desc1":"mīaki","desc2":"kīndū kīhiū gīcinaga indo na gīkaruta ūtheri; hinya ūrīa umaga thitima-inī","desc3":""},{"title":"mwaki","desc1":"aki","desc2":"ūrīa ūturaga indo cia mbaū kana mahiga","desc3":""},{"title":"mwamba","desc1":"","desc2":"mūndū mwīī","desc3":""},{"title":"mwamba","desc1":"","desc2":"mūtheco: mūratho:  mūtī ūrīa ūthecagīrīrwo nyūmba gatagatī ūkanyitīrīra mīitīrīro","desc3":""},{"title":"mwamū","desc1":"","desc2":"mūgayūkano; mwanya mwanya","desc3":""},{"title":"mwana","desc1":"ciana","desc2":"mūndū kana nyamū, ūciarītwo; mūndū ūtakinyītie mīaka ya gwītuīra matua; kanyūngū kombagwo na ndoro handū ha rīūmba nī arūme ga kūina mūgoiyo","desc3":""},{"title":"mwana wa ndigwa","desc1":"","desc2":"mwana ūkuīrīirwo nī ithe kana nyina","desc3":""},{"title":"mwana wa ngoriai","desc1":"","desc2":"mwana ūkuīrīirwo nī ithe na nyina","desc3":""},{"title":"mwanake","desc1":"anake","desc2":"mūndūrūme mūruu no ndahikanītie","desc3":""},{"title":"mwanda","desc1":"","desc2":"Lachnopylis congesta","desc3":""},{"title":"mwandata","desc1":"","desc2":"kiugū kīa mbūri kana ng'ombe","desc3":""},{"title":"mwangwa","desc1":"","desc2":"Millettia dura","desc3":""},
        {
          "title":"mwani",
          "desc1":"",
          "desc2":"rītwa rītanagwo nī andū-a-nja kuonania ūrīa mendaine; ngeithi mūtumia ageithagia nyina wa mwanake ūrīa ūhikītie mwarī kana nyina wa mūirītu ūrīa mūrūwe ahikītie; wa mwani rītwa rīngī rīa hiti ( nī ūndū wa kwania)",
          "desc3":""
        },
        {
          "title":"Mwania-thenge",
          "desc1":"",
          "desc2":"mweri-inī ūyū nīrīo thenge cianagīria harika nī ūndū wa mūrukī, ūkaga thutha wa Mūgaa wa thano na mbere ya Kanyua-hūngū Gīthūngū October",
          "desc3":""
        },
        {"title":"mwanīki","desc1":"anīki","desc2":"ūrīa wanīkaga; ūrīa ūcuragia mīatū nīguo īgīe njūkī","desc3":""},
        {
          "title":"mwanjati",
          "desc1":"",
          "desc2":"mūtorothua:  Faurea saligna",
          "desc3":""
        },
        {
          "title":"mwano",
          "desc1":"",
          "desc2":"mbūthū ya mūndū mūgo īrīa akuaga nayo indo irīa ahūthagīra ūgo-inī wake",
          "desc3":""
        },
        {"title":"mwanya","desc1":"","desc2":"handū hatarī hahingīku hagatigwo atī no hatonyerio kīndū; indo gūkorwo itarī hamwe","desc3":""},{"title":"mwara","desc1":"ara","desc2":"ūhūthagīra tūmaūgī nīguo ahīngīce arīa angī kana egīīre kīrīa erirīria","desc3":""},{"title":"mwarano","desc1":"","desc2":"mūhandano","desc3":""},{"title":"mwari","desc1":"","desc2":"ūrīa waraga","desc3":""},
        {
          "title":"mwarī",
          "desc1":"arī",
          "desc2":"mūndū-wa-nja mūciare nī mūndū ūrīa ūrarīrīrio",
          "desc3":""
        },
        {
          "title":"mwarī wa awa",
          "desc1":"",
          "desc2":"mūirītū ūrīa mūciaranīirwo nī ithe ūmwe no manyina ngūrani",
          "desc3":""
        },
        {
          "title":"mwarī wa iya",
          "desc1":"",
          "desc2":"mūirītu ūciarītwo nī tataguo kana mamaguo",
          "desc3":""
        },
        {
          "title":"mwarī wa maitū",
          "desc1":"",
          "desc2":"mūirītū ūrīa mūciaranīirwo nda īmwe",
          "desc3":""
        },
        {"title":"mwarīki","desc1":"","desc2":"Ricinus communis","desc3":""},{"title":"mwarīro","desc1":"","desc2":"mūtī ūrīa ūkomagīra mūgamba","desc3":""},{"title":"mwaritha","desc1":"","desc2":"mūkūrūngū","desc3":""},{"title":"mwarunyo","desc1":"","desc2":"ruo rwa gūciara","desc3":""},{"title":"mwathe","desc1":"miathe","desc2":"","desc3":""},{"title":"mwati","desc1":"","desc2":"ūrīa watagia rora gwatia","desc3":""},{"title":"mwatū","desc1":"mīatū","desc2":"handū hathondeketwo he ha gūikarwo nī njūkī","desc3":""},{"title":"mwatūka","desc1":"","desc2":"mūgayūkano wa kīndū ūtoimūkanīte mūhano: rūthingo rwa nyūmba rwī na mwatūka","desc3":""},
        {
          "title":"mwatūkano",
          "desc1":"",
          "desc2":"ngayūkano",
          "desc3":""
        },
        {
          "title":"mwatūro",
          "desc1":"mīatūro",
          "desc2":"rūkū rwatūrītwo kuma he rūngī rūtungu",
          "desc3":""
        },
        {
          "title":"mwehio",
          "desc1":"",
          "desc2":"itonyo rīhumbagwo nī aka rīohereirwo njohere rīkahumbīra ciīga ciao cia ūciari",
          "desc3":""
        },
        {"title":"mweke","desc1":"","desc2":"ihinda ūndū mūna ūngīkīka mūhano: mūndū ūyū athiī nī ūkuona mweke wa kūruta wīra","desc3":""},{"title":"mwende","desc1":"ende","desc2":"ūrīa wendetwo mūno","desc3":""},{"title":"mwendi","desc1":"endi","desc2":"ūrīa wendaga ūndū","desc3":""},{"title":"mwendwa","desc1":"endwa","desc2":"mūndū ūrīa wendetwo nī mūndū mūna","desc3":""},{"title":"mwendwo nĩ irĩ","desc1":"","desc2":"mũndũ mwega, ũciarĩte ciana na wĩ na indo irĩa ireraga ciana","desc3":""},
        {
          "title":"mwene",
          "desc1":"ene",
          "desc2":"ūrīa kīndū kīna gī gīake",
          "desc3":""
        },
        {
          "title":"mwengū",
          "desc1":"",
          "desc2":"mwehio; itonyo rīhumbagwo mwena wa mbere kuma njohera rīgacunjura ciero-inī nī arūme makīina ngurū",
          "desc3":""
        },
        {"title":"mweri","desc1":"mīeri","desc2":"ihinda rīgeretwo na mīgendere ya mweri","desc3":""},{"title":"mweri","desc1":"","desc2":"kīmūrī kīrīa kīaraga ūtukū; thakame īrīa yuraga andū-a-nja o mweri; ihinda rīrīa mūndū-wa-nja aroira thakame ya mweri","desc3":""},{"title":"mwerū","desc1":"mīerū","desc2":"wī na rūnyaga rwerū; ūtarī mūhūthīre kuma rīrīa wathondekirwo; ūrīa wagūra ūtararī naguo mbere","desc3":""},{"title":"mweū","desc1":"","desc2":"mūmera ūhandagwo kūndū kūgunyu na nīguo ūciaraga ndūma ","desc3":""},{"title":"mwībūngia","desc1":"","desc2":"mūndū mwīyathi, wīikaragia atekwenda gūtukana na andū arīa angī","desc3":""},{"title":"mwīgangaro","desc1":"","desc2":"ūhoro wa gwīkenia","desc3":""},{"title":"mwīgerekanio","desc1":"","desc2":"mūtugo wa gwīka maūndū marīa wona na andū angī ona ūtoī marameka nī kī","desc3":""},{"title":"mwīgitio","desc1":"mīgitio","desc2":"handū ha kwīgita ndūgakinyīrwo nī ūndū kana kīndū kīna","desc3":""}, {"title":"mwĩhĩtwa","desc1":"mīgitio","desc2":"ũndũ ũtuĩtwo na itua irũmu","desc3":""},{"title":"mwikunya","desc1":"miikunya","desc2":"","desc3":""},{"title":"mwīnihūro","desc1":"","desc2":"mūnuhanuho wa nyamū īgīetha thaha","desc3":""},{"title":"mwīnū","desc1":"","desc2":"Cassia didymobotrya","desc3":""},{"title":"mwīnyitio","desc1":"mīīnyitio","desc2":"mūkanda wa kwīhotorwo njohero","desc3":""},
        {
          "title":"mwīnyogoro",
          "desc1":"",
          "desc2":"mwītīyo",
          "desc3":""
        },
        {
          "title":"mwiri",
          "desc1":"",
          "desc2":"guoko kwa mūndū thutha wa rūhī gatagatī ka irūngo rīa rūhī na harīa irūngo cia ciara cianjagīria",
          "desc3":""
        },
        {"title":"mwīrī","desc1":"mīīrī","desc2":"ciīga ciothe cia mūndū kana nyamū i hamwe ūrīa ikoragwo ciūmbītwo; ciīga cia mūndū itarī muoyo ","desc3":""},{"title":"mwīruti","desc1":"eruti","desc2":"ūrīa wīīkagīra maūndū ategweterera ūteithio","desc3":""},{"title":"mwītha","desc1":"","desc2":"iria rītarī imata","desc3":""},{"title":"mwītīyo","desc1":"","desc2":"mwīyambo","desc3":""},{"title":"mwītuīrio","desc1":"","desc2":"kwīgangara na ūtonga","desc3":""},
        {
          "title":"mwīyambo",
          "desc1":"",
          "desc2":"mwīyonanio wa maūndū marīa ūrona ta ūkīrīte arīa angī namo",
          "desc3":""
        },
        {
          "title":"mwīyūngūrūrio",
          "desc1":"",
          "desc2":"mwītīyo",
          "desc3":""
        },
        {
          "title":"mwīyuno",
          "desc1":"",
          "desc2":"kwaga kūrūngara kīndū gīgakorwo kīrī kīgonyoku",
          "desc3":""
        }
        ];
    }
    if(widget.alphabet == 'MB') {
      _allUsers = [{"title":"mbaa","desc1":"heho īrīa īitīkaga ta kībii","desc2":"","desc3":""},{"title":" mbaū","desc1":"Kiswahili mbao mūtī watūrītwo nīguo wakwo naguo","desc2":"","desc3":""},{"title":"mbaara","desc1":"mbūkīrīra: njūkanīrīro: ngūī: njūgitano: ikundi igīrī kana makīria kūrūa","desc2":"","desc3":""},
        {
          "title":"mbage",
          "desc1":"mabage",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"mbagi",
          "desc1":"nyama ya mbūri kuma gīthūri-inī kinya kūgūrū-inī",
          "desc2":"",
          "desc3":""
        },
        {"title":"mbakī","desc1":"mūtutu ūthīītwo mahuti ma mūbakī","desc2":"","desc3":""},{"title":"mbara","desc1":"njuīrī irīa ikūraga magūrū-inī na moko-inī ma andū","desc2":"","desc3":""},{"title":"mbara","desc1":"kīndū gīthondeketwo gī gīa gīthiūrūrī kaingī gīa gūtwarithio nī ciana","desc2":"","desc3":""},
        {
          "title":"mbarī",
          "desc1":"andū a mūhīrīga wa ithe wa mūndū",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"mbarī",
          "desc1":"mīthia ya kīndū mūhano: rūhiū rwake rwa njora rūranoretwo mbarī cierī nī kīo aracangacangaga mbarī īmwe kinya mbarī īrīa īngī ya mūtitū atarī na guoya",
          "desc2":"",
          "desc3":""
        },
        {"title":"mbarīki","desc1":"maciaro ma mūtī wa mwarīki","desc2":"","desc3":""},{"title":"mbaru","desc1":"mahīndī marīa makoragwo manyitanīte na ihīndī rīa gīthūri na magakorwo manyitaine na mūnyiginyigi magoka mwena-inī wa gītathira ","desc2":"","desc3":""},{"title":"mbathi","desc1":"English bus","desc2":"","desc3":""},{"title":"mbathia","desc1":"Kiswahili pazia","desc2":"","desc3":""},{"title":"mbatūni","desc1":"gīkundi kīa andū mekaga maūndū hamwe kaingī maūndū mooru","desc2":"","desc3":""},{"title":"mbawa","desc1":"kīondo kīnene biū","desc2":"","desc3":""},{"title":"mbeca","desc1":"Kiswahili pesa: mbia","desc2":"","desc3":""},{"title":"mbegū","desc1":"kīrīa gīthikagwo tīīri-inī nīguo kīmere; hinya wa ūndūrūme ūrīa ūnyitanaga na itumbī rīa nga rīgatuīka mwana; kīndū gīkoragwo matunda-inī kana kīrutagwo nī mīmera na kīagwa tīīri-inī gīkamera","desc2":"","desc3":""},{"title":"mbembe","desc1":"maciaro ma mūbebe: thanda ithandūrītwo mbembe-inī","desc2":"","desc3":""},
        {
          "title":"mbere",
          "desc1":"kūrīa kīndū kana mūndū arorete; mwena ūrīa ūthiū ūrī; gīcigo kīa mūgūnda kīrīa kīrarīmwo; kīrīa,ûrīa kana īrīa ītongoretie",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"mbere",
          "desc1":"wa mbere mūthī wa kiumia",
          "desc2":"",
          "desc3":""
        },
        {"title":"mbete","desc1":"Kiswahili pete","desc2":"","desc3":""},{"title":"mbeū","desc1":"kīrīa kīhandagwo nīgeetha gīkūre kīrute maciaro; maciaro ma kīndū kīna marīa o namo mangīciarana rīngī","desc2":"","desc3":""},{"title":"mbia","desc1":"indo irīa ihūthagīrwo kūgūra indo: mbeca","desc2":"","desc3":""},{"title":"mbīa","desc1":"nyamū ītarī nene mūno ī mūting'oe mūraya ī ngumo ya kūrīa nguo na indo cia bata nyūmba","desc2":"","desc3":""},
        {
          "title":"mbīcī",
          "desc1":"ngū ihana thari njeke itarī ndungu",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"mbica",
          "desc1":"Kiswahili picha: kīruru",
          "desc2":"",
          "desc3":""
        },
        {"title":"mbīgī","desc1":"maithikiri","desc2":"","desc3":""},{"title":"mbimbi","desc1":"kīoro kīnene kīa nyamū irīa irutaga kīhaana tūthiūrūrī ta mbūri","desc2":"","desc3":""},{"title":"mbini","desc1":"kīndū kīhūthagīrwo kūnyitīrīra nguo kana kūnyitīrīra kīndū nguo-inī","desc2":"","desc3":""},{"title":"mbinyū","desc1":"njohi ndūrū ya ūrīu","desc2":"","desc3":""},{"title":"mbira","desc1":"mbirūri","desc2":"","desc3":""},{"title":"mbīri","desc1":"rūkūngū rūmbūrītwo","desc2":"","desc3":""},{"title":"mbirigūri","desc1":"kīndū gīa gīthiūrūrī kīūmū: kīūma kīa ritho nī mbirigūri","desc2":"","desc3":""},{"title":"mbīrīra","desc1":"handū hathikītwo mūndū kana nyamū","desc2":"","desc3":""},{"title":"mbīrīrīka","desc1":"inegene ta rīa ngarari","desc2":"","desc3":""},{"title":"mbīrīthi","desc1":"ihenya: na ihenya: na mītūkī","desc2":"","desc3":""},{"title":"mbiro","desc1":"wūirū ūrīa wīnyitagīrīra nyūngū-inī kana indo cia kūrugīrwo irīa cigagīrīrwo mwaki-inī","desc2":"","desc3":""},
        {
          "title":"mbirū",
          "desc1":"matunda ma mūtī wa mūbirū",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"mbirūirū",
          "desc1":"rūnyaga ta rwa igūrū kana rūrīa mūndū onaga mairīria na manyaga mangī marīa makonainie na ruo",
          "desc2":"",
          "desc3":""
        },
        {"title":"mbirūri","desc1":"mūtī mūicūhie ūkahana mūcobe ūhūragwo na gīcūni nī ciana ūgathiūrūrūka","desc2":"","desc3":""},{"title":"mbītīka","desc1":"gīcindano kīragucīrīria eroreri; inegene rī na ngarari iragucīrīria andū kūīrorera","desc2":"","desc3":""},{"title":"mbito","desc1":"mītī ītarī mītungu mūno ya gwaka","desc2":"","desc3":""},{"title":"mboco","desc1":"mūmera, na maciaro maguo wa mūhīrīga ūmwe na noe","desc2":"","desc3":""},{"title":"mbogo","desc1":"nyamū ya gīthaka īhana ng'ombe mūmbīre-inī wayo no ī mwīrī mūirū na hīa ciayo nī nene na ikoragwo ihumbīrīte mūtwe wayo rūgongo rwa thithi ruothe","desc2":"","desc3":""},{"title":"mbogoro","desc1":"mūtī wīhacīte mūthia-inī ūkahana ta wīkūnjīte ūndū ūngīhocio kīndū: mboorio; mūrimū wa magūrū gūkorwo mehacīte mīthirimo-inī makoima na nja kana maru magacokanīrīra","desc2":"","desc3":""},{"title":"mbogo kanyarare","desc1":"kombūki kahana ngi no nī kanene kūrī ngi kanyuaga andū na nyamū thakame","desc2":"","desc3":""},{"title":"mbomboo","desc1":"Kiswahili pomboo nyamū ya iria-inī ī rūa rwega","desc2":"","desc3":""},{"title":"mboorio","desc1":"mūtī wī hwang'a wa kūgucia kīndū kī haraya","desc2":"","desc3":""},{"title":"mbu","desc1":"mūkayo wa kūmenyithia andū kwī na ūgwati kana gwīta andū moke mateithūre","desc2":"","desc3":""},{"title":"mbugi","desc1":"kīgera kīhocagio ngingo-inī ya nyamū nīguo īmenyekage harīa īrī; ngūrūkūri","desc2":"","desc3":""},{"title":"mbugīrīrio","desc1":"inegene inene ","desc2":"","desc3":""},{"title":"mbūgū","desc1":"tūhiga tūnyoroku: mbegū nyūmū; indo irīa ikoragwo mwano-inī wa mūragūri aragūraga nacio","desc2":"","desc3":""},{"title":"mbūgūgū","desc1":"ūgūrūki","desc2":"","desc3":""},{"title":"mbūgūigū","desc1":"ūgūrūki","desc2":"","desc3":""},{"title":"mbuguīro","desc1":"ūhoti ūrīa ūtūmaga mūndū aigue na ataūkīrwo nī ūrīa aigua","desc2":"","desc3":""},{"title":"mbūkīrīra","desc1":"andū kwarahūkanīra me na marūrū ","desc2":"","desc3":""},{"title":"mbūkū","desc1":"nyamū īigana nyau, ya gīthaka na ya kūrīithio ī matū maraya Kiswahili sungura","desc2":"","desc3":""},{"title":"mbura","desc1":"maī maraitīka kuuma igūrū matu-inī","desc2":"","desc3":""},{"title":"mbūri","desc1":"nyamū cia mīhīrīga ya ng'ondu na mīgoma","desc2":"","desc3":""},{"title":"mbūrūbūrū","desc1":" rūbūa","desc2":"","desc3":""},
        {
          "title":"mburuga",
          "desc1":"ngūī",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"mburugunyī",
          "desc1":"memenyi",
          "desc2":"",
          "desc3":""
        },
        {"title":"mburungo","desc1":"kamondo ke na indo cia rūgendo","desc2":"","desc3":""},{"title":"mbūrūrū","desc1":"mūrūro ūtarī na harīa werekeire","desc2":"","desc3":""},{"title":"mbutha","desc1":"kīrīa kīgīaga kīndū gīabuthūka","desc2":"","desc3":""},{"title":"mbuthu","desc1":"indo ibuthīte","desc2":"","desc3":""},{"title":"mbūthū","desc1":"kīnya gīa gwīkīrwo iria kana maī gīkoragwo kīrī gīceke kīraihu","desc2":"","desc3":""},{"title":"mbutu","desc1":"njuīrī irīa imeraga imone-inī cia maitho","desc2":"","desc3":""},{"title":"mbūtū","desc1":"arūi a ita macokanīrīire","desc2":"","desc3":""},{"title":"mūcinga","desc1":"kīndū gītuthūraga njirūngi gīgacirathūkia ","desc2":"","desc3":""}];
    }
    if(widget.alphabet == 'N') {
      _allUsers = [{"title":"na","desc1":"kiugo gīa kuonania ngwatanīro kana kuongererwo; kiugo gīa kwarīrīria kīndū ūtegūkīgweta na rītwa rīakīo mūhano: nī ngari na iramūkuire ","desc2":"","desc3":""},{"title":"naga","desc1":"gemia ","desc2":"","desc3":""},
        {
          "title":"naguo",
          "desc1":"mu3 kiugo gīa kwarīrīria kīndū kīna kuonania nī kīrī na ngwatanīro na na kīndū kīngī mūhano: mūtī ūrīa uma haha nū wathiī naguo?",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"naī",
          "desc1":"ūūru mūnene wīkītwo: mwīki-naī mwiki ūūru mūnene ta kūragana",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"naiyūnaiyū",
          "desc1":"na ihenya: na mītūkī",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"namo",
          "desc1":" kiugo gīa kuonania indo na nī irekire ūna thuna wa indo ingī gwīka ūna mūhano: arathambagīra namo maī maraingīha arathererio;  kiugo gīa gūcokerera indo irīa wūingī wa cio ūkaragwo na kiugo 'ma-&quot; ta maī kana matū",
          "desc2":"",
          "desc3":""
        },
        {"title":"nana","desc1":"tūrīka","desc2":"","desc3":""},{"title":"narua","desc1":"ūndū gwīkīka na mītūkī","desc2":"","desc3":""},{"title":"neana","desc1":"rekia kīndū gīkorwo na mūndū ūngī ","desc2":"","desc3":""},
        {
          "title":"negena",
          "desc1":"ruta mūgambo ūtarakenia matū; aria na ūrūrū wa marakara",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"nene",
          "desc1":"ī na mūigana mūingī; ī na mūigana mwariī, mūtungu, mūtungu kana mūraya",
          "desc2":"",
          "desc3":""
        },
        {"title":"nengera","desc1":"neana kīndū kūrī mūndū kana nyamū na īkīoe","desc2":"","desc3":""},{"title":"nī","desc1":"kiugo gīa kuonania ūrīa kana kīrīa gīkīīte ūna, kana kuonania ūndū mūna ūkoniī ūū kana kīī","desc2":"","desc3":""},{"title":"niara","desc1":"handū hauma na maī kūhūa; kīndū kiuma kīigū gūthirwo nī wūigū","desc2":"","desc3":""},{"title":"nigina","desc1":"inaina nī kwaga kūrūma; cuha ūtenyitīrīire wega","desc2":"","desc3":""},
        {
          "title":"nina",
          "desc1":"hūthīra kīndū kinya gīthire biū",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"nini",
          "desc1":"ītarī nene; ītarī nyingī; ītarī njariī, ndungu, noru kana ndaya",
          "desc2":"",
          "desc3":""
        },
        {"title":"ninūkia","desc1":"nina kīrīa gīgūtigaire","desc2":"","desc3":""},{"title":"noe","desc1":"mūthemba wa mboco īkoragwo na mūhianīre ta wa higo","desc2":"","desc3":""},{"title":"noga","desc1":"mwīrī kūrwo nī hinya thutha wa gwīka ūndū mūna","desc2":"","desc3":""},{"title":"nogona","desc1":"aria ūtekumūkania ūndū ūtaraiguīka ūrīa ūroiga","desc2":"","desc3":""},{"title":"nogora","desc1":"ninīra minoga; moya nīguo ūninīre mīnoga","desc2":"","desc3":""},{"title":"nona","desc1":"tuīka mūkarī","desc2":"","desc3":""},{"title":"nongorio","desc1":"muoroto: umithio ūrīa wīrīgīrīirwo kuoneka thutha wa ūndū mūna gwīkwo","desc2":"","desc3":""},{"title":"noora","desc1":"kuuha kīndū gīa gūtema kana gūtheca nīguo kīūhīge","desc2":"","desc3":""},{"title":"nora","desc1":"nyamū kwarama īkagīa nyama nyingī","desc2":"","desc3":""},{"title":"noru","desc1":"nyamū inorete","desc2":"","desc3":""},{"title":"nū","desc1":"kiugo gīa kūūria kīūria , nī mūndū ūrīkū ūcio","desc2":"","desc3":""},{"title":"nūgī","desc1":"kīboo","desc2":"","desc3":""},{"title":"nūgū","desc1":"mūhīrīga wa nyamū cia gīthaka itambaga mītī igūrū na nīcionekaga irī na ūgī mūnene nīūndū wa kūhota gūikarania hamwe na kūrora ciana ciacio: nga ciacio irī nyondo igīrī irīa ciongithagia ciana ciacio","desc2":"","desc3":""},{"title":"nuguna","desc1":"teta na mīario ītaraiguīka nī kwaga kūiganīra","desc2":"","desc3":""},{"title":"nugunugu","desc1":"inegene rīa gūteta nī kwaga kūiganīra: ","desc2":"","desc3":""},{"title":"nuhanuha","desc1":"nyamū kūnungīra kīndū; gamba ta nyamū īkīnungīra kīndū","desc2":"","desc3":""},{"title":"nūi","desc1":"gūkorwo mwīrī kuuma njohero kinya maru-inī ti mūhumbe","desc2":"","desc3":""},{"title":"nuna","desc1":"onania marakara nī gūkūnja ūthiū: tuta","desc2":"","desc3":""},{"title":"nuna ita","desc1":"njamba cia ita cietereire amaitha","desc2":"","desc3":""},{"title":"nunga","desc1":"ruta mūheera mūna","desc2":"","desc3":""},{"title":"nūngarū","desc1":"ītarī ng'onyoku","desc2":"","desc3":""},
        {"title":"nunwa","desc1":"ngīīgu mūno ta ī ngūrūku","desc2":"","desc3":""}];
    }
    if(widget.alphabet == 'ND') {
      _allUsers = [
        {
          "title":"nda",
          "desc1":"mūhuko ūrīa irio itonyaga ciahītūka mūmero na nīkuo irio ithīyagīrwo; gītathira; ihu",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndaa",
          "desc1":"gatambi kehithaga njuīrī-inī cia andū kana guoya-inī wa nyamū gakamanyua thakame",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndahi","desc1":"kīndū gīthondeketwo na rūhīa kana rūngū kana kīndū kīngī ta kīu kīhūthagīrwo gūtahia indo ndweku","desc2":"","desc3":""},{"title":"ndahi","desc1":"karūgi kanini ka mūhīrīga wa ngigī","desc2":"","desc3":""},{"title":"ndaihu","desc1":"ī na mūigana mūtambūrūku mūno","desc2":"","desc3":""},{"title":"ndaka","desc1":"maī na tīīri itukanītio igatondora","desc2":"","desc3":""},{"title":"ndamathia","desc1":"nyamū īhana nyamū ya thī kana kīūngūyū yatūraga njūī-inī imwe na nī yarī ya bata nī ūndū wa igongona rīa ituīka English - similar to Leviathan","desc2":"","desc3":""},
        {
          "title":"ndara",
          "desc1":"rūtara rwa gūcinīrwo nyama",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndarīria-ciugo",
          "desc1":"handū hacokanīrīirio ciugo na ūtaūri wa cio mūhano: ndarīria-ciugo īno nī ūgo wa Mwīthaga wa mbarī ya kondu",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndarīria-gīīko",
          "desc1":"ciugo itaragīria mwīkīre wa gīīko kīna na ikaheana mwerekera ūrīa gīīko kīu kīoete mūhano:nī hiū mūno",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndarīria-rītwa",
          "desc1":"ciugo itaragīria ūrīa ngweta-rītwa ītariī mūhano: Wanjirū nī kīrorerwa",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndara-gīthaka",
          "desc1":"nyamū cia gīthaka irīa irīaga mahuti ma gīthaka",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndare","desc1":"maciaro ma mūtī wa mūtare","desc2":"","desc3":""},{"title":"ndari","desc1":"ngo; gīthuma; ciugo irīa ihūthagīrwo ūtari-inī ta īmwe kana ikūmi","desc2":"","desc3":""},{"title":"ndarī","desc1":"kīgera kīhūragīrīrwo mahiga-inī kana ngū-inī igīatūrwo","desc2":"","desc3":""},{"title":"ndarwa","desc1":"rūa rwa nyamū īthīnjītwo ","desc2":"","desc3":""},{"title":"ndathī","desc1":"thandī","desc2":"","desc3":""},{"title":"ndathimi","desc1":"maūndū marīa mekagwo marongoreirie kūrehe kīrathimo; irathimo irīa andū matugītwo na cio","desc2":"","desc3":""},{"title":"ndaya","desc1":"ndaihu mūhano njuīrī ya Kīmathi wa Waciūri yarī ndaya mūno","desc2":"","desc3":""},{"title":"ndebe","desc1":"mbini; mathaga ma kuonania gīkīro ta kīa njamba cia ita","desc2":"","desc3":""},{"title":"ndegwa","desc1":"ng'ombe ng'imaru ya njamba","desc2":"","desc3":""},{"title":"ndeme","desc1":"ī temetwo","desc2":"","desc3":""},{"title":"ndemwa","desc1":"njano irīa ihūthagīrwo gūcana ūhoro mabuku-inī","desc2":"","desc3":""},{"title":"ndengū","desc1":"mūmera kana maciaro maguo makoragwo marī thanda cia rūnyeni kana cia gītīīri mīhīrīga-inī īmwe","desc2":"","desc3":""},{"title":"ndereti","desc1":"ūhoro mūna wa kwarīrīrio o mwaria aheane meciria make thutha-inī kūgīe na ūiguano ūmwe","desc2":"","desc3":""},{"title":"nderu","desc1":"njuīrī irīa imeraga thīa-inī cia andū","desc2":"","desc3":""},{"title":"ndi","desc1":"kiugo kīnyitithanagio na ciugo cia gīīko kuonania mwaria harī ūndū ategwīka mūhano: ndi gūūka","desc2":"","desc3":""},{"title":"ndī","desc1":"kiugo kīongagīrīrwo ciugo-inī cia kwarīrīria kūndū kuga mwaria e handū hana mūhano: ndī kuo; kiugo kihūthagīrwo nī mūndū akīyarīrīria we mwene muhano: ndī mwega","desc2":"","desc3":""},
        {
          "title":"ndia",
          "desc1":"iria ",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndīa",
          "desc1":"igongona rīa gīkeno rīa andū kūrīanīra me hamwe",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndiga","desc1":"thiī ūtarī na niī","desc2":"","desc3":""},{"title":"ndigana","desc1":"ndiekire ūndū mūna","desc2":"","desc3":""},{"title":"ndigana","desc1":"mūrimū ūnyitaga mahiū ","desc2":"","desc3":""},{"title":"ndigi","desc1":"mbutha ciogothetwo ta irīa itumaga mīkwa kana irīa ciohaga iratū","desc2":"","desc3":""},{"title":"ndigiri","desc1":"nyamu īkoragwo mīciī-inī īhūthagīrwo gūkuua mīrigo īhana wambūi mūrīndū no ī mūcora ciande-inī na ūngī umīte ngingo-inī ūgaikūrūka ng'ong'o-inī","desc2":"","desc3":""},{"title":"ndigīrīri","desc1":"irīa itigarīrīire ","desc2":"","desc3":""},{"title":"ndigithū","desc1":"nyūngū ya rīūmba ī mūromo mūraihu mūceke ya kūigīrwo maī","desc2":"","desc3":""},{"title":"ndigwa","desc1":"ūkuīrīirwo: rora mūtumia wa ndigwa na mwana wa ndigwa","desc2":"","desc3":""},{"title":"ndiho","desc1":"kīndū kīhūthagīrwo kūriha kana kūhūra","desc2":"","desc3":""},
        {
          "title":"ndīho",
          "desc1":"kiugo kīhūthagīrwo kuuga mwaria e handū harīa hararīrīrio",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndiho",
          "desc1":"thiarī nditū īicūhītio kuma mūtī-inī īhūthagīrwo kūhūra rūa rwa gūthondeka ngo",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndiira","desc1":"ihīndī na nyama īrīa īhana ta gīthiūrūrī thutha wa ikinya rīa mūndū na nīyo ītiraga mūndū akahota kūrūgama","desc2":"","desc3":""},{"title":"ndīīra-thī","desc1":"mūndū mūtwaranaga etuīte mūrata no aragūthugundīra ūūru: mūrīa-ng'ūrū","desc2":"","desc3":""},{"title":"ndiku","desc1":"ītobokete thī kūndū kūraya","desc2":"","desc3":""},
        {
          "title":"ndina",
          "desc1":"matina",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndindīko",
          "desc1":"kīndū gīthiaga gīatindīkwo",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndindīko","desc1":"kīndū gīthiaga gītindīkwo","desc2":"","desc3":""},{"title":"nding'oing'o","desc1":"kīūmbe gīikaraga marima-inī kīenjaga hakuhī na mai ma nyamū ta ng'ombe kīmagaragaragia magatuīka gīthiūrūrī","desc2":"","desc3":""},{"title":"nding'ūri","desc1":"andū marī hinya na igweta","desc2":"","desc3":""},{"title":"ndini","desc1":"Kiswahili dini mawītīkio makoniī ngai na mītaratara yamo","desc2":"","desc3":""},{"title":"ndīra","desc1":"andū arīa mūkonainie nao thakame mwena wa maitūguo","desc2":"","desc3":""},{"title":"ndirī","desc1":"ciugo ihūthagīrwo nī mūndu kuuga kīria kīrarīrīrio ndakīgwatīire muhano: ndirī mbūri","desc2":"","desc3":""},{"title":"ndiro","desc1":"handū harīa haigagwo irio na indo cia kūrīra: thegi","desc2":"","desc3":""},{"title":"ndirū","desc1":"mūtino mūnene","desc2":"","desc3":""},{"title":"ndirū","desc1":"maūndū mooru makorete mūndū atangīhota kūmegirīrīria tiga ekire ūrīa agīrīirwo","desc2":"","desc3":""},{"title":"ndīthī","desc1":"gūkorwo mwīrī mūgima ūtarī mūhumbe","desc2":"","desc3":""},{"title":"nditimūrano","desc1":"gūteng'erania ta he kīndū kana ūndū ūrorīrwo","desc2":"","desc3":""},{"title":"ndoco","desc1":"marīhi metanītio nī ūndū wa mūndū gwīka kana kwaga gwīka ūndū mūna mūhano: ndoco ya ūtharia nī mbūri ikūmi","desc2":"","desc3":""},{"title":"ndogo","desc1":"rīera riumaga kīndū-inī kīrahīa, kaingī rī rīirū kana rī rīa kībuu","desc2":"","desc3":""},{"title":"ndonyi","desc1":"mūhanīre wa tūrima andū maciaragwo natuo makai-inī mao","desc2":"","desc3":""},{"title":"ndore","desc1":"mūgambo ūrīa ūrurumaga mūndū kana nyamū ya thuria","desc2":"","desc3":""},{"title":"ndoro","desc1":"ndaka","desc2":"","desc3":""},{"title":"ndorogonye","desc1":"mathaga ma mūirītu ūtarī mūhiku makuonania ūthingu wake","desc2":"","desc3":""},
        {
          "title":"ndorothi",
          "desc1":"karung'o ka mūtī kanagītwo gaikagio nī ihīī irongoreirie kwagararia mūtī wa mūgumo nīguo ikarue",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndotono",
          "desc1":"thiarī īthondeketwo na mūtī ūtarī mūtungu (ūtungu wa guo nī ta wa rūthanju) ūkūrītwo na mīri, wī na mūri mwariī ūrīa ūicūhagio ūgatuīka gītina gīa thiarī īyo",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndu",
          "desc1":"kiugo gīa gūtarīria kūgwa mūhano: aragūire ndu; kiugo gīa gūtarīria kūringwo mūhano: aragūthirwo ndu na thiarī",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndua","desc1":"Nī ya mūhīrīga ūmwe na kīnya no mūromo wayo ūtinagīrio gītina-inī kīa mūcūrī nīguo ūkorwo wī mwariī","desc2":"","desc3":""},
        {
          "title":"nduba",
          "desc1":"nyamū ndīa nyama ī maguanyīrī mwīrī wayo (rītwa rīrī no rīkorwo rī rīa kīhumo gīa Kīhibirania nī ūndū mamītaga dob)  English -Bear",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndūci",
          "desc1":"thiarī nditū ya gūthiī ita",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndūgamīrīra-rītwa",
          "desc1":"ciugo irīa irūgamaga ithenya rīa rītwa rīa kīndū, kūndū kana handū mūhano: nī niīndoya",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndūgīra","desc1":"marima marīa ciana ciatūragwo gūtū-inī; ithaga rīrīa rīkagīrwo ho","desc2":"","desc3":""},{"title":"ndūgū","desc1":"ngwatanīro ya wendo gatagatī ka mūndūrūme na mūndū-mūka; ūrata mūnene; rītwa rītanagwo nī arata mendaine mūno","desc2":"","desc3":""},{"title":"nduhi","desc1":"indo iheanītwo na ūtugi","desc2":"","desc3":""},{"title":"ndūhiū","desc1":"gīkeno kīnene gīa gūkūngūiya kana gūkenera ūndū mūna","desc2":"","desc3":""},{"title":"nduma","desc1":"gūkorwo gūtarī ūtheri; ūndū mūna gūkorwo ūtarī mumbūku kana ūkīmenyeka ūrīa ūtariī","desc2":"","desc3":""},{"title":"ndūma","desc1":"irio igethagwo mūri-inī wa mweū","desc2":"","desc3":""},{"title":"ndumbīrīra","desc1":"riko rīa kūrugīrwo rūgendo-inī","desc2":"","desc3":""},{"title":"ndume","desc1":"ndegwa","desc2":"","desc3":""},
        {
          "title":"ndūmīrīri",
          "desc1":"ūhoro ūheanītwo nīguo ūkinyīrio mūndū kana andū ana",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ndumo",
          "desc1":"nyīmbo cinagwo mūthenya ūmwe mbere ya mūthī wa irua",
          "desc2":"",
          "desc3":""
        },
        {"title":"ndumo","desc1":"ndūhiū ya kūina na gūkūngūiya nī ūndū wa mambura mana ta ma irua","desc2":"","desc3":""},{"title":"ndumo","desc1":"handū hatumītwo na ndigi: kīrema gīa gūtumwo","desc2":"","desc3":""},{"title":"ndundu","desc1":"kīūngano kīa andū maiguanīire kūrūmīrīra mītaratara mīna na mūndū nīguo atonye thīiniī wao no kinya arūmīrīre makinya marīa maheanītwo nīo","desc2":"","desc3":""},{"title":"ndundu","desc1":"nyoni yūmbūkaga ūtukū ī maitho manene makoragwo mbere ya ūthiū wayo ","desc2":"","desc3":""},{"title":"ndune","desc1":"kīndū kī na rūnyaga rūtune","desc2":"","desc3":""},{"title":"ndungata","desc1":"mūndū ūrutagīra mūndū ūngī wīra akagunīkaga na gīcunjī gīa ikūmi kīa umithio wa wīra ūcio na mwene wīra amuoyaga ta ūmwe wa andū a nyūmba yake","desc2":"","desc3":""},{"title":"ndūnyū","desc1":"handū harīa andū macemanagia nīguo mendanīrie indo","desc2":"","desc3":""},{"title":"ndūrīrī","desc1":"andū matarī a rūrīrī rūmwe","desc2":"","desc3":""},{"title":"ndūrūme","desc1":"ng'ondu ya njamaba ng'imaru","desc2":"","desc3":""},{"title":"ndurumeni","desc1":"kīndū kīhūthagīrwo kuona nakīo indo i kūraya ikoneka ta irī hakuhī","desc2":"","desc3":""},{"title":"ndururumo","desc1":"maī ma rūī maratherera makagwa kuuma handū igūrū","desc2":"","desc3":""},{"title":"nduthi","desc1":"marima maratuthūka mwaki kana me na mūrurumo wa mwaki; ngari ya magūrū merī ītwarithagio na maguta","desc2":"","desc3":""},{"title":"nduthūki","desc1":"kīndū gītūrīkaga na mūrurumo mūnene kaingī ta irīa ihūthagīrwo mbara-inī","desc2":"","desc3":""},{"title":"ndūti","desc1":"mūndū ūtarī mūthaka: njong'i","desc2":"","desc3":""},{"title":"ndutu","desc1":"kīūmbe kīnyuaga andū na nyamū thakame na kīrekagia matumbī makīo mīīrī-inī ya andū kaingī twara-inī twa moko na magūrū","desc2":"","desc3":""},{"title":"ndutura","desc1":"nyoni ītarī nene mūno yūmbūkaga īkīhūrithanagia mathagu mayo na nī yoyagwo nī Agīkūyū ī ta mūhiano wa wathīki","desc2":"","desc3":""},{"title":"nduutu","desc1":"mūrimū ūgīaga mbembe igakūrīrīrwo nī inyamū ikuhīrīirie kūhaana makunū handū ha thanda cia mbembe; mītunda ya kūhūrwo","desc2":"","desc3":""},{"title":"ndwara","desc1":"kīrīa kīmeraga mīthia-inī ya ciara; kīrīa gīkoragwo mīthia-inī ya magūrū ma nyoni na nyamū imwe ta mīrūthi","desc2":"","desc3":""},{"title":"ndwari","desc1":"ūndū ūhatagīrīria mwīrī ūkarwara","desc2":"","desc3":""},{"title":"ndwere","desc1":"mūthia wa kīndū kīaraganu ta iria ","desc2":"","desc3":""}];
    }
    if(widget.alphabet == 'NG') {
      _allUsers = [
        {
          "title":"ng'ang'athara",
          "desc1":"mūndū kana nyamū kwīrigwo o rīmwe na mwīrī ūkahana ta ūmithītio",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ng'ania",
          "desc1":"kiugo gīa kwarīrīria mūndū mūna ūramenyeka atekūgwetwo rītwa mūhano: ona wona tūkirīte, nī tūramenya ng'ania nīwe ūraiyire mbūri īyo, nū gūkū ūtoī mītugo yake",
          "desc2":"",
          "desc3":""
        },
        {"title":"ng'ara","desc1":"handū hakoragwo na maī kūhūa; kūnyota mūno","desc2":"","desc3":""},
        {"title":"ng'ara","desc1":"kūinamia kīndū mwena wakīo wa mbere ūrorete igūrū; mūndū kūinama ūthiū ūrorete na igūrū ng'ong'o ūrorete thī","desc2":"","desc3":""},{"title":"ng'ara","desc1":"mītugo īronania rūtūrīko","desc2":"","desc3":""},{"title":"ng'aragu","desc1":"hūta nene; riūa kwara mūno mīgūnda īkaga maciaro na nyamū na andū makaga gīakūrīa na maī","desc2":"","desc3":""},{"title":"ng'athia","desc1":"rega gwathīkīra ūndū ūrerwo ūkīonanagia ta ūraira ūrīa ūragwatha","desc2":"","desc3":""},{"title":"ng'atīka","desc1":"kūninwo nī mūrimū","desc2":"","desc3":""},{"title":"ng'atūka","desc1":"īka ūndū ūronania nī waigua mūkana kana nī waigua ūhoro ūrīa waheo","desc2":"","desc3":""},{"title":"ng'ea","desc1":"tinia ngingo","desc2":"","desc3":""},{"title":"ng'eng'ana","desc1":"giginyana ","desc2":"","desc3":""},{"title":"ng'eta","desc1":"ūmia ngoro ta ūkūrūa na mūndū ūrenda gūkūhatīrīria: nyeta","desc2":"","desc3":""},{"title":"ng'ethanīra","desc1":"korwo gīcindano-inī: korwo mbara-inī ūkīrūa na thū","desc2":"","desc3":""},{"title":"ng'ethera","desc1":"arahūka nīguo ūhūrane na ūndū mūna kana mūndū mūna kana ūcindane na ūndū kana mūndū mūna","desc2":"","desc3":""},{"title":"ng'ethia","desc1":"ikara ta ūtaramenya maūndū marīa marekīka kinya ūhītūkīrīrwo nī maūndū ma bata; ikara ūroretie maitho handū hamwe hatarī kīrīa ūrorete ho","desc2":"","desc3":""},{"title":"ng'etia","desc1":"gūthiī ūkarore kīndū, handū kana mūndū ūrīa atariī","desc2":"","desc3":""},{"title":"ng'ima","desc1":"ītarī ndinie kana īkarutwo kīndū; īkūrīte īkaigana: ng'imaru","desc2":"","desc3":""},{"title":"ng'imaru","desc1":"īrīkītie kūgimara","desc2":"","desc3":""},{"title":"ng'ombe","desc1":"nyamū īrīithagio nī ūndū wa iria, rūa na nyama na mūting'oe wayo nī ūthondekaga gīcuthī","desc2":"","desc3":""},{"title":"ng'ondu","desc1":"mūhīrīga wa mbūri irīa kaingī iharaga mahuti thī na imeraga guoyo mūnyitanu na mīting'oe yacio ītangīgīrimwo nī īraihaga ","desc2":"","desc3":""},{"title":"ng'ong'o","desc1":"mwīrī wa mūndū kana nyamū iria i mūnyiginyigi, mwena wa thutha kuuma kīanda wa ngingo kinya harīa munyiginyigi ūnyitanaga na mahīndī ma honge","desc2":"","desc3":""},
        {
          "title":"ng'ong'ora",
          "desc1":"aria ūndū ūtaraiguīka nī atīa ūroiga",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ng'ootha",
          "desc1":"ruta igongona nī guo mūtumia ahote kuoha nda kana rīa kūmūthahūra nī guo ahote kuoha nda; ruta igongana rīa gūthīnja nī ūndū wa atumia rīrutagwo hīndī ya magetha ma mbere rīa kuonania kwanjia gwa kīmera kīerū",
          "desc2":"",
          "desc3":""
        },
        {"title":"ng'ongo","desc1":"icigo cia kūndū ciīkūraine nī ūndū wa kūgayanio nī maūndū ta irīma, njūī, mītitū kana maūndū ta macio","desc2":"","desc3":""},{"title":"ngorono","desc1":"irio ithondeketwo na kĩrimũ kĩa iria kĩigĩtwo gĩkagagata","desc2":"","desc3":""},{"title":"ng'otha","desc1":"onania gūtithia nī ūndū wa nganja ","desc2":"","desc3":""},{"title":"ng'ūki","desc1":"mūtino mūūru ūrehetwo nī thahu","desc2":"","desc3":""},{"title":"ng'umo","desc1":"matunda ma mūtī wa mūgumo","desc2":"","desc3":""},{"title":"ng'umu","desc1":"indo igumīte","desc2":"","desc3":""},{"title":"ng'ung'ua","desc1":"aria na mīhehū ūndū ūtaraiguīka","desc2":"","desc3":""},{"title":"ng'ūria","desc1":"nina biū; ūraga","desc2":"","desc3":""},{"title":"ng'ūrīka","desc1":"rakario mūno nī ūndū mūna","desc2":"","desc3":""},{"title":"ng'ūūrū","desc1":" kūhenia andū meka ūna nī ūkamahingīria ūndū mūna ūkīmenyaga ndūkahingia kīrīko kīu","desc2":"","desc3":""},
        {
          "title":"nga",
          "desc1":"ciūmbe irīa ikuaga ihu igaciara kana irekagia matumbī kana mīmera īrīa īciaraga matunda; ndigi cia kīndū gīthondeketwo gī gīa kūina nakīo ta wandīndī",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ng'a",
          "desc1":"kiugo gīa gūtarīria kīndū kīiyūire biū; kiugo gīa gūtarīria kīnduū kīūmite biū",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngacu","desc1":"indo igacīte","desc2":"","desc3":""},{"title":"ngagatu","desc1":"indo i na mūcamo mūgagatu","desc2":"","desc3":""},{"title":"ngagūro","desc1":"kīndū gīa kūrīa mūndū aheyagwo atonya mūciī acerete; irio irīyagwo rūcini ","desc2":"","desc3":""},{"title":"Ngai","desc1":"Hoti īrīa yombire indo ciothe na nīyo kīhumo kīa maūndū mothe; kīrīa kīhoyagwo nī andū thīiniī wa mawītīkio mao","desc2":"","desc3":""},
        {
          "title":"ngaita",
          "desc1":"mūmera wī mahuti makoragwo me marūrū mūno",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngakama",
          "desc1":"ūhoro mūritū na mūūru",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngamba","desc1":"mūgūnda ūtigītwo ūtarī mūrīme ūgakūra ria","desc2":"","desc3":""},{"title":"ngamīra","desc1":"nyamū ya werū-inī īhūthagīrwo nī atūri kuo gūkua mīrigo īkoragwo ī ndaya na nī īrī iguku na nī mūgiro kūrīa nyama ciayo thīiniī wa kīrīkanīro","desc2":"","desc3":""},{"title":"nganangū","desc1":"mīnyito ya kīondo harīa mūkwa wa gūkuīra wohagīrīrwo","desc2":"","desc3":""},{"title":"nganga","desc1":"nyoni ītarī njoya ngingo īkoragwo ī njirū na makanga meerū","desc2":"","desc3":""},{"title":"nganja","desc1":"gūkorwo ūtatuīte itua rīa ūndū: gūkorwo ūtarī na mūrūgamo ūmwe nī ūndū wa kwaga kūmenya wega nī itua rīrīkū rīega","desc2":"","desc3":""},{"title":"ngano","desc1":"mūmera na maciaro maguo ūrīa umaga mūtu ūrīa ūhūthagīrwo kūruga mīgate","desc2":"","desc3":""},{"title":"ngara","desc1":"nyamū ya mūhīrīga wa mbīa īkoragwo ī ya kībuu na nī īrī mūcora wa mūkūyū mwīrī-inī wayo","desc2":"","desc3":""},{"title":"ngara","desc1":"mbembe nyūmū mūno","desc2":"","desc3":""},{"title":"ngarana","desc1":"mūndū mwītagwo rītwa rīmwe nake","desc2":"","desc3":""},{"title":"ngarango","desc1":"maguta marīa matigaraga matarī matweku maguta ma nyamū matwekio na mwaki nyūngū-inī kana rūgīo-inī","desc2":"","desc3":""},
        {
          "title":"ngarari",
          "desc1":"kwaga ūiguano: njūkanīrīro",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngarariga",
          "desc1":"gīthaka kīūmū kīa mūtitū mūhīu",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngari","desc1":"mūrīnga ūhūthagīra hinya wa mwaki gūthiī","desc2":"","desc3":""},{"title":"ngari","desc1":"nyama","desc2":"","desc3":""},{"title":"ngarī","desc1":"nyamū ndīa nyama ī maroro, yūragaga nyamū īkanyua thakame na nī īhaicaga mītī igūrū īgaikara kuo","desc2":"","desc3":""},
        {
          "title":"ngata",
          "desc1":"thuutha wa mūtwe wa nyamū harīa ngingo na mūtwe inyitanagīra",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngatata",
          "desc1":"gīcere gīa kīndū kīmata ta ndarwa; ngati",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngatha",
          "desc1":"mūtumia kana mūirītu wī mīthiīre mīega ya gūtīīka",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ng'athia",
          "desc1":"rega gwathīkīra ūndū ūrerwo ūkīonanagia ta ūraira ūrīa ūragwatha",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngathīka",
          "desc1":"kīndū kīnyitithanītio na njīra ya kūgathīkanio",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngatho",
          "desc1":"ūndū wīkītwo kuonania mūndū nī akenete nī ūndū mwega ekīirwo; kiugo kīragwo mūndū wīkīire mūndū ūndū mwega",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngatho","desc1":"ūndū wīkītwo thutha wa ūndū mwega gwīkwo nīguo mwīkīrwo onio nī akenerwo nī ūrīa ekīte","desc2":"","desc3":""},
        {
          "title":"ngati",
          "desc1":"andū arīa marutagīra mūngeretha wīra me ta athigani kana arangīri  na athigari airū a mūthūngū; nyamū ya mūhīrīga wa ng'ombe īikaraga nyanjara-inī na īthamaga na imera",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngati",
          "desc1":"nyamū ya gīthaka īhana ng'ombe no ī guoya mūnene ngingo-inī na īikaraga īgīthamaga na imera",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngati",
          "desc1":"andū airū arīa mathiganagīra nyakerū hīndī ya wathani wake; mūndū mwīīkīrīri, wī ngoro njūru na ūtangīteithīria mūndū ona ūrīkū",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngatia","desc1":"mūrūthi","desc2":"","desc3":""},
        {"title":"ngatū","desc1":"ngaī irīa irī rungu rwa matū irīa mūndū angīkīra kīndū kīgagatu kanua ciarahūkaga","desc2":"","desc3":""},{"title":"ngeithi","desc1":"mwamūkanīrio wa andū wa kuonania matirī na ūhinga kana ūūru gatagatī kao","desc2":"","desc3":""},{"title":"ngemi","desc1":"mbugīrīrio ya andū-a- nja ya kuonania gīkeno","desc2":"","desc3":""},{"title":"ngenge","desc1":"twana tūnini tūtaretwa na tūtaninīte matuko maingi kuma twaciarwo","desc2":"","desc3":""},{"title":"ngengecwa","desc1":"thanju nyūnūre ndigi; mītambo ya rediū","desc2":"","desc3":""},{"title":"ngerecū","desc1":"tūcere twariī na tūceke tūbecūrītwo kuuma mūtī-inī kana rūkū-inī","desc2":"","desc3":""},{"title":"ngerenwa","desc1":"kīheo mūndū atugagwo nakīo nī ūndū wa gwīka ūndū mūna na ūgacīru mūnene mūhano: Wangarī nīwe wahetwo ngerenwa ya thī ya thayū nī ūndū wa kwīrutīra nyama na thakame kūgitīra marīa matūrigicīirie","desc2":"","desc3":""},{"title":"ngerewani","desc1":"njamba cia ita irīa ithiaga irī mbere ita-inī","desc2":"","desc3":""},{"title":"ngero","desc1":"gīko kīūru mūno gīa kūnūha mūndū, nyamū kana indo","desc2":"","desc3":""},{"title":"ngerūa","desc1":"gīcindano gīa kūrūga handū hekīrītwo kīndū andū magakīrūga ","desc2":"","desc3":""},{"title":"ngi","desc1":"tūmbūki tūirū tūmbūkaga kaingī nyūmba-inī cia andū twendete handū he na gīko mūmbīre watuo nī ta wa njūkī","desc2":"","desc3":""},{"title":"ngīa","desc1":"mūndū mūthīnīki ūtarī ūtonga ona mūnini","desc2":"","desc3":""},{"title":"ngigī","desc1":"tūrūgi twa mūhīrīga wa ndararīki tūmbūkaga tūrī itutu tūrīaga mahuti ma mīmera","desc2":"","desc3":""},{"title":"ngima","desc1":"irio irugītwo na mūtu wa mbembe kana mūtu ūngī wa indo cia mūhīrīga ūcio itukanītio na maī matherūku","desc2":"","desc3":""},{"title":"ngindi","desc1":"kīūndū kīrīa mūndū aiguaga mūmero-inī anyitwo nī kīeha kana akīenda kūrīra","desc2":"","desc3":""},{"title":"ngindu","desc1":"mahuti ma mūtī wa mūkīndū ","desc2":"","desc3":""},{"title":"ngingo","desc1":"kīīga kīrīa kīnyitagīrīra mūtwe kana kīongo gīkoragwo kīhandīrīire ciande-inī","desc2":"","desc3":""},{"title":"nginya","desc1":"kiugo gīa kuonania mūigana wa kīndū kana ūndū mūhano: marahandire nginya harīa kīanda","desc2":"","desc3":""},{"title":"nginyīra","desc1":"itonyo rīa kwīhumbwo magūrū: iratū","desc2":"","desc3":""},{"title":"nginyo","desc1":"handū hathondeketwo he ha gūkinyithio magūrū nīguo mūndū ahote gūthiī wega; mīīkīre ya maūndū ya mūndū mūna","desc2":"","desc3":""},{"title":"ngiri","desc1":"1000","desc2":"","desc3":""},{"title":"ngīrī","desc1":"ndara-gīthaka īikaraga marima ī tūmīguongo twīrī tūkuhī tumīrīte kanua-inī tūrorete na igūrū","desc2":"","desc3":""},{"title":"ngiria","desc1":"karūgi kairū gathigithagia mathagu mako makagamba","desc2":"","desc3":""},{"title":"ngitī","desc1":"ngui","desc2":"","desc3":""},{"title":"ngo","desc1":"itharaita rīa kwīgita narīo rīkuagwo na guoko","desc2":"","desc3":""},{"title":"ngo-","desc1":"yongagīrwo ciugo-inī cia gīko iria cianjītie na &quot;o&quot; kana &quot;ū&quot; kuuga mwaria nī ageka ūndū ūcio; gwīkīra hinya gīko kīrīa mwaria ara gweta","desc2":"","desc3":""},{"title":"ngobe","desc1":"njuīrī irīa ikūraga igūrū wa ritho thiithi-inī","desc2":"","desc3":""},{"title":"ngocorai","desc1":"mbūrūbūrū, ibuurū, rūbūa (English solder, lead)","desc2":"","desc3":""},
        {
          "title":"ngogoyo",
          "desc1":"kīndū gītweku kī na mūrīo mūno mūhano: ngogoyo ya kīgwa ī mūrīo ta ya ūkī",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngoikoni",
          "desc1":"rūnyaga ta rwa tīrī wa mbūrū kana ndongu njīru",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngoima","desc1":"ndūrūme īhihinyītwo nī ūndū wa igongona","desc2":"","desc3":""},
        {
          "title":"ngoma",
          "desc1":"muoyo utiganīte na mwīrī",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngomanio",
          "desc1":"ūhoro wa gūkomania; ūhoro wa kūgīa ngwatanīro ya ūrīrī: thico",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngombo","desc1":"mūndū ūrutitagio wīra eteyendeire kūruta na ndarī marīhi amūkagīra kumana na wīra ūcio","desc2":"","desc3":""},{"title":"ngome","desc1":"gīcūhī kīraya gīkagīrwo irūngo-inī cia ciara nī athuri atongu","desc2":"","desc3":""},{"title":"ngome","desc1":"kūringwo na tūrūngo twa ciara tūthunītwo","desc2":"","desc3":""},{"title":"ngomi","desc1":"andu makuite; gathanwa","desc2":"","desc3":""},{"title":"ngonda","desc1":"mūhīrīga wa nyeki īkūraga ī na mathangū mamata na momīrīru na nī īrutaga ihūa kaingī rīirū kana rīa gītīri rīnyitagīrīrwo nī kamūrica kameraga gatagatī ka nyeki iyo ","desc2":"","desc3":""},{"title":"ngonde","desc1":"gīkonde","desc2":"","desc3":""},{"title":"ngore","desc1":"gīkore","desc2":"","desc3":""},{"title":"ngoro","desc1":"kīīga kīrīa kīhūraga thakame nīguo īceere mwīrī wothe; ūndū ūrīa wonanagia mūtugo wa mūndū na merirīria make mūhano: Wacū ndarī ngoro njega, no akūmene o ūguo hatarī gītūmi","desc2":"","desc3":""},{"title":"ngorogoco","desc1":"hība ya mahuti kana mahiga macokanīrīirio; tūcunjī tūrutītwo indo-inī tūtangīhūthīka ūrīa kīndū kīu kīrahūthīkaga","desc2":"","desc3":""},{"title":"ngorono","desc1":"maguta ma iria mathondeketwo kuma kīrimū-inī kīarīo ","desc2":"","desc3":""},{"title":"ngothe","desc1":"mūhīrīga wa nyeki ītambagia mīri yayo kūndū kūraya","desc2":"","desc3":""},{"title":"ngotho","desc1":"ithaga rīthondekagwo na mūguongo rīkagīrwo nī athuri gīcoka-inī gīa guoko","desc2":"","desc3":""},{"title":"ngū","desc1":"mītī kana thari cia mītī itemetwo irongoreirio gwakio mwaki","desc2":"","desc3":""},{"title":"ngū-","desc1":"kiugo kīohithanagio na ciugo ingī kuuga mwaria nī egwīka ūndū mūna mūhano: ngūthiī ngūgūrīre irio","desc2":"","desc3":""},{"title":"ngucanio","desc1":"ngarari tarī cia ngūī","desc2":"","desc3":""},{"title":"ngūcū","desc1":"nyīmbo cia twana","desc2":"","desc3":""},{"title":"ngūcūcū","desc1":"ng'ombe ngūrū ītarī iria rīingī","desc2":"","desc3":""},{"title":"ngūgūtū","desc1":"mathaga momū marutagwo iria-inī makoragwo marī nyūmba cia nyamū cia iria-inī","desc2":"","desc3":""},{"title":"ngūī","desc1":"mbaara īcūngīrīirio nī ngarari","desc2":"","desc3":""},{"title":"nguīko","desc1":"gūthathayana na kwaranīria maūndū makwarahūrana kī wendo gatagatī ka mūndūrūme na mūndū-mūka","desc2":"","desc3":""},{"title":"ngūkū","desc1":"mūhīrīga wa nyoni itombūkaga irīithagio nī andū nī ūndū wa nyama na matumbī macio","desc2":"","desc3":""},{"title":"ngūkūma","desc1":"gatambi kanyuaga nyamū thakame mūhīrīga ūmwe ūkoragwo na twa kībuu na ūngī ūkoragwo na twa mūkūyū tūtunīhīrīire","desc2":"","desc3":""},{"title":"ngukumio","desc1":"mahaki maraheanīrwo hitho-inī; wūici wa indo mūndū anengeretwo aramate kana agaīre andū angī","desc2":"","desc3":""},{"title":"ngumba","desc1":"mūrimū ūnyitaga mūndū akaimba ngingo","desc2":"","desc3":""},{"title":"ngūmba","desc1":"indo njokanīrīrie ingīiyūra rūhī","desc2":"","desc3":""},{"title":"ngumo","desc1":"igweta inene nī ūndū wa ūndū mūna mūhano:itūūra rīu rī ngumo ya ūrīmi wa mbembe","desc2":"","desc3":""},{"title":"ngundi","desc1":"ciara ikūnjītwo rūhī-inī; kūringa na mūthia wa guoko ciara ikūnjītwo rūhī-inī","desc2":"","desc3":""},{"title":"ngūnga","desc1":"tūtambi twa mūhīrīga wa igunyū tūrīaga mahuti ma mīmera na tūthiaga tūrī itutu","desc2":"","desc3":""},{"title":"ngungo","desc1":"ūndū ūrekwo andū mehithīte nīguo andū angī matikamenye nī ūrekwo","desc2":"","desc3":""},{"title":"ngūngū","desc1":"nyūngū ndaya ī mūromo mwariī ya kūrugīrwo ūcūrū kana nyama","desc2":"","desc3":""},{"title":"ngūngūni","desc1":"tūtambi tūnyuaga andū thakame kaingī rīrīa me toro","desc2":"","desc3":""},{"title":"ngūnia","desc1":"ikūnia","desc2":"","desc3":""},{"title":"ngunīko","desc1":"kīndū kīhūthagīrwo gūkunīka handū ta nyūngū","desc2":"","desc3":""},{"title":"ngunū","desc1":"karogi nguno","desc2":"","desc3":""},{"title":"ngunyū","desc1":"gīīko gīa gūkunya ","desc2":"","desc3":""},{"title":"nguo","desc1":"itonyo","desc2":"","desc3":""},{"title":"ngūrani","desc1":"maūndū marīa maratūma indo itikahanane; maūndū marīa marakararanīrio","desc2":"","desc3":""},{"title":"ngurario","desc1":"igongona rīa ūhiki wa Gīgīkūyū","desc2":"","desc3":""},{"title":"nguraro","desc1":"matihia; handū haringītwo","desc2":"","desc3":""},
        {
          "title":"nguru",
          "desc1":"nyamū ya magūrū mana īkoragwo na kīīga kīūmū ng'ong'o-inī wayo na nīho īhithaga ūgwati woka",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngūrū",
          "desc1":"ūiru umanīte na kūigua ūūru nī kuona mūndū na kīndū gīake: rūitho",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngūrūkūri",
          "desc1":"mbugi",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ngurumo",
          "desc1":"kīanda kīa handū haikūrūkīrīru mūhano: nī kūrī rūī ngurumo ya mūgūnda witū",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngurunga","desc1":"mungu wīyenjete thī ūgathiī ūtambūrūkīte","desc2":"","desc3":""},{"title":"ngurutūki","desc1":"kīndū gīthondekagwo kaingī nī ciana igaikarīra igakururio kana igetindīka ikurutūke na kīo kana igakua indo na kīo","desc2":"","desc3":""},{"title":"ngūrūwe","desc1":"nyamū īhana ngīrī no ndīrī mīguongo na mīhīrīga īmwe nī īrīithagio nī andū","desc2":"","desc3":""},{"title":"nguthi","desc1":"mwītīyo ","desc2":"","desc3":""},{"title":"ngūthi","desc1":"mūndū ūrī igweta inene rīa gwīka ūndū mūna mūhano: mūtigairī Kamarū arī ngūthi ya wūini būrūri-inī wothe","desc2":"","desc3":""},{"title":"nguya","desc1":"ciūmbe ciumaga ithūa-inī ciūmbūkaga hīndī ya mbura","desc2":"","desc3":""},{"title":"nguyo","desc1":"mūhīrīga wa nūgū ūkoragwo na manyaga mairū na merū","desc2":"","desc3":""},{"title":"ngūyū","desc1":"matunda ma mūtī wa mūkūyū","desc2":"","desc3":""},
        {
          "title":"ngwatanīro",
          "desc1":"ūnyitanīri maūndū-inī hatarī na ūcuke o wothe",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"Ngweta-gīīko",
          "desc1":"ciugo igwetaga gīīko kīna mūhano: ndathiī gūkoma",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"Ngweta-rītwa",
          "desc1":"ciugo irīa iheaga indo, kūndū na andū marītwa mūhano: mūrūthi wūikaraga gīthaka",
          "desc2":"",
          "desc3":""
        },
        {"title":"ngwī-","desc1":"kīnyitithanagio na ciugo cia gīīko kuuga mwaria nī ekire ūndū ūcio","desc2":"","desc3":""},{"title":"ngwīre","desc1":"kiugo kīhūthagīrwo kuonania mwaria harī na ūndū arenda kūmenyithania","desc2":"","desc3":""}];
    }
    if(widget.alphabet == 'NJ') {
      _allUsers = [{"title":"njaaga","desc1":"tūcere twenyūrītwo kana tūgaturwo kuma kīgera-inī","desc2":"","desc3":""},{"title":"njabacabi","desc1":"handū harahīte maī na hagakūrīrīra mahuti ta mathanjī","desc2":"","desc3":""},{"title":"njacī","desc1":"mwītīyo","desc2":"","desc3":""},{"title":"njacu","desc1":"tūthanju tūceke","desc2":"","desc3":""},{"title":"njaga","desc1":"mwīrī wa kuuma njohero kinya ngingo-inī gūkorwo ūtarī mūhumbe ","desc2":"","desc3":""},
        {
          "title":"njagathi",
          "desc1":"nyamū njirū ī mīcora mīerū mwena-inī na mūting'oe mūraya yendete guota riūa mahiga igūrū",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njagī",
          "desc1":"nyamū ya gīthaka ya kīruka kīmwe na ndigiri, no īkoragwo na mīcora mīerū na mīirū mwīrī-inī wayo guothe",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njahī",
          "desc1":"mūhīriga wa mboco wa kīmerera, īkoragwo ī njirū na nī īrī mūhari mwerū harīa īkoragwo īgwatīrīire ikoro-inī ",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njahīko",
          "desc1":"maī mahiū makirie gūtherūka",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njahīrīra",
          "desc1":"kīndū kīongereiro kana gīkehocereria harī kīrīa kīnene",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njaī",
          "desc1":"ūrogi",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njaīkano",
          "desc1":"igongona rīa kūrathimithia ūciari harī andū-a-nja; igongona rīa mwanya harī mūndū-wa-nja ūhikīte kahinda karaya na ndagīe ciana",
          "desc2":"",
          "desc3":""
        },
        {"title":"njama","desc1":"andū monganīte hamwe nīguo mekage ūndū mūna ","desc2":"","desc3":""},{"title":"njamba","desc1":"mūndū ūtarī guoya na wīkaga maūndū andū angī marī guoya wa gwīka","desc2":"","desc3":""},{"title":"njambanio","desc1":"ndeto njūru ikoniī mūndū kana kīndū kīna cia gūkīmenithīrīria","desc2":"","desc3":""},{"title":"njambio","desc1":"njambanio","desc2":"","desc3":""},{"title":"njane","desc1":"kīndū kana indo icanītwo","desc2":"","desc3":""},{"title":"njangiri","desc1":"mūndū ūreka maūndū mooru ma ūtoi","desc2":"","desc3":""},{"title":"njano","desc1":"mīcoro ītemereirwo handū; ndemwa cia gūcana rwario kana rūthiomi; handū hatemetwo ta mūtī-inī","desc2":"","desc3":""},{"title":"njara","desc1":"ciara; njara rūhī: mūndū mūhoi mūno","desc2":"","desc3":""},{"title":"njarūmi","desc1":"mwanya ūrīa ūkoragwo gatagatī ka magego mataganu","desc2":"","desc3":""},
        {
          "title":"njata",
          "desc1":"indo irīa ihenagia igūrū ūtukū",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njathi",
          "desc1":"mūthia wa nyondo ya mūndū-wa-nja; gacūmbīrī karīa karaya gwī tuothe ga kīrīma Kīrīnyaga",
          "desc2":"",
          "desc3":""
        },
        {"title":"njatū","desc1":" indo ciatūrītwo","desc2":"","desc3":""},{"title":"njaū","desc1":"kana ka nyamū ta ng'ombe, ndigiri kana ndūiga","desc2":"","desc3":""},{"title":"njege","desc1":"nyamū īikaraga mīthongorima-inī īkoragwo na mīguī mīirū īna mīcoora mīerū","desc2":"","desc3":""},{"title":"njegeke","desc1":"mūriko ūrīa ūkoragwo rungu wa harīa guoko na kīende igathīkanīirio","desc2":"","desc3":""},{"title":"njegeni","desc1":"mūmera ūrarakaga mūndū aūhutia","desc2":"","desc3":""},{"title":"njeke","desc1":"kīndū gītarī kīnoru kana gītungu","desc2":"","desc3":""},{"title":"njereri","desc1":"mūrimū ūgīaga maitho ritho rīgakorwo rītingīrora handū hamwe rīikaraga ta rīrainaina","desc2":"","desc3":""},
        {
          "title":"njerūa",
          "desc1":"njambanio",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njiari",
          "desc1":"nyamū ī na mwana",
          "desc2":"",
          "desc3":""
        },
        {"title":"njikū","desc1":"riko rīa gūtwekeria Cuma","desc2":"","desc3":""},{"title":"njinga","desc1":"mūrimū ūnyitaga matū makanjia kuuma mahira","desc2":"","desc3":""},{"title":"njingiri","desc1":"mathaga mohagīrīrwo thūng'wa-inī mūndū akinyūkia makagamba","desc2":"","desc3":""},{"title":"njino","desc1":"kindū kīhīhītio ta nyama ","desc2":"","desc3":""},{"title":"njinū","desc1":"mīario ya kūnyūrūria mūndū","desc2":"","desc3":""},{"title":"njirigīra","desc1":"kiugo gīa kūria mūndū airige ithenya rīaku kana airige handū haku","desc2":"","desc3":""},{"title":"njirū","desc1":"ī na rūnyaga rūirū","desc2":"","desc3":""},{"title":"njirūngi","desc1":"būrūbūrū","desc2":"","desc3":""},{"title":"njīta","desc1":"kiugo gīa kūria mūndū agwīte ","desc2":"","desc3":""},{"title":"njītagwo","desc1":"kiugo kiugagwo nī mūndū akīheana rītwa rīake mūhano: njītagwo Kanyīrī wa marigū","desc2":"","desc3":""},{"title":"njīthī","desc1":"ītarī hīu: ītarī nduge","desc2":"","desc3":""},{"title":"njogu","desc1":"nyamū īkoragwo ī nene mūno ī mīguongo īrī na mūniūrū mūraya ūmerete gatatī kayo. Njogu īcokaga kuma mwana arīkia gūciarwo","desc2":"","desc3":""},{"title":"njogu","desc1":"kīga kīrīa kīheaga mwana irio kūgerera rūrīra-inī rīrīa e nda ya nyina atanaciarwo","desc2":"","desc3":""},{"title":"njoherera","desc1":"kamūrigo kanini kohagīrīrwo igūrū rīa mūrigo mūnene; kīndū kīongereirwo harī kīngī kīnene kana kīingī ta mbeca irīa ciongagīrīrwo i ta marīhi ma thirī","desc2":"","desc3":""},{"title":"njohero","desc1":"mūthiūrūrūko wa mwīrī wa mūndū kīanda wa mūkonyo na igūrū wa honge ","desc2":"","desc3":""},{"title":"njohi","desc1":"kīndū mūndū angīnyua arīwo no kīhūthagīrwo kūruta magongona","desc2":"","desc3":""},{"title":"njoku","desc1":"handū hakītwo he ha gūkamīra ng'ombe kana ūhiū ūrīa ūkamagwo","desc2":"","desc3":""},{"title":"njono","desc1":"ūndū wa kūrehe gīconoko; gīconoko","desc2":"","desc3":""},{"title":"njorua","desc1":"ngūthi ya ūndū mūna","desc2":"","desc3":""},{"title":"njoya","desc1":"guoya wa nyoni","desc2":"","desc3":""},{"title":"njūa","desc1":"ūkīarīrīria irio cia mīhīrīga ta ya mboco na mbembe: itarī nyūmū ","desc2":"","desc3":""},{"title":"njūgitano","desc1":"mbaara īgīīte nī ūndū he mūndū ūgitīte ūrīa ūngī","desc2":"","desc3":""},
        {
          "title":"njūgū",
          "desc1":"irio ikūraga irī makoro-inī irī na mūhianīre wa gīthiūrūrī kana ūkuhīrīirie gīthiūrūrī ta njūgū cia gīkūyū kana minji",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njūgūma",
          "desc1":"thiarī hūthū īicūhītio kuma mūtī-inī īngīikio",
          "desc2":"",
          "desc3":""
        },
        {"title":"njuīrī","desc1":"kīrīa gīkūraga rūa-inī rwa mwīrī wa mūndū mūno mūtwe-inī na kīenjwo nī kīmeraga rīngī","desc2":"","desc3":""},
        {
          "title":"njūkanīrīro",
          "desc1":"andū kwarahūkīra arīa angī nī ūndū wa maūndū mataranyitanīra nao kana mataraiguithania",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"njukia",
          "desc1":"nyīmbo cia anake na airītu cinagwo mūthenya kana ūtukū kwī na mweri",
          "desc2":"",
          "desc3":""
        },
        {"title":"njunga-mai","desc1":"njuīrī imeraga itina-inī","desc2":"","desc3":""},{"title":"njūng'wa","desc1":"gīikarīro kīa mūthuuri kīa magūrū matatū kīrīa aikaragīra agīota riūa kana rīrīa ahurūkīte","desc2":"","desc3":""},{"title":"njura","desc1":"thuti ","desc2":"","desc3":""},{"title":"njūragano","desc1":"ngūī icūngīrīirie andū kūrutana muoyo","desc2":"","desc3":""},{"title":"njūrūri","desc1":"gatambi kairū gathiaga ihenya mūno na no gathambagīra maī-inī na ihenya rīnene","desc2":"","desc3":""},{"title":"njuukū","desc1":"ndeto cia kwarīrīria andū angī na hitho maūndū mūndū atangīenda amenywo nī arītie","desc2":"","desc3":""},{"title":"njuuri","desc1":"kanyūngū kanini ga kūgathimīra maguta na kūrugīra thathi","desc2":"","desc3":""}];
    }
    if(widget.alphabet == 'NY') {
      _allUsers = [
        {
          "title":"nya-",
          "desc1":"kiugo kīongagīrīrwo mbere wa ciugo ingī kūhe mūndū-wa-nja maūthī maringaine na ūndū ūcio mūhano: nyarūirū nī mūirītu mūirū",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"nyaaga",
          "desc1":"hurunjūka",
          "desc2":"",
          "desc3":""
        },
        {"title":"nyaciara","desc1":"nyina wa mūthuri ūrīa ūkūhikītie","desc2":"","desc3":""},{"title":"nyaga","desc1":"nyoni ī magūrū maraya na ngingo ndaya īikarga werū-inī na ndīūmbūkaga; thūmbī; ūkaru","desc2":"","desc3":""},{"title":"nyagacũ","desc1":"mũtumia mũte nĩ mũrũme agatuĩka kĩmene","desc2":"","desc3":""},{"title":"nyaka","desc1":"nyarara","desc2":"","desc3":""},{"title":"nyama","desc1":"kīīga kīororo gīkoragwo kīūmbīte mwīrī wa ciūmbe irīa irī mahīndī","desc2":"","desc3":""},{"title":"nyama","desc1":"nyamu īthiaga ūtukū ī mūting'oe mūtungu na rūrīmī rūraihu yenjaga marima īkarīa mūthūa","desc2":"","desc3":""},{"title":"nyamaria","desc1":"agithia thayũ na ũndũ wa gũthĩnia","desc2":"","desc3":""},{"title":"nyamū","desc1":"ciūmbe irīithagio nī andū kana igetūūria, irīa ihotaga gūthiī ikoima handū hamwe kinya harīa hangī na irīaga, igathīa irio mīīrī yacio īkahūthīra kīrīa īrabatara na īgate gīko; kīndū English &quot;thing&quot;","desc2":"","desc3":""},{"title":"nyange","desc1":"mūhīriga wa nyoni njerū ī magūrū maraya Aldea alba","desc2":"","desc3":""},{"title":"nyarara","desc1":"hūthia; aga gūtīa; mena","desc2":"","desc3":""},{"title":"nyarare","desc1":"ī nyararītwo","desc2":"","desc3":""},{"title":"nyarari","desc1":"mūirītu mūthaka mūno","desc2":"","desc3":""},{"title":"nyarira","desc1":"gwīka kīndū kana mūndū maūndū moru ma ūnūhi; thūkangia","desc2":"","desc3":""},{"title":"nyarīrī","desc1":"mwena wa igūrū wa kūgūrū ūrīa ūtarangaga thī thutha wa ciara cia magūrū","desc2":"","desc3":""},{"title":"nyarūme","desc1":"mūrū wa nyina na maitūguo","desc2":"","desc3":""},{"title":"nyarūrūng'a","desc1":"ithaga rīthondeketwo na tūmīrīnga tuohagīrīrwo nī andū-a-nja thūng'wa tūkagamba makinyūkia","desc2":"","desc3":""},{"title":"nyee","desc1":"kīīga kīrīa kīrutaga mbegū cia ūciari harī arūme","desc2":"","desc3":""},{"title":"nyegerera","desc1":"tūthundo tūnini tūgīaga mwīrī wa mūndū handū hamwe twī tūingī","desc2":"","desc3":""},{"title":"nyeki","desc1":"mūmera wīkūragia kana ūkahandwo ūgatamba thī ūnyitanīte ūkoragwo na rūnyaga rwa nyeni mūhano: ngonda na kīgombe nī mīhīrīga ya nyeki","desc2":"","desc3":""},{"title":"Nyene","desc1":"Ngai","desc2":"","desc3":""},{"title":"nyeni","desc1":"rūnyaga ","desc2":"","desc3":""},{"title":"nyeni","desc1":"mathangū ma mīmera marīa mangīrīka nī andū ta irio","desc2":"","desc3":""},{"title":"nyenje","desc1":"gatambi ga gītīīri kaingī konekaga nyūmba cia andū karīaga rūitīki","desc2":"","desc3":""},{"title":"nyenya","desc1":"nyarara","desc2":"","desc3":""},{"title":"nyeta","desc1":"ng'eta","desc2":"","desc3":""},{"title":"nyiha","desc1":"korwo ūtarī mūnene; korwo itarī nyingī","desc2":"","desc3":""},
        {
          "title":"nyika",
          "desc1":"gīa nganja; aga kūiganīra; mena",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"nyika",
          "desc1":"nyira",
          "desc2":"",
          "desc3":""
        },
        {"title":"nyima","desc1":"kiugo gīa kuuga kana kwīra mūndū ndagakūhe kīndū mūhano: ūra nyima irio nīkī na ndī mūhūtu?","desc2":"","desc3":""},
        {
          "title":"nyina",
          "desc1":"mu3 mūciari mūndū-wa-nja wa mūndū ūngī",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"nyinyi",
          "desc1":"nini",
          "desc2":"",
          "desc3":""
        },
        {"title":"nyira","desc1":"nogio nī kīndū nī gūkīhūthīra mūno","desc2":"","desc3":""},{"title":"nyita","desc1":"gwata kīndū na moko kana ūkīhūthīra kīndū kīngī; taūkwo nī ūndū; mūtego kūgwatia kīndū","desc2":"","desc3":""},{"title":"nyitia","desc1":"rūmia kīndū gīa kuoha","desc2":"","desc3":""},{"title":"nyitio","desc1":"kīndū kīrohwo kuohwo gīkarūmio","desc2":"","desc3":""},{"title":"nyitīro","desc1":"handū hathondeketwo kana heigīte ūndū no hanyitīke; mūnyito ","desc2":"","desc3":""},{"title":"nyoko","desc1":"mūndūrūme mūthaka mūno; ūthaka","desc2":"","desc3":""},{"title":"nyondo","desc1":"kīīga kīrīa andū-a-nja na nyamū cia nga ciongithagia ciana iria","desc2":"","desc3":""},{"title":"nyongerera","desc1":"kiugo gīa kūūria mūndū akūnengere kīndū kīngī harī kīrīa wīnakīo; marīhi marīa andū maheagwo igūrū rīa marīa mabatiī kūrīhwo","desc2":"","desc3":""},{"title":"nyongi","desc1":"mwana ūronga; mūndū wūikaraga ehokete aciari ake ta atarī agimara","desc2":"","desc3":""},{"title":"nyongo","desc1":"kīīga gīkoragwo mwīrī-inī wa andū na nyamū imwe kīrīa gīitaga maī marūrū mūno ma gūteithia gūthīa irio","desc2":"","desc3":""},{"title":"nyoni","desc1":"nyamū irīa irī njoya na mīkanye","desc2":"","desc3":""},{"title":"nyori","desc1":"njūgūma","desc2":"","desc3":""},{"title":"nyoroka","desc1":"korwo hatarī hangarata","desc2":"","desc3":""},{"title":"nyororo","desc1":"mūkanda ūthondeketwo na igera ikūnjītwo igacoka ikagathīkanio","desc2":"","desc3":""},{"title":"nyororoka","desc1":"tenderūkīra handū hatarī hangarata ","desc2":"","desc3":""},{"title":"nyota","desc1":"īrirīria kūnyua maī; īrirīria ūndū mūna","desc2":"","desc3":""},{"title":"nyotu","desc1":"ī na nyota wa maī","desc2":"","desc3":""},
        {
          "title":"nyua",
          "desc1":"meria kīndū gītweku gīthiī nda; īkīra maguta indo irīa ihūthagīra maguta kūruruma; kīndū kūguucia kīndū gītweku gīkaihūgio nīkīo",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"nyua",
          "desc1":"kiugo gīa gūtarīria werū kuga kīna nī kīerū biū mūhano:mūthuri ūcio ti mūirū ona hanini, nī mwerū nyua ; kiugo gīa gūtarīria atī kīndū kīna nī kīerū ti gīkūrū ona atīa mūhano: kanja aragūrire ngari njerū nyua kuma nduka",
          "desc2":"",
          "desc3":""
        },
        {"title":"nyuga","desc1":"ina; kūya rwīmbo","desc2":"","desc3":""},{"title":"nyugīkia","desc1":"thirīkia","desc2":"","desc3":""},{"title":"nyugo","desc1":"kīnyugo","desc2":"","desc3":""},{"title":"nyūkwa","desc1":"mu2 mūciari mūndū-wa-nja wa mūndū ūrīa ūrarīria","desc2":"","desc3":""},{"title":"nyuma","desc1":"nyima; kiugo gīa kuuga nīwakorwo wehera handū hana mūhano: nyuma gwaku no ndinagūkora; kiugo gīa kuuga kūrīa kana ūrīa ūgūikaire ūndū mūna ūgīkīka mūhano: nyuma nyūmba ūgītana","desc2":"","desc3":""},{"title":"nyūmba","desc1":"gīikaro kīa mūtumia; rūciaro rwa mūtumia mūhano: nyūmba ya Mūmbi","desc2":"","desc3":""},{"title":"nyumīrīra","desc1":"mūthia-inī wa handū kana njīra harīa īnyitanaga na īngī","desc2":"","desc3":""},{"title":"nyūmīrīria","desc1":"mu1 īkīra mūndū ūndū wa gūtūma agīe na hinya ngoro","desc2":"","desc3":""},{"title":"nyūmū","desc1":"kīndū gītarī maī; kīndū kīahihinywo gītingīmondoka kana gīatūrīke na ūhūthū","desc2":"","desc3":""},{"title":"nyūngū ","desc1":"kīndū kīriku kīumbitwo na rīūmba gīa kūrugīra gīkagīrwo irio gīkaigīrīrwo mwaki-inī nīguo irio icio ihīe","desc2":"","desc3":""},{"title":"nyūngū ya mwana","desc1":"kīīga kīa andū-a-nja na nyamū cia nga harīa mwana areragīrwo atanaciarwo","desc2":"","desc3":""},{"title":"nyuranyura","desc1":"kīenyū kīa njata kana mahiga marīa makoragwo igūrū kīgwīte gūkū thī","desc2":"","desc3":""},{"title":"nyūrūria","desc1":"arīria mūndū kana ūmwīke maūndū tarī kūmūgathīrīria no ūrenda aigue ūūru mūhano: arūnyūrūririe mūka akīmwīra atī irio ciake nī cia gīkīro o rīrīa aramenyaga atī irarī njuru","desc2":"","desc3":""},{"title":"nyūrūrūka","desc1":"therera kuma handū hainamu","desc2":"","desc3":""},
        {
          "title":"nyūtū",
          "desc1":"nyamū ndīa nyama ya gīthaka ī mīcora maitho-inī īhana tarī maithori na īrī ihenya mūno",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"nywa",
          "desc1":"nyua",
          "desc2":"",
          "desc3":""
        }
        ];
    }
    if(widget.alphabet == 'O') {
      _allUsers = [{"title":"o","desc1":"kiugo gīa kuonania ūrīa wagwetwo noguo hatirī ūngī; kuonania ūndū wīkītwo ūrīa ūratarīrio hatarī ūndū ūngī","desc2":"","desc3":""},{"title":"ogoka","desc1":" ehera hanini nīgetha harīa uma hagīe kanya kana nī guo ūkuhīrīrie ","desc2":"","desc3":""},
        {
          "title":"ogokia",
          "desc1":"twara kīndū kīehere hanini kana gīkuhīrīrie kīngī kana handū: twara kīndū gītonye kana kīingīre handū mūhano: nī ūūru kūogokia mūhaka wa mūgūnda",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ogoma",
          "desc1":"regenyūka; gonyoka wage kūrūngūra ūrīa wagīrīirwo; uma njīra-inī īrīa njega",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"ogomia",
          "desc1":"gonya; thūkia mītugo īrarī mīega; agararia kīhoto",
          "desc2":"",
          "desc3":""
        },
        {"title":"ogotha","desc1":"kīrania ūhīngīcithanītie nīguo kīnyitane ","desc2":"","desc3":""},{"title":"oha","desc1":"thaya; kundīka; rigica","desc2":"","desc3":""},{"title":"ohera","desc1":"rekera","desc2":"","desc3":""},{"title":"oherera","desc1":"oha kīndū igūrū rīa kīngī","desc2":"","desc3":""},{"title":"ohoka","desc1":"ciara; kīndū gīkuohetwo gūkorwo gītarī kīohe rīngī; kīndū gīgūkundīkītwo gūkundūka; mūndū uma na ūndū ūgūtūmaga aremwo gūthiī handū kana gwīka ūndū ūngī gūkorwo rīu no ahote","desc2":"","desc3":""},{"title":"ohora","desc1":"rutania gīkundo gīkundūke; regeria na ūkundūre kīndū kiuma gīkundīke; rekereria kuma korokoro","desc2":"","desc3":""},{"title":"ohwo","desc1":"kundīkwo na kīndū kīngīoha ta mūkanda; hingīrīrio gwīka ūndū mūna: umwo wīyathi","desc2":"","desc3":""},{"title":"okia","desc1":"gemia na mīcoora","desc2":"","desc3":""},{"title":"ombora","desc1":"kūūra kīndū kiume na mīri; kīndū gūtūma mūndū agīe na tūronda rūrīmī na kanua","desc2":"","desc3":""},{"title":"ombororia","desc1":"ombora","desc2":"","desc3":""},{"title":"omboya","desc1":"kīndū kūhondera gīgīcokaga ūrīa kiuma","desc2":"","desc3":""},{"title":"ona","desc1":"maitho kūrora handū, kīndū kana ūndū makaūtaūkwo; cemania na kīndū kīgwīte thī ūkīoe","desc2":"","desc3":""},
        {
          "title":"onania",
          "desc1":"iga kīndū mbere ya andū nīguo makīone",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"one",
          "desc1":"onei",
          "desc2":"kiugo gīa kuonereria mūndū nī guo arore handū hana eyonere ūndū mūna",
          "desc3":""
        },
        {
          "title":"one",
          "desc1":"",
          "desc2":"kiugo gīa gwītīkanīria ūndū ūgwetetwo nī mūndū ūngī mūhano: mūndū 1: mūndū ūcio ekwendwo akinyūkīrio ikinya ihiū mūndū 2: one! We nīwe wamenya!",
          "desc3":""
        },
        {"title":"onereria","desc1":"orotera mūndū handū kana kīndū gī kūraya; onia mūndū gwīka ūndū","desc2":"","desc3":""},{"title":"onga","desc1":"gucia iria kuuma nyondo-inī na kanua; gucia kīndū na kanua ta ūrīa mwana ongaga nyondo cia nyina","desc2":"","desc3":""},{"title":"onganīrīria","desc1":"rehe gīturanīrwo hamwe na kīngī","desc2":"","desc3":""},{"title":"ongoruo","desc1":"kiugo kīhūthagīrwo kuonana kūngīkorwo ūndū mūna nī ūgwīkīka ūna o naguo no ūgwīkīka mūhano: ongorūo nī ūgūka nītūgūthiī hamwe","desc2":"","desc3":""},{"title":"ongoya","desc1":"ūrīa nyamū cia maī-inī ciīinagia nīguo ithambīre; gwīka ta ūrīa nyamū cia maī-inī ciakaga igīthambīra","desc2":"","desc3":""},{"title":"onia","desc1":"athīrīria mūndū arore handū kana  kīndū; tarīria mūndū ūrīa ūndū mūna wīkagwo nīguo ahote kūwīka o nake","desc2":"","desc3":""},{"title":"onja","desc1":"gīa na wathe ūratūma ūremwo nī gwīka ūndū mūna","desc2":"","desc3":""},{"title":"onjoka","desc1":"teithīka ūtonge mūno wonjoria-inī","desc2":"","desc3":""},{"title":"onjoria","desc1":"tonya thūgūrī-inī ya wonjoria","desc2":"","desc3":""},{"title":"onjorithia","desc1":"kūrutithia indo thūgūrī nīguo cingīhe","desc2":"","desc3":""},
        {
          "title":"ora",
          "desc1":"butha; mumuthūka nī ūndū wa kūrīo nī tīīri kana nī ūndū wa gūkua",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"_ororo",
          "desc1":"ūtarī mūmū: mūhoro mūhano: rūa rūrū nī ruororo nī rūratandukirwo wega",
          "desc2":"",
          "desc3":""
        },
        {"title":"orota","desc1":"onereria na kīara kana kīndū kīrūngarū ta kaara","desc2":"","desc3":""},{"title":"ota","desc1":"ikara hakuhī na mwaki kana nja riūa-inī ūigue rugarī warīo","desc2":"","desc3":""},{"title":"othe","desc1":"arīa magwetetwo hatarī o na ūmwe mweherie","desc2":"","desc3":""},{"title":"oya","desc1":"amūkīra kīndū moko-inī; nyita kīndū na moko ūkīrute harīa kīigīrīirwo","desc2":"","desc3":""}];
    }
    if(widget.alphabet == 'P') {
      _allUsers = [
        {
          "title":"pa",
          "desc1":"kūiyūra biū; kūhūna: kūma pa",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"piū",
          "desc1":"biū",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"pu",
          "desc1":"kiugo gīa gūtarīria kūgūthwo na kīndū gītarī kīariī mūno mūhano: aragūthirwo ūthiū pu!",
          "desc2":"",
          "desc3":""
        },
        {
          "title":"puru",
          "desc1":"kūnina kīndū gīgathira biū",
          "desc2":"",
          "desc3":""
        }
        ];
    }
    if(widget.alphabet == 'R') {
      _allUsers = [{"title":"raara","desc1":"","desc2":"korwo handū hana mahinda ma ūtukū ūikaire ho; irio gūtigara igakinyia kīroko kīa mūthenya ūyū ūngī","desc3":""},{"title":"raaria","desc1":"","desc2":"tūma kīndū kīrare handū hana","desc3":""},{"title":"racia","desc1":"","desc2":"twarīra mūhīrīga wa mūirītu ūrenda kūhikia kana mūtumia waku indo irī mūigana ūrīa mūhīrīga ūcio wendagia airītu aguo","desc3":""},{"title":"ragaī","desc1":"","desc2":"mūndū mūnanu: mūndū wa tūhū","desc3":""},{"title":"ragatha","desc1":"","desc2":"mīmera gūthūka nī ūndū wa mbura kūingīha makīria kana kūhīa nī mbaa","desc3":""},{"title":"ragūra","desc1":"","desc2":"wīcūranie gītūmi kīa ūndū kūhanīka nī kīrīkū; mūragūri gūita mbūgū thī nīguo amenye gītūmi kana moimīrīra ma ūndū mūna","desc3":""},{"title":"raha","desc1":"","desc2":"gana mawega","desc3":""},{"title":"raka","desc1":"","desc2":"haara kīndū handū na handū","desc3":""},{"title":"rakara","desc1":"","desc2":"igua ūūru wage gūkena nī ūndū wa ūndū mūna ūtekwendaga kūhanīka","desc3":""},{"title":"rakaria","desc1":"","desc2":"cūngīrīria mūndū kūigua ūūru akaga gūkena nī ūndū wa ūrīa wīkīte","desc3":""},{"title":"rambio","desc1":"","desc2":"rambūrūo","desc3":""},{"title":"rambūrūo","desc1":"","desc2":"ninwo nī mwaki","desc3":""},{"title":"rangi","desc1":"","desc2":"Kiswahili ","desc3":"rūnyaga"},{"title":"rangīra","desc1":"","desc2":"rūgamīrīra handū kana ūndū nīguo ndūgathūkio","desc3":""},{"title":"rara","desc1":"","desc2":"kīndū gūkorwo gītarī kīhiū na gītarī kīhehu","desc3":""},{"title":"rarama","desc1":"","desc2":"nyamū kūruta mūgambo wa kuonania ūrūme","desc3":""},{"title":"raria","desc1":"","desc2":"hiūhia kīndū mwaki-inī gīkorwo ti kīhiū na ti kīhehu; hūthīrīria ūndū","desc3":""},{"title":"ratha","desc1":"","desc2":"theca kīndū na mūguī; riūa kuumīra rūcinī","desc3":""},{"title":"raū","desc1":"mīraū","desc2":"kahiū kanini","desc3":""},{"title":"raūra","desc1":"","desc2":"thūrima: tuīria: baara","desc3":""},{"title":"rediū","desc1":"","desc2":"Englishkameme","desc3":""},{"title":"regenyūka","desc1":"","desc2":"tiga mītugo mīega ūtuīke mūndū mwaganu","desc3":""},{"title":"regeria","desc1":"","desc2":"ohohora kīndū gītige kūnyita mūno; hūthia maūndū","desc3":""},{"title":"rehe","desc1":"","desc2":"kiugo gīa gwītia kīndū","desc3":""},{"title":"reka","desc1":"","desc2":"ītīkīria ","desc3":""},{"title":"rekania","desc1":"","desc2":"tiga kūnyitana; rekia kīndū kīgwe thī o rīmwe","desc3":""},{"title":"reke","desc1":"","desc2":"kiugo gīa kwīhoya wītīkīrio kana ūrekwo wīke ūndū mūna","desc3":""},{"title":"rekera","desc1":"","desc2":"aga kūrīhia mūndū kīndū abatiī kūrīhio; aga kūherithia mūndū nī ūndū wa mehia abatiī kūherithīrio","desc3":""},{"title":"rekereria","desc1":"","desc2":"tiga gūtungata; hingūrīra kīndū kiuma kīhingīrīrie gīthiī ūrīa gīkwenda","desc3":""},{"title":"rekia","desc1":"","desc2":"tiga kūnyita; gūithia thī; nyamū kūruta itumbī nda yayo ","desc3":""},{"title":"remia","desc1":"","desc2":"tonyereria mūndū mītugo-inī ītarī mīega","desc3":""},{"title":"renga","desc1":"","desc2":"gayania kīndū ūkīhūthīra kīndū gīa gūtema kana gūtinia","desc3":""},{"title":"rera","desc1":"","desc2":"tungata mwana nīguo akūre ","desc3":""},{"title":"rera","desc1":"","desc2":"ikara maī igūrū ūtekūrikīra kana rīera-inī ūtekūgwa","desc3":""},{"title":"reri","desc1":"","desc2":"njīra ya ngari ya mwaki","desc3":""},{"title":"ria","desc1":"","desc2":"mīmera īrīa īkūraga mūgūnda ītahandītwo na nī ītūmaga irio itigakūre wega","desc3":""},{"title":"rīagayū","desc1":"","desc2":"itharara","desc3":""},{"title":"rīanga","desc1":"","desc2":"ngerenwa ya mbara","desc3":""},{"title":"rigariga","desc1":"","desc2":"kūruga irio o hanini, kaingī irio cia nyeni, ūndū itekūhīa biū","desc3":""},{"title":"rīgarīga","desc1":"","desc2":"gūthiī ūhiūhīrīire ta he handū ha bata ūrorete","desc3":""},{"title":"rigī","desc1":"","desc2":"kīndū gīthondeketwo gī gīa kūhinga thome kana mūromo wa nyūmba: mūrango","desc3":""},{"title":"rigica","desc1":"","desc2":"thiūrūrūkīria handū kana kīndū na kīndū kīngī ta mūkwa","desc3":""},{"title":"rigita","desc1":"","desc2":"thondeka na mīthaiga nīguo ūhonie","desc3":""},{"title":"rigitha","desc1":"","desc2":"gūkumuthithania hī: kūmoya na hinya handū hamwe na rūhī kana kīara","desc3":""},
        {
          "title":"rigithatha",
          "desc1":"",
          "desc2":"ciara mwana wa mbere wa kahīī; ciarwo wī mwana wa mbere wa kahīī",
          "desc3":""
        },
        {
          "title":"rigitū",
          "desc1":"",
          "desc2":"mūkanda wa kuoherera itonyo njohero-inī kaingī harī aka; rūrigi rūrīa rūnyitagīrīra mwengū",
          "desc3":""
        },
        {
          "title":"rigoya",
          "desc1":"",
          "desc2":"goya: cunjura ūtekūhota kwīhanda ta ūrītwo nī hinya",
          "desc3":""
        },
        {"title":"rīgu","desc1":"","desc2":"irio irīa mūndū akuaga agīthiī rūgendo akarīra njīra-inī","desc3":""},{"title":"riha","desc1":"","desc2":"hūra: gūtha","desc3":""},{"title":"rīha","desc1":"","desc2":"neana indo cia kūrūgamīrīra thogora wa kīndū kana ūndū","desc3":""},{"title":"rihūra","desc1":"","desc2":"ikia maī-inī nīguo ūrute gīko kīrīa kī igūrū ūtegūthambia mūno","desc3":""},{"title":"riika","desc1":"mariika","desc2":"gīkundi kīa andū maruanīire kīmera kīmwe; gīkundi kīrīa kī na wathani wa rūrīrī","desc3":""},{"title":"riīra","desc1":"","desc2":"gitīra kīndū taarī gūkīrigicīria nīguo ūūru ndūkone ha gūtonyera","desc3":""},{"title":"riita","desc1":"","desc2":"kīīga ","desc3":""},{"title":"rīithia","desc1":"","desc2":"tungatīra mahiū; rūgamīrīra mahiū nīguo marīe; ūndū ūngī ūhana ta kūrūgamīrīra mahiū marīe kana kūmaramata","desc3":""},{"title":"rīithori","desc1":"","desc2":"maī marīa maitīkaga kuuma maitho-inī mūndū akīrīra","desc3":""},{"title":"rika","desc1":"","desc2":"ūrīra maī-inī; irima gūkorwo rīikūrūkīte thī mūno","desc3":""},
        {
          "title":"rīma",
          "desc1":"",
          "desc2":"rutīra mūgūnda wīra nīguo ūrīgetha maciaro kuo",
          "desc3":""
        },
        {
          "title":"rimūtha",
          "desc1":"",
          "desc2":"thiūrūrūka handū na handū tarī ithako ūkenete na ūkīrūgarūgaga",
          "desc3":""
        },
        {"title":"rīna","desc1":"","desc2":"ihinda rītaragwetwo nī rīrīkū; inyamū rīragwetwo rītekwīrwo nī rīrīkū","desc3":""},{"title":"rinda","desc1":"","desc2":"iga kīndū handū he na ūrugarī wūigana ūna nīguo kīrue, kīruge kana gīkūre; ikia kīndū maī-ini kana kīndū-inī gītweku nīguo kīgunye ","desc3":""},{"title":"ringa","desc1":"","desc2":"gūtha ","desc3":""},{"title":"ringīra","desc1":"","desc2":"īra mūndū ūru wa kīndū nīguo ndagakīende","desc3":""},{"title":"ringīra","desc1":"","desc2":"ringa kīndū ithenya-inī rīa mūndū ūngī","desc3":""},
        {
          "title":"ringīrīria",
          "desc1":"",
          "desc2":"iguithia mūndū mūno nīguo eke ūrīa we mwene atarenda kana atatuīte itua gwīka",
          "desc3":""
        },
        {
          "title":"ringūka",
          "desc1":"",
          "desc2":"tweka",
          "desc3":""
        },
        {"title":"ringūra","desc1":"","desc2":"mūmera ūranjītie kūūma kana ūkahoha kwanjia kūrirūka rīngī","desc3":""},{"title":"rīra","desc1":"","desc2":"ruta mūgambo wa kīeha kana ruo; ita maithori; teta nī ūndū mūna","desc3":""},{"title":"riri","desc1":"","desc2":"kīndū kana mūndū gūkorwo ena ūthaka, hinya na akīoneka akoneka atarī na thīna","desc3":""},{"title":"rīrī","desc1":"","desc2":"kiugo gīa kwerekeria mūndū athikīrīrie ūrīa ūrenda kūmwīra; kiugo gīa kuga nū kana nī kīī gīkīte ūna","desc3":""},{"title":"rīria","desc1":"","desc2":"tūma mūndū arīre","desc3":""},{"title":"ririkana","desc1":"","desc2":"ūndū gūkorwo meciria-inī: ūndū gūcoka meciria-inī","desc3":""},{"title":"ririmba","desc1":"","desc2":"itonyo iraya rīa mūthuri: gīthii","desc3":""},{"title":"rirūka","desc1":"","desc2":"thakara: gema","desc3":""},{"title":"rita","desc1":"maita","desc2":"kiugo gīa gūtarīria mahinda nī maigana ūndū wīkīkīte","desc3":""},{"title":"ritho","desc1":"maitho","desc2":"kīīga kīrīa kīonaga","desc3":""},{"title":"rītwa","desc1":"marītwa","desc2":"ūrīa kīndū kana mūndū etagwo","desc3":""},{"title":"riūa","desc1":"","desc2":"kīmūrī kīrīa kīaraga mūthenya","desc3":""},{"title":"riūka","desc1":"","desc2":"coka muoyo rīngī thutha wa gūkua","desc3":""},{"title":"riūnga","desc1":"","desc2":"thiī handū na handū ūtarī na ūndū wa bata ūreka","desc3":""},{"title":"riūngūra","desc1":"","desc2":"tuīria; haara","desc3":""},
        {
          "title":"roga",
          "desc1":"",
          "desc2":"hūthīra mīthaiga gwīka mūndū, nyamū kana kīndū ūūru",
          "desc3":""
        },
        {
          "title":"rogora",
          "desc1":"",
          "desc2":"ehereria ndirū yumanīte na kūrogwo",
          "desc3":""
        },
        {"title":"roho","desc1":"marooho","desc2":"Kiswahili ngoma; muoyo","desc3":""},{"title":"roka","desc1":"","desc2":"thiī handū rūcinī tene","desc3":""},{"title":"rongoreria","desc1":"","desc2":"īka ūndū nīguo wone ūndū mūna","desc3":""},{"title":"ronja","desc1":"","desc2":"aria ta mūndū mūtukanīre; negena taarī ngūī","desc3":""},{"title":"rora","desc1":"","desc2":"roria maitho handū hana: roria mwena wa na mbere waku mwena mūna: erekera handū hana; rūgamīrīra ūndū mūna, kīndū kana mūndū aikare na mūikarīre ūrīa ūrenda","desc3":""},{"title":"rota","desc1":"","desc2":"ona maūndū meciria-inī maku rīrīa wī toro","desc3":""},{"title":"rua","desc1":"","desc2":"hītūkīra igongona rīa kuuma irūngo-inī rīa kīhīī kana kīrīgū ūtuīke mwanake kana mūirītu","desc3":""},{"title":"rūa","desc1":"","desc2":"hūrana: gīa na mbaara","desc3":""},{"title":"rūa","desc1":"","desc2":"kīīga kīrīa gīkoragwo kīhumbīte mwīrī wa mūndū kana nyamū na nīho guoya kana maguoya mameraga; kīndū kīhumbīte kīndū ta rūa mūhano: makoro nīmo rūa rwa itunda","desc3":""},{"title":"rūaga","desc1":"","desc2":"kīaga; handū hathondeketwo hangīigīrīrwo indo","desc3":""},
        {
          "title":"rūai",
          "desc1":"",
          "desc2":"mbaa",
          "desc3":""
        },
        {
          "title":"rūamba",
          "desc1":"",
          "desc2":"tūnyamū tūhana guoya tūkoragwo mīmera-inī īmwe tūrīa twahutania na mwīrī wa mūndū tūrehaga mūrarako mūhano: thabai wī rūamba rūcinaga mūndū mūno",
          "desc3":""
        },
        {"title":"rūambū","desc1":"marūambū?","desc2":"maguta marīa makoragwo mahumbīrīte gītathira","desc3":""},{"title":"rūara","desc1":"","desc2":"nyitwo nī mūrimū kana ndwari īratūma ūikare ūkomete ūtekūhota gūthiī mūno","desc3":""},{"title":"rūario","desc1":"","desc2":"rūthiomi rūrīa mūndū arutītwo kuma he nyina","desc3":""},{"title":"rūbaracū","desc1":"","desc2":"rūkerecū rūnene ","desc3":""},{"title":"rūbia","desc1":"","desc2":"Indian rupee ciringi igīrī","desc3":""},{"title":"rūbūa","desc1":"","desc2":"mūhiriga wa cuma  ūtwekagio ūnyitithanie cuma igīrī ( Solder , lead )","desc3":""},{"title":"rūcacī","desc1":"njacī","desc2":"gīcacī","desc3":""},{"title":"rūcamiū","desc1":"njamiū","desc2":"rūthanju rūceke","desc3":""},{"title":"rūciaro","desc1":"njiarwa","desc2":"ciana iciaranīte kuma he mūndū kana nyamū na","desc3":""},{"title":"rūciū","desc1":"","desc2":"mūthenya ūrīa ūgakīa ūrīa wīho watuka","desc3":""},{"title":"rūcora","desc1":"njoora","desc2":"mūcora","desc3":""},{"title":"rūcoya","desc1":"njoya","desc2":"kīndū gīkūraga rūa-inī  na mathagu-inī ma nyamū cia mūthemba wa nyoni","desc3":""},{"title":"rūcuthī","desc1":"icuthī","desc2":"ihīndī na nyama ya ng'ong'o wa nyamū mūthia-inī wa mūnyiginyigi","desc3":""},
        {
          "title":"ruga",
          "desc1":"",
          "desc2":"hagīra kīndū mwaki-inī nīguo kīhīe kīrīo kana kīnyuo",
          "desc3":""
        },
        {
          "title":"rūga",
          "desc1":"",
          "desc2":"rūrigi rūria rūikagia mūguī ūta-inī",
          "desc3":""
        },
        {"title":"rūgama","desc1":"","desc2":"kwīhanda ūgakorwo ūrūngiī; gūtiga gūthiī","desc3":""},{"title":"rūgambi","desc1":"ng'ambi","desc2":"mūgambo ūrīa ūrutagwo nī kīndū gīthondeketwo kīrutage mīgambo ta wandīndī","desc3":""},{"title":"rūgamia","desc1":"","desc2":"cūngīrīria kīndū kūrūgama; onereria kīndū kana mūndū arūgame; iga kīndū kīhandīte; tūma ūndū ūgacīre","desc3":""},{"title":"rūgamīrīra","desc1":"","desc2":"korwo handū ithenya-inī rīa mūndū ūngī; korwo handū wī mūrori wa maūndū ūrīa marekwo; korwo wī mūira wa ūndū mūna ūgīkwo","desc3":""},{"title":"rūgano","desc1":"ng'ano","desc2":"maūndū mahītūku na mahanīkīte gatīīna-inī kaigana ūna, maheanītwo na mūtaratara ūrūmanīrīirie ūrīa mahanīkire","desc3":""},{"title":"rūgendo","desc1":"ng'endo","desc2":"kumagara ūgathiī kūndū kūraya na muoroto mūna","desc3":""},{"title":"rūgīo","desc1":"","desc2":"kīgera  gītambūrūku gīturītwo gī gīa kūrugīrwo; gīcere gīa gītina kīa nyūngū kīngīhūthīrwo ta rūgīo","desc3":""},{"title":"rugīra","desc1":"","desc2":"ruga ithenya-inī rīa mūndū ūngī; ruga nīguo mūndū ūngī arīe","desc3":""},{"title":"rūgīra","desc1":"","desc2":"rūga nīguo ūkinyīre kīndū kī igūrū kana ūcuhīrīre kīndū kīrathiī ","desc3":""},{"title":"rūgīra","desc1":"","desc2":"menya kana ūtaūkwo nī ūndū ūkūhithagwo kana ūraheanwo wī mūhithanie","desc3":""},{"title":"rūgiri","desc1":"ngiri","desc2":"mītī kana mahuti mahandītwo me ma kūiriga handū","desc3":""},{"title":"rūgotoro","desc1":"ngotoro","desc2":"rūkū runītwo na njīra ya kūgotorwo","desc3":""},{"title":"rūgucio","desc1":"ngucio","desc2":"kīgera gīturītwo gīkagucio gīcekehe ta rūrigi English wire","desc3":""},{"title":"ruguta","desc1":"","desc2":"huha mwaki na muura nīguo kīgera gītherio","desc3":""},{"title":"rūhara","desc1":"","desc2":"nguraro ya kūharwo na ndwara kana kīndū kī na mīthia īngīhara ta ndwara","desc3":""},{"title":"rūharo","desc1":"","desc2":"kīoro kīnene gītweku","desc3":""},{"title":"rūhati","desc1":"haati","desc2":"kūringa kana kūringwo na kūgūrū","desc3":""},{"title":"rūheni","desc1":"heni","desc2":"ūtheri ūhenūkaga igūrū rīrīa kūroira kana kwī na matu ma mbura","desc3":""},{"title":"rūhī","desc1":"hī","desc2":"mwena wa guoko wa thīiniī ūrīa ūnyitaga indo kwanjia irūngo-inī rīrīa rī kīanda wa kīgokora kinya mīthia ya ciara; kūringwo na rūhī mūhano: Wanjohi ahūrirwo rūhī nī Kīnyua","desc3":""},{"title":"rūhia","desc1":"","desc2":"kenerera ūndū mūna ","desc3":""},{"title":"rūhīa","desc1":"hīa","desc2":"kīīga gīkūraga mītwe-inī ya nyamū imwe ta ng'ombe kana mbūri, kīūmū kīūmbītwo na mūmbīre ta ūrīa ūmbaga mahūngū ma nyamū icio, na nīkīo nyamū icio ihūthagīra kūrūa kana kwīgitīra","desc3":""},{"title":"rūhiū","desc1":"hiū","desc2":"kīgera gīturītwo na gīka norwo kī na ūraihu ūtanyihīire kuuma mīthia ya ciara kinya kīgokora-inī kīhūthagīrwo na gūtema","desc3":""},{"title":"rūhonge","desc1":"","desc2":"rora kīhonge; thīiniī wa ikundi: gīkundi kīigītwo mwanya no nī gīkonainie na kiumīte he gīkundi kīrīa kīnene mūhano: thirikari īhūthagīra rūhonge rwa magoti gūtua cira","desc3":""},{"title":"rūhuho","desc1":"huho","desc2":"rīera rīrathiī rīūmbūkīte na hinya mūnene ūroneka kana ūkaiguīka","desc3":""},{"title":"rūhuhu","desc1":"","desc2":"kīūmbe kī mūmbīre ta wa mbīa no nī kīrī mathagu matarī njoya kīūmbūkaga namo na kīomba mītī-inī kīūmbaga kīiniī","desc3":""},{"title":"rūī","desc1":"njūī","desc2":"maī metemeire njīra ya mo, na matūire matherereire njīra-inī īyo","desc3":""},{"title":"rūīga","desc1":"","desc2":"igai rīa irio mūndū agaīirwo nīguo arīe","desc3":""},{"title":"rūīmbo","desc1":"nyīmbo","desc2":"rwīmbo","desc3":""},{"title":"ruīra","desc1":"","desc2":"mūgūnda gūtigwo ūtarīmītwo","desc3":""},{"title":"rūīra","desc1":"","desc2":"rūa nī ūndū wa ūndū mūna;","desc3":""},{"title":"rūirigo","desc1":"njirigo","desc2":"rūgiri; rūthingo","desc3":""},{"title":"rūīrīra","desc1":"","desc2":"rūa nīguo ūteithūre mūndū kana kīndū kīna","desc3":""},{"title":"rūitho","desc1":"","desc2":"kūrora mūndū na maitho maronania rūthūro kana ūiru","desc3":""},{"title":"rūitū","desc1":"","desc2":"mūrumbī wa tūnyamū tūingī biū","desc3":""},{"title":"rūkaracū","desc1":"ngaracū","desc2":"gīcere gīceke kiumīte mūtī-inī","desc3":""},{"title":"rukaraku","desc1":"","desc2":"rutūrūra ūingate","desc3":""},{"title":"rūkenge","desc1":"","desc2":"ngenge","desc3":""},{"title":"rūkerecū","desc1":"ngerecū","desc2":"rūkaracū","desc3":""},{"title":"rūkobe","desc1":"","desc2":"kīrīa kīhotithagia tombo gūtua matua Kiswahili akili; ūhoti wa gwīciria maūndū na gūtua matua marūngīrīru; wīigīrīrīki mwīkīre-inī wa maūndū","desc3":""},{"title":"rūkū","desc1":"ngūū","desc2":"mītī kana thari ciunītwo nīguo ciakio mwaki","desc3":""},{"title":"rūkūngū","desc1":"","desc2":"mūtutu wa kīndū wīnyitīrīire handū kana ūkombūrwo nī rūhuho","desc3":""},{"title":"rūkūri","desc1":"","desc2":"nyama hīu īrindītwo na ūkī","desc3":""},{"title":"ruma","desc1":"","desc2":"īta ciugo njūru; aria ciugo cia mūkana ūrīa mūndū angīwagarara angīkorwo nī ndirū; aria ciugo cia kūrehithīria mūndū ndirū","desc3":""},{"title":"rūma","desc1":"","desc2":"tinia kana ūtihie na magego; kīndū kūnyita wega harīa kīhandīrīirwo; ūndū kwīhanda","desc3":""},{"title":"rūmbūiya","desc1":"","desc2":"tungatīra na kūhingīria mabataro","desc3":""},{"title":"rūmena","desc1":"","desc2":"ūhoro wa kūmena biū","desc3":""},{"title":"rumia","desc1":"","desc2":"gūtha kīndū kīgambe na hinya","desc3":""},{"title":"rūmia","desc1":"","desc2":"nyita kīndū na hinya gītikaume moko; kundīka gīkundo kīnyite biū; īkīra irio kanua kene","desc3":""},{"title":"runda","desc1":"","desc2":"ūndū kwaga kūgacīra kana gūkinyanīra ta ūrīa ūkwīrīgīrīirwo","desc3":""},{"title":"rūnda","desc1":"","desc2":"hūthīra hinya ūtorie kīndū kana mūndū ūmūgūithie thī","desc3":""},{"title":"rung'a","desc1":"","desc2":"arīrīria ndeto  hatarī ngūī","desc3":""},
        {
          "title":"rūng'ura",
          "desc1":"",
          "desc2":"kīīga gīkoragwo gīcunjurīte mwena wa igūrū wa kīīga gīa ūciari kīa andū-a-nja",
          "desc3":""
        },
        {
          "title":"rūng'ūrī",
          "desc1":"",
          "desc2":"kūndū kūmū gūtarī maī kana mīmera gūtangīrīmīka kana kūrīithīkīre mahiū",
          "desc3":""
        },
        {"title":"rūnga","desc1":"","desc2":"tambūrūkia kīndū kīgonyoku gītige kūgonyoka; cokereria mūndū mītugo-inī mīega","desc3":""},{"title":"rungu","desc1":"","desc2":"thī wa kīndū mūhano: tūreyūīte mbura rungu rwa mūtī","desc3":""},{"title":"rūngū ","desc1":"","desc2":"mūmera ūtambaga ta irenge na nīguo ūciaraga indo irīa ihūthagīrwo ta inya, cihūri na ingī ta icio","desc3":""},
        {
          "title":"runo",
          "desc1":"",
          "desc2":"mūkūnja wa itonyo unanīirwo na ūgatumwo; mwīkīre mūna wa maūndū ta ma rūracio marūmīrīire mūtaratara o wa handū ūtahanaine na wa kūngī",
          "desc3":""
        },
        {
          "title":"runye",
          "desc1":"",
          "desc2":"rwenji",
          "desc3":""
        },
        {"title":"runye","desc1":"","desc2":"maūndū ma hitho makoniī andū ana matangīarīrīrio kīng'ang'a-inī","desc3":""},
        {
          "title":"rūnyeni",
          "desc1":"nyeni/manyeni",
          "desc2":"mahuti marīa mangīrīka nī andū; rūnyaga rūrīa rūhana mahuti ta nyeki",
          "desc3":""
        },
        {
          "title":"ruoro",
          "desc1":"",
          "desc2":"rūri rwīkīrītwo handū rūkonainie na mūndū mūna nīguo kīrīa gīkīrītwo gīkūrīkanage atī nī kīmūkoniī",
          "desc3":""
        },
        {"title":"rura","desc1":"","desc2":"henahenia nī kwīhaka maguta kana ta wīhakīte maguta; riūa gūtiga kūhiūha mūno rīerekeire gūthūa; thakara: agĩrĩra (kaingĩ ũkĩarĩrĩria mĩmera)","desc3":""},{"title":"rūri","desc1":"","desc2":"kīonereria kīa ūndū","desc3":""},{"title":"rūrīmī","desc1":"nīmī","desc2":"kīīga gītunīhīrīru gīkoragwo kanua gīteithagīrīria kūmeria irio na kwaria","desc3":""},{"title":"rūrīrī","desc1":"","desc2":"andū makonainie nī ūndū wa kwaria rūthiomi rūmwe na gūkorwo na mītugo īmwe","desc3":""},{"title":"rūrīrīmbī","desc1":"nīnīmbī","desc2":"mwaki ūrakana rīera-inī","desc3":""},{"title":"rūru","desc1":"ndūru","desc2":"nyamū ndara-gīthaka kana cia kūrīithio nī andū icokanīrīire hamwe","desc3":""},{"title":"rūrua","desc1":"","desc2":"mūconjo wa mai na mathugumo ma mbūri kana ng'ombe","desc3":""},{"title":"rurūka","desc1":"","desc2":"nyarara; mena; tiganīria mwīhītwa wīke mūgarū naguo","desc3":""},{"title":"rūruka","desc1":"nduka","desc2":"indo, nyamū kana andū makonainie nī gūkorwo na mūhianīre ūmwe kana ūkuhanīrīirie ona akorwo ti amwe","desc3":""},{"title":"ruruma","desc1":"","desc2":"ruta mūrurumo","desc3":""},{"title":"rurumūka","desc1":"","desc2":"ūndū ūrathirīte kwanjīrīrīria rīngī","desc3":""},{"title":"rūrūngana","desc1":"","desc2":"gūcokanīrīra na gūthiī hamwe na muoroto ūmwe","desc3":""},{"title":"ruta","desc1":"","desc2":"eheria kīndū; aūra; neana kīndū kīneanagwo ihinda rīna","desc3":""},{"title":"rūtambi","desc1":"ndambi","desc2":"ndigi ciogothetwo ikarindwo maguta-inī nīguo ciagwatio irute ūtheri","desc3":""},{"title":"ruteere","desc1":"ndeere","desc2":"mūthia wa kīndū gītambūrūkīte thī ta mūgūnda kana rūī","desc3":""},{"title":"rūtha","desc1":"","desc2":"gwītīkīrio ūndū mūna","desc3":""},{"title":"rūthanju","desc1":"thanju","desc2":"mūtī wa kūhūra mūndū kana kīndū kīngī; mūgūnda mūtambūrūku watūrītwo harī ūngī mūnene ","desc3":""},{"title":"rūthīa","desc1":"thīa","desc2":"ihīndī rīrīa rīkoragwo rīnyitīrīire magego","desc3":""},{"title":"rūthingo","desc1":"thingo","desc2":"rūirigo rwakītwo rwī rūnyitanu rwa kūirigīra handū, kūgita kana kūgayania","desc3":""},{"title":"rūthiomi","desc1":"thiomi","desc2":"mwarīrie wa andū angī mūgeni harī we","desc3":""},
        {
          "title":"rūthiri",
          "desc1":"",
          "desc2":"nyūngū nene ī mūromo mūkunderu na ī mūmbīre wa gīthiūrūrī kīnene ya kūigwo indo ndweku ta ūcūrū kana maī",
          "desc3":""
        },
        {
          "title":"rūthīrīria",
          "desc1":"",
          "desc2":"rora na ūriku tarī gūthūrima ūgūthūrima; cūthīrīria",
          "desc3":""
        },
        {"title":"rūthūro","desc1":"","desc2":"kūmena na rūmena rūnene","desc3":""},{"title":"rūthuthuo","desc1":"","desc2":"mbura ītarī nene ","desc3":""},{"title":"rūthuuro","desc1":"","desc2":"indo ciamūranītio na irīa njega","desc3":""},{"title":"rūtumo","desc1":"ndumo","desc2":"handū he na kīrema gīa gūtumwo; handū hatumītwo","desc3":""},
        {
          "title":"rūūga",
          "desc1":"",
          "desc2":"wīikie ūthiī na igūrū ",
          "desc3":""
        },
        {
          "title":"rwa",
          "desc1":"",
          "desc2":"kiugo gīa kwerekeria kīrīa kīrarīrīrio gīkoniī ū mūhano: rūthanju rūrū nī rwa karīithi; kiugo gīa kwerekeria kīrīa kīrarīrīrio nī kīa wīra ūrīkū mūhano:rūrigi rūrū nī rwa kuoha ngūkū; kiugo gīa kwerekeria kīrīa kīrarīrīrio nī kīa ha kana kiumanīte kū mūhano: rūrigi rūrū nī rwa haha no harīa ruhokire rwagūa thī",
          "desc3":""
        },
        {"title":"rwagatha","desc1":"","desc2":"mūcamo mūrūrū wa irio ūtigaraga kanua mūndū aūcama","desc3":""},{"title":"rwara","desc1":"ndwara","desc2":"kīīga gīkūraga mūthia-inī wa kaara ka mūndū na nyamū irīa irī twara ta nūgū na magūrū-inī ma nyamū ingī ta ngarī","desc3":""},
        {
          "title":"rwariūngū",
          "desc1":"",
          "desc2":"kīīga gīkoragwo thīinī wa nyamū kana mūndū kīhana ihuti kīrutaga maī mateithagīrīria gūthīa irio",
          "desc3":""
        },
        {
          "title":"rwaro",
          "desc1":"",
          "desc2":"handū he na ihiga rīaraganīte thī rītambūrūkīte handū gatīna kaigana ūna",
          "desc3":""
        },
        {"title":"rwere","desc1":"","desc2":"mwena wa kīndū kana handū","desc3":""},{"title":"rwīmbo","desc1":"nyimbo","desc2":"ciugo ithurītwo nīguo ciugwo na mūgambo mūna mūrūmanīrīrie na njīra ī na ūtabarīri","desc3":""}];
    }
    if(widget.alphabet == 'T') {
      _allUsers = [{"title":"ta","desc1":"","desc2":"ūndū ūmwe na mūhano: igogo nī nyoni ta ihuru","desc3":""},{"title":"taaha","desc1":"","desc2":"munya ria na moko mūgūnda nīguo rītige gūtoria irio","desc3":""},{"title":"taatha","desc1":"","desc2":"irio irī nda itathīītwo biū ","desc3":""},{"title":"tabania","desc1":"","desc2":"tongoria igongona mo: mūūhanndū ūtaracīirie mūka ndangītabania igongona rīa ūgūrani; īka ūndū mūna mūhano: imaramari nī cia tabania ngero mūrīmo ūrīa ūngī","desc3":""},{"title":"tabarīra","desc1":"","desc2":"kahinda kamūrītwo ga gwīkwo kana kwarīrīrio ūndū mūna thīiniī wa rediū kana tibii","desc3":""},{"title":"tabarīra","desc1":"","desc2":"rūgamīrīra ūndū mūna ūgīkwo nīguo wīkwo ūrīa kwagīrīire mūhano: Gīathi nīwe wa tabarīra mwako ūcio kinya warīka","desc3":""},{"title":"taha","desc1":"","desc2":"tahia","desc3":""},{"title":"tamba","desc1":"","desc2":"Thiĩra handũ wĩnyitĩrĩire igũrũ rĩa kĩndũ kĩngĩ","desc3":""},{"title":"tambia","desc1":"","desc2":"tūma kīndū gītambe; heana ūhoro kūrī andū matawūiguīte thutha waku mwene kūwūigua","desc3":""},{"title":"tambūka","desc1":"","desc2":"hiūha kana ūteng'ere ūgīikagia mītaacū; ūhoro gūtamba; mīhīrīga ya mīmera īrīa īmeraga ītambīte gūtamba ","desc3":""},{"title":"tambūra","desc1":"","desc2":"tīya","desc3":""},
        {
          "title":"tambūrūka",
          "desc1":"",
          "desc2":"kīndū gūkorwo kīyarīte gītathiīte na thī kana na igūrū",
          "desc3":""
        },
        {
          "title":"tambūrūka",
          "desc1":"",
          "desc2":"kīndū kana handū gūkorwo kīyarīte hatarī handū gīkomanīire mūhano: irīma cia Nyandarwa ikoragwo itambūrūkīte kuma magūrū-inī ma Kīrīnyaga kinya kīnjabi",
          "desc3":""
        },
        {"title":"tambūrūkia","desc1":"","desc2":"kūrūngaria kīndū kiunanīre kana kīyunanīire mūhano: tambūrūkia guoko nī ūgūkinyīra","desc3":""},{"title":"tambuthīka","desc1":"","desc2":"tehūka uitīke mbutha nī gūkūra kana kūhūtha","desc3":""},{"title":"tanaha","desc1":"","desc2":"tanahīra","desc3":""},{"title":"tanahīra","desc1":"","desc2":"twarīra mūndū indo o harīa arī ūmūhe","desc3":""},{"title":"tandamūra","desc1":"","desc2":"emūria: iga ūtaganūrīte","desc3":""},{"title":"tandiūka","desc1":"","desc2":"hinyīrīrīka ngoro nī kūnyarirwo kana nī ūndū wa kūnyamarīka","desc3":""},{"title":"tandiūra","desc1":"","desc2":"agithia thayū ngoro nī kūnyamaria","desc3":""},{"title":"tandiūrwo","desc1":"","desc2":"agithio thayū ngoro nī kūnyamario","desc3":""},{"title":"tanduka","desc1":"","desc2":"īka ta ūrīa mūndū ahūraga itonyo na moko rīthere","desc3":""},{"title":"tanga","desc1":"","desc2":"hutia na mīthia ya guoko kīndū gītabatiī kūhutio mūhano: nū wa tanga rūthingo na moko me na gīko? ; gūthīnia mūndū nī gūtinda ūkīmūcokerera ūndū atarenda mūhano: nī ūūru mūno mūndū mūgima gūtanga andū akīmahoya mbeca","desc3":""},{"title":"tangīka","desc1":"","desc2":"thīnīka meciria nī gwīcūrania ūndū mūno","desc3":""},{"title":"tangīkīra","desc1":"","desc2":"tungatīra mūndū wonete ūūru mūhano: nī hararī na andū a kūmatangīkīra rīrīa maronire mūtino","desc3":""},{"title":"tanya","desc1":"","desc2":"kwīhoka ūndū mūna nī ūgwīkīka ihinda rīna mūhano: tūra tanya atī mbura no īkura o na ihenya","desc3":""},{"title":"tara","desc1":"","desc2":"gera mūigana ūkīhūthīra ndari","desc3":""},{"title":"tara","desc1":"","desc2":"he mataaro","desc3":""},{"title":"tarania","desc1":"","desc2":"konania nī ūndū wa gūciaranīrwo; thīnio nī ūndū mūno meciria-inī","desc3":""},{"title":"tararīka","desc1":"","desc2":"handū kūnunga na mūnungo mūnene mūhano: nīkīī gīa tararīka ūguo, kaī haha hakuīrīire kīndū? ; ruta mūgambo ta ndarariki īkīūmbūka","desc3":""},{"title":"tarīria","desc1":"","desc2":"heana ūhoro ūkoniī ūndū mūna nīguo ūtaūkīke wega ","desc3":""},{"title":"tarūra","desc1":"","desc2":"tinia kīndū gītambūrūku ta itonyo kana kīandarūa","desc3":""},{"title":"tata","desc1":"","desc2":"mwarī wa nyina na nyūkwa, thoguo kana mūka wa mamaguo","desc3":""},{"title":"tata","desc1":"","desc2":"kīndū gītweku gūitīka gīkagūa  kīnini kīnini ta ūrīa mbura īitīkaga","desc3":""},
        {
          "title":"tatha",
          "desc1":"",
          "desc2":"ratha: gūtheca na kīndū kīraikio na kīndū kīngī gīa gūikia mūhano: tatha thwariga īrīa na mūguī",
          "desc3":""
        },
        {
          "title":"tathaiya",
          "desc1":"",
          "desc2":"andū makirie kūrua kuuha andū na kūmainīra nīguo maheo irio",
          "desc3":""
        },
        {
          "title":"tatīka",
          "desc1":"",
          "desc2":"iguithīka ūndū",
          "desc3":""
        },
        {"title":"taūka","desc1":"","desc2":"therera, ūū atī no ūmenyeke wega","desc3":""},{"title":"taũkwo","desc1":"","desc2":"menya ūndū mūna ūtariī atīa na ūrikīru","desc3":""},
        {
          "title":"taūra",
          "desc1":"",
          "desc2":"thathaūra ūndū no ūtaūkīke; heana ūhoro warītio na rūthiomi rūgeni ūwarie na rūthiomi rūrīa andū maraigua ",
          "desc3":""
        },
        {
          "title":"tautau",
          "desc1":"",
          "desc2":"kiugo gīa gūtarīria mūtanukīre wa irio mūhano: aratanukaga irio tautau ta hiti",
          "desc3":""
        },
        {"title":"tawa","desc1":"matawa","desc2":"kīmūrī kīhūthagīra rūtambī gūcina maguta nīguo rūrute ūtheri","desc3":""},{"title":"te","desc1":"","desc2":"ikia kīndū gīkweherere tondū ndūrakīenda; aga kīndū uma nakīo na ndūmenye kūrīa gīthire","desc3":""},{"title":"tebeba","desc1":"","desc2":"agaga nī kūmaka; hana taūngīagūa ūcoke wīhande","desc3":""},{"title":"tebebania","desc1":"","desc2":"makania mūno","desc3":""},{"title":"tega","desc1":"","desc2":"hīnga magūrū na kīndū nīguo mūndū kana nyamū īgūe; hīnga kīndū kīngīgaragara nīguo gītikagaragare; igīra nyamū  mūtego nīguo yaūhutia īnyitwo nīguo ","desc3":""},{"title":"teithia","desc1":"","desc2":"īkīra ūndū ūremete kana ūkagetera mwene guo hinya","desc3":""},{"title":"teithĩrĩria","desc1":"","desc2":"īka ūndū hamwe na mwene nīguo ūmūhūthahūthīrie","desc3":""},{"title":"tema","desc1":"","desc2":"renga kīndū ūkīhūthīra kīndū kīragūthithio handū gīkahatihia ","desc3":""},{"title":"temba","desc1":"","desc2":"onereria na mīromo nīguo ūmenererie","desc3":""},{"title":"tembūra","desc1":"","desc2":"tarūra ","desc3":""},{"title":"temwo","desc1":"","desc2":"tihio ūgīe na nguraro ītaratigithūkania; mūtī kūrengwo kinya ūkagūa thī","desc3":""},{"title":"tenda","desc1":"","desc2":"nyarara; īka mūndū gīīko kīūru mūno","desc3":""},{"title":"tendera","desc1":"","desc2":"thī kūgunyio nī kīndū gītweku īkahana ndoro īkiītwo; Mũndũ kana nyamũ kũnora ĩgathakara; Kĩndũ kana handũ kũnyororoka ta handũ he na maguta ","desc3":""},{"title":"tenderia","desc1":"","desc2":"tūma handū hatendere nī gwīka ūndū ūhana tarī gūkiyania ndaka īrīa ī ho; aria ūhoro ūbatiī kwario na ūgī ūtarī na ūgereki","desc3":""},{"title":"tene","desc1":"","desc2":"matukū maingī mahītūku","desc3":""},{"title":"tene na tene","desc1":"","desc2":"mahinda marīa mothe magoka","desc3":""},
        {
          "title":"teng'era",
          "desc1":"",
          "desc2":"thiī na ihenya rīnene",
          "desc3":""
        },
        {
          "title":"teng´ūra",
          "desc1":"",
          "desc2":"eheria kīndū kīhagīre riko mwaki-inī",
          "desc3":""
        },
        {"title":"tengemana","desc1":"","desc2":"kīndū gīkwīhandīte kūgūa thī mu","desc3":""},{"title":"tengemania","desc1":"","desc2":"gūithania thī","desc3":""},{"title":"terema","desc1":"","desc2":"gera handū ūkīrangaga indo irīa iho igathūkanga mūhano: njogu iraire igīterema mūgūnda ciathūkia irio ciothe","desc3":""},{"title":"tereta","desc1":"","desc2":"arīrīria ūhoro mūna","desc3":""},{"title":"teta","desc1":"","desc2":"tarīria ūrīa ūrenda na ūrīa ūtarenda igūrū rīa ūndū ūtaiganīire naguo","desc3":""},{"title":"tetema","desc1":"","desc2":"inaina ","desc3":""},{"title":"tha","desc1":"","desc2":"makĩra: ũhoro wa gwĩciria na meciria mega ma kũguna","desc3":""},{"title":"thaa","desc1":"","desc2":"kīgeri kīa mahinda; ihinda rīgeretwo na thaa","desc3":""},{"title":"thaaha","desc1":"","desc2":"ūhoti ūrīa ūtūmaga nyamū ikūrane kīndū kīhakuhī kana kīhītūkīire handū ikīhūthīra maniūrū kana kanua mūhano: mūrūthi wī thaaha nīkīo ūhotaga kūrūmīrīra thiya kinya kūrīa irī ; kīrīa nyamū īiguaga na maniūrū kana kanua nīguo īmenye kīndū kī hakuhī kana kīhītūkīire handū mūhano: ngui ciaigua thaaha wa ngarī nī kūūra ciūraga","desc3":""},{"title":"thaara","desc1":"","desc2":"mahuti mahana igūa maheagwo nyamū ta ng'ombe","desc3":""},{"title":"thaata","desc1":"","desc2":"mūndū kana nyamū gūtuīka atī ndangīciara rīngī; irio ikūhagīrītwo riko gūkorwo itingīhīa rīngī ona ingīakīrīrio nī ūndū nī ihoreirwo nī mwaki ihinda iraihu; ūndū ūkūharagīrīrio kana uma njīra-inī ya kwagīrīra kūharagana ūgakorwo ndūngīrīkīrīra wega","desc3":""},{"title":"thaata","desc1":"","desc2":"mūndū kana nyamū ītangīciara","desc3":""},{"title":"thaathara","desc1":"","desc2":"thegea","desc3":""},{"title":"thabai","desc1":"","desc2":"mahuti ma gītahaka me rwamba rūcinaga mūndū amahutia","desc3":""},{"title":"thaga","desc1":"","desc2":"Hagarania cuma nĩguo cikaranĩre kana itonyane wega; humba mathaga","desc3":""},{"title":"thagana","desc1":"","desc2":"uma ugacemanie na mūndū ūroka kūrī we","desc3":""},{"title":"thagathaga","desc1":"","desc2":"harīrīria","desc3":""},{"title":"thagathagia","desc1":"","desc2":"agithia thayū","desc3":""},{"title":"thaha","desc1":"","desc2":"korwo ūtarī mūkinyanīru nī gūkorwo unīte mīgiro","desc3":""},{"title":"thahabu","desc1":"","desc2":"Kiswahili thahabu","desc3":""},
        {
          "title":"thahia",
          "desc1":"",
          "desc2":"tūma kīndū kana mūndū athahe",
          "desc3":""
        },
        {
          "title":"thaha",
          "desc1":"",
          "desc2":"nyitwo nī thahu ūkorwo ūtarī mūkinyanīru kana mwagīrīru gūtukana na andū kana kūhutania na indo nyamūrīre ūndū mūna nī ūndū wa gwīthūkia na ciīko irīa itagīrīire kana kūgwatwo nī wathe mūna ūrīa wonagwo ūtarī mwagīrīru ūndū-inī mūna mūhano: ūngīhutia kīimba nī wa thaha na ndūngītonya igongona-inī",
          "desc3":""
        },
        {
          "title":"thahu",
          "desc1":"",
          "desc2":"ūndū ūrīa wonagwo wī gīko gīa gūthūkia mūndū agakorwo atarī mūkinyanīru kana arī mwīhia mūhano: mūtumia e ihinda-inī rīake rīa mweri akoragwo arī na thahu wa thakame ya mweri na ti mwīhia no mūndū ūraganīte akoragwo arī na thahu wa gīkuū na nī wīhia mūnene",
          "desc3":""
        },
        {
          "title":"thaitha",
          "desc1":"",
          "desc2":"arīria na ūhoreri nīguo wītīkīrīke ūrīa ūroiga; thuthīra",
          "desc3":""
        },
        {
          "title":"thaitīra",
          "desc1":"",
          "desc2":"tangikira",
          "desc3":""
        },
        {"title":"thakame","desc1":"","desc2":"kīndū gītweku gītunīhīrīru gīkoragwo mīīri-inī ya nyamū na andũ gīthereraga mīkiha-inī","desc3":""},{"title":"thama","desc1":"","desc2":"uma harīa ūtūire ūthiī handū hangī ūgatūre ho","desc3":""},{"title":"thama","desc1":"","desc2":"rūgendo rwa andū kana nyamū ikiuma gītūūro gīacio igathondeke kīngī","desc3":""},{"title":"thamaka","desc1":"","desc2":"toria ūndū ūwathe; atha andū ūrī ta mūtongoria wao","desc3":""},{"title":"thambara","desc1":"","desc2":"kīūmbe gīkoragwo maī-inī ma kwaraha kīrūmaga nyamū kana andū gīkamanyua thakame","desc3":""},{"title":"thambia","desc1":"","desc2":"thondeka kīndū gīthere","desc3":""},{"title":"thambīra","desc1":"","desc2":"thiīra maī-inī ta kīūngūyū","desc3":""},{"title":"thambīri","desc1":"","desc2":"ciumbe irĩa itũraga maĩ-inĩ igathambagĩra kuo","desc3":""},{"title":"thambo","desc1":"","desc2":"ciũmbe ihana thigiriri ciakaga itara mĩtĩ-inĩ na nĩ irũmaga mũndũ angĩhutania na cio","desc3":""},{"title":"thanda","desc1":"","desc2":"maciaro ma mīmera īmwe kaingī ya mĩhĩrĩga wa nyeki ta mbembe kana mīhīrīga īngī ta mboco marīa makoragwo menyitīrīire handū na mathandūragwo kana makoūo, magathīo kana makarīo o ūguo; tūcere tūūmū twatūrītwo handū ta ihiga-inī","desc3":""},{"title":"thandana","desc1":"","desc2":"mbura kura nene mūno; andū kūrūa mbara nene","desc3":""},{"title":"thandī","desc1":"","desc2":"ndathī: njarīka cia mwaki ciumbūkaga igīakanaga","desc3":""},{"title":"thandūra","desc1":"","desc2":"ruta thanda harīa ciīnyitīrīire","desc3":""},
        {
          "title":"thang'ata",
          "desc1":"",
          "desc2":"ambata",
          "desc3":""
        },
        {
          "title":"thango",
          "desc1":"",
          "desc2":"ngomanio ya andū mataruīte",
          "desc3":""
        },
        {"title":"thani","desc1":"","desc2":"kiswahili sahani; handū hakūihūrīrwo irio,(Gĩkũyũ-inĩ irio cihũragĩrwo kĩihũri-inĩ)","desc3":""},
        {
          "title":"thano",
          "desc1":"",
          "desc2":"Kĩmera kĩrĩa gĩkoragwo na heho kwanjia mweri wa Kĩhu kinya Muoria nyoni kunanīra ciara rūhī-inī gītumbī kiumīrīire gatagatī ka mūruna na mūhīko",
          "desc3":""
        },
        {
          "title":"thara",
          "desc1":"",
          "desc2":"huria kīndū na ihenya ūngī atanakīoya mbere yaku; honokia kīndū ūgwati-inī ūrahanīka mūhano: nyūmba ya gwata mwaki marahotire o gūthara tūindo tūnini mwaki ūramakīria hinya",
          "desc3":""
        },
        {
          "title":"tharania",
          "desc1":"",
          "desc2":"gīa na ngwatanīro ya ūrīrī na mūka wene",
          "desc3":""
        },
        {"title":"thari","desc1":"","desc2":"honge cia mūtī i na mahuti; kwīgutha kūrīa mūndū kana nyamū īguthaga īgīkua","desc3":""},
        {
          "title":"tharia",
          "desc1":"",
          "desc2":"momora kīndū gīake; tharania",
          "desc3":""
        },
        {
          "title":"thathaiya",
          "desc1":"",
          "desc2":"arīria Ngai na ciugo cia kūmūkumia na kūmūthaitha",
          "desc3":""
        },
        {"title":"thathaūra","desc1":"","desc2":"munya indo imerete handū hamwe ūcihande itaganīte; tarīria ūndū nīguo ūtaūkīke na ūhūthū","desc3":""},{"title":"thathaya","desc1":"","desc2":"hutia na ūbacīrīri ","desc3":""},{"title":"thathi","desc1":"","desc2":"maī matherūkanīirio na mahīndī kana nyama","desc3":""},
        {
          "title":"thatia",
          "desc1":"",
          "desc2":"tūma kīndū gīthate",
          "desc3":""
        },
        {
          "title":"thatīkīra",
          "desc1":"",
          "desc2":"thaitīra",
          "desc3":""
        },
        {"title":"thaūra","desc1":"","desc2":"aūra mūrigo","desc3":""},{"title":"thayū","desc1":"","desc2":"ūhoro wa gūkorwo gūtarī na ūūru o wothe: ūiguano gūkorwo kuo","desc3":""},{"title":"theca","desc1":"","desc2":"turuma handū na kīndū kīna mūthia ūngīhatonya thīiniī","desc3":""},{"title":"theegi","desc1":"matheegi","desc2":"harĩa haigagwo irio hĩu na itarĩ hĩu nyũmba thĩinĩ","desc3":""},
        {
          "title":"thegea",
          "desc1":"",
          "desc2":"therema; mwaki gwīcokanīrīria ūkagwata",
          "desc3":""
        },
        {
          "title":"thegemia",
          "desc1":"",
          "desc2":"tūma kīndū kīongerereke mūhano: mbūri ya gūthegemia ihu īrutagwo nīguo mūirītu arere ihu kinya rīigane atanaracīrio",
          "desc3":""
        },
        {"title":"thegere","desc1":"","desc2":"Nyamũ ya gĩthaka njirũ ĩ rũnyaga rwerũ ng'ong'o-inĩ wayũ ĩ ngumo ya gũthũkia mĩatũ ĩrĩe ũkĩ na nĩ ĩrutaga mũhera mũru mũno","desc3":""},{"title":"thegethege","desc1":"","desc2":"ngaracū hūthū itangīakia mwaki mwega; Kĩndũ ũro ũguo gĩta ngĩguna ona atĩa","desc3":""},{"title":"thegū","desc1":"","desc2":"gītete gīa gwīkīrwo maī","desc3":""},{"title":"theka","desc1":"","desc2":"mūgambo ūrīa mūndū arutaga kuonania gūkena ","desc3":""},
        {
          "title":"thekerera",
          "desc1":"",
          "desc2":"theka nī kuona ūndū wa gūtūma mūndū atheke harī mūndū ūngī; arīrīria thīna wa mūndū ūngī ūtarī na tha nake tarī mwago-inī arī",
          "desc3":""
        },
        {
          "title":"themba",
          "desc1":"",
          "desc2":"tuga na iheo cia irio, njohi na indo ingī ta icio kūrī irui kana ciumīri",
          "desc3":""
        },
        {
          "title":"themithū",
          "desc1":"",
          "desc2":"kĩmera kĩrĩa gĩkoragwo na ũrugarĩ kwanjia mweri wa mũgaa wa merĩ kinya mũgetho",
          "desc3":""
        },
        {
          "title":"thende",
          "desc1":"",
          "desc2":"njikarīro cia mūndūrūme",
          "desc3":""
        },
        {
          "title":"thendema",
          "desc1":"",
          "desc2":"ikara mwamū na arīa angī: ikara nja wa mūhari warītwo",
          "desc3":""
        },
        {"title":"thendũka","desc1":"","desc2":"mūtī gūikia tūcunjī twaguo rīrīa ūratemwo","desc3":""},{"title":"thenga","desc1":"","desc2":"ehera","desc3":""},{"title":"thenge","desc1":"","desc2":"mbūri ya njamba ya mūhīrīga wa mūgoma","desc3":""},{"title":"thengerera","desc1":"","desc2":"kuhīrīria","desc3":""},
        {
          "title":"thenya",
          "desc1":"mathenya",
          "desc2":"mīanya ītigītio nī kwaga kūnyitithania kīndū kīrīa kī hau mūhano: mwaki ūtarī thenya ndūninaga ndogo",
          "desc3":""
        },
        {
          "title":"therema",
          "desc1":"",
          "desc2":"gacīra maūndū-inī ūingīhīrwo nī kīrīa wī na kīo; kīndū kana ūndū gūthiī kīnenehete mūhano: kīronda kīu kīrathiī gītheremete gīkaneneha ūūru mūno",
          "desc3":""
        },
        {"title":"therera","desc1":"","desc2":"kīndū gītweku gūthiī gītwarīte: mūhano; etema thakame īrathereraga ta maī ma rūī:taūkīka: mūhano: ndeto īyo īramūthereire atarīrio wega","desc3":""},{"title":"thetha","desc1":"","desc2":"īka ūndū ūhana ta ūrendera mūndū kana ūndū mūna maūrū mūhano: tene andū metīkītie atī ndundu kūrīrīra gwaku nja ūtukū īragūthetha ūkue","desc3":""},{"title":"thethera","desc1":"","desc2":"unanga tarī kūmumuthūra","desc3":""},{"title":"thethūka","desc1":"","desc2":"noga nī gweterera","desc3":""},{"title":"thethūra","desc1":"","desc2":"ūria mūndū wetereire akinyīte kū; ūria mūndū ūndū ūrīa areka watigia ha ūrīke thutha wake gūtūra mūno atarīkītie; thathaūra indo imerete hamwe ","desc3":""},{"title":"theūka","desc1":"","desc2":"thakara gūkīra ūrīa ūrarī mbere: gīa na riri ūtararī naguo mbere-inī; erūha","desc3":""},{"title":"theūra","desc1":"","desc2":"tūma kīndū gītheūke","desc3":""},{"title":"thī","desc1":"","desc2":"mūhuro wa riūa kūrīa andū, nyamū na mīmera matūūraga; handū hatarī igūrū","desc3":""},
        {
          "title":"thīa",
          "desc1":"",
          "desc2":"ūraganga kīndū gītuīke mūtutu",
          "desc3":""
        },

        {
          "title":"thīa",
          "desc1":"",
          "desc2":"rũthĩa",
          "desc3":""
        },
        {
          "title":"thiaka",
          "desc1":"",
          "desc2":"mondo wa gūkuīra mīguiī",
          "desc3":""
        },
        {"title":"thiari","desc1":"","desc2":"rĩtwa rĩtanagwo nĩ anake maruĩte rika rĩmwe","desc3":""}, {"title":"thiarĩ","desc1":"","desc2":"njũgũma","desc3":""},{"title":"thiaya","desc1":"","desc2":"kahora ga gwīka maūndū","desc3":""},{"title":"thibitarī","desc1":"","desc2":"kūndū gūthondeketwo arwaru marigitagīrwo kuo","desc3":""},{"title":"thica","desc1":"","desc2":"mūndūrūme kūgīa ngwatanīro ya ūrīrī na mūndū-mūka","desc3":""},{"title":"thicwo","desc1":"","desc2":"mūndū-mūka kūgīa ngwatanīro ya ūrīrī na mūndūrūme","desc3":""},
        {
          "title":"thiea",
          "desc1":"",
          "desc2":"thiaya",
          "desc3":""
        },
        {
          "title":"thigana",
          "desc1":"",
          "desc2":"tuīria handū na hitho ta ūrīa thū īkaga nīguo īhobanīrie",
          "desc3":""
        },
        {"title":"thigari","desc1":"mūthigari","desc2":"mūthigari","desc3":""},{"title":"thīgia","desc1":"","desc2":"geria gwīka ūndū","desc3":""},{"title":"thigina","desc1":"","desc2":"thithina: uma maī mwīrī-inī, moimagīra rūa-inī, nī ūndū wa ūrugarī kana gwīka ūndū ūratūma mwīrī ūhiūhe; ruta wīra","desc3":""},{"title":"thigino","desc1":"","desc2":"maī marīa moimaga mūndū athigina; indo irīa mūndū egwatīire thutha wa kūruta wīra wake","desc3":""},{"title":"thigiriri","desc1":"","desc2":"tũtambi tũthiagĩra thĩ na magũrũ matandatũ tũirũ na tũikara tũrima-inĩ twenjete","desc3":""},{"title":"thiī","desc1":"","desc2":"wītware na magūrū; uma harīa ūrī werekere handū hana","desc3":""},{"title":"thiīka","desc1":"","desc2":"korwo gatagatī ga kīndū na ūrīa ūkīrorete ūtūme age gūkiona","desc3":""},{"title":"thīiniī","desc1":"","desc2":"handū hatarī nja: handū harīa nīguo ūkinye ho nī kinya ūtonye","desc3":""},{"title":"thiithi","desc1":"mathiithi","desc2":"ūthiū-inī gatagatī wa maitho na harīa njuīrī ya mūtwe īkinyaga","desc3":""},{"title":"thika","desc1":"","desc2":"ikia kīndū irima ūcoke ūrīkīre tīri kana kīndū kĩngĩiyũria irima rīu","desc3":""},{"title":"thikīra","desc1":"","desc2":"thikīrīra; ikara ta wī na ihoru mūhano: nīkīī Kīūni wethikīra?","desc3":""},{"title":"thikīrīria","desc1":"","desc2":"horera ūigue na matū","desc3":""},
        {
          "title":"thikīrīrio",
          "desc1":"",
          "desc2":"gatagatī wa ihīndī rīa ikai na harīa njuīrī īkinyaga mbere wa gūtū",
          "desc3":""
        },
        {
          "title":"thima",
          "desc1":"",
          "desc2":"Kiswahili pima gera; zima horia",
          "desc3":""
        },
        {
          "title":"thima",
          "desc1":"",
          "desc2":"aria na thimo",
          "desc3":""
        },
        {
          "title":"thima",
          "desc1":"",
          "desc2":"no ningī (kuonania kūiganīra na ūndū ūcio o ūrīa ūrī) mūhano:ūmūthī nī wacererwo mūno; thima nī ūranjīrīte ndūgūkinya tene",
          "desc3":""
        },
        {
          "title":"thiminda",
          "desc1":"",
          "desc2":"thiriminda",
          "desc3":""
        },
       {"title":"thimū","desc1":"","desc2":"mūngūriū: kīndū kīhūthagīrwo kwaranīria na andū me kūraya gītūmaga na gīkamūkīra mīgambo na ndūmīrīri nyandīke o ciaikio","desc3":""},{"title":"thīna","desc1":"","desc2":"giīka: thumbūka; thirīrwo nī ūtonga;","desc3":""},{"title":"thīna","desc1":"","desc2":"ūndū ūrakūgia; waagi; mũmera wa ngoikoni, ũtarĩ mahuti na mĩri ũkaraga ũtambĩte igũrũ rĩa mĩmera ĩngĩ","desc3":""},{"title":"thing'a","desc1":"","desc2":"kīndū kīrathiī kana gīgeka ūndū mūna kūnyita mayū ma kūwīka Gīthūngū: momentum","desc3":""},{"title":"thing'ĩrĩria","desc1":"","desc2":"thinīkīra","desc3":""},{"title":"thinga","desc1":"","desc2":"hinga mwanya wī handū ta rūthingo-inī; aka nyūmba ya ndoro;","desc3":""},{"title":"thingi","desc1":"","desc2":"mūirītu ūtarī wakomwo nake nī mūndūrūme","desc3":""},{"title":"thingira","desc1":"","desc2":"gīikaro kīa mūthuri (kīa mūtumia nī nyūmba)","desc3":""},{"title":"thingo","desc1":"rūthingo","desc2":"rūthingo","desc3":""},{"title":"thīnia","desc1":"","desc2":"thumbūra; cūngīrīria gūthīna","desc3":""},{"title":"thinīkania","desc1":"","desc2":"īka mūndū ūndū wa kūmūhatīrīria wagīte ona kūmūrūmbūiya; thinĩkĩra kĩndũ handũ ũtarĩ na ũbacĩrĩri","desc3":""},{"title":"thinīkīra","desc1":"","desc2":"tindīkīrīria kīndū kīingīre handū hakunderu","desc3":""},
        {
         "title":"thīnja",
          "desc1":"",
          "desc2":"ūraga nyamū nīguo yume nyama cia kūrīo; rigita na njīra ya gūtema ciīga na ūgī wa ūrigiti",
          "desc3":""
        },
        {
          "title":"thinwa",
          "desc1":"",
          "desc2":"nyamū ya gīthaka ndara-gīthaka, ī mīguongo īrī gatagatī ka ūthiū wayo rūgongo rwa maniūrū",
          "desc3":""
        },
        {
          "title":"thinye",
          "desc1":"",
          "desc2":"njūgitano: ūgiti",
          "desc3":""
        },
        {
          "title":"thiota",
          "desc1":"",
          "desc2":"ūrugarī ūrīa ūkoragwo mūhu-inī ūtarī na mwaki kana ūrīa umaga maī-inī maratherūka makunīkīirio ūkombūka makunūrwo",
          "desc3":""
        },
        {"title":"thira","desc1":"","desc2":"hūthīka kinya kīndū kīa mūico na hatitigare kīndū; kinya mūthia","desc3":""},{"title":"thirikari","desc1":"","desc2":"Kiswahili: serikali wathani ūrīa wathaga būrūri kana gīcigo gīkūraine kīa būrūri","desc3":""},{"title":"thirīkia","desc1":"","desc2":"rakaria nī gūtinda ūgīcokera ūndū ūtarakenia mūndū ","desc3":""},
        {
          "title":"thirima",
          "desc1":"",
          "desc2":"haka handū kīndū nī ũkĩhĩtũkĩria rūhī ho ūgīcokerithagia",
          "desc3":""
        },
        {
          "title":"thiriminda",
          "desc1":"",
          "desc2":"nyorokia handū na kīndū gīkūmanīrīra ho",
          "desc3":""
        },
        {"title":"thirĩra","desc1":"","desc2":"aga kuonwo nī ūndū wagūkorwo ūingīrīte handū","desc3":""},{"title":"thiririma","desc1":"","desc2":"thirima","desc3":""},{"title":"thiritū","desc1":"","desc2":"arīa matwaranaga na mageka maūndū hamwe; arata","desc3":""},{"title":"thita","desc1":"","desc2":"mūrimū ūnyitaga ciara wī ruo mūno ūtūmaga igīe mahira hakuhī na ndwara","desc3":""},{"title":"thita","desc1":"","desc2":"uga mūndū nīekīte ūūru kūrī mūndū ūngīhota kūmūcirithia","desc3":""},{"title":"thithi","desc1":"","desc2":"mwīrī kūhutio kana kwegekwo mwene akaigua ataiganīire ona rīngī akaigua gūtheka; kwaga kūgucīrīrio nī kīndū gītarī kīega ūkaigua ona ndūngīenda kūhutania nakio","desc3":""},{"title":"thithino","desc1":"","desc2":"thigino","desc3":""},{"title":"thitima","desc1":"","desc2":"Kiswahili: sitima hinya ūrurumūragwo kuma maūndū matūrigicīirie ūkahūthīrwo gwakia kana gūtwarithia indo ta ngari","desc3":""},{"title":"thiūkūra","desc1":"","desc2":"tiga gūthiīka","desc3":""},{"title":"thiūrūrūka","desc1":"","desc2":"thiī na mūthiīre ūhana tarī gīthiūrūrī; coora handū hamwe","desc3":""},{"title":"thiūrūrūkīria","desc1":"","desc2":"rigicīria; rigica","desc3":""},{"title":"thiya","desc1":"","desc2":"nyamū ya gīthaka ya mūhīrīga wa mbūri ūkuhīrīirie mūno kūhana mūgoma","desc3":""},{"title":"thoga","desc1":"","desc2":"īka ūndū ūtarī na kīguni wa gūthūkia mūhano: mwīkūīrwo nīwe ūrerīkana wa thoga thayū acūngīrīria ngūī mūcemanio-inī","desc3":""},{"title":"thogonda","desc1":"","desc2":"thoronja","desc3":""},{"title":"thogondania","desc1":"","desc2":"rigicania ndeto ciage gūtaūkīka wega; thombocania","desc3":""},{"title":"thogonja","desc1":"","desc2":"thoronja","desc3":""},{"title":"thogora","desc1":"","desc2":"mūigana wa kīndū kīrīa ūbatiī kūrīha nīguo wīgwatīre kīndū kīngī kana ūndū mūna mūhano: thogora wa wīyathi wa būrūri witū nī thakame na thithino ya maithe maitū","desc3":""},{"title":"thogotha","desc1":"","desc2":"ikia kīndū handū ūgīkīrutaga ihenyaihenya: thombotha","desc3":""},{"title":"thogothogo","desc1":"","desc2":"ngūī: njūkanīrīro: inegene rīa ngarari","desc3":""},{"title":"thokia","desc1":"","desc2":"gemia","desc3":""},{"title":"thombotha","desc1":"","desc2":"thogotha handū he na irima","desc3":""},{"title":"thongo","desc1":"","desc2":"wa ritho rīmwe","desc3":""},{"title":"thoni","desc1":"","desc2":"ūhoro wa kūigua ūtekwenda kuonwo nī andū kana kūrūgama mbere yao","desc3":""},{"title":"thonja","desc1":"","desc2":"negena na igene tarī kugīrīria hatarī na ūndū mūna ūroiga","desc3":""},{"title":"thonjo","desc1":"","desc2":"nyoni ya ngoikoni mwīrī wayo yakaga itara ciayo icunjurīte mītī-inī na nī ithonjaga mūno rīrīa irī itara-inī ciacio","desc3":""},{"title":"thora","desc1":"","desc2":"kūrūta kīndū kīnyitīrīire handū, ta nyama mahīndī-inī, ũkĩhũthĩra kĩndũ ta kahiũ nīguo ūkīrute","desc3":""},{"title":"thoria","desc1":"","desc2":"thīnia mūndū kana nyamū īhorereire","desc3":""},{"title":"thoronja","desc1":"","desc2":"kūnja kīndū ūgīkīogothaga: thogonja: thogonda","desc3":""},{"title":"thū","desc1":"","desc2":"ūrīa ūgūthugundīire ūūru","desc3":""},{"title":"thua","desc1":"","desc2":"thiī ūgīkinyūkagia ta ūtarenda gūkinyithia kūgūrū thī ūgakorwo ūgīcuhīrīra kūmwe: thiī ūtegūkinyithia magūrū merī thī ūcuhīrīire kīndū","desc3":""},{"title":"thūa","desc1":"","desc2":"riūa gūthiī nduma īkaingīra; kūharahara na ndwara ūbacīrīire: ūndū ūngī ūhana ta ūguo","desc3":""},{"title":"thugathuga","desc1":"","desc2":"thukathukia kīndū; inainia","desc3":""},{"title":"thūgūrī","desc1":"","desc2":"wendia na ūgūri wa indo","desc3":""},{"title":"thuka","desc1":"","desc2":"heana kīndū kumana na ūtana waku; mbembe kūrūta kīro gīacio","desc3":""},{"title":"thūka","desc1":"","desc2":"tiga gūkorwo ūrī mwega; kīndū gūtiga gūkorwo kīrī kīega","desc3":""},{"title":"thukia","desc1":"","desc2":"oya kīndū tarī kūgera ūragera ūritu wakīo","desc3":""},{"title":"thūkia","desc1":"","desc2":"cūngīrīria gūthūka","desc3":""},{"title":"thūkīrīria","desc1":"","desc2":"menithīrīria","desc3":""},{"title":"thukuru","desc1":"","desc2":"English: school handū hathondeketwo andū magathiaga ho kūrutwo kana gūtonywo maūndū","desc3":""},
        {"title":"thūmbī","desc1":"","desc2":"ithaga rīkagīrwo kīongo rīa kuonania ūnene kana ūkinyanīru mūna","desc3":""},{"title":"thumu","desc1":"","desc2":"kīndū gīitagwo mūgūnda gīa kūnoria tīīri ta mbimbi cia mbūri","desc3":""},{"title":"thuna","desc1":"","desc2":"kūnja: unanīra","desc3":""},{"title":"thundūra","desc1":"","desc2":"rugūria ūndū mwerū ūtarī wakorwo kuo mbere īyo","desc3":""},{"title":"thūng'wa","desc1":"","desc2":"ihīnda rīrīa rīgathīkanagia irūngo rīa ikinya na mūthirimo","desc3":""},{"title":"thūnga","desc1":"","desc2":"cokanīrīra ūharīrīke gwīka ūndū mūna mūhano: matu no marathūnga mbura nī ī kura","desc3":""},{"title":"thungana","desc1":"","desc2":"tumana","desc3":""},{"title":"thungara","desc1":"","desc2":"kinyanīra; agīrīra","desc3":""},{"title":"thūngūri","desc1":"","desc2":"wūimbo wī kīongo-inī","desc3":""},{"title":"thunguruma","desc1":"","desc2":"rarama","desc3":""},
        {
          "title":"thūngūrūrū",
          "desc1":"",
          "desc2":"nyoni njirū ī mītūkī mīhiū ya kūmbūka, kaingī yumagīra hwaī-inī gūtanagīa mairia mbura īkīenda kuura na yakaga gītara kīayo mahiga-inī na ndoro",
          "desc3":""
        },
        {
          "title":"thūngūtha",
          "desc1":"",
          "desc2":"īinia mwīrī ta ūrīa andū mekaga makīigua nyīmbo",
          "desc3":""
        },
        {
          "title":"thūngūthia",
          "desc1":"",
          "desc2":"inainia; rehera guoya na kīmako",
          "desc3":""
        },
        {"title":"thūnū","desc1":"","desc2":"njikarīro","desc3":""},{"title":"thūrima","desc1":"","desc2":"wīrorere ūndū ūkīūtuīria","desc3":""},
        {
          "title":"thutha",
          "desc1":"",
          "desc2":"mwena ūyū ūngī tiga wa mbere ūrīa ūthiū ūtarī; ūrīa wekīka rīrīa ūngī ūrīkītie kūhanīka; harīa ūrīa ūrūmīrīire ūngī arī",
          "desc3":""
        },
        {
          "title":"thuthi",
          "desc1":"",
          "desc2":"memenyi",
          "desc3":""
        },
        {"title":"thuthi","desc1":"","desc2":"","desc3":""},{"title":"thuthīka","desc1":"","desc2":"mumuthūka; cucīka","desc3":""},{"title":"thuthīra","desc1":"","desc2":"horeria","desc3":""},{"title":"thuthuria","desc1":"","desc2":"tuīria","desc3":""},{"title":"thuti","desc1":"","desc2":"matonyo mehumbītwo mahanaine: itonyo rītumītwo rīhanaine ","desc3":""},{"title":"thuti","desc1":"","desc2":"merirīria ma kīndū ūtarī nakīo ta irio: njerūa","desc3":""},{"title":"thuuna","desc1":"","desc2":"mīmera īrathundūka harī ūngī mūnene","desc3":""},
        {
          "title":"thuya",
          "desc1":"",
          "desc2":"karūgi kanyuaga nyamū na andū thakame",
          "desc3":""
        },
        {
          "title":"thūya",
          "desc1":"",
          "desc2":"matha ūkī wa njūkī kuma harīa njūki ci wūigīte ta mwatū-inī kana mahiga-inī",
          "desc3":""
        },
        {
          "title":"ti",
          "desc1":"",
          "desc2":"kiugo kīhūthagīrwo kūgweta mūthuri na rītwa rīake ūtekūmūtengūra mūhano: mūthuri ti Kamarū wa Wanjirū nī atirīrīire andū aingī mūno makīrera wūini-inī",
          "desc3":""
        },
        {"title":"ti","desc1":"","desc2":"kiugo gīa kūrega mūhano: nī we watūmwo ? Aca ti niī.","desc3":""},{"title":"tibii","desc1":"","desc2":"English kindū gīthondeketwo gī gīa kūmemerekia mbica na mīgambo","desc3":""},
        {
          "title":"tibīri",
          "desc1":"",
          "desc2":"ūgacīru",
          "desc3":""
        },
        {
          "title":"ticūka",
          "desc1":"",
          "desc2":"rūgīra kīndū o rīmwe na mītūkī",
          "desc3":""
        },
        {"title":"tiga","desc1":"","desc2":"aga gwīka ūndū ūrekaga na ndūcoke kūwīka rīngī; ehera handū na ndūkue kīndū uma nakīo","desc3":""},{"title":"tiga","desc1":"","desc2":"kiugo gīa kuga to kīrīa kīho he na kīngī","desc3":""},{"title":"tigania","desc1":"","desc2":"uma handū ūtige kīndū ho ūtarī na wūigīrīrīki","desc3":""},{"title":"tiganīria","desc1":"","desc2":"rekereria kīndū, mūndū kana ūndū ūbatiī gūtungata","desc3":""},{"title":"tigara","desc1":"","desc2":"aga gūthira","desc3":""},{"title":"tigithia","desc1":"","desc2":"rūgamia nyamū kana mūndū gwīka ūndū aratūire ekaga mūhano: nīkīī wa tigithia mwana kuonga?","desc3":""},{"title":"tiha","desc1":"","desc2":"tuĩra njohi kana mata ĩ njĩra ya kũrathima;mũthiĩre ta wa nyamũ ũrĩa irũgaga nĩ gũkena kana kuonania hinya wa cio mũhano: menyerera ndegwa ĩyo nĩ ĩkũringe ũguo yatiha","desc3":""},{"title":"tiira","desc1":"","desc2":"nyitīrīra kīndū na kīndū kīngī nīguo gītikagwe kana kīiname mūno; tungatīra kīrui","desc3":""},{"title":"tīmīra","desc1":"","desc2":"tithia; rūgamīra handū hana","desc3":""},{"title":"tinda","desc1":"","desc2":"korwo handu hana mahinda maingī; ikara mūno ūngīgakinya","desc3":""},{"title":"tindima","desc1":"","desc2":"inama","desc3":""},{"title":"tindirūka","desc1":"","desc2":"nyororoka hanini handū hainamu ","desc3":""},{"title":"tinia","desc1":"","desc2":"renga kīndū gītigithūkane","desc3":""},{"title":"tīnīka","desc1":"","desc2":"ikara thī tīri-inī","desc3":""},{"title":"tinio","desc1":"","desc2":"rengwo handū harekanie","desc3":""},{"title":"tira","desc1":"","desc2":"hītia kūgūtha kīndū ūkwendaga kūgūtha","desc3":""},{"title":"tirania","desc1":"","desc2":"rūgamia kīndū kīnyitīrīirwo nī handū harūgamu hehandīte","desc3":""},{"title":"tīri","desc1":"","desc2":"kīrīa gīkoragwo thī kīhandagīrīrwo irio na nīkīo mīmera īnyitagīrīra nīguo īgakūra","desc3":""},{"title":"tirīrīra","desc1":"","desc2":"nyitīrīra kīndū kana mūndū ūtarī na hinya wa kwīrūgamia;teithĩrĩria mũndũ hĩndĩ ya thĩna","desc3":""},{"title":"tithia","desc1":"","desc2":"rūgama hanini ūcoke ūthiī na mbere","desc3":""},{"title":"to","desc1":"","desc2":"kiuga gīa gūkararia kuga harī na kīngī, ūngī, hangī kana ūndū ūngī ta ūcio mūhano:Kaniū towe ūrarīkuo, ona Mūniū nī arokīte; kiugo gīa kuuga kīndū kana handū haihūrīte biū mūhano: nyūmba īkūihūire andū to","desc3":""},
        {
          "title":"to",
          "desc1":"",
          "desc2":"kūiyūra biū",
          "desc3":""
        },
        {
          "title":"tobotobo",
          "desc1":"",
          "desc2":"mūgambo ūrīa ūrutagwo nī kīndū gīgītobatoboka handū he na mūconjo",
          "desc3":""
        },
        {"title":"toca","desc1":"","desc2":"ītia ndoco","desc3":""},{"title":"tocwo","desc1":"","desc2":"rīo mbūri: ītio ndoco","desc3":""},{"title":"togota","desc1":"","desc2":"handū kūhaana ta harabutha, hakanjia kūgīa maī kana mahira ","desc3":""},{"title":"tombo","desc1":"","desc2":"kīndū kīerū kana kīa ngoikoni gīkoragwo kīongo kana thīiniī wa mūtwe na gatagatī ka mahīndī marīa makoragwo na ihoro","desc3":""}, {"title":"toma","desc1":"","desc2":"thira kinya kũhuka","desc3":""},{"title":"tombotha","desc1":"","desc2":"thombotha: thogotha","desc3":""},{"title":"tomoya","desc1":"","desc2":"tungatīra na maūndū makīrūku tarī kūnania","desc3":""},{"title":"tondora","desc1":"","desc2":"hana mūtukanio wa tīri na maī","desc3":""},{"title":"tondoroka","desc1":"","desc2":"tīri kana kīndū kīhana ūguo kūiguithanio na maī ūgatondora biū","desc3":""},{"title":"tondū","desc1":"","desc2":"kiugo kīhūthagīrwo kūheana gītūmi kīa ūndū mūhano: njereirwo tondū ndinahota gūkīra tene","desc3":""},
        {
          "title":"tonga",
          "desc1":"",
          "desc2":"ingīhīrwo nī indo njega",
          "desc3":""
        },
        {
          "title":"tong'a",
          "desc1":"",
          "desc2":"gūtindīka kīndū na mūthia wa kīndū o rīmwe tarī kūgūtha ūrakīgūtha: kanya",
          "desc3":""
        },
        {"title":"tongoria","desc1":"","desc2":"thiī mbere ya andū nīguo makūrūmīrīre: īka ūndū nīguo wonererie andū kūwīka makūrūmīrīire","desc3":""},{"title":"tongororoka","desc1":"","desc2":"tonga biū","desc3":""},{"title":"tonya","desc1":"","desc2":"thiī thīinī wa kīndū kana handū","desc3":""},{"title":"tonyerera","desc1":"","desc2":"tonya kahoora kinya ūthirīre","desc3":""},
        {
          "title":"tooga",
          "desc1":"",
          "desc2":"ruta ndogo",
          "desc3":""
        },
        {
          "title":"toria",
          "desc1":"",
          "desc2":"kīria hinya ūrīa ūkorete ūrūe nake kana ūcindane nake",
          "desc3":""
        },
        {"title":"toro","desc1":"","desc2":"ūhoro wa gūkoma; ūndū ūrīa ūkaga mūndū akaigua gūkoma","desc3":""},
        {
          "title":"tota",
          "desc1":"",
          "desc2":"kīndū gūkorwo gīkīhomboya kīahihinywo; matunda ma mīhīrīga īmwe kwanjia kwīrua",
          "desc3":""
        },
        {
          "title":"tothoka",
          "desc1":"",
          "desc2":"kīndū kīhingīrīirie kīndū kīngī thīinī kūgīa na irima na kīrīa gī thīiniī gīkoimīra ho na hinya mūhano: harīa mūgūnda nī haratothoka maī (kuga maī macio maroima rungu rwa tīīri na hinya makeikia igūrū)",
          "desc3":""
        },
        {"title":"tothora","desc1":"","desc2":"hihinya kīndū gītūrīke kīrīa gī thīiniī gīitīke","desc3":""},{"title":"totia","desc1":"","desc2":"hihahihinya kīndū tarī gūgīthathaya","desc3":""},{"title":"tua","desc1":"","desc2":"ikia kīndū nja wa kanua na njīra ya gūkīhuha; gucia kīndū kīhocereirie handū kīrīa kīhocetie nakīo gītinīke; gucia kīndū gītambūrūku ta rūrigi na hinya kinya kīrengeke;he mũndũ rĩtwa","desc3":""},{"title":"tuanīra","desc1":"","desc2":"gwīkūanīra; iguanĩra mũigana wa indo iria o mũndũ ekũruta ũndũ-inĩ mũna mũhano: andũ othe kĩama-inĩ nĩ maratuanĩire kũruta mbũri ĩmwe o mũndũ nĩ ũndũ wa igongona","desc3":""},{"title":"tuba","desc1":"","desc2":"rika handū he na mūriko ūterīgīrīire o rīmwe; remwo nī gwīka maūndū ūrīa ūtūire ūmekaga nī gūkorwo nī ūndū mūritū ūterīgīrīire","desc3":""},{"title":"tubira","desc1":"","desc2":"tubĩra","desc3":""},{"title":"tuco","desc1":"","desc2":"ciūmba igaītwo na rūthingo ciī thīiniī wa nyūmba Gīthūngū rooms ","desc3":""},{"title":"tuga","desc1":"","desc2":"he mūndū ūgūcereire indo ta irio na indo ingī angīkua athiī na cio","desc3":""},{"title":"tūgūta","desc1":"","desc2":"temenga mīmera mīororo gītina-inī ūkīmīgūithagia","desc3":""},{"title":"tugutania","desc1":"","desc2":"ikania ūgūithie thī","desc3":""},{"title":"tugutūkīra","desc1":"","desc2":"rangīrīria thī na magūrū","desc3":""},{"title":"tuha","desc1":"","desc2":"kĩndũ kĩũgĩ ta rũhiũ gũtiga kũhĩga","desc3":""},{"title":"tūha","desc1":"","desc2":"teng'era ūkīrūgarūgaga nī gīkeno","desc3":""},{"title":"tũhatũha","desc1":"","desc2":"rũgarũga nĩ gĩkeno","desc3":""},{"title":"tuhia","desc1":"","desc2":"tūma kīndū kīnoretwo gīkohīga gītige kūhīga","desc3":""},{"title":"tūhū","desc1":"","desc2":"gītarī kīguni; hatarī thogora","desc3":""},{"title":"tuhũka","desc1":"","desc2":"aria maūndū matarī makwanīrīrwo ūtarī na ūigīrīrīki","desc3":""},{"title":"tuīka","desc1":"","desc2":"kīndū gītambūrūku ta mūkanda gūtinīka; korwo kīndū kīna ūtararī mbere-inī","desc3":""},{"title":"tuīkana","desc1":"","desc2":"kīndū gūtuīka gīgatinīka ūūru; muoyo gūtigana na mwīrī mūndū kana nyamū īgakua","desc3":""},{"title":"tuīra","desc1":"","desc2":"tungatīra mahiū marīaga mahingīrītwo; īciria na woe mūndū ta arī mītugo mīna ona akorwo ndūrī na ūma wa ūndū ūcio; ndundu ya cira kūheana mwerekera ūkoniī mūthitangwo","desc3":""},{"title":"tuĩria","desc1":"","desc2":"thuthuria","desc3":""},{"title":"tuka","desc1":"","desc2":"mūthenya gūthira nduma īkaingīra; gīthiithi kīa mūndū gūikara ta arī mūrakaru","desc3":""},{"title":"tukania","desc1":"","desc2":"turanīra; hīngīca","desc3":""},{"title":"tukanīrwo","desc1":"","desc2":"korwo ūtekūmenya ūrīa ūgwīka; rigwo nī ūndū ūrīkū mwagīrīru","desc3":""},{"title":"tukia","desc1":"","desc2":"kūnja gīthiithi ta wī mūrakaru","desc3":""},{"title":"tukīrīrwo","desc1":"","desc2":"cererwo nduma īgūkorerere handū hana kana ūtarī ūrakinya harīa ūgūthiaga","desc3":""},{"title":"tukithia","desc1":"","desc2":"kinyia ūtukū wī handū hana kana ūgīka ūndū mūna","desc3":""},{"title":"tuma","desc1":"","desc2":"ogothania ndigi ituīke kīndū kana ithinge handū hatarūku","desc3":""},{"title":"tūma","desc1":"","desc2":"cūngīrīria ūndū mūna kūhanīka; īra mūndū athiī handū hana ithenya rīaku","desc3":""},{"title":"tumania","desc1":"","desc2":"iga indo ikuhanĩrĩirie mũno itarĩ ndaganu","desc3":""},{"title":"tūmbatūmbūta","desc1":"","desc2":"tūha","desc3":""},{"title":"tumberia","desc1":"","desc2":"tomoya","desc3":""},{"title":"tumbūka","desc1":"","desc2":"tūrīka nī kūimba","desc3":""},{"title":"tumia","desc1":"","desc2":"hinga kanua: kira","desc3":""},{"title":"tūmīka","desc1":"","desc2":"hūthīka","desc3":""},{"title":"tumīria","desc1":"","desc2":"hingīrīria kīndū kanua thīiniī ūtegūkīmeria; kira na ūhoro ūī","desc3":""},{"title":"tumūra","desc1":"","desc2":"hingūra kīndū kiuma kīhinge; athamia kanua","desc3":""},{"title":"tumwo","desc1":"","desc2":"ogothwo na rūrigi kana kīndū kīngīhūthīka kuogotha","desc3":""},{"title":"tūnda","desc1":"","desc2":"wũimbo ũtarĩ mũnene ũgĩaga mwĩrĩ-inĩ nĩ ũndũ wa gũcũthwo, gũtambwo nĩ kĩndũ ta igunyũ irĩa irĩ rwamba kana ũndũ ũngĩ ta ũcio","desc3":""},{"title":"tunga","desc1":"","desc2":"gucia ūta wī na mūguī wīharīirie kūratha naguo; Kiswahili heana rūgano rwa maūndū matarī mahanīka ta arī maūndū marī ho: andīka rwīmbo kana irebeta","desc3":""},{"title":"tūnga","desc1":"","desc2":"thagana","desc3":""},{"title":"tũngana","desc1":"","desc2":"cemania njīra-inī hatauma na mwīrīgīrīro wa gūcemania; gīa na mūcemanio","desc3":""},{"title":"tūngania","desc1":"","desc2":"cokanīrīria ngū irakana riko mwaki wakane wega","desc3":""},{"title":"tungata","desc1":"","desc2":"teithīrīria; rora kīndū kana mūndū ūmūhingīrie mabataro; rutīra mūndū wīra ūtarī wa marīhi wīyendeire ","desc3":""},{"title":"tungatīra","desc1":"","desc2":"rutīra kīndū wīra nīguo kīagīrīre","desc3":""},{"title":"tunguha","desc1":"","desc2":"mūndū, mūtī, mīri kana matunda kwarama","desc3":""},{"title":"tungumana","desc1":"","desc2":"gūa thī","desc3":""},{"title":"tungurania","desc1":"","desc2":"","desc3":""},{"title":"tunya","desc1":"","desc2":"hũthĩra hinya kwĩgwatĩra indo ciene","desc3":""},{"title":"tuo","desc1":"","desc2":"mūndū gūciara mwana akamūhe rītwa rīaku; kūhe mwana rītwa rīa mūndū mūna; kīndū gīcuhīrīire handū ta itunda kana ihuti kūgucio rīkarekania na harīa rīkwīgwatīrīire; kīndū kūgucio kinya gīgatinīka","desc3":""},{"title":"tuothe","desc1":"","desc2":"tūnyamū tūna hatarī ona kamwe gatarī ho","desc3":""},{"title":"tura","desc1":"","desc2":"gūthagūtha kīndū nīguo gītuīke ūrīa ūrenda; kinya mūthia hatarī na umithio ūrīa ūkwīrīgīrīirwo","desc3":""},{"title":"tūra","desc1":"","desc2":"ikara mūno; ikara kinya ihinda rīna","desc3":""},{"title":"turama","desc1":"","desc2":"mūndū-wa-nja gūikara atarī na kīharīro agatagania magūrū ciīga ciake cia hitho ikoneka: teng'ūka","desc3":""},{"title":"turanīra","desc1":"","desc2":"onganīrīria; iga hamwe","desc3":""},{"title":"turia","desc1":"","desc2":"turia maru\/ndu kūnja magūrū ūtirīrīrwo nī maru maku; kinya mũthia ũtonete kĩrĩa ũkwendaga","desc3":""},{"title":"tūria","desc1":"","desc2":"menyerera kīndū gītūre","desc3":""},{"title":"tūrīka","desc1":"","desc2":"kīndū gīkīrītwo kīndū thīiniī gīkahingīrwo ho gwatūka nīgūtindīkwo nī kīrīa kīhingīire; ītīya","desc3":""},{"title":"turīra","desc1":"","desc2":"njīra mūndū ekūrūmīrīire gūkinya mūthia ītamūkinyītie kūrīa egūthiaga ","desc3":""},{"title":"turũkia","desc1":"","desc2":"gūthiī ūgakīra mūrīmo ūmwe kinya ūrīa ūngī; mũndũ gwĩka ũndũ ũtarĩ mwega atarerĩgĩrĩirwo no eke: gũkĩria njano","desc3":""},
        {
          "title":"turuma",
          "desc1":"",
          "desc2":"hutia na mūthia wa kīndū gītambūrūku ta rūthanju",
          "desc3":""
        },
        {
          "title":"turumbara",
          "desc1":"",
          "desc2":"mīthia īrarī mīnore īkohīga gūkorwo ītarī mīūgī ona atīa īkahana kīmande",
          "desc3":""
        },
        {"title":"turungi","desc1":"","desc2":"cai wa macani ūtarī iria","desc3":""},{"title":"turūra","desc1":"","desc2":"gūithia kīndū na njīra ya kūng'aria harīa gīkīrītwo","desc3":""},{"title":"turūrīra","desc1":"","desc2":"turūra wīkīre handū hana; turūra ithenya rīa-","desc3":""},{"title":"turwo","desc1":"","desc2":"igua ruo handū; rakario nī ūndū wīrire kaba ūtangīhanīkire","desc3":""},{"title":"turwo","desc1":"","desc2":"thondekwo na njīra ya kūringaringwo na kīndū","desc3":""},{"title":"tuta","desc1":"","desc2":"kīndū kwanjia kūgīa rūnyaga rwa ngoikoni kuonania nī kīanjia kwīrua; kūiyūrwo nī mang'ūrī; kīronda kūma ","desc3":""},{"title":"tuta","desc1":"","desc2":"handū hathondeketwo ha gūitwo mbegū nīguo ciamera ihandwo handū hangī","desc3":""},{"title":"tutha","desc1":"","desc2":"kūringa na mūtwe kana hīa","desc3":""},{"title":"tuthu","desc1":"","desc2":"kiugo gīa gūtarīria ūrīa mūndū kana kīndū kīragūthirwo; kiugo gīa gūtarīria ūrīa kīndū kīratuthūkire","desc3":""},{"title":"tuthūka","desc1":"","desc2":"ūndū mūna ta wa mūrimū kumīra o rīmwe ūkanyita andū aingī; kīndū gūtūrīka o rīmwe na mūrurumo mūnene","desc3":""},{"title":"tuthūrūrūka","desc1":"","desc2":"kīndū kīhingīrīirie kīndū gūtothoka: tathūka","desc3":""},{"title":"tutia","desc1":"","desc2":"totia","desc3":""},{"title":"tūtīra","desc1":"","desc2":"thinīkīra indo handū itaraiganīra wega: tūtīrīra","desc3":""},{"title":"tuhūra","desc1":"","desc2":"umbūrania ūhoro wa hitho","desc3":""},{"title":"tuuka","desc1":"","desc2":"tuukūra","desc3":""},{"title":"tuukūra","desc1":"","desc2":"ringa ngundi","desc3":""},{"title":"tuuma","desc1":"","desc2":"igua wīiyūrītwo nī gīkeno; ina nī gīkeno kūingīha","desc3":""},{"title":"tuuo","desc1":"","desc2":"kīndū kūgucio gīgatuīka; heyo rītwa rīa mūndū mūna; mūndū mūna kūheyo rītwa rīaku","desc3":""},{"title":"tuura","desc1":"","desc2":"kīīga kīna gūturwo mūhano; kūgūrū gwake aroiga nī kūra tuura mūno","desc3":""},{"title":"tuuria","desc1":"","desc2":"tūma handū hatuure; rakaria","desc3":""},
        {
        "title":"twara",
          "desc1":"",
          "desc2":"kaara",
          "desc3":""
        },
        {
          "title":"tweka",
          "desc1":"",
          "desc2":"kīndū kīmata kūrekania gīkahūtha gīgatuīka ta maī",
          "desc3":""
        },
        {"title":"twara","desc1":"","desc2":"kua kīndū ūthiī nakīo handū hana nīguo ūgītige ho kana nīguo kīhingie ūndū mūna ho","desc3":""},{"title":"tweka","desc1":"","desc2":"kīndū kīmata kūrekania gīkahūtha","desc3":""},{"title":"twekia","desc1":"","desc2":"tūma kīndū kīmata gītweke","desc3":""},{"title":"twekūra","desc1":"","desc2":"tūma kīndū gītweku kīmate","desc3":""},{"title":"twene","desc1":"keene","desc2":"tūindo tūtarī twaku","desc3":""}];
    }
    if(widget.alphabet == 'U') {
      _allUsers = [{"title":"Ū","desc1":"","desc2":"kiugo gia kūria kīuria; kīhūthagīrwo gūkana ūndū. mūhano; &quot;nīwe wa hingūra mūrango, ū ti nie&quot;","desc3":""},{"title":"ūa","desc1":"","desc2":"ruta thanda makoro-inī marīa macihingīire ta mboco kana noe","desc3":""},{"title":"ūbai","desc1":"","desc2":"maī ma hinya wa ūndūrūme","desc3":""},{"title":"ūcamba","desc1":"","desc2":"gūkorwo ūtegwītigīra ūndū ūrīa wonekaga tarī wa kūguoyohia","desc3":""},{"title":"ūciari","desc1":"","desc2":"ūkonainie na gūciara; ūkonainie na ūigīrīrīki wa mūciari","desc3":""},{"title":"ūcio","desc1":"acio","desc2":"mu3 kiugo gīa kwerekereria harī mūndū mūna mūhano: ūcio wa hītūka nīwe ndakwīrire warie nake no agūteithie","desc3":""},
        {
          "title":"ūcori",
          "desc1":"",
          "desc2":"ūcani wa ciīruru; wara",
          "desc3":""
        },
        {
          "title":"ūcūa",
          "desc1":"",
          "desc2":"mīmera gūkorwo īna wororo umanīte na gūkorwo na maī maiganu; maciaro ma mīmera īmwe ta mboco kana mbembe gūkorwo matarīkītie gūkūra magakorwo marī o na wūigū thīiniī wamo",
          "desc3":""
        },
        {"title":"ūcuke","desc1":"","desc2":"ūndū ūtarī mwega ūroneka thīiniī wa mūndū kana ūndū mūna","desc3":""},{"title":"ūcumīkīri","desc1":"","desc2":"ūhoro wa kwīrirīria indo ciene na kwenda gūciīgwatīra na njīra ītarī ya kīhoto","desc3":""},{"title":"uga","desc1":"","desc2":"mu2 kiugo gīa kwīra mūndū agwete ūndū ","desc3":""},{"title":"uge","desc1":"","desc2":"meciria ma mūndū makoniī ūndū mūna; ūhoro mūgwete ūkoniī ūndū mūna","desc3":""},{"title":"ūgendi","desc1":"","desc2":"ūhoro wa gūthiī ng'endo","desc3":""},{"title":"ūgī","desc1":"","desc2":"ūhoti wa kūhūthīra ūmenyo na njīra īna ūrikīru mūnene","desc3":""},{"title":"ūgita","desc1":"","desc2":"twīrīrīria mūndū ūtarī na ūūru nawe ngūī","desc3":""},{"title":"ūgo","desc1":"","desc2":"ūgī wa gwīka maūndū kana ūndū mūna ūrīa mūndū aciaragwo naguo","desc3":""},{"title":"ūgongoni","desc1":"","desc2":"ūruti wa magongona  mūhano: ūgongoni wa mūciī nī wa mūthuri mwene mūciī ūcio","desc3":""},{"title":"ūgū","desc1":"","desc2":"wathe ūtūmaga mwīcirīrie na mwīkīre wa maūndū wa mūndū woneke ūtarī wa kīmerera mūhano: nī ūgū mūthuri gūtūra ndundu-inī cia atumia ","desc3":""},{"title":"ūguo","desc1":"","desc2":"kiugo gīa gūtarīria ūrīa ūndū wagīrīire gwīkwo mūhano: mūndū arīmaga ūguo wona ndarīma; ūrīa ūndū wekīka mūhano: aringwo na rūhī ūguo ; gūtarīria kūrīa mūndū kana kīndū kīerekera mūhano; athiī ūguo na rūgongo","desc3":""},{"title":"ūgūūta","desc1":"","desc2":"ūhoro wa gūkorwo mūndū atekwenda gwīka maūndū maratūma anoge kana kūruta wīra ","desc3":""},{"title":"uha","desc1":"","desc2":"arīria mūndū maūndū magūtūma akenio nīwe mūgīe na ndūgū ya wendo ","desc3":""},{"title":"ũhĩga","desc1":"","desc2":"gĩa na ũgĩ; menya ũrĩa ũkũhũthĩra wara gwĩka ũndũ mũna; indo ihũthagĩrwo gũtema, gũtinia, kũrenga kana gũthora gũkorwo inoretwo ũũ atĩ no irute wĩra ũcio na ũhũthũ","desc3":""},{"title":"ūhinga","desc1":"","desc2":"ūhoro wa mūndū gwītua kīrīa atarī (ta gwītua nī ūī ūndū mūna na ndūūī), gwītua nī arendera mūndū maūndū mega no aramwendera ūūru","desc3":""},{"title":"ūhinya","desc1":"","desc2":"ūhahami","desc3":""},{"title":"ūhiū","desc1":"","desc2":"mahiū","desc3":""},{"title":"ūhoro","desc1":"mohoro","desc2":"ndeto ikoniī ūndū mūna; thayū; ūndū mūna na maūndū marīa ma ūkoniī","desc3":""},{"title":"ūhoti","desc1":"","desc2":"hinya wa gwīka ūndū mūna","desc3":""},{"title":"ūici","desc1":"","desc2":"ūhoro wa kūiya","desc3":""},{"title":"ūiguano","desc1":"","desc2":"ūhoro wa gwītīkanīria maūndū-inī na gūkorwo na meciria mamwe ","desc3":""},{"title":"ūikia","desc1":"","desc2":"ūhoro wa gūikia indo handū na ūrīa wīkagwo na mūtaratara mūna mūhano: ūikia wa mītī hīndī ya ithurano ūrūgamagīrīrwo nī kīama gīa ithurano","desc3":""},{"title":"ūira","desc1":"","desc2":"uge ūheanītwo nī mūndū akiuga we nī eyoneire kana nī oī ūhoro mūna","desc3":""},{"title":"ūiru","desc1":"","desc2":"gūkorwo ūtegūkenera na ūkaigua ūūru nī ūndū wa kuona mūndū ūngī na kīndū kana ūndū ūramūguna","desc3":""},{"title":"ūka","desc1":"","desc2":"kiugo gīa kwīra mūndū agūkuhīrīrie mūhano: ūka tūthiī ","desc3":""},{"title":"ūkarī","desc1":"","desc2":"mūtugo wa kūimana indo","desc3":""},
        {
          "title":"ūkia",
          "desc1":"",
          "desc2":"kīīga kīa ūndūrūme kwīhanda",
          "desc3":""
        },
        {
          "title":"ūkirīrīria",
          "desc1":"",
          "desc2":"ūhoro wa gūkorwo ūtarī na hīkīkī ya maūndū marīa matarī maragīa, ūgaikaraga wetereire ihinda rīamo rīkinye ūtegūthethūka",
          "desc3":""
        },
        {"title":"ūkonyoku","desc1":"","desc2":"ūthaka; ūtheru ","desc3":""},{"title":"ūkora","desc1":"","desc2":"ūtunyani wa indo ciene;  wara","desc3":""},{"title":"ūkoroku","desc1":"","desc2":"kwenda kūrīa ūtekūiganīra ūkarīa makīria ma ūrīa ūbatiī; ūhahami ūtekūiganīra ","desc3":""},{"title":"ūkumio","desc1":"","desc2":"ūhoro wa gūkumia","desc3":""},{"title":"ūkūrū","desc1":"","desc2":"ūigana wa kīndū ūgeretwo na matukū ma kuma rīrīa kīagīire ","desc3":""},{"title":"ūma","desc1":"","desc2":"ūrīa wī wa ma","desc3":""},{"title":"ūma","desc1":"","desc2":"thirwo nī maī; niara","desc3":""},{"title":"uma andū","desc1":"","desc2":"ūtugi","desc3":""},{"title":"umana","desc1":"","desc2":"kīndū kīnyitanu kūrekania gīgatiga kūnyitana rīngī","desc3":""},{"title":"ūmaramari","desc1":"","desc2":"kūingīrīra ciīko njūru","desc3":""},{"title":"ūmatho","desc1":"","desc2":"kīrīa mūndū acokanīrīirie arīkia kūmaatha; umithio wa wīra ūrīa mūndū arutīte","desc3":""},{"title":"umbīka","desc1":"","desc2":"humbīra na tīīri kana kīndū kīhaana ta tīri ūndū kīngīcoka kiumbūrio mūhano: umbīka irigū mūhu-inī","desc3":""},{"title":"ūmbūka","desc1":"","desc2":"rera ūthiīre rīera-inī","desc3":""},{"title":"umbūra","desc1":"","desc2":"hithūria maūndū ūtarendwo wīrane kūrī arīa matarendwo mamamenye","desc3":""},{"title":"ūmbūra","desc1":"","desc2":"tūma kīndū kīhurunjūke rīera-inī mūhano: rūhuho nīruombūra mbīri","desc3":""},{"title":"umbūria","desc1":"","desc2":"humbūria kīndū gīkumbīkītwo, kana gīgūthikītwo","desc3":""},{"title":"ūmenyi","desc1":"","desc2":"gūkorwo ūī ūhoro ūkoniī ūndū mūna kana gwīka ūndū mūna","desc3":""},{"title":"ūmenyo","desc1":"","desc2":"ūhoro wa gūkorwo ūī wega ūhoro ūkoniī ūndū mūna ","desc3":""},{"title":"umira","desc1":"","desc2":"uma handū ūtaronwo kana handū thīiniī ūthiī handū ūronwo ","desc3":""},{"title":"ūmīra","desc1":"","desc2":"ritūhīra; ūndū kwaga gūthiī ūrīa ūrendwo ona ūgeranītio naguo mūno","desc3":""},{"title":"umīrīra","desc1":"","desc2":"ūka harī mūndū kuma handū atekwīrīgīrīire akuone o rīmwe","desc3":""},{"title":"ūmīrīria","desc1":"","desc2":"īkīra mūndū ūrītwo nī hinya ūndū wa gūtūma ngoro yake īgīe na hinya","desc3":""},{"title":"ūmīrīru","desc1":"","desc2":"hinya wa gwīka ūndū mūritū gwīkwo nī andū angī kana ūndū ūraguoyohia","desc3":""},{"title":"umithio","desc1":"","desc2":"maciaro ma ūndū mūna","desc3":""},{"title":"ūmocu","desc1":"","desc2":"kwaga ūkinyanīru; kūhatīrīrio nī ūndū ta mūrimū ūkinyanīru ūkaga","desc3":""},{"title":"ūmūndū","desc1":"","desc2":"gīko kīronania tha cia andū kana ūtugi wa andū","desc3":""},{"title":"ūmūthī","desc1":"","desc2":"mūthenya ūrīa tūrī","desc3":""},{"title":"ūmwe","desc1":"","desc2":"urī wika hatarī na ūngī","desc3":""},{"title":"una","desc1":"","desc2":"gayūkania kīndū gītambūrūku kiume icunjī na njīra ya gūkīgucia mīthia-inī kīgayūkanīre gatagatī","desc3":""},{"title":"ūna","desc1":"","desc2":"ūndū ūkonainie na ūrīa mūgwete no ndūrerwo nīguo ūrīkū ","desc3":""},{"title":"unanga","desc1":"","desc2":"una kīndū kiume tūcunjī tūingī","desc3":""},{"title":"unanīra","desc1":"","desc2":"komanīria kīndū na kīo kīene; o mūndū kuuna kīndū nī ūndū wa mūndū ūngī ūra mwīkīra o guo","desc3":""},{"title":"ūndū","desc1":"","desc2":"gīko kīna","desc3":""},{"title":"ūnene","desc1":"","desc2":"mūigana wa kīndū ūkīgerwo na ūraihu kana wariī wa kīo; gūkorwo gīturwa-inī kīa wathani","desc3":""},{"title":"ūngana","desc1":"","desc2":"gūcokanīrīra hamwe na muoroto ūmwe","desc3":""},{"title":"ūngano","desc1":"","desc2":"ūhoro wa gūcokanīrīra hamwe","desc3":""},{"title":"ūngī","desc1":"","desc2":"tiga ūrīa umaho ho kana ūkūgwetetwo mūhano: wī na mūtī ūngī kana no ūyū?","desc3":""},{"title":"ūngī-","desc1":"","desc2":"mu2     kīongagīrīrīrwo harī ciugo cia gīīko kuuga mūndū ūcio korwo eka ūndū mūna, ūna no woneke","desc3":""},{"title":"ungumania","desc1":"","desc2":"ciīko cia kūiya na wara indo irīa wīhokeirwo nī ūndū wa andū angī mūhano: ateti aingī maungumanagia ūtonga wa būrūri megune naguo o ene","desc3":""},{"title":"ungumania","desc1":"","desc2":"īka gīīko kīa ungumania","desc3":""},{"title":"ungunya","desc1":"","desc2":"agagia na njīra kūiguithia ruo rūnene rūhana taarī gūtheca rūrathecatheca","desc3":""},{"title":"ungunyīka","desc1":"","desc2":"ikara ta ūraungunywo","desc3":""},{"title":"ūngūtūka","desc1":"","desc2":"riūnga ta mūndū ūtarī na thayū meciria-inī","desc3":""},{"title":"unīka","desc1":"","desc2":"kĩndũ kĩrũngarũ na kĩũmĩrĩru kũgayũkana maita maigana ũna nĩ ũndũ wa gũkorwo he na hinya mũna ũcũngĩrĩirire ũndũ ũcio","desc3":""},{"title":"ūnūha","desc1":"","desc2":"thūkia: īka kīndū kana mūndū ūndū ūtangīguna mūndū ūngī kana o nawe mwene","desc3":""},{"title":"ūnūra","desc1":"","desc2":"ruta makoro ma kīndū ta irigū","desc3":""},{"title":"ūnyamū","desc1":"","desc2":"ciīko njūru cia ūnūhi","desc3":""},{"title":"ūraga","desc1":"","desc2":"cūngīrīria kīndū gūkua:ruta muoyo; tūma kīndū gīatūke","desc3":""},{"title":"ūramati","desc1":"","desc2":"kūrora na gūtungata indo cia mūndū ūngī ūkīgunīkaga nacio","desc3":""},{"title":"ūrambu","desc1":"","desc2":"ūhinga","desc3":""},{"title":"ūrata","desc1":"","desc2":"thiritū ya andū ītarī na ūcuke kana ūhinga","desc3":""},{"title":"ūrathi","desc1":"","desc2":"ūhoro ūheanītwo atī nī ūgekīka matukū magoka na ti ūhoti wa andū ūkaūrehe na ndūngīūhingīrīria kūhinga","desc3":""},{"title":"ūrekeri","desc1":"","desc2":"ūhoro wa kwaga gūtuanīra, kūrīhania na gūtiga kūrakaranīra nī ūndū wa ūrū wīkītwo; kūreka mūndū athiī na thirī waku ataūrīhīte ūkahana ta wamūhee ","desc3":""},{"title":"ūremi","desc1":"","desc2":"ūregenyūku","desc3":""},{"title":"ūremu","desc1":"","desc2":"gũkorwo ndũngĩhotekeka; ũremi mũkĩrũku","desc3":""},{"title":"ūria","desc1":"","desc2":"kiugo gĩa kuuga ũndũ ũrabatara macokio mũhano: ũria ũrĩa ũrenda kũmenya nĩ ũkwĩrwo","desc3":""},{"title":"ūrīa","desc1":"","desc2":"kiugo gĩa kuonanĩrĩria mũndũ wĩ gatĩna gatarĩ karaihu mũno","desc3":""},{"title":"ūrīa","desc1":"","desc2":"mu3 Kiugo gĩa kwarĩrĩria mũndũ ũrarĩ ho","desc3":""},{"title":"ūrīithi","desc1":"","desc2":"ūtungati wa mahiū; ūtungati ūngī ūhanaine na wa mahiū","desc3":""},{"title":"ūrīkū","desc1":"","desc2":"kiugo gīa kūria ūhoro ūrīa mūheane nū ūkoniī mūhano: nī mūrūthi ūrīkū ūrarūmire mūndū?","desc3":""},{"title":"ūrīmi","desc1":"","desc2":"ūtungata wa mīmera na mahiū nīguo ūgunīke na umithio waguo","desc3":""},{"title":"ūrimū","desc1":"","desc2":"gīko gīkītwo hatarī na ūgī; wagi wa ūgī","desc3":""},{"title":"ūrīra","desc1":"","desc2":"tonyerera wage kuoneka; thiī kūraya na kīndū ndūkonane nakīo rīngī","desc3":""},{"title":"ūrīrī","desc1":"","desc2":"kīndū gīthondeketwo gī gīa gūkomerwo nī andū rīrīa me toro","desc3":""},
        {
          "title":"ūritū",
          "desc1":"",
          "desc2":"mũigana wa kĩndũ ũkĩgerwo na ũrĩa gĩathukio kĩraiguĩka; ũhoro wa ũrĩa ũndũ wĩ na hinya gwĩkĩka, kuoneka Kana kũhanĩka",
          "desc3":""
        },
        {
          "title":"ūrīu",
          "desc1":"",
          "desc2":"gīkīro kīa ūhoti wa njohi kūrīa mūndū",
          "desc3":""
        },
        {
          "title":"ūrīu",
          "desc1":"",
          "desc2":"ūhoro wa gūkorwo mūndū atoretio nī njohi akaremwo nī gūtua matua makinyanīru kana agatūgūgio nīyo",
          "desc3":""
        },
        {
          "title":"ūrīu",
          "desc1":"",
          "desc2":"rūnyaga ta rwa nduma kana ta rwa mwīrī wa ihuru",
          "desc3":""
        },
        {"title":"uruga","desc1":"","desc2":"thiūrūrūkia indo nyitanu ūkīhūthīra kīndū gūthiūrūrūkia mūhano: uruga kagoto kau wega kinya kaiguane na mūthanga","desc3":""},{"title":"ūrugarī","desc1":"","desc2":"rīera ihiū rīraikio kuma handū hana","desc3":""},{"title":"urugunya","desc1":"","desc2":"rutania indo handū ūgīcigaga mwamū hatarī na mūtaratara ","desc3":""},{"title":"urugunyĩka","desc1":"","desc2":"haragana","desc3":""},{"title":"ũrũme","desc1":"","desc2":"kwaga guoya wa maũndũ maroneka marĩ ũgwati","desc3":""},{"title":"ūrūmwe","desc1":"","desc2":"gūkorwo na ngwatanīro na ūnyitanīri","desc3":""},{"title":"ururia","desc1":"","desc2":"thuthuria; rutania indo handū ūgīetha kīndū ho","desc3":""},{"title":"ūrūria","desc1":"","desc2":"kua kīndū kana mūndū ūrūre nake","desc3":""},{"title":"ūrūrū","desc1":"","desc2":"mūcamo ta wa maī ma nyongo kana macatha","desc3":""},{"title":"Ũruru","desc1":"","desc2":"Ũhoro wa gũkorwo na ũthaka kana wagĩrĩru umanĩte na kũrura","desc3":""},{"title":"ūruu","desc1":"","desc2":"kīrema gīa kūrua;","desc3":""},{"title":"ūtana","desc1":"","desc2":"ūheani","desc3":""},{"title":"Ũtarĩ","desc1":"","desc2":"Matarĩ","desc3":""},{"title":"ūtari","desc1":"","desc2":"kūhe mūigana ūkīhūthīra ndari","desc3":""},{"title":"ūtariī","desc1":"","desc2":"mūtariī\/ūtariī, kiugo gīa kuga ūrīa ūndū, mūndū kana kīndū kīna kīhana","desc3":""},{"title":"ūtaro","desc1":"","desc2":"ūhoro ūhetwo mūndū ūrongoreirio kūmūhīgia kana kūmūgarūra","desc3":""},{"title":"ūteithio","desc1":"","desc2":"ūndū wīkītwo nīguo mwīkīrwo ahūthīrwo nī ūndū ūramūremete","desc3":""},
        {
          "title":"ūteti",
          "desc1":"",
          "desc2":"mīario ya gūtetera andū arīa mūtongoria atongoretie",
          "desc3":""
        },
        {
          "title":"ūtharia",
          "desc1":"",
          "desc2":"gīko gīa gūkoma na mūka wene: tharania",
          "desc3":""
        },
        {"title":"ūthayo","desc1":"","desc2":"ūgūta","desc3":""},
        {
          "title":"ūtheri",
          "desc1":"",
          "desc2":"gacūmbīrī karīa karigainie na Njathi ya Kīrīnyaga",
          "desc3":""
        },
        {
          "title":"ūtheri",
          "desc1":"",
          "desc2":"ũhoro wa kwaga nduma ūrīa ūrehagwo nī kīndū kīramūrīka; kwaga ūhinga; gwīka ūndū hatarī na hitho",
          "desc3":""
        },
        {"title":"ūtheru","desc1":"","desc2":"wagi wa gīko","desc3":""},{"title":"uthi","desc1":"","desc2":"Kiswahili uzi","desc3":""},{"title":"ūthī","desc1":"","desc2":"mūhianīre wa kīndū gīkīonwo na maitho","desc3":""},{"title":"ūthingu","desc1":"","desc2":"ūrūngīrīru wa mūirītu wa gūkorwo eigīte atarī onana na mūndūrūme kinya akahika; ūtheru wa kwaga gwītukania na mehia, (mwanake nĩ gathirange)","desc3":""},{"title":"ūthīnjīri","desc1":"","desc2":"ūgongoni wa arīa mamūrītwo marutage magongona ma gūthīnja","desc3":""},{"title":"ūthiū","desc1":"","desc2":"mwena wa mbere wa mūtwe kana kīongo ūrīa ūkoragwo na maitho, maniūrū na kanua; mwena wa mbere wa kīndū","desc3":""},{"title":"ūthū","desc1":"","desc2":"rūmena rūnene rūrehetwo nī itūmi cia kwaga kūiguanīra ūndū-inī mūna","desc3":""},{"title":"ūthuri","desc1":"","desc2":"rīera riumagīra njīra ya kīoro kīnene ","desc3":""},{"title":"ūtugi","desc1":"","desc2":"gūkenera andū magūcereire na njīra ya kūmahe irio na indo ingī ciaku","desc3":""},
        {
          "title":"ūtukū",
          "desc1":"",
          "desc2":"mahinda marīa nduma īingagīra riūa rīathūa na rītanaratha ",
          "desc3":""
        },
        {
          "title":"ūtune",
          "desc1":"",
          "desc2":"rūnyaga ta rwa thakame",
          "desc3":""
        },
        {"title":"ūtungata","desc1":"","desc2":"ūhoro wa gūteithīrīria mūndū mawīra make wīyendeire","desc3":""},{"title":"ūtungati","desc1":"","desc2":"ūtungata wa ūndū na kūūrūmīrīria wone nīwakinyanīra","desc3":""},{"title":"ūtungi","desc1":"","desc2":"ūtabarīri wa gūthugunda maūndū matarī ho ta marī ho ta ma ng'ano kana nyīmbo","desc3":""},{"title":"ūū","desc1":"","desc2":"kiugo gīa kuonereria ūndū mūna ūrīa ūtariī kana ūrīa ūbatiī gūkorwo","desc3":""},{"title":"ūūru","desc1":"","desc2":"gūkorwo ūrī ūrīa ūtabatiī gūkorwo; mūtino: ndirū","desc3":""},
        {
          "title":"ūyū",
          "desc1":"",
          "desc2":"mu3 kiugo gīa kuonanīrīria ūrīa ūrarīrīrio rīrīa e harīa mwaria arī",
          "desc3":""
        },
        {
          "title":"ūmithia",
          "desc1":"",
          "desc2":"iga kīndū handū he na ūrugarī nīguo gīthire maī kana ūigū",
          "desc3":""
        }
        ];
    }
    if(widget.alphabet == 'W') {
      _allUsers = [{"title":"wa","desc1":"ūkoniī: kuuga mwene nū mūhano: mūtumia wa mūthuri ūrīa nī ngatha; kiugo kīhūthagīrwo kuuga mūndū eka ūndū mūna no acoke eke ūndū ūngī  mūhano: wa rīa no ūkome;  kīonganagīrīrio na kiugo gīa gīīko kuuga kīna nī gīeka ūna kana mūndū mūna nī eka ūndū mūna mūhano: mūtī wa gūa; wa rīa wa nina","desc2":"","desc3":""},{"title":"wabu","desc1":"Kiswahili ndigi ciogothanītio ūndū kīndū kīngītonya ho gītingīhota kuuma: ta irīa ihūthagīrwo nī ategi a ciūngūyū","desc2":"","desc3":""},{"title":"wacio","desc1":"ūkoniī indo naa kana gīkundi kīa andū kīrīa kī mūtaratara-inī wa &quot;ici&quot; mūhano: thigiriri nī irī mūtaratara wacio; &quot;mūbara ūyū nī wa ciana ici?&quot; &quot; ī nī wacio&quot; ","desc2":"","desc3":""},{"title":"waganu","desc1":"ciīko njūru ireganītwo nacio","desc2":"","desc3":""},{"title":"wagarari","desc1":"wīki wa maūndū marīa mareganītwo namo","desc2":"","desc3":""},{"title":"wagi","desc1":"gūkorwo indo irabatarania itirī kuo mūhano: mahinda maya kwī na wagi wa mbeca nīkio andū aingī me na mathīna","desc2":"","desc3":""},{"title":"wagīrīru","desc1":"ūhoro wa gūkorwo ūndū ūkinyanīrīte: ūrī mwega: ūrī ūrīa ūbatiī gūkorwo muhano: ithuothe twethaga wagīrīru","desc2":"","desc3":""},{"title":"wakaguku","desc1":"kīūmbe gītune kiumaga kīgunyū-inī gīgacoka gūtuīka kīhuruta","desc2":"","desc3":""},{"title":"wake","desc1":"mu2 ūkoniī mūndū mūna ūrarīrīrio kana ūkūgwetetwo mūhano: mūtumia ūcio nī wake","desc2":"","desc3":""},{"title":"wako","desc1":"gīcigo kīa mūgūnda kīamūrītwo mūndū ake mūciī wake ho","desc2":"","desc3":""},{"title":"wakwa","desc1":"mu1 ūkoniī mūndū ūrīa ūraria mūhano: mūtī ūyū nī wakwa","desc2":"","desc3":""},{"title":"wamūkīri","desc1":"gīīko gīa kuoya indo kuma moko-inī ma ūrīa ūrakūhe","desc2":"","desc3":""},{"title":"wamūtīrī","desc1":"nyamū ya mūhīriga wa hiti no ī mīcora handu ha maroro mwīrī-inī wayo","desc2":"","desc3":""},{"title":"wana","desc1":"ciīko itarī na ūgima: ciīko ikoniī ciana","desc2":"","desc3":""},{"title":"wandandūku","desc1":"mweke wa gūtherema; ūtheremu; wariī wa gūtheremera","desc2":"","desc3":""},{"title":"wandīki","desc1":"ūcani wa mohoro mabuku-inī","desc2":"","desc3":""},{"title":"wandīndī","desc1":"kīgambi gīa kūina gīthondeketwo na rūa na rūrigi ruohereirwo mūtī mūkūnje ta ūta rūthūagwo na rūrigi rūngī rūthondeke ta ūta rūkaruta mūgambo ","desc2":"","desc3":""},{"title":"wanga","desc1":"ūndū ūrīa ūkoragwo na kīndū gītarī kīhūthīre rīngī kana kīndū gīaku wegīra na ndūkīhūthīrīte","desc2":"","desc3":""},{"title":"wanyu","desc1":"mu2 ūmūkoniī mūhano: mwana ūyū nī wanyu","desc2":"","desc3":""},{"title":"wao","desc1":"mu3 ūmakoniī mūhano: mūthī ūyū nī wao","desc2":"","desc3":""},{"title":"wara","desc1":"ūūgī ūtarī na wīhokeku kana ma wagwīka maūndū","desc2":"","desc3":""},{"title":"waragania","desc1":"ūtheri wa maūndū: gwīka na wīhokeku maūndū hatarī na kūhithīrīra ūrīa marekwo","desc2":"","desc3":""},{"title":"warī","desc1":"mu2 kiugo gīa kuuga mūndū nīonekire hana rīna mūhano: warī kuo tūkīrūa nake? Mu3 kiugo gīa kūria mūndū nī wa ihinda rīrīkū mūhano: Kīnūthia nī warī kūrua?","desc2":"","desc3":""},{"title":"wariga","desc1":"thahu ūtoīo nī ūrīkū ","desc2":"","desc3":""},{"title":"waru","desc1":"mūmera ūkūraga na mīrīo īhandīte na maciaro maguo menjagwo thī tīri-inī ta ngwacī","desc2":"","desc3":""},{"title":"wathani","desc1":"ūtongoria wa gūthamakīra arīa angī","desc2":"","desc3":""},{"title":"wathe","desc1":"ūndū ūratūma handū hakorwo hatarī hakinyanīru kana kīīga gītikarute wīra ūrīa kībatiī","desc2":"","desc3":""},{"title":"wathi","desc1":"ūhoti wa gūikia kīndū gīkaringa o harīa kīerekeirio","desc2":"","desc3":""},{"title":"wathīki","desc1":"gūkorwo na mītugo mīrūngīrīru ītarī na wagarari wa mītaratara īrīa yathanītwo","desc2":"","desc3":""},{"title":"wathima","desc1":"wagi: ng'aragu","desc2":"","desc3":""},{"title":"wathiomo","desc1":"mūrata wa hakuhī mūno","desc2":"","desc3":""},{"title":"watho","desc1":"mawatho","desc2":"mīerekera īheanītwo ya kūrūmīrīrwo nī atūri a handū hana kana mūndū ūngī ūngīkorwo gīcigo-inī kīu","desc3":""},{"title":"watūkano","desc1":"","desc2":"ngayūkano","desc3":""},
        {
          "title":"wee",
          "desc1":"inyui",
          "desc2":"mu2 ūrīa ūrerekerwo",
          "desc3":""
        },
        {
          "title":"wega",
          "desc1":"",
          "desc2":"uria mwagiriru; kiugo gia kuga una wi uria ubatii gukorwo",
          "desc3":""
        },
        {
          "title":"wehe",
          "desc1":"",
          "desc2":"mwanya wīkagīrwo na njīra ya kūruta mūndū igego kana magego mathī ma mītheko",
          "desc3":""
        },
        {
          "title":"wei",
          "desc1":"",
          "desc2":"wīra kweya; kīīga kīa nyamū gīkoragwo gatagatī ka mara manini na manene",
          "desc3":""
        },
        {"title":"wenjeku","desc1":"","desc2":"gūkorwo handū henjekete hatarī mūndū ūthugundīire","desc3":""},{"title":"werekeri","desc1":"","desc2":"ūtarīria wa ūrīa ūndū mūna ūgwīkwo","desc3":""},{"title":"werere","desc1":"","desc2":"indo itangīguna; indo cia ūtunyani kana ciīgwatīirwo na njīra īna ūhahami","desc3":""},
        {
          "title":"werū",
          "desc1":"",
          "desc2":"kūndū kwaraganu gūtarī na mītī mīingī kūhana ta gwī kūmū",
          "desc3":""
        },
        {
          "title":"werū",
          "desc1":"",
          "desc2":"rūnyaga rūhana ira",
          "desc3":""
        },
        {
          "title":"wetereri",
          "desc1":"",
          "desc2":"ūkirīrīria",
          "desc3":""
        },

        {"title":"wīha","desc1":"","desc2":"mu2 kiugo gīa kūria mūndū harīa arī","desc3":""},{"title":"wīhia","desc1":"","desc2":"gīīko gīa kwagarara watho wa Ngai","desc3":""},{"title":"wīhokeku","desc1":"","desc2":"mūtugo wa gūkorwo mūndū nī ahingagia ūrīa abatiī nī kūhingia; wagi wa ungumania","desc3":""},{"title":"wīira","desc1":"","desc2":"ūhoro ūheanītwo ūrī wa gūkindīra maūndū marīa magwete kuonania nī ma atī nī ma ma: ūira","desc3":""},{"title":"wīkindīru","desc1":"","desc2":"mūrūgamo mūrūmu wa kūhingia maūndū mega","desc3":""},{"title":"wīra","desc1":"mawīra","desc2":"ūndū wīkagwo ūrongoreirio kūrehe umithio mūna kaingī nīguo mūwīki ahote kuona indo irīa mūndū abataraga gūtūra muoyo","desc3":""},{"title":"wītīkio","desc1":"","desc2":"ūndū ūrīa mūndū atuaga ta wīho o na akorwo ndarī a wona","desc3":""},
        {
          "title":"wīyathi",
          "desc1":"",
          "desc2":"ūhoro wa gūkorwo mūndū no eke maūndū marīa angīenda gwīka bata akorwo ndaragarara ihoto cia arīa angī",
          "desc3":""
        },
        {
          "title":"wogomo",
          "desc1":"",
          "desc2":"gwīka ūndū wī mūgiro mūhano: mūtumia ūkomete na mūndūrūme ūngī nī mūtumia ūthiīte wogomo; ūhoro wa kīndū gūkorwo kīrī kīgonyoku",
          "desc3":""
        },
        {"title":"woneki","desc1":"","desc2":"ūhotekeku wa kuonekana","desc3":""},{"title":"woni","desc1":"mawoni","desc2":"meciria ma mūndū ūndū-inī mūna","desc3":""},{"title":"wonje","desc1":"","desc2":"wathe ūcūngīrīirio nī ūndū mūna","desc3":""},{"title":"wonjoria","desc1":"","desc2":"kūrutithia kīndū wīra nīguo kīingīhe","desc3":""},{"title":"wothe","desc1":"","desc2":"hatarī mweherie","desc3":""},{"title":"wūikaro","desc1":"","desc2":"harīa andū kana nyamū maikaraga ta mūciī wao","desc3":""},{"title":"wūira","desc1":"","desc2":"wīira: ūira","desc3":""}];
    }
    if(widget.alphabet == 'Y') {
      _allUsers = [{"title":"ya","desc1":"","desc2":"kiugo kīhūthagīrwo kuuga kīna nī kīa ng'ania mūhano:nyūmba ya Mūmbi: kuonania kīna nī gīa gwīka ūna mūhano: nyūngū ya kūrugīra: kuuga kīndū kīna gīeka ūna mūhano: ngui yanarūma mūndū yendaga kūrorwo nī mūrigiti wa nyamū: kuuga kīndū kīna nī gīeka ūna mūhano:ngūkū nī ya kua","desc3":""},{"title":"yake","desc1":"yao","desc2":"mu3 kiugo gīa kuuga kīndū kīna nī kīa ng'ania mūhano: &quot;Kamau nī ūī nyūmba īno nī ya Wairimū ūrīa mūirū?&quot; &quot;ī nī njūī nī yake&quot;","desc3":""},{"title":"yakwa","desc1":"ciakwa","desc2":"mu1 kiugo kīa mūndū kuuga kīrīa kīrarīrīrio nī we mwene kīo mūhano: thenge īno nī yakwa na ndiramīendia","desc3":""},{"title":"yao","desc1":"yake","desc2":"yake","desc3":""},{"title":"yarī","desc1":"ciari","desc2":"kiugo gīa kuuga mahinda mahītūku kīndū kīna gīatariī ūna mūhano: njuīrī yake yarī ndaya mūno atanamīenja: kiugo gīa kuuga mahinda mahītūku kīndū kīna gīakoragwo hana mūhano: njīra yarī harīa rūgongo ītanathamīrio haha tūrī","desc3":""},{"title":"yene","desc1":"ciene","desc2":"kiugo gīa kuuga kīndū kīna nī kīa mūndū ūngī tiga arīa mararia kana magwetetwo mūhano: ndūrūme īno nī yene, hetwo nīguo īhe mbeū","desc3":""},{"title":"yothe","desc1":"","desc2":"kiugo gīa kuuga kīndū ti kīeherie gacunjī ona kanini mūhano: ndīa īrarī nene mūno ona nyūmba yao yothe nī īrokīte","desc3":""},{"title":"yū","desc1":"","desc2":"kīhūthagīrwo kaingī nī atumia kuonania kīmako mūhano: yūkani na mūtigoke haha!","desc3":""},{"title":"yū-","desc1":"","desc2":"kīongagīrīrwo harī ciugo cia kuonereria mūhano: yūrīa karanja; yūcio maitūguo","desc3":""},{"title":"yuma","desc1":"ciuma","desc2":"kiugo gīa kuuga kīndū kīna kahinda kanini kahītūku gīgūtariī ūna mūhano: ngingo yake yuma ndwaru tūgītigana: kiugo gīa kuuga kahinda kanini kahītūku kīndū kīna gīgūkoretwo hana mūhano: mbūri yuma haha nja kīroko ","desc3":""},{"title":"yumaga","desc1":"ciumaga","desc2":"kiugo gīa kuuga kīndū kīna kīendagio na thogora mūna mūhano: ndigiri yumaga ngiri mīrongo īna; kiugo gīa gūtarīria kūrīa kīndū kīna gīkoragwo nīguo gīthiī kūndū kūngī mūhano: mbura yumaga igūrū","desc3":""}];
    }
    if(widget.alphabet == 'REF') {
      isRef =  true;
      _allUsers = [
        {
          "title": "B",
          "desc1": "",
          "desc2": "Ndari",
          "desc3": ""
        },
        {
          "title": "B",
          "desc1": "",
          "desc2": "Marungo ma mūtūrīrī",
          "desc3": ""
        },
        {
          "title": "B",
          "desc1": "",
          "desc2": "Mbica",
          "desc3": ""
        },
        {
          "title": "G",
          "desc1": "",
          "desc2": "ng'uru",
          "desc3": ""
        }
    ];
    }
    if(widget.alphabet == 'GRAMMER') {
      isRef =  true;
      _allUsers = [
        {
          "title": "B",
          "desc1": "",
          "desc2": "Ndari",
          "desc3": ""
        },
        {
          "title": "B",
          "desc1": "",
          "desc2": "Marungo ma mūtūrīrī",
          "desc3": ""
        },
        {
          "title": "B",
          "desc1": "",
          "desc2": "Mbica",
          "desc3": ""
        },
        {
          "title": "G",
          "desc1": "",
          "desc2": "ng'uru",
          "desc3": ""
        }
      ];
    }

     _foundUsers = _allUsers;
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["title"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Dictionary'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
          //   Row(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          //         child: TextField(
          //             controller: searchController,
          //           decoration: const InputDecoration(
          //               labelText: 'Search'),
          //         ),
          //       ),
          //      FlatButton(
          //       onPressed: () {
          //         _runFilter(searchController.text);
          //         // print("this is the text to search for => ${searchController.text}");
          //       },
          //       child: Icon(Icons.search),
          //
          // ),
          //   ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // padding: const EdgeInsets.all(4.0),
                children: [
                Expanded(
                    child: TextField(
                                  controller: searchController,
                                decoration: const InputDecoration(
                                    labelText: 'Search'),
                              ),
                ),
                  TextButton(
                    onPressed: () {
                      _runFilter(searchController.text);
                      // print("this is the text to search for => ${searchController.text}");
                    },
                    child: Icon(Icons.search),
                  )
              ],),
            ),
            ListView.builder(
                // itemExtent: 200,
                itemCount: _foundUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  // final mydictionary = dic[index];
                  return DictionaryList(
                      alphabet: _foundUsers[index]["title"],
                      title: _foundUsers[index]["title"],
                      summary: _foundUsers[index]["desc1"],
                      description: _foundUsers[index]["desc2"],
                      audio_file: _foundUsers[index]["desc3"]
                  );
                }
            ),
            if(isRef)
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(bottom: 8.0, left: 2.0, right: 2.0),
                     child: Center(
                       child: Image.asset(
                         "assets/images/ref.jpeg",
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 8.0, left: 2.0, right: 2.0),
                     child: Center(
                       child: Image.asset(
                         "assets/images/ref1.jpeg",
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 8.0, left: 2.0, right: 2.0),
                     child: Center(
                       child: Image.asset(
                         "assets/images/ref2.jpeg",
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 8.0, left: 2.0, right: 2.0),
                     child: Center(
                       child: Image.asset(
                         "assets/images/ref3.jpeg",
                       ),
                     ),
                   ),
                 ],
               )
          ],
        ),
      ),
    );
  }

  // Widget buildDictionary(List<Dictionary> dic) => ListView.builder(
  //   itemCount: 100,
  //   shrinkWrap: true,
  //   padding: EdgeInsets.only(top: 16),
  //   physics: NeverScrollableScrollPhysics(),
  //   itemBuilder: (context, index) {
  //     final mydictionary = dic[index];
  //     return DictionaryList(
  //         alphabet: mydictionary.alphabet,
  //         title: mydictionary.title,
  //         summary: mydictionary.summary,
  //         description: mydictionary.description,
  //         audio_file: mydictionary.audio_file
  //     );
  //   }
  // );
  //
  // void searchWords(String query) {
  //   final suggestion = word.where((word) {
  //     final alphabet = word.alphabet.toLowerCase();
  //     final description = word.description.toLowerCase();
  //     final input = query.toLowerCase();
  //
  //     return alphabet.contains(input) || description.contains(input);
  //   }).toList();
  //
  //   setState(() {
  //      word = suggestion;
  //   });
  // }



}



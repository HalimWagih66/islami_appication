import 'package:flutter/material.dart';
import 'package:islami_application/home%20screen/quran_tap/versen_name.dart';

class Quran_Tap extends StatelessWidget {
  List<String> names_sura = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/logo_header_quaran_tap.png")),
          Container(
            height: 1,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            alignment: Alignment.center,
            child: Text("Verse Name",style: TextStyle(color: Color(0xff242424),fontSize: 25),),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index) => VerseName(nameSoura: names_sura[index],index:index),
                  separatorBuilder: (context,index){
                return Container(
                  height: 1,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                );
                  },
                  itemCount: names_sura.length
              )
          ),
        ], 
      ),
    );
  }
}

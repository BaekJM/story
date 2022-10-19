import 'package:get/get.dart';
import 'package:story/mainpage/language/main_language.dart';



class Modul_Chage extends GetxController{



  String TopManu_0 = '응모·진척 상황';
  String TopManu_1 = '즐거찾기';
  String TopManu_2 = '마이페이지';



  String menu_0 = 'YOLO에 처음 오신분들에게';
  String menu_1 = '아르바이트';
  String menu_2 = '풀 타임';
  String menu_3 = '모니터';
  String menu_4 = '픽업 특집';
  String menu_5 = '후불 카드';
  String menu_6 = '입대 물건';
  String menu_7 = 'SIM 카드';
  String menu_8 = '온라인 경구 피임약 처방';
  String menu_9 = '문진표';
  String menu_10 = '재류 자격 변경·갱신 대행 서비스';
  String menu_11 = '중고 가전제품';
  String menu_12 = '베트남 식품';
  String menu_13 = '알림';
  String menu_14 = '자주 묻는 질문';

/////////////////////////////////////////////////////////////////////////////////////////////////////
  void language_Change(){
    Language_Chage L = Get.put(Language_Chage());
    if('${L.language}'=='Kr'){

      TopManu_0 = '응모·진척 상황';
      TopManu_1 = '즐거찾기';
      TopManu_2 = '마이페이지';

      menu_0 = 'YOLO에 처음 오신분들에게';
      menu_1 = '아르바이트';
      menu_2 = '풀 타임';
      menu_3 = '모니터';
      menu_4 = '픽업 특집';
      menu_5 = '후불 카드';
      menu_6 = '입대 물건';
      menu_7 = 'SIM 카드';
      menu_8 = '온라인 경구 피임약 처방';
      menu_9 = '문진표';
      menu_10 = '재류 자격 변경·갱신 대행 서비스';
      menu_11 = '중고 가전제품';
      menu_12 = '베트남 식품';
      menu_13 = '알림';
      menu_14 = '자주 묻는 질문';
    }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    else if('${L.language}'=='Jp'){

      TopManu_0 = '応募·進捗状況';
      TopManu_1 = 'お気に入り';
      TopManu_2 = 'マイページ';

      menu_0 = 'はじめての方へ';
      menu_1 = 'アルバイト';
      menu_2 = 'フルタイム';
      menu_3 = 'モニター';
      menu_4 = 'ピックアップ特集';
      menu_5 = '後払いカード';
      menu_6 = '賃払 物件';
      menu_7 = 'SIM　カード';
      menu_8 = 'ピル処方';
      menu_9 = '問診表';
      menu_10 = '在留資格変更·更新代行サービス';
      menu_11 = '中古家電';
      menu_12 = 'ベトナム食品';
      menu_13 = 'お知らせ';
      menu_14 = 'よくある質問';
    }
    update();
    //end
  }
}
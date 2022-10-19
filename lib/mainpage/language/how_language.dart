import 'package:get/get.dart';
import 'package:story/mainpage/language/main_language.dart';




class How_Chage extends GetxController{

  String find = '일자리 찾기';

  String Text0_0 = 'YOLO에 처음 오신분들에게';
  String Text0_1 = '일본에 오셨으면 우선 YOLO JAPAN에 등록';
  String Text0_2 = '처음 뵙겠습니다. YOLO JAPAN입니다.';
  String Text0_3 = '저희는 일본에서 거주중인 외국인에게 다양한 서비스를 제공하고 있습니다.';
  String Text0_4 = 'YOLO JAPAN을 이용하여 일본에서 좀 더 편하게 생활해 보아요';

  String Text1_0 = '선택받은 이유1';
  String Text1_1 = '간단히 일자리를 찾을 수 있음';
  String Text1_2 = '6개 언어 대응! 등록에서 면접까지 일본어가 필요없습니다.';
  String Text1_3 = '번거로운 이력서는 필요 없습니다.';
  String Text1_4 = '면접 날짜는 간편한 온라인 예약으로';
  String Text1_5 = '회원 등록방법이나 면접 설정 방법을';
  String Text1_6 = '보러가기';

  String Text2_0 = '선택받은 이유2';
  String Text2_1 = '남은 시간에 용돈 벌이';
  String Text2_2 = 'YOLO JAPAN에는 단시간·단발로 용돈 벌이가 가능한 일자리도 가득!';
  String Text2_3 = '앙케이트';
  String Text2_4 = '인터뷰';
  String Text2_5 = '시식';
  String Text2_6 = '앙케이트나 인터뷰,시식 등에 참여하는것 만으로도 간단하게 보수를 받을 수 있습니다.';

  String Text3_0 = '선택받은 이유3';
  String Text3_1 = '충실한 라이프 서포트 서비스';
  String Text3_2 = '일자리 뿐만 아니라 생활에 도움이 되는 다양한 서비스를 제공하고 있습니다.';
  String benner3_0 = 'https://www.yolo-japan.com/assets/about/images/banner/yololife_sp_ko.jpg?v202210061640';
  String benner3_1 = 'https://www.yolo-japan.com/assets/yolohome/img/banner/top_sp_ko.jpg?v202210061640';
  String benner3_2 = 'https://www.yolo-japan.com/assets/about/images/banner/banner_yolomobile_sp_ko.jpg?v202210061640';
  String benner3_3 = 'https://www.yolo-japan.com/assets/about/images/banner/yolo_pill_online_sp_ko.jpg?v202210061640';
  String benner3_4 = 'https://www.yolo-japan.com/assets/about/images/banner/banner_yolocard_ko.jpg?v202210061640';

  String Text4_0 = '선택받은 이유4';
  String Text4_1 = '외국인을 위한 시설 YOLO BASE를 개설';
  String Text4_2 = '일본 최초의 외국인을 위한 취업 교육 시설 『YOLO BASE』가 오사카에 OPEN';
  String Text4_3 = 'YOLO BASE는 「일본과 외국인이 연결되는 새로운 장소」입니다.';
  String Text4_4 = '일본에 온 외국인들이 즐거운 시간 및 향후 도움이 될 시간을 보낼 수 있도록,레스토랑 · 이벤트 스페이스 · 협업 스페이스 · 호텔을 설비해 두었습니다.';
  String Text4_5 = '또한 숙박 시설 안 곳곳에 100명의 아티스트가 제작한 다양한 아트가 그려져 있으며,비일상적인 공간에서 각각 원하는 시간을 보낼 수 있습니다.';
  String Text4_6 = 'YOLO BASE에서는 외국인을 대상으로 매일 다양한 이벤트, 스터디, 교류회가 열리고 있으며,외국인과 외국인, 일본인과 외국인으로 매일 많은 만남과 발견이 생겨나고 있습니다.';

  String Text5_0 = 'YOLO JAPAN에 오신 것을 환영합니다';
  String Text5_1 = 'YOLO JAPAN의 목표는 「외국인과 일본인이 공존하는 사회를 만드는」 것입니다.';
  String Text5_2 = '유학이나 취업 등 여러 가지 이유로 일본에서 사는 것을 선택하는 외국인은 해마다 증가하고 있습니다.';
  String Text5_3 = '일본에서 살면서 일해 주는 외국인이 있기떄문에 노동력 부족의 해소와 글로벌화하는 일본 기업이 많이 있습니다.';
  String Text5_4 = '그것은 즉 일본에 사는 외국인의 생활이 풍족해지면 일본은 더욱 풍족해진다는 것입니다.';
  String Text5_5 = '저희 YOLO JAPAN은 일본인도 외국인도 행복해질 수 있도록 다양한 서비스를 제공하고 있습니다.';


/////////////////////////////////////////////////////////////////////////////////////////////////////
  void language_Change(){
    Language_Chage L = Get.put(Language_Chage());
    if('${L.language}'=='Kr'){

      find = '일자리 찾기';

      Text0_0 = 'YOLO에 처음 오신분들에게';
      Text0_1 = '일본에 오셨으면 우선 YOLO JAPAN에 등록';
      Text0_2 = '처음 뵙겠습니다. YOLO JAPAN입니다.';
      Text0_3 = '저희는 일본에서 거주중인 외국인에게 다양한 서비스를 제공하고 있습니다.';
      Text0_4 = 'YOLO JAPAN을 이용하여 일본에서 좀 더 편하게 생활해 보아요';

      Text1_0 = '선택받은 이유1';
      Text1_1 = '간단히 일자리를 찾을 수 있음';
      Text1_2 = '6개 언어 대응! 등록에서 면접까지 일본어가 필요없습니다.';
      Text1_3 = '번거로운 이력서는 필요 없습니다.';
      Text1_4 = '면접 날짜는 간편한 온라인 예약으로';
      Text1_5 = '회원 등록방법이나 면접 설정 방법을';
      Text1_6 = '보러가기';

      Text2_0 = '선택받은 이유2';
      Text2_1 = '남은 시간에 용돈 벌이';
      Text2_2 = 'YOLO JAPAN에는 단시간·단발로 용돈 벌이가 가능한 일자리도 가득!';
      Text2_3 = '앙케이트';
      Text2_4 = '인터뷰';
      Text2_5 = '시식';
      Text2_6 = '앙케이트나 인터뷰,시식 등에 참여하는것 만으로도 간단하게 보수를 받을 수 있습니다.';

      Text3_0 = '선택받은 이유3';
      Text3_1 = '충실한 라이프 서포트 서비스';
      Text3_2 = '일자리 뿐만 아니라 생활에 도움이 되는 다양한 서비스를 제공하고 있습니다.';
      benner3_0 = 'https://www.yolo-japan.com/assets/about/images/banner/yololife_sp_ko.jpg?v202210061640';
      benner3_1 = 'https://www.yolo-japan.com/assets/yolohome/img/banner/top_sp_ko.jpg?v202210061640';
      benner3_2 = 'https://www.yolo-japan.com/assets/about/images/banner/banner_yolomobile_sp_ko.jpg?v202210061640';
      benner3_3 = 'https://www.yolo-japan.com/assets/about/images/banner/yolo_pill_online_sp_ko.jpg?v202210061640';
      benner3_4 = 'https://www.yolo-japan.com/assets/about/images/banner/banner_yolocard_ko.jpg?v202210061640';

      Text4_0 = '선택받은 이유4';
      Text4_1 = '외국인을 위한 시설 YOLO BASE를 개설';
      Text4_2 = '일본 최초의 외국인을 위한 취업 교육 시설 『YOLO BASE』가 오사카에 OPEN';
      Text4_3 = 'YOLO BASE는 「일본과 외국인이 연결되는 새로운 장소」입니다.';
      Text4_4 = '일본에 온 외국인들이 즐거운 시간 및 향후 도움이 될 시간을 보낼 수 있도록,레스토랑 · 이벤트 스페이스 · 협업 스페이스 · 호텔을 설비해 두었습니다.';
      Text4_5 = '또한 숙박 시설 안 곳곳에 100명의 아티스트가 제작한 다양한 아트가 그려져 있으며,비일상적인 공간에서 각각 원하는 시간을 보낼 수 있습니다.';
      Text4_6 = 'YOLO BASE에서는 외국인을 대상으로 매일 다양한 이벤트, 스터디, 교류회가 열리고 있으며,외국인과 외국인, 일본인과 외국인으로 매일 많은 만남과 발견이 생겨나고 있습니다.';

      Text5_0 = 'YOLO JAPAN에 오신 것을 환영합니다';
      Text5_1 = 'YOLO JAPAN의 목표는 「외국인과 일본인이 공존하는 사회를 만드는」 것입니다.';
      Text5_2 = '유학이나 취업 등 여러 가지 이유로 일본에서 사는 것을 선택하는 외국인은 해마다 증가하고 있습니다.';
      Text5_3 = '일본에서 살면서 일해 주는 외국인이 있기떄문에 노동력 부족의 해소와 글로벌화하는 일본 기업이 많이 있습니다.';
      Text5_4 = '그것은 즉 일본에 사는 외국인의 생활이 풍족해지면 일본은 더욱 풍족해진다는 것입니다.';
      Text5_5 = '저희 YOLO JAPAN은 일본인도 외국인도 행복해질 수 있도록 다양한 서비스를 제공하고 있습니다.';


    }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    else if('${L.language}'=='Jp'){

      find = 'お仕事を探す';

      Text0_0 = 'はじめての方へ';
      Text0_1 = '日本に来たらまずYOLO JAPANに登録';
      Text0_2 = 'はじめまして！YOLO JAPANです！';
      Text0_3 = '私たちは、日本に住む外国人に様々なサービスを提供しています。';
      Text0_4 = 'YOLO JAPANを利用して、日本での暮らしをもっともっと快適にしよう！';

      Text1_0 = '選ばれる理由1';
      Text1_1 = 'カンタンにお仕事が探せる';
      Text1_2 = '6言語対応！登録から面接まで日本語不要です';
      Text1_3 = 'めんどうな履歴書を書く必要はありません';
      Text1_4 = '面接日はオンラインで簡単予約';
      Text1_5 = '会員登録方法や面接設定方法などの詳細はコチラ';
      Text1_6 = '見に行く';

      Text2_0 = '選ばれる理由2';
      Text2_1 = 'スキマ時間でお小遣い稼ぎ';
      Text2_2 = 'YOLO JAPANでは短時間・単発でお小遣いかせぎができちゃうお仕事もたくさん！';
      Text2_3 = 'アンケート';
      Text2_4 = 'インタビュー';
      Text2_5 = '試食';
      Text2_6 = 'アンケートやインタビュー、試食などに参加するだけでラクラク報酬がGETできます。';

      Text3_0 = '選ばれる理由3';
      Text3_1 = '充実のライフサポートサービス';
      Text3_2 = 'お仕事だけでなく、暮らしに役立つ様々なサービスを提供しています。';
      benner3_0 = 'https://www.yolo-japan.com/assets/about/images/banner/yololife_sp_ja.jpg?v202210191100';
      benner3_1 = 'https://www.yolo-japan.com/assets/yolohome/img/banner/top_sp_ja.jpg?v202210191100';
      benner3_2 = 'https://www.yolo-japan.com/assets/about/images/banner/banner_yolomobile_sp_ja.jpg?v202210191100';
      benner3_3 = 'https://www.yolo-japan.com/assets/about/images/banner/yolo_pill_online_sp_ja.jpg?v202210191100';
      benner3_4 = 'https://www.yolo-japan.com/assets/about/images/banner/banner_yolocard_ja.jpg?v202210191100';

      Text4_0 = '選ばれる理由4';
      Text4_1 = '外国人のための施設 YOLO BASEを開設';
      Text4_2 = '日本初の外国人向け就労トレーニング施設『YOLO BASE』が大阪にOPEN';
      Text4_3 = 'YOLO BASEは「日本と外国人がつながる新しい場所」です。';
      Text4_4 = '日本に来た外国人が楽しい時間や今後の助けとなる時間を過ごせるように、レストラン・イベントスペース・コワーキングスペース・ホテルを備え付けました。';
      Text4_5 = 'また、施設内の至るところに100人のアーティストが手掛けた様々なアートが描かれており、非日常な空間でそれぞれが好きな時間を過ごすことができます。';
      Text4_6 = 'YOLO BASEでは外国人に向けて日々様々なイベント、勉強会、交流会が開かれており、外国人と外国人、日本人と外国人で日々多くの出会いや発見が生まれています。';

      Text5_0 = 'YOLO JAPANへようこそ';
      Text5_1 = 'YOLO JAPANの目標は、「外国人と日本人が共存する社会を創る」ことです。';
      Text5_2 = '留学や就職など様々な理由で、日本で暮らすことを選択する外国人は年々増えています。';
      Text5_3 = '日本で住み働いてくれる外国人がいるからこそ、人手不足が解消されたりグローバル化する日本企業はたくさんあります。';
      Text5_4 = 'それはつまり、日本に暮らす外国人の生活が豊かになると、日本はもっと豊かになるということです。';
      Text5_5 = '私たちYOLO JAPANは、日本人も外国人も幸せにするため様々なサービスを提供しています。';

    }
    update();
    //end
  }
}
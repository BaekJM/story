
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Language_Chage extends GetxController{
  //메인
  String MainLogo1 = '외국인 대상 구인 정보';
  String MainLogo2 = '아르바이트 정사원';
  String MainLogo3 = '지역 및 태그 등의 조건 추가';
  double MainLogo3_FontSize = 15;
  //픽업
  String Pick1 = '최고 10,000엔 선물? 자기 소개 도영상 촬영 캠페인';
  String Pick2 = '주로★YORO JAPAN의 구인 검색 방법이 진화했습니다.';
  double Pick_FontSize = 13;
  //배너
  String benner1 = 'https://www.yolo-japan.com/assets/top/img/banner/work/n1n2_sp_ko.png?v202210031830';
  String benner2 = 'https://www.yolo-japan.com/assets/top/img/banner/work/fulltime_pc_ko.png?v202210031830';
  //인기 급상승
  String interest1 = '인기 급상승！';
  String interest1_0 = '【일본인 초심자 OK☆】쉐어하우스 청소 【기숙사 있음】【세타가야 지역】';
  String interest1_1 = '가벼운 작업 빌딩 청소';
  String interest1_2 = '시급 ¥1,100 ～ ¥1,375';
  String interest1_3 = 'Shibuya / Tokyo　渋谷 / 東京都';
  String interest1_4 = '일상 회화 수준 (N3 상당)';
  //대인기! 단기 아르바이트
  String interest2 = '대인기! 단기 아르바이트';
  double interest2_Size = 16;
  String interest2_0 = '【최대 10,000엔 GET!] 영주자 · 정주자 · 배우자...';
  String interest2_1 = '10,000';
  String interest2_2 = '2022/09/28 ~ 2022/10/31';
  String interest2_3 = '11';
  //대인기! 단기 아르바이트
  String benner3 = 'https://www.yolo-japan.com/assets/top/img/banner/webp/yolocard_top_ko.webp?v202210121500';
  String benner4 = 'https://www.yolo-japan.com/assets/yolohome/img/banner/webp/top_ko.webp?v202210121500';
  //집을 찾아 보세요
  String House1 = '집을 찾아 보세요';
  double House1_Size = 16;
  String House1_0 = '카나가와현';
  String House1_1 = '¥52,000 / 월';
  String House1_2 = '관리비：￥5,000';
  String House1_3 = '1K / 1층 / 21.4m²';
  String House1_4 = 'JR東海道本線　藤沢　도보 7분';
  //픽업 특집
  String PickupList1 = '픽업 특집';
  String PickupList1_0 = '유학생 구인';
  String PickupList1_1 = '비자 지원 구인';
  String PickupList1_2 = '풀 타임 구인';
  String PickupList1_3 = '도쿄x실내';

  String Service = '서비스';
  String Service_0 = 'SIM 카드';
  String Service_1 = '문진표 작성';
  String Service_2 = '숙박하기';
  String Service_3 = '선불식 카드';

  String Information = '정보';
  String Information_0 = '최고 10,000엔 선물!? 자기 소개 동영상 촬영 캠페인★';
  double Information_0Size = 14;
  String Information_date = '2022.09.08';

  String benner5 = 'https://www.yolo-japan.com/assets/service/img/foods/top_bnr/topbnr_ko.png?v202210171600';
  String benner6 = 'https://www.yolo-japan.com/assets/service/img/home_appliances/bnr/ko/top_bnr_pc.png?v202210171600';
  String follow_Text = '팔로우 해주세요!';

  String howyolo_0 = 'YOLO JAPAN 이란?';
  String howyolo_1 = '일본에 거주하는 외국인에게 새로운 업무를 제공한다!';
  String howyolo_2 = 'YOLO JAPAN은 일본에서 일하고 싶은 외국인을 서포트하는 외국인 전문 구인사이트입니다.';
  String howyolo_3 = '아르바이트, 취업활동 외에도 모니터 업무 또는 인플루언서 등, 즐겁게 할 수있는 일이 가득!';
  String howyolo_4 = '또한, 일본에서 처음으로 외국인 대상 취업 트레이닝 시설[YOLOBASE]를 운영하고 있습니다.';


  ////////////
  double s = 0;



  //////////////////////////////////////
  String language = 'Kr';
  void Kr(){language = 'Kr';}
  void Jp(){language = 'Jp';}
  //////////////////////////////////////
  void language_Change(){
    if(language=='Kr'){
      MainLogo1 = '외국인 대상 구인 정보';
      MainLogo2 = '아르바이트 정사원';
      MainLogo3 = '지역 및 태그 등의 조건 추가';
      MainLogo3_FontSize = 15;
      //
      Pick1 = '최고 10,000엔 선물? 자기 소개 도영상 촬영 캠페인';
      Pick2 = '주로★YORO JAPAN의 구인 검색 방법이 진화했습니다.';
      Pick_FontSize = 13;
      //
      benner1 = 'https://www.yolo-japan.com/assets/top/img/banner/work/n1n2_sp_ko.png?v202210031830';
      benner2 = 'https://www.yolo-japan.com/assets/top/img/banner/work/fulltime_pc_ko.png?v202210031830';
      //
      interest1 = '인기 급상승！';
      interest1_0 = '【일본인 초심자 OK☆】쉐어하우스 청소 【기숙사 있음】【세타가야 지역】';
      interest1_1 = '가벼운 작업 빌딩 청소';
      interest1_2 = '시급 ¥1,100 ～ ¥1,375';
      interest1_3 = 'Shibuya / Tokyo　渋谷 / 東京都';
      interest1_4 = '일상 회화 수준 (N3 상당)';

      interest2 = '대인기! 단기 아르바이트';
      interest2_Size = 16;
      interest2_0 = '【최대 10,000엔 GET!] 영주자 · 정주자 · 배우자...';
      interest2_1 = '10,000';
      interest2_2 = '2022/09/28 ~ 2022/10/31';
      interest2_3 = '11';

      benner3 = 'https://www.yolo-japan.com/assets/top/img/banner/webp/yolocard_top_ko.webp?v202210121500';
      benner4 = 'https://www.yolo-japan.com/assets/yolohome/img/banner/webp/top_ko.webp?v202210121500';

      House1 = '집을 찾아 보세요';
      House1_Size = 16;
      House1_0 = '카나가와현';
      House1_1 = '¥52,000 / 월';
      House1_2 = '관리비：￥5,000';
      House1_3 = '1K / 1층 / 21.4m²';
      House1_4 = 'JR東海道本線　藤沢　도보 7분';

      PickupList1 = '픽업 특집';
      PickupList1_0 = '유학생 구인';
      PickupList1_1 = '비자 지원 구인';
      PickupList1_2 = '풀 타임 구인';
      PickupList1_3 = '도쿄x실내';

      Service = '서비스';
      Service_0 = 'SIM 카드';
      Service_1 = '문진표 작성';
      Service_2 = '숙박하기';
      Service_3 = '선불식 카드';

      Information = '정보';
      Information_0 = '최고 10,000엔 선물!? 자기 소개 동영상 촬영 캠페인★';
      Information_0Size = 14;
      Information_date = '2022.09.08';

      benner5 = 'https://www.yolo-japan.com/assets/service/img/foods/top_bnr/topbnr_ko.png?v202210171600';
      benner6 = 'https://www.yolo-japan.com/assets/service/img/home_appliances/bnr/ko/top_bnr_pc.png?v202210171600';

      follow_Text = '팔로우 해주세요!';

      howyolo_0 = 'YOLO JAPAN 이란?';
      howyolo_1 = '일본에 거주하는 외국인에게 새로운 업무를 제공한다!';
      howyolo_2 = 'YOLO JAPAN은 일본에서 일하고 싶은 외국인을 서포트하는 외국인 전문 구인사이트입니다.';
      howyolo_3 = '아르바이트, 취업활동 외에도 모니터 업무 또는 인플루언서 등, 즐겁게 할 수있는 일이 가득!';
      howyolo_4 = '또한, 일본에서 처음으로 외국인 대상 취업 트레이닝 시설[YOLOBASE]를 운영하고 있습니다.';

    }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    else if(language=='Jp'){
      MainLogo1 = '外国人向けお仕事情報';
      MainLogo2 = 'アルバイト・正社員';
      MainLogo3 = 'エリアやタグなどの条件を追加';
      MainLogo3_FontSize = 12;
      //
      Pick1 = '最高10,000円プレゼント！？自己紹介動画撮影キャンペーン★';
      Pick2 = '注目★YOLO JAPANの求人検索方法が進化しました！';
      Pick_FontSize = 11;
      //
      benner1 = 'https://www.yolo-japan.com/assets/top/img/banner/work/n1n2_sp_ja.png?v202210121500';
      benner2 = 'https://www.yolo-japan.com/assets/top/img/banner/work/fulltime_sp_ja.png?v202210121500';
      //
      interest1 = '人気急上昇！';
      interest1_0 = '【日本語初心者OK☆】シェアハウスの清掃【寮あり】【世田谷】';
      interest1_1 = '軽作業 ビルクリーニング';
      interest1_2 = '時給 ¥1,100 ～ ¥1,375';
      interest1_3 = '渋谷 / 東京都';
      interest1_4 = '日常会話レベル（N3相当）';

      interest2 = '大人気！単発で稼げるモニターのお仕事';
      interest2_Size = 13;
      interest2_0 = '【最大10,000円ゲット！】永住者・定住者・配偶者...';
      interest2_1 = '10,000';
      interest2_2 = '2022/09/28 ~ 2022/10/31';
      interest2_3 = '11';

      benner3 = 'https://www.yolo-japan.com/assets/top/img/banner/webp/yolocard_top_ja.webp?v202210121500';
      benner4 = 'https://www.yolo-japan.com/assets/yolohome/img/banner/webp/top_ja.webp?v202210121500';

      House1 = 'YOLO HOMEでお部屋を探してみましょう';
      House1_Size = 13;
      House1_0 = '東京都';
      House1_1 = '￥43,000 / 月';
      House1_2 = '管理費：￥5,000';
      House1_3 = '1K / 1階 / 23.27m²';
      House1_4 = 'JR青梅線　福生　徒歩7分';

      PickupList1 = 'ピックアップ特集';
      PickupList1_0 = '留学生求人';
      PickupList1_1 = 'ビザ支援求人';
      PickupList1_2 = 'フルタイム求人';
      PickupList1_3 = '東京x室内';

      Service = 'サービス';
      Service_0 = 'SIMカード';
      Service_1 = '問診票作成';
      Service_2 = '泊まる';
      Service_3 = 'プリペイドカード';

      Information = 'お知らせ';
      Information_0 = '【当選者はあなた！？】オンラインモニターの当選者発表★9月★';
      Information_0Size = 11;
      Information_date = '2022.09.08';

      benner5 = 'https://www.yolo-japan.com/assets/service/img/foods/top_bnr/topbnr_ja.png?v202210141710';
      benner6 = 'https://www.yolo-japan.com/assets/service/img/home_appliances/bnr/ja/top_bnr_pc.png?v202210141710';

      follow_Text = 'FOLLOW US!';

      howyolo_0 = 'YOLO JAPAN とは？';
      howyolo_1 = '日本に住む外国人に新しい働き方を提供するメディア';
      howyolo_2 = 'YOLO JAPANとは、日本で働きたい外国人をサポートする「外国人専門求人サイト」です。';
      howyolo_3 = 'アルバイト・正社員のほかに、モニターのお仕事やインフルエンサーのお仕事など、楽しみながらできるお仕事がたくさん！';
      howyolo_4 = 'また、日本初の外国人向け就労トレーニング施設「YOLO BASE」を運営しています。';

    }
    update();
    //end
  }
}



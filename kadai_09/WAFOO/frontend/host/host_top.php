<?php
session_start(); //セッションを使う場合は必ず先頭につける

//1.  DB接続します
include "../../backend/function.php";
$pdo = db_con();

//２．データ登録SQL作成
//A 全てのデータを取得する場合（最新の12件のみ表示）
$stmt = $pdo->prepare("SELECT * FROM wafoo_host_table WHERE hostPreview = 1 order by id desc LIMIT 3");
$status = $stmt->execute();

//     //B  最後に投稿されたデータを表示する場合
// $stmt = $pdo->prepare("SELECT * FROM wafoo_host_table WHERE id =(select max(id) from wafoo_host_table)");
// $status = $stmt->execute();

//３．データ表示
$view="";
if($status==false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit("SQL_ERROR:".$error[2]);

}else{
    //Selectデータの数だけ自動でループしてくれる
    //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php

    // //--------A 全ての回答を表示する場合---------------
    while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= '<a href="#" class="hostlist_box">';
    $view .= '<img src="../../data/img/event_thum.jpg" alt="イベント仮写真" class="hostlist_eventThumbnail">';
    $view .= '<img src="data/img/host_thum.jpg" alt="" class="hostlist_pic">';
    $view .= '<h3 class="hostlist_name">'.$result["sei"].$result["mei"].'</h3>';
    $view .= '<p>'.$result["cookGood"].'</p>';
    $view .= '<p>'.$result["station"].'</p>';
    $view .= '</a>';
    }
}
?>

<?php include("../common/headtag.html")?>
<?php include("../common/header.php")?>
<div class="iChatch">
    <!-- <img src="data/img/catch_img.jpg" alt="ホストファミリー" class="iChatch_img"> -->
    <p class="catchText">「食」でもっと気軽に国際体験を</p>
</div>
<main class="hostTop_main">
    <section id="top_about">
        <h2>訪日外国人と一緒に食事を楽しめる<br>民食プラットホーム「WAFOO」 </h2>
        <p class="mainText">WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、<br>食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
        <p class="mainText mt30">またホストの方は、日本に居ながらにして様々な国から来るゲスト達と英語などで<br>コミュニケーションを取る機会をつくることができます。</p>
        <p class="mainText mt30">日本を訪れる外国人は今や年間約3000万人。<br>彼らが特に楽しみにしているのが、日本の食を楽しむこと。</p>
        <p class="mainText mt30">あなたも「日本食」を通じて、国際体験を気軽に楽しんでみませんか？</p>
    </section>
    <section id="top_merit">
        <h2>WAFOO を使うメリットって？</h2>
        <p class="mainText">WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
        <div>
            <h3>メリット 1  家に居ながら国際体験ができる</h3>
            <p>WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
        </div>
        <div>
            <h3>メリット 2  家に居ながら国際体験ができる</h3>
            <p>WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
        </div>
    </section>
    <section id="top_flow">
        <h2>申し込みと提供する体験の流れ</h2>
        <p class="mainText">
            アンケートフォーム入力
            <br>→ 書類審査
            <br>→ 面談
            <br>→ ゲストからの申込みの連絡があり次第、ホスト側に連絡
            <br>→ 日時・集合場所の調整
            <br>→ 現地集合し、「民食」体験
            <br>→ 解散・レビュー
            <br>→ インセンティブの振込
        </p>
    </section>
    <section id="top_plan">
        <h2>3つのプラン</h2>
        <p class="mainText">WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、<br>食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
        <div class="plan_list">
            <div class="plan_box">
                <h3>Cook Plan</h3>
                <p>WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
                <p>¥6000〜</p>
                <p>2hour</p>
                <p>食事のみ</p>
            </div>
            <div class="plan_box">
                <h3>Market + Cook Plan</h3>
                <p>WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
                <p>¥9000〜</p>
                <p>3〜5hour</p>
                <p>料理 + 食事</p>
            </div>
            <div class="plan_box">
                <h3>Event Plan</h3>
                <p>WAFOOは訪日外国人が、日本のローカルな食事をホストと一緒に作ったり、食べりすることで、日本の食文化を楽しむことができるサービスです。</p>
                <p>¥12000〜</p>
                <p>6hour</p>
                <p>スーパー ＋ 料理 + 食事</p>
            </div>
        </div>
    </section>
    <section id="top_experience">
        <h2>どんな体験があるのか見てみよう</h2>
        <div class="top_host_list margin_center"><?=$view?></div>
    </section>
    <a href="host_form.php" id="host_formBtn">ホストに申し込む</a>
    <a href="../../index.php" class="top_returnBtn">WAFOO TOP に戻る></a>
</main>
<?php include("../common/footertag.html")?>





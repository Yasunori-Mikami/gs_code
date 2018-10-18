<?php
session_start(); //セッションを使う場合は必ず先頭につける

//1.  DB接続します
include "backend/function.php";
$pdo = db_con();

//２．データ登録SQL作成
//A 全てのデータを取得する場合（最新の12件のみ表示）
$stmt = $pdo->prepare("SELECT * FROM wafoo_host_table WHERE hostPreview = 1 order by id desc LIMIT 12");
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
    $view .= '<img src="data/img/event_thum.jpg" alt="イベント仮写真" class="hostlist_eventThumbnail">';
    $view .= '<img src="data/img/host_thum.jpg" alt="" class="hostlist_pic">';
    $view .= '<h3 class="hostlist_name">'.$result["sei"].$result["mei"].'</h3>';
    $view .= '<p>'.$result["cookGood"].'</p>';
    $view .= '<p>'.$result["station"].'</p>';
    $view .= '</a>';
    }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WAFOO</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="header_top">
    <h1><a href="index.php">WAFOO</a></h1>
    <nav>
        <ul>
            <li><a href="frontend/host/host_top.php">Become a Host（ホストになる）</a></li>
            <li><a href="frontend/mypage/sign_up.php">Sign up</a></li>
            <li><a href="frontend/mypage/login.php">Log in</a></li>
        </ul>
    </nav>
</header>
<div class="hero_area">
    <video src="data/video/top_hero_video.mp4" autoplay poster="posterimage.jpg" muted autoplay loop class="hero-video">
    </video>
    <p class="hero_catchCopy">Explore Local Japan <br>With Home Made Food</p>
</div>
<!-- <p><?=$_SESSION['last_name']?>さん、こんにちは</p> -->
<main class="top_main">
    <section>
        <h2>New Experience</h2>
        <div class="top_host_list"><?=$view?></div>
    </section>
    <section>
        <h2>Your Recommend Experience</h2>
        <div class="temporary"><p>temporary contents</p></div>
    </section>
    <section>
        <h2>About WAFOO</h2>
        <div class="temporary"><p>temporary contents</p></div>
    </section>
</main>
<?php include("frontend/common/footertag.html")?>
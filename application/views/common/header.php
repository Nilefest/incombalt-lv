<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php echo $description ?>">
    <meta name="keywords" content="<?php echo $keywords ?>">

    <title>
        <?php echo $title ?> | <?php echo $description ?>
    </title>

    <link href="/application/public/css/bootstrap_4.1.1.min.css" rel="stylesheet">
    <link href="/application/public/css/icomoon.css" rel="stylesheet">
    <link href="/application/public/css/all.css" rel="stylesheet">
    <!-- Optional CSS -->
    <?php if(isset($css)): foreach($css as $style):?>
    <link href="/application/public/css/<?php echo $style;?>.css" rel="stylesheet">
    <?php endforeach; endif; ?>

    <!-- jQuery JS -->
    <script src="/application/public/js/jquery-2.2.0.min.js" type="text/javascript" charset="utf-8"></script>

</head>

<body>
    <header>
        <div class="logo"><img src="/application/public/img/logo.png"></div>
        <nav>
            <ul>
                <li><a href="/contact">
                        <?php echo $notes['contact'];?></a></li>
                <li><a href="/production">
                        <?php echo $notes['production'];?></a></li>
                <li><a href="/">
                        <?php echo $notes['about'];?></a></li>
            </ul>
        </nav>
        <div class="lang">
            <a href="?lang=eng">ENG</a>|<a href="?lang=ltv">LV</a>|<a href="?lang=rus">RUS</a>
        </div>
        <div class="clear"></div>
        <?php if($title == 'ADM'): ?>
        <div class="adm">
            <ul>
                <li style="padding-right:25px; font-size:30px; margin-top:-7px;"><b>ADM.PANEL</b></li>
                <li><a href="/admin/contact"><?php echo $notes['contact'];?></a></li>
                <li><a href="/admin/production"><?php echo $notes['production'];?></a></li>
                <li><a href="/admin/about"><?php echo $notes['about'];?></a></li>
            </ul>
        </div>
        <?php endif; ?>
        <div class="clear"></div>
    </header>
    <div class="container">
        <content>

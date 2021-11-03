<?php echo $header ?>

<h1>
    <?php echo $notes['our_contact']; ?>
</h1>
<p>
    <?php echo $main_info; ?>
</p>
<div class="contact_block">
    <h3>
        <?php echo $notes['phone']; ?>
    </h3>
    <p>
        <ul>
            <?php foreach($contacts['phones'] as $phone): ?>
            <li>
                <?php echo $phone; ?>
            </li>
            <?php endforeach; ?>
        </ul>
    </p>
</div>
<div class="contact_block">
    <h3>
        <?php echo $notes['mail']; ?>
    </h3>
    <p>
        <ul>
            <?php foreach($contacts['mails'] as $mail): ?>
            <li>
                <?php echo $mail; ?>
            </li>
            <?php endforeach; ?>
        </ul>
    </p>
</div>
<div class="contact_block">
    <h3>
        <?php echo $notes['address']; ?>
    </h3>
    <p>
        <?php echo $contacts['addr']; ?>
    </p>
</div>
<div class="clear"></div>
<a target="_blanc" href="https://www.google.com/maps/place/Pankr%C3%A1c+Business+Center/@50.0510173,14.4381394,17z/data=!4m5!3m4!1s0x470b9475f41d037b:0x10a6e8284819ed81!8m2!3d50.0510311!4d14.4408967"><img src="/application/public/img/map.png" alt="" class="map"></a>

<?php echo $footer ?>

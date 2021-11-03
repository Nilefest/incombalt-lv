<?php echo $header ?>
<h1>
    <?php echo $notes['production']; ?>
</h1>
<hr>

<?php foreach($providers as $provider): ?>
<div class="block">
    <img class="main" src="/application/public/img/providers/<?php echo $provider['id']; ?>_img.jpg" alt="<?php echo $provider['title']; ?>">
    <ul>
        <img src="/application/public/img/providers/<?php echo $provider['id']; ?>.jpg" alt="<?php echo $provider['title']; ?>">
        <?php foreach($provider['prod_types'] as $key => $prod_type): ?>
        <li><a class="link" href="/production/categories/<?php echo $provider['title']; ?>/<?php echo $key;?>"><?php echo $prod_type;?></a></li>
        <?php endforeach; ?>
    </ul>
    <div class="clear"></div>
</div>
<hr>
<?php endforeach; ?>

<?php echo $footer ?>

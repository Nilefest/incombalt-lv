<?php echo $header ?>

<h1>
    <a href="/production">
        <?php echo $provider; ?></a> | 
    <?php echo $categorie; ?>
</h1>
<hr>
<?php foreach($productions as $product):?>
<a href="/production/view/<?php echo $product['id']; ?>" class="product">
    <h4><?php echo $product['title']; ?></h4>
    <div class="main"><img src="/application/public/img/production/<?php echo $product['id']; ?>.png?v=2" alt="<?php echo $product['title']; ?>"></div>
    <p>
        <?php echo $product['info']; ?>
    </p>
    <i class="more">More</i>
</a>
<?php endforeach; ?>
<div class="clear"></div>
<hr>

<?php echo $footer ?>

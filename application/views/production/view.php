<?php echo $header ?>

<h1>
    <a href="/production/categories/<?php echo $production['provider']."/".$production['type']; ?>">
        <?php echo $categorie; ?></a> |
    <?php echo $production['title'];?>
</h1>
<img class="product_img" src="/application/public/img/production/<?php echo $production['id'];?>.png" alt="<?php echo $production['title'];?>">
<p>
    <?php echo $production['content'];?>
</p>
<div class="clear"></div>
<table>
    <?php foreach($prod_notes as $prod_note): ?>
    <tr>
        <th style="width: 40%;">
            <?php echo $prod_note['title']; ?>
        </th>
        <td>
            <?php echo $prod_note['content']; ?>
        </td>
    </tr>
    <?php endforeach; ?>
</table>
<hr>
<?php echo $footer ?>

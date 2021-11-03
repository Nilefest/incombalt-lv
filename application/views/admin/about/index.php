<?php echo $header ?>
<h1>Редактировать страницу '
    <?php echo $notes['about']; ?>'</h1>
<form method="post" action="">
    <input style="position:relative;float:right;top:-50px" class="button" type="submit" value="Сохранить">
    <textarea name="article" id="article" style="width:100%; min-height:500px;">
            <?php echo $main_info; ?>
        </textarea>
</form>
<?php echo $footer ?>

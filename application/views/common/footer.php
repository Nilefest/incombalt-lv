</content>
</div>
<footer>
    <div class="links">
        <h4>
            <?php echo $notes['links'];?>
        </h4>
        <a href="/">
            <?php echo $notes['about_company'];?></a>
        <a href="/production">
            <?php echo $notes['medical_devices'];?></a>
        <a href="/contact">
            <?php echo $notes['contact_us'];?></a>
    </div>
    <div class="contact">
        <h4>
            <?php echo $notes['to_map'];?>
        </h4>
        <span>
            <?php echo $addr;?></span>
    </div>
    <div class="logo"><img src="/application/public/img/logo.png"></div>
    <div class="clear"></div>
    <div class="copyright">Copyright © 2018 GAMMA MedHouse </div>
</footer>
<!-- Optional JS -->
<?php if(isset($js)): foreach($js as $script):?>
<script src="/application/public/js/<?php echo $script;?>.js" type="text/javascript" charset="utf-8"></script>
<?php endforeach; endif; ?>
<!-- WYSIWYG Editor -->
<!-- TinyMCE -->
<script src="/application/public/js/tinymce/tinymce.min.js"></script>
<!-- Optional JavaScript -->
<script>
    $(document).on('ready', function() {
        tinymce.init({
            selector: 'textarea#article'
        });
    });

</script>
</body>

</html>

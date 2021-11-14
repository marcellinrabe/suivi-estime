    <div class="frame">

        <div class="avatar">
            <img src="<?= $user_pic ?>" alt="avatar">
        </div>

        <p   style="padding-left:10px;"><?= $name ?></p>
        <p   style="padding-left:10px;">rank <?= $point ?></p>
    

        <form action="index.php?action=update" method="post">

            <div class="button_container">

                <button id="button_appendPoint<?=$id?>" onclick="option='append'" type="button">
                    <i class="fas fa-chevron-up"></i>
                </button>

                <button id="button_substractPoint<?=$id?>" onclick="option='substract'" type="button">
                    <i class="fas fa-chevron-down"></i>
                </button>

            </div>
                        
            <div id="div_toValid<?=$id?>" class="validation">
                <p>
                    <label for="motif_updatePoint">motif</label><br/>
                    
                    <textarea name="motif_updatePoint<?=$id?>" id="motif_updatePoint" cols="30" rows="5" required></textarea>
                </p>

                <div>
                    <input id="validation" onclick="apply_update()" type="submit" value="valider">
                </div>

            </div>

        </form>
    </div>

    <?php if($id == 1){
    // condition pour que les variables last_id  soit declaré une et une seule fois
    ?>
        <script> 
            let last_id = <?=$last_id?>;
        </script>

    <?php } ?>
        

    <script type="text/javascript" src="assets/js/index.js"></script>


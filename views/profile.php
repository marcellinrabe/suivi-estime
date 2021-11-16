    <div class="frame">

        <div id= "avatar<?=$id?>" class="avatar">
            <img src="<?= $user_pic ?>" alt="avatar">
        </div>

        <p style="padding-left:10px;"><?= $name ?></p>
        <p id="rank<?=$id?>" style="padding-left:10px;">estime : <?= $point ?></p>
    

        <form action="index.php?action=update" method="post">

            <div class="button_container">

                <button id="button_appendPoint<?=$id?>" onclick="option='appendTo'" type="button">
                    <i class="fas fa-chevron-up"></i>
                </button>

                <button id="button_substractPoint<?=$id?>" onclick="option='substractTo'" type="button">
                    <i class="fas fa-chevron-down"></i>
                </button>

            </div>
                        
            <div id="div_toValid<?=$id?>" class="validation">
                <p>
                    <label for="motif_updatePoint<?=$id?>"><h2>MOTIF</h2></label>
                    
                    <input type="text" name="motif_updatePoint<?=$id?>" id="motif_updatePoint<?=$id?>" required>
                </p>

                <div>
                    <input id="validation<?=$id?>" type="submit" value="valider">
                </div>

            </div>

        </form>
    </div>
    <script type="text/javascript" src="assets/js/index.js"></script>


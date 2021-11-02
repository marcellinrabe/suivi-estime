


    <!-- template used here -->
   
    <div class="frame"> 
        <div class="avatar"></div>
        <!-- mandrapa lo de atao div img src="assets/img/marcellin.jpg" alt="avatar"> -->
        <p style="padding-left:10px;"><?= $name ?></p>
        <p style="padding-left:10px;">rank <?= $user_point ?></p>
    

        <form action="models/save.php" method="post">
            <!-- reto input roa reto tokony iray ihany no lasa -->
            <!-- the source below is showing where only a button making point is selected -->
            <div class="button_container">
                <button id="ba<?=$id?>" onclick="sendData(  {ba<?=$id?>:'TRUE'}  )" type="button">
                    <i class="fas fa-chevron-up"></i>
                </button>
                <button id="bs<?=$id?>" onclick="sendData(  {bs<?=$id?>:'FALSE'} )" type="button">
                    <i class="fas fa-chevron-down"></i>
                </button>
            </div>
                        
            <div id="dn<?=$id?>" class="validation">
                <p>
                    <label for="motif">motif</label><br/>
                    <textarea name="m<?=$id?>" id="motif" cols="30" rows="5" required></textarea>
                </p>

                <div><input  type="submit"  value="valider"></div>
            </div>

        <!-- ------------------------------------------------------------------------ -->
        </form>
        <form action="" method="post"></form>
    </div>
    <script type="text/javascript" src="assets/js/hidden.js"></script>


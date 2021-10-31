


    <!-- template used here -->
   
    <div class="frame"> 
        <div class="avatar"></div>
        <!-- mandrapa lo de atao div img src="assets/img/marcellin.jpg" alt="avatar"> -->
        <p><?= $name ?></p>
    

        <form action="models/save.php" method="post">
            <!-- the source below is showing where only a button making point is selected -->
            <div class="button_container">
                <button id="ba<?=$id?>" type="button" name="app" value="app">+</button>
                <button type="button" name="app" value="sub">-</button>
            </div>
            
            <div id="dn<?=$id?>" class="validation">
                <p>
                    <label for="motif">motif</label><br/>
                    <textarea name="motif" id="motif" cols="30" rows="5" required></textarea>
                </p>
                <div><input type="submit" value="valider"></div>
            </div>

        <!-- ------------------------------------------------------------------------ -->
        </form>
    </div>
    <script type="text/javascript" src="assets/js/hidden.js"></script>


    <?php require 'views/header.php'; ?>

    <!-- template used here -->
    <div class="frame"> 
        <div class="avatar"></div>
        <!-- mandrapa lo de atao div img src="assets/img/marcellin.jpg" alt="avatar"> -->
        <p><?= $name ?></p>
    
        <form action="" method="post">
            <!-- the source below is showing where only a button making point is selected -->
            <div class="button_container">
                <button type="button" name="app" value="app">+</button>
                <button type="button" name="sub" value="sub">-</button>
            </div>
            
            <div class="validation">
                <p>
                    <label for="motif">motif</label><br/>
                    <textarea name="motif" id="motif" cols="30" rows="5" required></textarea>
                </p>
                <div><input type="submit" value="valider"></div>
            </div>

        <!-- ------------------------------------------------------------------------ -->
        </form>
    </div>


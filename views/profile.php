
<!-- template used here -->
<div <?php #bootstrap ?> >   
    <ul>
        <li><?= $user_image ?></li>
        <li><?= $name ?></li>
    </ul>

    <form action="" method="post">
        <!-- the source below is showing where only a button making point is selected -->

        <label for="motif"></label>
        <textarea name="motif" id="motif" cols="30" rows="10"></textarea>
        <input type="submit" value="valider">
    </form>
</div>

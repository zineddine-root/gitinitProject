<?php
    include("model/database.php");
    include("model/product.php");

    $product_id = $_GET["id"];

    $db = db_connect();
    $product = product_get_one($db,$product_id);
?>

<?php include("layout/header.php") ?>
<?php include("layout/nav.php") ?>

    <div class="content">
        <h1> Modifier un article</h1>

        <form method="post" action="product_update_save.php">

            <input type="text" name="product_id" value="<?php echo $product["product_id"]?>" hidden>
            <input type="text" name="product_name" placeholder="article" value="<?php echo $product["product_name"]?>">
            <input type="text" name="product_detail" placeholder="detail" value="<?php echo $product["product_detail"]?>">
            <input type="text" name="product_price" placeholder="prix" value="<?php echo $product["product_price"]?>">
            <input type="number" name="product_qt" placeholder="quantité" value="<?php echo $product["product_qt"]?>">

            <input type="submit" value="Modifier">
        </form>

    </div>

<?php include("layout/footer.php") ?>

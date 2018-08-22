<!DOCTYPE html>
<html>
<?php include $params['path'] . '/php/layout/head.php'; ?>
<body>

<div class="pageWrapper js-pageWrapper" id="<?php echo $params['layout']; ?>">

    <?php include $params['path'] . '/php/layout/headerLogged.php'; ?>

    <?php if (
        $params['layout'] == 'dashboard'
        or
        $params['layout'] == 'dashboardPersonal'
        ) { ?>       
        

        <?php include $params['path'] . '/php/layout/parts/filter-dashboard.php'; ?>

    <?php }; ?>


    <div class="pageContent js-pageContent">
        <?php include $params['path'] . '/php/views/' . $params['layout'] . '/index.php'; ?>
    </div>


    <?php include $params['path'] . '/php/layout/footer.php'; ?>

</div>

</body>
</html>


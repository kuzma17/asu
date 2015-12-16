<h2>Результаты поиска</h2>
<hr>
<strong>Запрос:</strong> <?=$search?><br>
<div>

    <?php
    if(isset($errors)) {
        echo $errors;
    }else {

        foreach ($list as $l) {
            echo '<li><a href="http://'.getenv("HTTP_HOST").'/' . $l->url . '">' . $l->title . '</a></li>';
        }
    }
    ?>

</div>
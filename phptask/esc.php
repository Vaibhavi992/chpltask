<?php
$a='1';
$b=&$a;
$b="2$b";
{
    echo "$a"."<br>";
    echo "$b";
}

?>
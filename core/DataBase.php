<?php
namespace Core;

use PDO;
use PDOException;

class DataBase
{
    public function getDataBase()
    {
        $conf = include_once __DIR__ . "/../app/database.php";
        if($conf['driver'] == 'sqlite')
        {
            $sqlite = __DIR__ . "/../storage/database/" . $conf['sqlite']['host'];
            $sqlite = 'sqlite:'.$sqlite;
            $charset = $conf['sqlite']['charset'];
            $collation = $conf['sqlite']['collation'];

            try{
                $pdo = new PDO($sqlite);
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH-OBJ);
                return $pdo;
            }catch(PDOException $e){
                echo $e->getMessage();
            }

        }elseif(conf['driver'] == 'mysql'){

        }
    }
}

 ?>

<?php

/**
 * Created by PhpStorm.
 * User: Razvan
 * Date: 6/3/2017
 * Time: 11:26
 */
include("DAL/OracleDB.php");
include ("DAL/Contracts/IUserRepository.php");
class UserRepository implements IUserRepository
{
    private $oracleDb;
    private $selectableFields = "kid_user_id, parent_user_id, username, first_name, last_name, birth_date, active";
    public function __construct()
    {
        $this->oracleDb = new OracleDB();
    }

    public function getOneWhere($conditionString, $conditionParams)
    {
        $user = $this->oracleDb->getRows("kids_users", $this->selectableFields, $conditionString, $conditionParams);
//        var_dump($user);exit();
        return $user;
    }
}
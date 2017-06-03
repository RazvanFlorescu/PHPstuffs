<?php
/**
 * Created by PhpStorm.
 * User: Razvan
 * Date: 6/3/2017
 * Time: 11:25
 */

interface IUserRepository{
    public function getOneWhere($conditionString, $conditionParams);
}
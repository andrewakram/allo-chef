<?php

namespace App\Http\Controllers\Interfaces\User;

interface AuthRepositoryInterface{

    public function create($attributes);
    public function sendSMS($role,$type,$email,$name,$phone);
    public function codeCheck($role,$phone,$code);
    public function activeUser($phone);
    public function checkIfEmailExist($email);
    public function checkIfPhoneExist($phone);
    public function checkJWT($jwt);
    public function checkId($id);
    public function userData($jwt);
    public function editeProfile($id,$request,$lang);
    public function addUserLocation($id,$request,$lang);
    public function mainLocation($id,$request,$lang);
    public function updateUserLocation($id,$request,$lang);
    public function getUserLocation($id,$request,$lang);
    public function deleteUserLocation($id,$request,$lang);

    public function getProfileData($id);
//    public function getLastSubscription($id);
}

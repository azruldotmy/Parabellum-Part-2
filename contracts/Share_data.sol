// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;



contract Share_data {

    address private patient;

    constructor() public{
     patient = msg.sender;
    }
   
    function getData() public view returns(address) {        //Returns address and balance of the patient
        return patient;
    }

     function getBalance() public view returns(uint256){
        return patient.balance;
    }
}


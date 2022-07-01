// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Share Data
 * @dev Share patient's data
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
import {Insert_Data} from "./Insert_Data.sol";

contract Share_Data {

    address private patient;
    uint256 public no_of_patient = 0;
    uint256 public no_of_doctor = 0;

    struct Data{
        uint id;
        string name;
        uint phoneNo;
        string location;
        string problem; 
        uint age;
        string doc;
        bool vacant;
        uint payment;
        string date;
        address payable patient;
    }

    constructor() {
        patient = msg.sender;
    }
   
    function cancerCategory() public view returns(address) {        //Returns address and Cancer Category
        return patient;
    }

    function patientId() public view returns(address){              //Returns address and Patient ID
        return patient;
    }

    function dataRights() public view returns(address) {            //Returns address and Data Rights
        return patient;
    }

    function dateFrom() public view returns(address){               //Returns address and Date Start
        return patient;
    }

    function dateTo() public view returns(address){                 //Returns address and Date End
        return patient;
    }
}

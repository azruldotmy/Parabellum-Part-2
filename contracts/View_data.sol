// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import {Insert_data} from "./Insert_data.sol";

/** 
 * @title View Data
 * @dev View data that has been added in Insert Data
 */
contract View_data is Insert_data {
    
      function getData(uint Data_by_id) public view returns(string memory _name, string memory _location, uint _phoneNo, string memory _problem, uint  _payment, string memory _doc, uint age) {
        require(msg.sender != address(0));

        require(getData(Data_by_id);(patient).hasAccount, "Patient's ID is does not exist.");
        Data storage w = Data_by_id.exists(address(0));

        return(w.id, w.name, w.phoneNo, w.location, w.problem, w.age, w.doc, w.vacant, w.payment);


       revert('Patient not found');
      }
  }
  

 


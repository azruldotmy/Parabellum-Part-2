// SPDX-License-Identifier: GPL-3.0

pragma solidity "0.8.6";
import {Insert_data} from "./Insert_data.sol";

/** 
 * @title View Data
 * @dev View data that has been added in Insert Data
 */
contract View_data is Insert_data{   

     mapping(uint => Data) public override Data_by_id;
    
    function viewData(string memory _name, string memory _location, uint _phoneNo, string memory _problem, bool _vacancy, uint  _payment, string memory _doc, uint age, string memory date) public {
        Data_by_id[no_of_patient] = Data(no_of_patient,_name,_phoneNo,_location, _problem, age, _doc, _vacancy, _payment, date, payable (address(0)));
        Data_by_id[no_of_doctor] = Data(no_of_patient,_name,_phoneNo,_location, _problem, age, _doc, _vacancy, _payment, date, payable (address(0)));
    }
}
  

 


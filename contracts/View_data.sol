// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import {Insert_data} from "./Insert_data.sol";

/** 
 * @title View Data
 * @dev View data that has been added in Insert Data
 */
contract View_data {
    
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
        address payable patient;
    }
    
     mapping(uint => Data) public Data_by_id;

     modifier notPatient(uint _index) {
        require(msg.sender == Data_by_id[_index].patient, "Only patient can access this");
        _;
     }   

     modifier IsVacant(uint _index) {
        require(Data_by_id[_index].vacant == true, "Doctor is currently with another patient.");
        _;
     }

    modifier enoughTx(uint _index) {
        require(msg.value >= uint(Data_by_id[_index].payment), "Not enough Ether in your wallet");
        _;
    }
      
  }
  

 


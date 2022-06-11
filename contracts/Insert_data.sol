// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Insert_data {

    address payable patient;

    uint256 public no_of_patient = 0;
    uint256 public no_of_doctor = 0;

    struct Data{
        uint id;
        string name;
        uint phoneNo;
        string location;
        string problem;
        uint date;
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

    function addPatient(string memory _name, string memory _location, uint _phoneNo, uint  _payment) public {
        require(msg.sender != address(0));
        no_of_patient ++;
        bool _vacancy = true;
        Data_by_id[no_of_patient] = Data(no_of_patient,0,_name,_location, _phoneNo,_payment,0,_vacancy, msg.sender, address(0)); 
        
    }
  
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
        address payable patient;
    }
    
    mapping(uint => Data) public Data_by_id;

    struct Doctor{
        
    }
    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}
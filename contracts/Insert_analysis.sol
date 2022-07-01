// SPDX-License-Identifier: GPL-3.0

pragma solidity "0.8.6";
import {Insert_data} from "./Insert_data.sol";

/**
 * @title Insert Analysis
 * @dev Store Analysis for patient
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Insert_analysis {

    address payable patient;

    uint256 public no_of_patient = 0;
    uint256 public no_of_doctor = 0;

    struct analysis{
        uint id;             /* Patient id from another function*/
        uint anlysisid;     /* Analysis id*/
        uint priority;     /*priority from 1-5*/
        uint bpressure;
        uint hrate;
        string typeofdisease;
        string analysis; 
        string doc;
        string dateanalysis;
        address payable patient;
    }
    
    mapping(uint => analysis) public analysis_by_id;

     modifier notPatient(uint _index) {
        require(msg.sender == analysis_by_id[_index].patient, "Only patient can access this");
        _;
     }   


    function addAnalysis(uint _anlysisid, uint _priority, uint _bpressure, uint _hrate, string memory _typeofdisease, string memory _analysis, string memory _doc, string memory dateanalysis) public {
        require(msg.sender != address(0));
       // no_of_patient ++;
        //no_of_doctor ++;
       // bool _vacancy = true;
        analysis_by_id[no_of_patient] = analysis(no_of_patient,_anlysisid, _priority,_bpressure, _hrate, _typeofdisease, _analysis,_doc, dateanalysis, payable (address(0)));
        analysis_by_id[no_of_doctor] = analysis(no_of_patient,_anlysisid, _priority,_bpressure, _hrate, _typeofdisease, _analysis,_doc, dateanalysis, payable (address(0)));
        
    }
}
// SPDX-License-Identifier: GPL-3.0

pragma solidity "0.8.6";
import {Insert_analysis} from "./Insert_analysis.sol";

/** 
 * @title View analysis
 * @dev View analysis that has been added in Insert analysis
 */
contract View_analysis is Insert_analysis{   

       mapping(uint => analysis) public override analysis_by_id;

    function viewAnalysis(uint _anlysisid, uint _priority, uint _bpressure, uint _hrate, string memory _typeofdisease, string memory _analysis, string memory _doc, string memory dateanalysis) public { //View the data from the id entered
        analysis_by_id[no_of_analysis] = analysis(no_of_analysis,_anlysisid, _priority,_bpressure, _hrate, _typeofdisease, _analysis,_doc, dateanalysis, payable (address(0)));
        analysis_by_id[no_of_examination] = analysis(no_of_examination,_anlysisid, _priority,_bpressure, _hrate, _typeofdisease, _analysis,_doc, dateanalysis, payable (address(0)));
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Ballot {

    mapping (string => uint256) public votesReceived;
     mapping(address => bool) public voters;

    string[] public pollItems;


    // push one string to array
    function pushOption(string memory _data) public{
        pollItems.push(_data);
    }
    /*   //get all the strings in array form
    function GetAllStrings() view public returns(string[] memory){
        return strings;
    }

    //get nth string of strings array
    function GetNthStrings(uint x) view public returns(string memory){
        return strings[x];
    }

    //push array of strings in strings
    function pushStringsArray(string[] memory someData) public{
        for (uint i=0; i < someData.length; i++) {
           strings.push(someData[i]);
        }
    }

    //change whole strings, take array of strings as input
    function changeWholeString(string[] memory someData) public{
       strings=someData;

    }*/

   function vote(string memory option) public {
       require(!voters[msg.sender], "You have already voted.");
        voters[msg.sender] = true;
    votesReceived[option] += 1;
  }

}

pragma solidity ^0.4.24;

import './GreeterV2.sol';

contract GreeterV2 is Greeter{

    event PublishName(string name, uint256 date, address publisher);
    mapping(string => string) name_message;

    function greet(string _name) public view returns (string){
        return string(abi.encode("Message from ", name, " to ", _name , " is " , name_message[_name]));
    }

    function setMessage(string _name, string _message) public returns (bool){
        name_message[_name] = _message;
        return true;
    }

    function getMessage(string _name) public view returns (string){
        return name_message[_name];
    }

}
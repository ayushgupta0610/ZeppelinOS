pragma solidity ^0.4.24;

import './Greeter.sol';

contract GreeterV2 is Greeter{

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
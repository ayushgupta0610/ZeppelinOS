pragma solidity ^0.4.24;

import './GreeterV2.sol';

contract GreeterV3 is GreeterV2{

    event PublishName(string name, string message, uint256 date, address publisher);

    mapping(string => string) name_message;

    function greet(string _name) public view returns (string){
        return string(abi.encode("Message from ", name, " to ", _name , " is " , name_message[_name]));
    }

    function setMessage(string _name, string _message) public returns (bool){
        name_message[_name] = _message;
        emit PublishName(_name, _message, now, msg.sender);
        return true;
    }

    function getMessage(string _name) public view returns (string){
        return name_message[_name];
    }

}
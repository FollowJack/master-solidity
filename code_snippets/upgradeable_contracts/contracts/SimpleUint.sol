pragma solidity ^0.4.18;

import './Upgradeable.sol';

contract SimpleUint is Upgradeable {
    uint public value;
    string public name = "SimpleUint";

    function setValue(uint _value) public {
        value = _value;
    }
}

contract SimpleUintV2 is SimpleUint {
    function setValue(uint _value) public {
        value = 200 * _value;
    }
}

contract SimpleUintV3 is SimpleUintV2 {
    uint public anotherValue;

    function setAnotherValue(uint _value) public {
        value = anotherValue + _value;
    }
}

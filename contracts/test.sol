// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract ex_test {

    uint[] public array1;
    string[5] public array2 = ["apple", "banana", "coconut"];

    function getLength1() public view returns (uint) {
        return array1.length;
    }

    function getLength2() public view returns (uint) {
        return array2.length;
    }

    function getArray1(uint _index) public view returns (uint) {
        return array1[_index];
    }

    function getArray2(uint _index) public view returns (string memory) {
        if (_index >= array2.length) {
            return "";
        }

        return array2[_index];
    }

    //

    uint[] public array = [97,98,99];

    function getLength() public view returns(uint) {
        return array.length;
    }

    function popArray() public {
        array.pop();
    }

    function deleteArray(uint _index) public {
        delete array[_index];
    }   

    //

    string[] public fruitArray = ["apple","banana","coconut","durian","pear"];
    
    function linearSearch(string memory _word) public view returns(uint256,string memory){
        for(uint index = 0; index<fruitArray.length; ++index) {
            
            if(keccak256(bytes(fruitArray[index])) == keccak256(bytes(_word))){
        
            return (index, fruitArray[index]);
            }
        }
        return (0, "Nothing");
    }


}


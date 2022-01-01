pragma solidity ^0.4.24;  //specifies the supported versions of solidity.

contract person_identity
{
    
    //declare a string variable for the name of the person
    string name;
    
    //following function gives the name in the contract
    function get_name() public view returns(string)
    {
        return name;
    }
    
    //following function sets the name in the contract
    function set_name(string _name) public
    {
        name = _name;
    }
    
    //repeat the same above process for age
    uint age;       //uint-> unsigned integer
    
    function get_age() public view returns(uint)
    {
        return age; 
    }
    
    function sets_age(uint _age) public
    {
        age = _age; 
    }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SujoyToken {
    string public name = "SujoyToken";
    string public symbol = "SDT";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public _allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event Burn(address indexed burner, uint256 value);

    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply * 10**uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address _to, uint256 _value)
        public
        returns (bool success)
    {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function approve(address _spender, uint256 _value)
        public
        returns (bool success)
    {
        _allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(_allowance[_from][msg.sender] >= _value, "Allowance exceeded");

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        _allowance[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    function allowance(address _owner, address _spender)
        public
        view
        returns (uint256 remaining)
    {
        return _allowance[_owner][_spender];
    }

    function burn(uint256 _value) public returns (bool success) {
        require(
            balanceOf[msg.sender] >= _value,
            "Insufficient balance to burn"
        );
        balanceOf[msg.sender] -= _value;
        totalSupply -= _value;
        emit Burn(msg.sender, _value);
        return true;
    }
}

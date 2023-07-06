// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IWETH {
    /* ERC20 */
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    function totalSupply() external view returns (uint);

    function balanceOf(address owner) external view returns (uint);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);

    function transfer(address to, uint value) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint value
    ) external returns (bool);

    /* WETH */
    event Deposit(address indexed from, uint value);
    event Withdrawal(address indexed from, uint value);

    function deposit() external payable;

    function withdraw(uint256) external payable;
}

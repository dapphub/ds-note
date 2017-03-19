pragma solidity ^0.4.8;

import "ds-test/test.sol";

import "./note.sol";

contract DSNoteTest is DSTest, DSNote {
    function test_0() { this.foo(); }
    function test_1() { this.foo(1); }
    function test_2() { this.foo(1, 2); }
    function test_3() { this.foo(1, 2, 3); }

    function foo() note {}
    function foo(uint a) note {}
    function foo(uint a, uint b) note {}
    function foo(uint a, uint b, uint c) note {}
}

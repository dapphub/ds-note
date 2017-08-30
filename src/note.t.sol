// Copyright (C) 2017  DappHub, LLC
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND (express or implied).

pragma solidity ^0.4.13;

import "ds-test/test.sol";

import "./note.sol";

contract DSNoteTest is DSTest, DSNote {
    function test_0() { this.foo(); }
    function test_1() { this.foo(1); }
    function test_2() { this.foo(1, 2); }
    function test_3() { this.foo(1, 2, 3); }

    function foo() note {}
    function foo(uint a) note { a; }
    function foo(uint a, uint b) note { a; b; }
    function foo(uint a, uint b, uint c) note { a; b; c; }
}

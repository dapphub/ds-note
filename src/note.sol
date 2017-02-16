/// note.sol -- the `note' modifier, for logging calls as events

// Copyright (C) 2017  Nexus Development, LLC
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND (express or implied).

pragma solidity ^0.4.8;

contract DSNote {
    modifier note {
        LogNote(msg.sig, msg.sender, msg.value, msg.data);
        _;
    }

    event LogNote(
        bytes4   indexed  sig,
        address  indexed  sender,
        uint256           value,
        bytes             data
    ) anonymous;
}

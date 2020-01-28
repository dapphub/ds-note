pragma solidity >=0.4.23;

contract VarNote {

    event Note(
        bytes4    indexed  sig,
        address   indexed  guy,
        bytes32[]          arg,
        uint256            wad,
        bytes              fax
    ) anonymous;

    modifier note {
        bytes32 num;
        uint256 wad;

        assembly {
            num := div(calldatasize, 32)
            wad := callvalue
        }

        bytes32[] memory arg = new bytes32[](num);

        for (uint i=0; i<num; i++) {
            bytes32 argdata;
            uint pos = (i * 32) + 4;
            assembly {
                argdata := calldataload(pos)
            }
            arg[i] = argdata;
        }

        emit Note(msg.sig, msg.sender, arg, wad, msg.data);
        _;
    }
}

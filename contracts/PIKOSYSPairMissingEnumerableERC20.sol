// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {PIKOSYSPairERC20} from "./PIKOSYSPairERC20.sol";
import {PIKOSYSPairMissingEnumerable} from "./PIKOSYSPairMissingEnumerable.sol";
import {IPIKOSYSPairFactoryLike} from "./IPIKOSYSPairFactoryLike.sol";

contract PIKOSYSPairMissingEnumerableERC20 is
    PIKOSYSPairMissingEnumerable,
    PIKOSYSPairERC20
{
    function pairVariant()
        public
        pure
        override
        returns (IPIKOSYSPairFactoryLike.PairVariant)
    {
        return IPIKOSYSPairFactoryLike.PairVariant.MISSING_ENUMERABLE_ERC20;
    }
}

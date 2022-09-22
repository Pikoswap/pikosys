// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {PIKOSYSPairETH} from "./PIKOSYSPairETH.sol";
import {PIKOSYSPairMissingEnumerable} from "./PIKOSYSPairMissingEnumerable.sol";
import {IPIKOSYSPairFactoryLike} from "./IPIKOSYSPairFactoryLike.sol";

contract PIKOSYSPairMissingEnumerableETH is
    PIKOSYSPairMissingEnumerable,
    PIKOSYSPairETH
{
    function pairVariant()
        public
        pure
        override
        returns (IPIKOSYSPairFactoryLike.PairVariant)
    {
        return IPIKOSYSPairFactoryLike.PairVariant.MISSING_ENUMERABLE_ETH;
    }
}

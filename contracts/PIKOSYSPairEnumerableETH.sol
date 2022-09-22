// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {PIKOSYSPairETH} from "./PIKOSYSPairETH.sol";
import {PIKOSYSPairEnumerable} from "./PIKOSYSPairEnumerable.sol";
import {IPIKOSYSPairFactoryLike} from "./IPIKOSYSPairFactoryLike.sol";

/**
    @title An NFT/Token pair where the NFT implements ERC721Enumerable, and the token is ETH
 */
contract PIKOSYSPairEnumerableETH is PIKOSYSPairEnumerable, PIKOSYSPairETH {
    /**
        @notice Returns the PIKOSYSPair type
     */
    function pairVariant()
        public
        pure
        override
        returns (IPIKOSYSPairFactoryLike.PairVariant)
    {
        return IPIKOSYSPairFactoryLike.PairVariant.ENUMERABLE_ETH;
    }
}

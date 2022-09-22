// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {PIKOSYSPairERC20} from "./PIKOSYSPairERC20.sol";
import {PIKOSYSPairEnumerable} from "./PIKOSYSPairEnumerable.sol";
import {IPIKOSYSPairFactoryLike} from "./IPIKOSYSPairFactoryLike.sol";

/**
    @title An NFT/Token pair where the NFT implements ERC721Enumerable, and the token is an ERC20
 */
contract PIKOSYSPairEnumerableERC20 is PIKOSYSPairEnumerable, PIKOSYSPairERC20 {
    /**
        @notice Returns the PIKOSYSPair type
     */
    function pairVariant()
        public
        pure
        override
        returns (IPIKOSYSPairFactoryLike.PairVariant)
    {
        return IPIKOSYSPairFactoryLike.PairVariant.ENUMERABLE_ERC20;
    }
}

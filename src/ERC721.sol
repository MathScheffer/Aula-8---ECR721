// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ERC721 {
    string public name;
    string public symbol;

    //numero do ntf => endereço do contrato
    mapping(uint256 => address) private nfts;

    //Booleano por que, diferente da aula 7, o contrato vai ser ou tem nft ou não
    mapping(address owner => mapping(address operator => bool))
        private _operatorApprovals;

    function ownerOf(uint256 tokenId) public view virtual returns (address) {
        return nfts[tokenId];
    }

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }
}

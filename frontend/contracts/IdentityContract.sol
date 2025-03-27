// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IdentityContract {
    struct Identity {
        string name;
        string email;
        bool verified;
    }

    mapping(address => Identity) public identities;

    function setIdentity(string memory _name, string memory _email) public {
        identities[msg.sender] = Identity(_name, _email, false);
    }

    function verifyIdentity(address _user) public {
        identities[_user].verified = true;
    }

    function getIdentity(address _user) public view returns (string memory, string memory, bool) {
        Identity memory id = identities[_user];
        return (id.name, id.email, id.verified);
    }
}

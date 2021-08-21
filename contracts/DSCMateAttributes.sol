pragma solidity ^0.5.6;

import "./klaytn-contracts/ownership/Ownable.sol";
import "./interfaces/IDSCMateAttributes.sol";

contract DSCMateAttributes is Ownable, IDSCMateAttributes {
    uint8 public maxLevel = 11;

    mapping(uint256 => uint8) public level;
    function setLevel(uint256 mateId, uint8 _level) onlyOwner external {
        level[mateId] = _level;
    }

    mapping(uint256 => string) public face;
    function setFace(uint256 mateId, string calldata _face) onlyOwner external {
        face[mateId] = _face;
    }

    mapping(uint256 => string) public faceDetailA;
    function setFaceDetailA(uint256 mateId, string calldata _faceDetailA) onlyOwner external {
        faceDetailA[mateId] = _faceDetailA;
    }

    mapping(uint256 => string) public faceDetailB;
    function setFaceDetailB(uint256 mateId, string calldata _faceDetailB) onlyOwner external {
        faceDetailB[mateId] = _faceDetailB;
    }

    mapping(uint256 => string) public neck;
    function setNeck(uint256 mateId, string calldata _neck) onlyOwner external {
        neck[mateId] = _neck;
    }

    mapping(uint256 => string) public mouth;
    function setMouth(uint256 mateId, string calldata _mouth) onlyOwner external {
        mouth[mateId] = _mouth;
    }

    mapping(uint256 => string) public eyes;
    function setEyes(uint256 mateId, string calldata _eyes) onlyOwner external {
        eyes[mateId] = _eyes;
    }

    mapping(uint256 => string) public forehead;
    function setForehead(uint256 mateId, string calldata _forehead) onlyOwner external {
        forehead[mateId] = _forehead;
    }

    mapping(uint256 => string) public headwear;
    function setHeadwear(uint256 mateId, string calldata _headwear) onlyOwner external {
        headwear[mateId] = _headwear;
    }

    mapping(uint256 => string) public headwearDetail;
    function setHeadwearDetail(uint256 mateId, string calldata _headwearDetail) onlyOwner external {
        headwearDetail[mateId] = _headwearDetail;
    }

    mapping(uint256 => string) public ears;
    function setEars(uint256 mateId, string calldata _ears) onlyOwner external {
        ears[mateId] = _ears;
    }

    mapping(uint256 => string) public items;
    function setItems(uint256 mateId, string calldata _items) onlyOwner external {
        items[mateId] = _items;
    }
}

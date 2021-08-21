pragma solidity ^0.5.6;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be aplied to your functions to restrict their use to
 * the owner.
 */
contract Ownable {
    address payable private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address payable) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Returns true if the caller is the current owner.
     */
    function isOwner() public view returns (bool) {
        return msg.sender == _owner;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * > Note: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address payable newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     */
    function _transferOwnership(address payable newOwner) internal {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

interface IDSCMateAttributes {
    function maxLevel() view external returns (uint8);
    
    function level(uint256 mateId) view external returns (uint8);
    function face(uint256 mateId) view external returns (string memory);
    function faceDetailA(uint256 mateId) view external returns (string memory);
    function faceDetailB(uint256 mateId) view external returns (string memory);
    function neck(uint256 mateId) view external returns (string memory);
    function mouth(uint256 mateId) view external returns (string memory);
    function eyes(uint256 mateId) view external returns (string memory);
    function forehead(uint256 mateId) view external returns (string memory);
    function headwear(uint256 mateId) view external returns (string memory);
    function headwearDetail(uint256 mateId) view external returns (string memory);
    function ears(uint256 mateId) view external returns (string memory);
    function items(uint256 mateId) view external returns (string memory);
}

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
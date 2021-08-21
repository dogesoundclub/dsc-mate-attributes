pragma solidity ^0.5.6;

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

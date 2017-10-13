pragma solidity 0.4.15;

contract IKernel {
    function createPermission(address _entity, address _app, bytes32 _role, address _parent) external;
    function grantPermission(address _entity, address _app,  bytes32 _role, address _parent) external;
    function revokePermission(address _entity, address _app, bytes32 _role) external;

    function setAppCode(bytes32 _appId, address _code) external;
    function upgradeKernel(address _newKernel) external;

    function canPerform(address _entity, address _app, bytes32 _role) constant returns (bool);
    function getAppCode(bytes32 _appId) constant returns (address);
}

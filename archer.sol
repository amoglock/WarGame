
/**
 * This file was generated by TONDev.
 * TONDev is a part of TON OS (see http://ton.dev).
 */
pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

import "militaryUnit.sol";

contract archer is militaryUnit {
    
    function getAttackPower() virtual override public view returns (string, uint){
        return("Warrior attack power =", archerAttack);
    }

    function getArmor() virtual override view internal returns (string , uint){
        return("Warrior armor = ", armorArcher);
    }

    function destroy(address killer) virtual override external{
        killer.transfer(1, true, 160);
        tvm.accept();
    }
}
package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1868:int;
      
      private var var_547:String;
      
      private var var_1690:int;
      
      private var var_1791:int;
      
      private var var_1865:int;
      
      private var var_1867:int;
      
      private var _nutrition:int;
      
      private var var_1218:int;
      
      private var var_1866:int;
      
      private var var_1863:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1784:int;
      
      private var var_1864:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1690;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1867;
      }
      
      public function flush() : Boolean
      {
         var_1218 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1866;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1863;
      }
      
      public function get maxNutrition() : int
      {
         return var_1864;
      }
      
      public function get figure() : String
      {
         return var_547;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1791;
      }
      
      public function get petId() : int
      {
         return var_1218;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1218 = param1.readInteger();
         _name = param1.readString();
         var_1690 = param1.readInteger();
         var_1866 = param1.readInteger();
         var_1865 = param1.readInteger();
         var_1863 = param1.readInteger();
         _energy = param1.readInteger();
         var_1867 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1864 = param1.readInteger();
         var_547 = param1.readString();
         var_1791 = param1.readInteger();
         var_1784 = param1.readInteger();
         var_1868 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1865;
      }
      
      public function get ownerId() : int
      {
         return var_1784;
      }
      
      public function get age() : int
      {
         return var_1868;
      }
   }
}

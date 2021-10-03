package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_969:String;
      
      private var var_1735:int;
      
      private var var_2038:int;
      
      private var var_1511:int;
      
      private var var_2035:int;
      
      private var _category:int;
      
      private var var_2371:int;
      
      private var var_2039:int;
      
      private var var_2036:int;
      
      private var var_2034:int;
      
      private var var_2040:int;
      
      private var var_2037:Boolean;
      
      private var var_1372:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1735 = param1;
         var_969 = param2;
         var_2038 = param3;
         var_2034 = param4;
         _category = param5;
         var_1372 = param6;
         var_1511 = param7;
         var_2036 = param8;
         var_2039 = param9;
         var_2040 = param10;
         var_2035 = param11;
         var_2037 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2034;
      }
      
      public function get extra() : int
      {
         return var_1511;
      }
      
      public function get stuffData() : String
      {
         return var_1372;
      }
      
      public function get groupable() : Boolean
      {
         return var_2037;
      }
      
      public function get creationMonth() : int
      {
         return var_2040;
      }
      
      public function get roomItemID() : int
      {
         return var_2038;
      }
      
      public function get itemType() : String
      {
         return var_969;
      }
      
      public function get method_3() : int
      {
         return var_1735;
      }
      
      public function get songID() : int
      {
         return var_1511;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2036;
      }
      
      public function get creationYear() : int
      {
         return var_2035;
      }
      
      public function get creationDay() : int
      {
         return var_2039;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}

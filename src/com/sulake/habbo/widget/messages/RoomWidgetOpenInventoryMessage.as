package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_861:String = "inventory_badges";
      
      public static const const_1260:String = "inventory_clothes";
      
      public static const const_1212:String = "inventory_furniture";
      
      public static const const_543:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_836:String = "inventory_effects";
       
      
      private var var_1777:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_543);
         var_1777 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1777;
      }
   }
}

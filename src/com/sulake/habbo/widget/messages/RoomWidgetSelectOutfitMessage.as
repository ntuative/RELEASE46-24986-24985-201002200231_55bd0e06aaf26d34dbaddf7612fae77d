package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_800:String = "select_outfit";
       
      
      private var var_1834:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_800);
         var_1834 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1834;
      }
   }
}

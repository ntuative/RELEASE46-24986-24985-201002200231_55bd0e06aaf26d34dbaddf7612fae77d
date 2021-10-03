package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_650:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1902:int;
      
      private var var_1900:int;
      
      private var var_2099:Boolean;
      
      private var var_970:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_650);
         var_1900 = param1;
         var_1902 = param2;
         _color = param3;
         var_970 = param4;
         var_2099 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1902;
      }
      
      public function get presetNumber() : int
      {
         return var_1900;
      }
      
      public function get brightness() : int
      {
         return var_970;
      }
      
      public function get apply() : Boolean
      {
         return var_2099;
      }
   }
}

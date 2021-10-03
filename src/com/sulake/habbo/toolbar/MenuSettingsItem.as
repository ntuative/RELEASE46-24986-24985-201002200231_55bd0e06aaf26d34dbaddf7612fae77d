package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1837:Array;
      
      private var var_1838:String;
      
      private var var_1835:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1838 = param1;
         var_1837 = param2;
         var_1835 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1838;
      }
      
      public function get yieldList() : Array
      {
         return var_1837;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1835;
      }
   }
}

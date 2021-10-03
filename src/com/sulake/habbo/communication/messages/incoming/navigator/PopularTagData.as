package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1785:int;
      
      private var var_1958:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_1958 = param1.readString();
         var_1785 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_1958;
      }
      
      public function get userCount() : int
      {
         return var_1785;
      }
   }
}

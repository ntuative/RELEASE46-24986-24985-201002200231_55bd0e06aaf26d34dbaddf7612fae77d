package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_344:Boolean;
      
      private var var_1273:int;
      
      private var var_1546:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1273 = param1.readInteger();
         var_1546 = param1.readString();
         var_344 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_344;
      }
      
      public function get nodeName() : String
      {
         return var_1546;
      }
      
      public function get nodeId() : int
      {
         return var_1273;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2125:String;
      
      private var var_935:String;
      
      private var var_1731:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1731 = param1.readInteger();
         var_2125 = param1.readString();
         var_935 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_935;
      }
      
      public function get figureString() : String
      {
         return var_2125;
      }
      
      public function get slotId() : int
      {
         return var_1731;
      }
   }
}

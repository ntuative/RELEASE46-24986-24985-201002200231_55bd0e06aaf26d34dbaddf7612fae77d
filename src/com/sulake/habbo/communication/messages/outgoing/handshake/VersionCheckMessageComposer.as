package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1860:String;
      
      private var var_1268:String;
      
      private var var_1861:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1861 = param1;
         var_1268 = param2;
         var_1860 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1861,var_1268,var_1860];
      }
      
      public function dispose() : void
      {
      }
   }
}

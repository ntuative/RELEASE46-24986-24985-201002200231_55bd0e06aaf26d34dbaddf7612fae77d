package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1003:int = 0;
      
      private var var_1329:int = 0;
      
      private var var_1892:String = "";
      
      private var var_1002:int = 0;
      
      private var var_2199:String = "";
      
      private var var_2198:int = 0;
      
      private var var_1469:String = "";
      
      private var var_2200:int = 0;
      
      private var var_2202:int = 0;
      
      private var var_1891:String = "";
      
      private var var_2201:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2200 = param1;
         var_1891 = param2;
         var_1469 = param3;
         var_1892 = param4;
         var_2199 = param5;
         if(param6)
         {
            var_1329 = 1;
         }
         else
         {
            var_1329 = 0;
         }
         var_2198 = param7;
         var_2202 = param8;
         var_1002 = param9;
         var_2201 = param10;
         var_1003 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2200,var_1891,var_1469,var_1892,var_2199,var_1329,var_2198,var_2202,var_1002,var_2201,var_1003];
      }
      
      public function dispose() : void
      {
      }
   }
}

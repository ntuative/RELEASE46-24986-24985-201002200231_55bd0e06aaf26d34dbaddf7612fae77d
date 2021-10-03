package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1500:String;
      
      private var var_1564:String;
      
      private var var_1040:String;
      
      private var var_427:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1500 = String(param1.@align);
         var_1040 = String(param1.@base);
         var_1564 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_427 = Number(_loc2_);
            if(var_427 > 1)
            {
               var_427 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1500;
      }
      
      public function get ink() : String
      {
         return var_1564;
      }
      
      public function get base() : String
      {
         return var_1040;
      }
      
      public function get isBlended() : Boolean
      {
         return var_427 != 1;
      }
      
      public function get blend() : Number
      {
         return var_427;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}

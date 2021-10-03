package com.sulake.habbo.avatar.animation
{
   public class SpriteDataContainer implements ISpriteDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1686:IAnimation;
      
      private var var_1687:Boolean;
      
      private var var_1564:int;
      
      private var var_1138:Array;
      
      private var var_1688:String;
      
      private var _dx:Array;
      
      private var var_1137:Array;
      
      public function SpriteDataContainer(param1:IAnimation, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         var_1686 = param1;
         _id = String(param2.@id);
         var_1564 = parseInt(param2.@ink);
         var_1688 = String(param2.@member);
         var_1687 = Boolean(parseInt(param2.@directions));
         _dx = [];
         var_1137 = [];
         var_1138 = [];
         for each(_loc3_ in param2.direction)
         {
            _loc4_ = parseInt(_loc3_.@id);
            _dx[_loc4_] = parseInt(_loc3_.@dx);
            var_1137[_loc4_] = parseInt(_loc3_.@dy);
            var_1138[_loc4_] = parseInt(_loc3_.@dz);
         }
      }
      
      public function get animation() : IAnimation
      {
         return var_1686;
      }
      
      public function get hasDirections() : Boolean
      {
         return var_1687;
      }
      
      public function get member() : String
      {
         return var_1688;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getDirectionOffsetZ(param1:int) : int
      {
         if(param1 < var_1138.length)
         {
            return var_1138[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetX(param1:int) : int
      {
         if(param1 < _dx.length)
         {
            return _dx[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetY(param1:int) : int
      {
         if(param1 < var_1137.length)
         {
            return var_1137[param1];
         }
         return 0;
      }
      
      public function get ink() : int
      {
         return var_1564;
      }
   }
}

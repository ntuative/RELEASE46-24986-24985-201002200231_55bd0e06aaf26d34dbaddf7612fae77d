package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_344:Number = 0.5;
      
      private static const const_762:int = 3;
      
      private static const const_1093:Number = 1;
       
      
      private var var_2056:Boolean = false;
      
      private var var_2055:Boolean = false;
      
      private var var_1039:int = 0;
      
      private var var_261:Vector3d = null;
      
      private var var_2060:int = 0;
      
      private var var_2058:int = 0;
      
      private var var_2061:Boolean = false;
      
      private var var_2057:int = -2;
      
      private var var_2059:Boolean = false;
      
      private var var_2054:int = 0;
      
      private var var_2053:int = -1;
      
      private var var_416:Vector3d = null;
      
      private var var_2062:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2060;
      }
      
      public function get targetId() : int
      {
         return var_2053;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2054 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2060 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2056 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2053 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2055 = param1;
      }
      
      public function dispose() : void
      {
         var_416 = null;
         var_261 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_416 == null)
         {
            var_416 = new Vector3d();
         }
         var_416.assign(param1);
         var_1039 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2057;
      }
      
      public function get screenHt() : int
      {
         return var_2062;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2058 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_261;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2062 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2054;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2056;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2055;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_416 != null && var_261 != null)
         {
            ++var_1039;
            _loc2_ = Vector3d.dif(var_416,var_261);
            if(_loc2_.length <= const_344)
            {
               var_261 = var_416;
               var_416 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_344 * (const_762 + 1))
               {
                  _loc2_.mul(const_344);
               }
               else if(var_1039 <= const_762)
               {
                  _loc2_.mul(const_344);
               }
               else
               {
                  _loc2_.mul(const_1093);
               }
               var_261 = Vector3d.sum(var_261,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2061 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2058;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2059 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2057 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_261 != null)
         {
            return;
         }
         var_261 = new Vector3d();
         var_261.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2061;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2059;
      }
   }
}

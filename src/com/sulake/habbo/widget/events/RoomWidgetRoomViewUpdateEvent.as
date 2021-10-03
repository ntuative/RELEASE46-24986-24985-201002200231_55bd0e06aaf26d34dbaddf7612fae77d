package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_502:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_586:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_231:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1433:Point;
      
      private var var_1434:Rectangle;
      
      private var var_193:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1434 = param2;
         var_1433 = param3;
         var_193 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1434 != null)
         {
            return var_1434.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_193;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1433 != null)
         {
            return var_1433.clone();
         }
         return null;
      }
   }
}

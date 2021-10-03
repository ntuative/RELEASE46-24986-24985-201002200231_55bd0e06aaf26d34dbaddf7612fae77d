package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_555:RoomObjectLocationCacheItem = null;
      
      private var var_173:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_555 = new RoomObjectLocationCacheItem(param1);
         var_173 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_555;
      }
      
      public function dispose() : void
      {
         if(var_555 != null)
         {
            var_555.dispose();
            var_555 = null;
         }
         if(var_173 != null)
         {
            var_173.dispose();
            var_173 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_173;
      }
   }
}

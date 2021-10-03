package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_2025:String;
      
      private var var_2339:PrizeGridItem;
      
      private var var_2024:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_1509:int;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         var_2025 = param1;
         var_1509 = param2;
         _furnitureData = param3;
         var_2024 = param4;
      }
      
      public function get oddsLevelId() : int
      {
         return var_2024;
      }
      
      public function get productItemType() : String
      {
         return var_2025;
      }
      
      public function get title() : String
      {
         if(_furnitureData == null)
         {
            return "";
         }
         return _furnitureData.title;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return var_2339;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,_furnitureData.type,var_1509);
      }
      
      public function get productItemTypeId() : int
      {
         return var_1509;
      }
   }
}

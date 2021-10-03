package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1457:String = "e";
      
      public static const const_1555:String = "i";
      
      public static const const_1534:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2238:int;
      
      private var var_1279:Array;
      
      private var var_2235:int;
      
      private var var_2239:int;
      
      private var var_2236:int;
      
      private var _name:String;
      
      private var var_2237:int;
      
      private var var_1190:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2238 = param4;
         var_2237 = param5;
         var_2235 = param6;
         var_2239 = param7;
         var_2236 = param8;
         var_1279 = param9;
         _title = param10;
         var_1190 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_2239;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2236;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2237;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2238;
      }
      
      public function get tileSizeX() : int
      {
         return var_2235;
      }
      
      public function get colours() : Array
      {
         return var_1279;
      }
      
      public function get description() : String
      {
         return var_1190;
      }
   }
}

package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_515:String = "Rectangle";
      
      public static const const_55:String = "Boolean";
      
      public static const const_624:String = "Number";
      
      public static const const_60:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_658:String = "Point";
      
      public static const const_881:String = "Array";
      
      public static const const_946:String = "uint";
      
      public static const const_381:String = "hex";
      
      public static const const_920:String = "Map";
       
      
      private var var_597:String;
      
      private var var_178:Object;
      
      private var var_2323:Boolean;
      
      private var _type:String;
      
      private var var_2193:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_597 = param1;
         var_178 = param2;
         _type = param3;
         var_2193 = param4;
         var_2323 = param3 == const_920 || param3 == const_881 || param3 == const_658 || param3 == const_515;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_381:
               return "0x" + uint(var_178).toString(16);
            case const_55:
               return Boolean(var_178) == true ? "true" : "false";
            case const_658:
               return "Point(" + Point(var_178).x + ", " + Point(var_178).y + ")";
            case const_515:
               return "Rectangle(" + Rectangle(var_178).x + ", " + Rectangle(var_178).y + ", " + Rectangle(var_178).width + ", " + Rectangle(var_178).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_920:
               _loc3_ = var_178 as Map;
               _loc1_ = "<var key=\"" + var_597 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_881:
               _loc4_ = var_178 as Array;
               _loc1_ = "<var key=\"" + var_597 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_658:
               _loc5_ = var_178 as Point;
               _loc1_ = "<var key=\"" + var_597 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_515:
               _loc6_ = var_178 as Rectangle;
               _loc1_ = "<var key=\"" + var_597 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_381:
               _loc1_ = "<var key=\"" + var_597 + "\" value=\"" + "0x" + uint(var_178).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_597 + "\" value=\"" + var_178 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_178;
      }
      
      public function get valid() : Boolean
      {
         return var_2193;
      }
      
      public function get key() : String
      {
         return var_597;
      }
   }
}

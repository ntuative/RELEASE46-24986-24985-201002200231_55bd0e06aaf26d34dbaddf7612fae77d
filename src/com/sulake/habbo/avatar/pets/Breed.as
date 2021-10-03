package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_935:String;
      
      private var _id:int;
      
      private var var_1765:String = "";
      
      private var var_1764:int;
      
      private var var_1766:String;
      
      private var var_1767:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1764 = parseInt(param1.@pattern);
         var_935 = String(param1.@gender);
         var_1767 = Boolean(parseInt(param1.@colorable));
         var_1765 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1765;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1767;
      }
      
      public function get gender() : String
      {
         return var_935;
      }
      
      public function get patternId() : int
      {
         return var_1764;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1766;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1766 = param1;
      }
   }
}

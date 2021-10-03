package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_547:String;
      
      private var var_2309:String;
      
      private var var_2310:int;
      
      private var var_2311:int;
      
      private var var_1202:String;
      
      private var var_1147:String;
      
      private var _name:String;
      
      private var var_442:int;
      
      private var var_754:int;
      
      private var var_2312:int;
      
      private var var_1946:int;
      
      private var var_2313:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2311;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1147;
      }
      
      public function get customData() : String
      {
         return this.var_2309;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_442;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2310;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2313;
      }
      
      public function get figure() : String
      {
         return this.var_547;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1946;
      }
      
      public function get sex() : String
      {
         return this.var_1202;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_547 = param1.readString();
         this.var_1202 = param1.readString();
         this.var_2309 = param1.readString();
         this.var_1147 = param1.readString();
         this.var_2312 = param1.readInteger();
         this.var_2313 = param1.readString();
         this.var_2310 = param1.readInteger();
         this.var_2311 = param1.readInteger();
         this.var_1946 = param1.readInteger();
         this.var_754 = param1.readInteger();
         this.var_442 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2312;
      }
      
      public function get respectLeft() : int
      {
         return this.var_754;
      }
   }
}

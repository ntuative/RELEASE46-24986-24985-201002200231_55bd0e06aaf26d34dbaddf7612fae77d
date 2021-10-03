package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1746:Boolean;
      
      private var var_1424:Array;
      
      private var var_1749:Boolean;
      
      private var var_1744:Boolean;
      
      private var var_1748:Boolean;
      
      private var var_155:Array;
      
      private var var_1747:Boolean;
      
      private var var_1745:Boolean;
      
      private var var_1425:Array;
      
      private var var_1751:Boolean;
      
      private var var_1750:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1750;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1746;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1749;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1747;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1745;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1424;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_155 = [];
         var_1424 = [];
         _roomMessageTemplates = [];
         var_1425 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_155.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1424.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1425.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1747 = param1.readBoolean();
         var_1748 = param1.readBoolean();
         var_1749 = param1.readBoolean();
         var_1744 = param1.readBoolean();
         var_1750 = param1.readBoolean();
         var_1745 = param1.readBoolean();
         var_1746 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1751 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1744;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1425;
      }
      
      public function get issues() : Array
      {
         return var_155;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1751;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1748;
      }
   }
}

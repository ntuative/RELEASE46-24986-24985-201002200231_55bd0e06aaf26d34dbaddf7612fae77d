package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_654:int = 8;
      
      public static const const_1525:int = 10;
      
      public static const const_1196:int = 6;
      
      private static var var_988:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1223:int = 0;
      
      public static const const_1448:int = 1;
      
      public static const const_1550:int = 2;
      
      public static const const_1441:int = 3;
      
      public static const const_1533:int = 4;
      
      public static const const_1543:int = 5;
      
      public static const const_1584:int = 9;
      
      public static const const_1496:int = 7;
       
      
      private var var_167:uint = 0;
      
      private var var_989:uint = 0;
      
      private var var_661:Date;
      
      private var var_1833:int = -1;
      
      private var parseFunc:Function;
      
      private var var_470:Boolean = false;
      
      private var var_2294:int = -1;
      
      private var var_1211:uint = 0;
      
      private var var_1832:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_795:uint;
      
      private var var_20:ByteArray;
      
      private var var_662:uint;
      
      private var var_1454:Boolean = false;
      
      private var var_2293:int = -1;
      
      private var var_1452:String = "2.0";
      
      private var var_168:Boolean = false;
      
      private var var_1831:Boolean = false;
      
      private var var_337:String;
      
      private var var_551:uint = 0;
      
      private var var_1212:int = 0;
      
      private var var_397:String = "";
      
      private var var_660:int = 8;
      
      private var var_1453:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_337 = param1;
         _extraFields = new Dictionary();
         var_20 = new ByteArray();
         var_20.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_551;
      }
      
      public function set filename(param1:String) : void
      {
         var_397 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_168 && false)
         {
            var_20.position = 0;
            if(var_988)
            {
               var_20.uncompress.apply(var_20,["deflate"]);
            }
            else
            {
               var_20.uncompress();
            }
            var_20.position = 0;
            var_168 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_397;
      }
      
      public function get date() : Date
      {
         return var_661;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1453)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_167 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_167)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1452;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_168)
         {
            uncompress();
         }
         var_20.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_20.readUTFBytes(var_20.bytesAvailable);
         }
         else
         {
            _loc3_ = var_20.readMultiByte(var_20.bytesAvailable,param2);
         }
         var_20.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_660 === const_654 && !var_1454)
         {
            if(var_988)
            {
               param1.readBytes(var_20,0,var_167);
            }
            else
            {
               if(!var_470)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_20.writeByte(120);
               _loc2_ = uint(~var_1833 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_20.writeByte(_loc2_);
               param1.readBytes(var_20,2,var_167);
               var_20.position = var_20.length;
               var_20.writeUnsignedInt(var_795);
            }
            var_168 = true;
         }
         else
         {
            if(var_660 != const_1223)
            {
               throw new Error("Compression method " + var_660 + " is not supported.");
            }
            param1.readBytes(var_20,0,var_167);
            var_168 = false;
         }
         var_20.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_989 + var_1211 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_20.length = 0;
         var_20.position = 0;
         var_168 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_20.writeUTFBytes(param1);
            }
            else
            {
               var_20.writeMultiByte(param1,param2);
            }
            var_662 = ChecksumUtil.CRC32(var_20);
            var_470 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_661 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1212 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1212 << 8 | 20);
         param1.writeShort(var_337 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_654);
         var _loc5_:Date = var_661 != null ? var_661 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_662);
         param1.writeUnsignedInt(var_167);
         param1.writeUnsignedInt(var_551);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_337 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_397);
         }
         else
         {
            _loc8_.writeMultiByte(var_397,var_337);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_470)
            {
               _loc16_ = var_168;
               if(_loc16_)
               {
                  uncompress();
               }
               var_795 = ChecksumUtil.Adler32(var_20,0,var_20.length);
               var_470 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_795);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_337 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1832);
            }
            else
            {
               _loc8_.writeMultiByte(var_1832,var_337);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_167 > 0)
         {
            if(var_988)
            {
               _loc13_ = 0;
               param1.writeBytes(var_20,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_20,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_167;
      }
      
      protected function compress() : void
      {
         if(!var_168)
         {
            if(false)
            {
               var_20.position = 0;
               var_551 = var_20.length;
               if(var_988)
               {
                  var_20.compress.apply(var_20,["deflate"]);
                  var_167 = var_20.length;
               }
               else
               {
                  var_20.compress();
                  var_167 = -6;
               }
               var_20.position = 0;
               var_168 = true;
            }
            else
            {
               var_167 = 0;
               var_551 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_989 + var_1211)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_337 == "utf-8")
         {
            var_397 = param1.readUTFBytes(var_989);
         }
         else
         {
            var_397 = param1.readMultiByte(var_989,var_337);
         }
         var _loc2_:uint = var_1211;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_397 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_795 = param1.readUnsignedInt();
               var_470 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1212 = _loc2_ >> 8;
         var_1452 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_660 = param1.readUnsignedShort();
         var_1454 = (_loc3_ & 1) !== 0;
         var_1453 = (_loc3_ & 8) !== 0;
         var_1831 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_337 = "utf-8";
         }
         if(var_660 === const_1196)
         {
            var_2293 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2294 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_660 === const_654)
         {
            var_1833 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_661 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_662 = param1.readUnsignedInt();
         var_167 = param1.readUnsignedInt();
         var_551 = param1.readUnsignedInt();
         var_989 = param1.readUnsignedShort();
         var_1211 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_20,0,param1.length);
            var_662 = ChecksumUtil.CRC32(var_20);
            var_470 = false;
         }
         else
         {
            var_20.length = 0;
            var_20.position = 0;
            var_168 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_397 + "\n  date:" + var_661 + "\n  sizeCompressed:" + var_167 + "\n  sizeUncompressed:" + var_551 + "\n  versionHost:" + var_1212 + "\n  versionNumber:" + var_1452 + "\n  compressionMethod:" + var_660 + "\n  encrypted:" + var_1454 + "\n  hasDataDescriptor:" + var_1453 + "\n  hasCompressedPatchedData:" + var_1831 + "\n  filenameEncoding:" + var_337 + "\n  crc32:" + var_662.toString(16) + "\n  adler32:" + var_795.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_168)
         {
            uncompress();
         }
         return var_20;
      }
   }
}

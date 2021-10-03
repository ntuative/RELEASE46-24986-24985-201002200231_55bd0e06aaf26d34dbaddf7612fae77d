package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1527:BigInteger;
      
      private var var_1016:BigInteger;
      
      private var var_2120:BigInteger;
      
      private var var_1528:BigInteger;
      
      private var var_2121:BigInteger;
      
      private var var_1846:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1527 = param1;
         var_2120 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2121.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1528 = new BigInteger();
         var_1528.fromRadix(param1,param2);
         var_2121 = var_1528.modPow(var_1016,var_1527);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1846.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_1016 = new BigInteger();
         var_1016.fromRadix(param1,param2);
         var_1846 = var_2120.modPow(var_1016,var_1527);
         return true;
      }
   }
}

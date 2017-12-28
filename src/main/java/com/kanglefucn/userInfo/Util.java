package com.kanglefucn.userInfo;

public class Util {
    public static String ISO8859toGBK(String str) {
        try {
            byte[] bytesStr = str.getBytes("ISO8859_1");
            return new String(bytesStr, "GBK");
        } catch (Exception e) {
            return str;
        }
    }
}
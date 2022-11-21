package com.prineside.luaj.ast;

import com.prineside.luaj.LuaString;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class Str {
    public static byte[] iso88591bytes(String str) {
        try {
            return str.getBytes("ISO8859-1");
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalStateException("ISO8859-1 not supported");
        }
    }

    public static LuaString longString(String str) {
        int indexOf = str.indexOf(91, str.indexOf(91) + 1) + 1;
        return LuaString.valueUsing(iso88591bytes(str.substring(indexOf, str.length() - indexOf)));
    }

    public static byte[] unquote(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        while (i < length) {
            char c = charArray[i];
            if (c == '\\' && i < length) {
                i++;
                char c2 = charArray[i];
                if (c2 != '\"') {
                    if (c2 != '\'') {
                        if (c2 != '\\') {
                            if (c2 != 'f') {
                                if (c2 != 'n') {
                                    if (c2 != 'r') {
                                        if (c2 != 't') {
                                            if (c2 != 'v') {
                                                if (c2 != 'a') {
                                                    if (c2 != 'b') {
                                                        switch (c2) {
                                                            case '0':
                                                            case '1':
                                                            case '2':
                                                            case '3':
                                                            case '4':
                                                            case '5':
                                                            case '6':
                                                            case '7':
                                                            case '8':
                                                            case '9':
                                                                int i2 = i + 1;
                                                                int i3 = c2 - '0';
                                                                for (int i4 = 0; i2 < length && i4 < 2; i4++) {
                                                                    char c3 = charArray[i2];
                                                                    if (c3 >= '0' && c3 <= '9') {
                                                                        i3 = (i3 * 10) + (c3 - '0');
                                                                        i2++;
                                                                    }
                                                                }
                                                                byteArrayOutputStream.write((byte) i3);
                                                                i = i2 - 1;
                                                                continue;
                                                            default:
                                                                byteArrayOutputStream.write((byte) c2);
                                                                continue;
                                                        }
                                                    } else {
                                                        byteArrayOutputStream.write(8);
                                                    }
                                                } else {
                                                    byteArrayOutputStream.write(7);
                                                }
                                            } else {
                                                byteArrayOutputStream.write(11);
                                            }
                                        } else {
                                            byteArrayOutputStream.write(9);
                                        }
                                    } else {
                                        byteArrayOutputStream.write(13);
                                    }
                                } else {
                                    byteArrayOutputStream.write(10);
                                }
                            } else {
                                byteArrayOutputStream.write(12);
                            }
                        } else {
                            byteArrayOutputStream.write(92);
                        }
                    } else {
                        byteArrayOutputStream.write(39);
                    }
                } else {
                    byteArrayOutputStream.write(34);
                }
            } else {
                byteArrayOutputStream.write((byte) c);
            }
            i++;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static LuaString charString(String str) {
        return LuaString.valueUsing(unquote(str.substring(1, str.length() - 1)));
    }

    public static LuaString quoteString(String str) {
        return LuaString.valueUsing(unquote(str.substring(1, str.length() - 1)));
    }
}

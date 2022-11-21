package com.badlogic.gdx.utils;

import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.ObjectMap;
import java.io.Writer;
import java.util.Date;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public final class PropertiesUtils {
    public static void store(ObjectMap<String, String> objectMap, Writer writer, String str) {
        m23556b(objectMap, writer, str, false);
    }

    /* renamed from: b */
    public static void m23556b(ObjectMap<String, String> objectMap, Writer writer, String str, boolean z) {
        if (str != null) {
            m23555c(writer, str);
        }
        writer.write("#");
        writer.write(new Date().toString());
        writer.write("\n");
        StringBuilder stringBuilder = new StringBuilder((int) HttpStatus.SC_OK);
        ObjectMap.Entries<String, String> it = objectMap.entries().iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            m23557a(stringBuilder, (String) next.key, true, z);
            stringBuilder.append(SignatureVisitor.INSTANCEOF);
            m23557a(stringBuilder, (String) next.value, false, z);
            writer.write("\n");
            writer.write(stringBuilder.toString());
            stringBuilder.setLength(0);
        }
        writer.flush();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006f, code lost:
        if (r11.charAt(r4) != '!') goto L34;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m23555c(java.io.Writer r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "#"
            r10.write(r0)
            int r1 = r11.length()
            r2 = 0
            r3 = 0
            r4 = 0
        Lc:
            java.lang.String r5 = "\n"
            if (r3 >= r1) goto L79
            char r6 = r11.charAt(r3)
            r7 = 13
            r8 = 10
            r9 = 255(0xff, float:3.57E-43)
            if (r6 > r9) goto L20
            if (r6 == r8) goto L20
            if (r6 != r7) goto L76
        L20:
            if (r4 == r3) goto L29
            java.lang.String r4 = r11.substring(r4, r3)
            r10.write(r4)
        L29:
            if (r6 <= r9) goto L49
            java.lang.String r4 = java.lang.Integer.toHexString(r6)
            java.lang.String r5 = "\\u"
            r10.write(r5)
            r5 = 0
        L35:
            int r6 = r4.length()
            int r6 = 4 - r6
            if (r5 >= r6) goto L45
            r6 = 48
            r10.write(r6)
            int r5 = r5 + 1
            goto L35
        L45:
            r10.write(r4)
            goto L74
        L49:
            r10.write(r5)
            if (r6 != r7) goto L5b
            int r4 = r1 + (-1)
            if (r3 == r4) goto L5b
            int r4 = r3 + 1
            char r5 = r11.charAt(r4)
            if (r5 != r8) goto L5b
            r3 = r4
        L5b:
            int r4 = r1 + (-1)
            if (r3 == r4) goto L71
            int r4 = r3 + 1
            char r5 = r11.charAt(r4)
            r6 = 35
            if (r5 == r6) goto L74
            char r4 = r11.charAt(r4)
            r5 = 33
            if (r4 == r5) goto L74
        L71:
            r10.write(r0)
        L74:
            int r4 = r3 + 1
        L76:
            int r3 = r3 + 1
            goto Lc
        L79:
            if (r4 == r3) goto L82
            java.lang.String r11 = r11.substring(r4, r3)
            r10.write(r11)
        L82:
            r10.write(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.PropertiesUtils.m23555c(java.io.Writer, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x012e, code lost:
        if (r11 != 3) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void load(com.badlogic.gdx.utils.ObjectMap<java.lang.String, java.lang.String> r16, java.io.Reader r17) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.PropertiesUtils.load(com.badlogic.gdx.utils.ObjectMap, java.io.Reader):void");
    }

    /* renamed from: a */
    public static void m23557a(StringBuilder stringBuilder, String str, boolean z, boolean z2) {
        boolean z3;
        Object valueOf;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt > '=' && charAt < 127) {
                if (charAt == '\\') {
                    valueOf = "\\\\";
                } else {
                    valueOf = Character.valueOf(charAt);
                }
                stringBuilder.append(valueOf);
            } else if (charAt != '\t') {
                if (charAt != '\n') {
                    if (charAt != '\f') {
                        if (charAt != '\r') {
                            if (charAt != ' ') {
                                if (charAt != '!' && charAt != '#' && charAt != ':' && charAt != '=') {
                                    if (charAt >= ' ' && charAt <= '~') {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                    if (z3 & z2) {
                                        String hexString = Integer.toHexString(charAt);
                                        stringBuilder.append("\\u");
                                        for (int i2 = 0; i2 < 4 - hexString.length(); i2++) {
                                            stringBuilder.append('0');
                                        }
                                        stringBuilder.append(hexString);
                                    } else {
                                        stringBuilder.append(charAt);
                                    }
                                } else {
                                    stringBuilder.append('\\').append(charAt);
                                }
                            } else if (i != 0 && !z) {
                                stringBuilder.append(charAt);
                            } else {
                                stringBuilder.append("\\ ");
                            }
                        } else {
                            stringBuilder.append("\\r");
                        }
                    } else {
                        stringBuilder.append("\\f");
                    }
                } else {
                    stringBuilder.append("\\n");
                }
            } else {
                stringBuilder.append("\\t");
            }
        }
    }
}

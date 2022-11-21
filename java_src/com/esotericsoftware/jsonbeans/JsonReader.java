package com.esotericsoftware.jsonbeans;

import com.esotericsoftware.jsonbeans.JsonValue;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class JsonReader {

    /* renamed from: e */
    public static final byte[] f7179e = m23319b();

    /* renamed from: f */
    public static final short[] f7180f = m23315f();

    /* renamed from: g */
    public static final char[] f7181g = m23311j();

    /* renamed from: h */
    public static final byte[] f7182h = m23313h();

    /* renamed from: i */
    public static final byte[] f7183i = m23314g();

    /* renamed from: j */
    public static final short[] f7184j = m23317d();

    /* renamed from: k */
    public static final byte[] f7185k = m23316e();

    /* renamed from: l */
    public static final byte[] f7186l = m23310k();

    /* renamed from: m */
    public static final byte[] f7187m = m23312i();

    /* renamed from: n */
    public static final byte[] f7188n = m23318c();

    /* renamed from: a */
    public final ArrayList<JsonValue> f7189a = new ArrayList<>(8);

    /* renamed from: b */
    public final ArrayList<JsonValue> f7190b = new ArrayList<>(8);

    /* renamed from: c */
    public JsonValue f7191c;

    /* renamed from: d */
    public JsonValue f7192d;

    /* renamed from: b */
    public static byte[] m23319b() {
        return new byte[]{0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 2, 0, 7, 2, 0, 8, 2, 1, 3, 2, 1, 5, 2, 6, 1, 2, 7, 6, 3, 0, 7, 6};
    }

    /* renamed from: c */
    public static byte[] m23318c() {
        return new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0};
    }

    /* renamed from: d */
    public static short[] m23317d() {
        return new short[]{0, 0, 12, 15, 17, 30, 42, 48, 54, 57, 69, 76, 83, 95, 97, 104, 117, 120, 122, 130, 143, 150, 163, 175, 182, 189, 201, 203, 211, 224, 227, 235, 248, 253, 258, 264, 265};
    }

    /* renamed from: e */
    public static byte[] m23316e() {
        return new byte[]{1, 1, 2, 3, 4, 3, 5, 3, 6, 3, 1, 0, 7, 7, 3, 8, 3, 1, 1, 2, 9, 3, 10, 3, 5, 3, 6, 3, 1, 0, 12, 12, 13, 14, 15, 3, 3, 3, 3, 16, 12, 11, 17, 17, 18, 19, 17, 3, 20, 20, 21, 22, 20, 3, 23, 23, 3, 22, 22, 25, 3, 26, 3, 27, 3, 28, 3, 22, 24, 29, 29, 30, 31, 32, 29, 3, 33, 33, 14, 34, 16, 33, 3, 14, 14, 13, 3, 35, 3, 3, 3, 3, 16, 14, 11, 17, 3, 17, 17, 36, 37, 19, 17, 3, 14, 14, 13, 38, 3, 39, 3, 3, 3, 3, 16, 14, 11, 40, 40, 3, 29, 3, 29, 29, 41, 30, 42, 32, 29, 3, 22, 22, 25, 43, 3, 44, 3, 27, 3, 28, 3, 22, 24, 17, 17, 45, 46, 19, 17, 3, 12, 12, 13, 38, 14, 47, 3, 3, 3, 3, 16, 12, 11, 49, 49, 50, 51, 52, 3, 53, 54, 55, 3, 49, 48, 56, 56, 57, 58, 59, 56, 3, 60, 60, 51, 61, 54, 60, 3, 51, 51, 50, 3, 62, 3, 53, 54, 55, 3, 51, 48, 56, 3, 56, 56, 63, 57, 64, 59, 56, 3, 51, 51, 50, 65, 3, 66, 3, 53, 54, 55, 3, 51, 48, 67, 67, 3, 56, 56, 68, 57, 69, 59, 56, 3, 49, 49, 50, 65, 51, 70, 3, 53, 54, 55, 3, 49, 48, 8, 8, 71, 8, 3, 72, 72, 73, 72, 3, 8, 8, 74, 75, 8, 3, 3, 3, 0};
    }

    /* renamed from: f */
    public static short[] m23315f() {
        return new short[]{0, 0, 12, 14, 15, 28, 40, 46, 52, 54, 66, 73, 80, 92, 93, 100, 113, 115, 116, 124, 137, 144, 157, 169, 176, 183, 195, 196, 204, 217, 219, 227, 240, 245, 250, 256, 256};
    }

    /* renamed from: g */
    public static byte[] m23314g() {
        return new byte[]{0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0};
    }

    /* renamed from: h */
    public static byte[] m23313h() {
        return new byte[]{0, 10, 2, 1, 11, 10, 4, 4, 2, 10, 5, 5, 10, 1, 5, 11, 2, 1, 6, 11, 5, 11, 10, 5, 5, 10, 1, 6, 11, 2, 6, 11, 3, 3, 4, 0, 0};
    }

    /* renamed from: i */
    public static byte[] m23312i() {
        return new byte[]{13, 0, 15, 0, 13, 7, 3, 11, 1, 32, 32, 17, 0, 20, 0, 17, 5, 1, 1, 1, 0, 0, 0, 11, 13, 15, 13, 7, 3, 1, 1, 1, 23, 0, 0, 17, 11, 29, 35, 35, 11, 11, 29, 32, 32, 11, 29, 35, 13, 0, 15, 0, 13, 7, 9, 3, 1, 1, 1, 26, 0, 0, 13, 11, 29, 32, 32, 11, 11, 29, 32, 1, 0, 0, 11, 29};
    }

    /* renamed from: j */
    public static char[] m23311j() {
        return new char[]{'\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\"', '\r', ' ', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\r', ' ', '/', ':', '\t', '\n', '\r', ' ', '/', ':', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\r', ' ', ',', '/', '}', '\t', '\n', '\r', ' ', ',', '/', '}', '\t', '\n', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\"', '\r', ' ', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', ':', '\t', '\n', '\r', ' ', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\"', '\r', ' ', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', '}', '\t', '\n', '\r', ' ', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\r', ' ', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', ':', '\t', '\n', '\r', ' ', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\r', ' ', ',', '/', ']', '\t', '\n', '\r', ' ', ',', '/', ']', '\t', '\n', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\"', '\r', ' ', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ']', '\t', '\n', '\r', ' ', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ']', '\t', '\n', '\r', ' ', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '}', '\t', '\n', '\r', ' ', '/', '\t', '\n', '\r', ' ', '/', '\t', '\n', '\r', ' ', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\t', '\n', 0};
    }

    /* renamed from: k */
    public static byte[] m23310k() {
        return new byte[]{32, 1, 3, 0, 34, 33, 33, 33, 33, 32, 34, 6, 5, 13, 12, 20, 35, 7, 8, 9, 7, 8, 9, 7, 10, 17, 18, 11, 11, 11, 12, 16, 35, 11, 16, 14, 12, 15, 6, 14, 11, 9, 19, 10, 18, 5, 21, 20, 23, 22, 26, 25, 30, 24, 36, 24, 24, 25, 29, 36, 24, 29, 27, 25, 28, 23, 27, 24, 22, 31, 30, 2, 33, 2, 1, 4};
    }

    public void bool(String str, boolean z) {
        m23320a(str, new JsonValue(z));
    }

    public void number(String str, double d) {
        m23320a(str, new JsonValue(d));
    }

    public JsonValue parse(String str) {
        char[] charArray = str.toCharArray();
        return parse(charArray, 0, charArray.length);
    }

    public void string(String str, String str2) {
        m23320a(str, new JsonValue(str2));
    }

    public void number(String str, long j) {
        m23320a(str, new JsonValue(j));
    }

    public void pop() {
        JsonValue jsonValue;
        ArrayList<JsonValue> arrayList = this.f7189a;
        this.f7191c = arrayList.remove(arrayList.size() - 1);
        if (this.f7192d.size > 0) {
            ArrayList<JsonValue> arrayList2 = this.f7190b;
            arrayList2.remove(arrayList2.size() - 1);
        }
        if (this.f7189a.size() > 0) {
            jsonValue = this.f7189a.get(0);
        } else {
            jsonValue = null;
        }
        this.f7192d = jsonValue;
    }

    public void startArray(String str) {
        JsonValue jsonValue = new JsonValue(JsonValue.ValueType.array);
        if (this.f7192d != null) {
            m23320a(str, jsonValue);
        }
        this.f7189a.add(jsonValue);
        this.f7192d = jsonValue;
    }

    public void startObject(String str) {
        JsonValue jsonValue = new JsonValue(JsonValue.ValueType.object);
        if (this.f7192d != null) {
            m23320a(str, jsonValue);
        }
        this.f7189a.add(jsonValue);
        this.f7192d = jsonValue;
    }

    /* renamed from: a */
    public final void m23320a(String str, JsonValue jsonValue) {
        ArrayList<JsonValue> arrayList;
        jsonValue.setName(str);
        JsonValue jsonValue2 = this.f7192d;
        if (jsonValue2 == null) {
            this.f7192d = jsonValue;
            this.f7191c = jsonValue;
        } else if (!jsonValue2.isArray() && !this.f7192d.isObject()) {
            this.f7191c = this.f7192d;
        } else {
            JsonValue jsonValue3 = this.f7192d;
            if (jsonValue3.size == 0) {
                jsonValue3.child = jsonValue;
            } else {
                JsonValue remove = this.f7190b.remove(arrayList.size() - 1);
                remove.next = jsonValue;
                jsonValue.prev = remove;
            }
            this.f7190b.add(jsonValue);
            this.f7192d.size++;
        }
    }

    /* renamed from: l */
    public final String m23309l(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length + 16);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != '\\') {
                sb.append(charAt);
            } else if (i2 == length) {
                break;
            } else {
                i = i2 + 1;
                char charAt2 = str.charAt(i2);
                if (charAt2 == 'u') {
                    i2 = i + 4;
                    sb.append(Character.toChars(Integer.parseInt(str.substring(i, i2), 16)));
                } else {
                    if (charAt2 != '\"' && charAt2 != '/' && charAt2 != '\\') {
                        if (charAt2 != 'b') {
                            if (charAt2 != 'f') {
                                if (charAt2 != 'n') {
                                    if (charAt2 != 'r') {
                                        if (charAt2 == 't') {
                                            charAt2 = '\t';
                                        } else {
                                            throw new JsonException("Illegal escaped character: \\" + charAt2);
                                        }
                                    } else {
                                        charAt2 = '\r';
                                    }
                                } else {
                                    charAt2 = '\n';
                                }
                            } else {
                                charAt2 = '\f';
                            }
                        } else {
                            charAt2 = '\b';
                        }
                    }
                    sb.append(charAt2);
                }
            }
            i = i2;
        }
        return sb.toString();
    }

    public JsonValue parse(Reader reader) {
        try {
            try {
                char[] cArr = new char[1024];
                int i = 0;
                while (true) {
                    int read = reader.read(cArr, i, cArr.length - i);
                    if (read == -1) {
                        break;
                    } else if (read == 0) {
                        char[] cArr2 = new char[cArr.length * 2];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        cArr = cArr2;
                    } else {
                        i += read;
                    }
                }
                JsonValue parse = parse(cArr, 0, i);
                try {
                    reader.close();
                } catch (IOException unused) {
                }
                return parse;
            } catch (IOException e) {
                throw new JsonException(e);
            }
        } catch (Throwable th) {
            try {
                reader.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    public JsonValue parse(InputStream inputStream) {
        try {
            try {
                JsonValue parse = parse(new InputStreamReader(inputStream, "UTF-8"));
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
                return parse;
            } catch (IOException e) {
                throw new JsonException(e);
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    public JsonValue parse(File file) {
        try {
            return parse(new InputStreamReader(new FileInputStream(file), "UTF-8"));
        } catch (Exception e) {
            throw new JsonException("Error parsing file: " + file, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r11 != 4) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01f0, code lost:
        r4 = r23;
        r11 = 2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:251:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x02cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x02c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x02bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d5 A[Catch: RuntimeException -> 0x0393, TryCatch #6 {RuntimeException -> 0x0393, blocks: (B:41:0x00a9, B:43:0x00ad, B:45:0x00b4, B:47:0x00ba, B:48:0x00bd, B:50:0x00c7, B:52:0x00d5, B:53:0x00dd, B:55:0x00e1, B:130:0x01b3, B:131:0x01bb, B:133:0x01c1, B:135:0x01cf, B:137:0x01d5, B:138:0x01e1, B:139:0x01e9, B:141:0x01f6, B:143:0x01fc, B:145:0x020a, B:147:0x0210, B:149:0x021e, B:150:0x022a, B:152:0x0236, B:154:0x023c, B:155:0x0245, B:157:0x024b, B:160:0x025b, B:162:0x0261, B:164:0x0269, B:166:0x026f, B:167:0x0274, B:169:0x027a, B:170:0x027f, B:174:0x028b, B:178:0x02a1, B:175:0x0293), top: B:286:0x00a9 }] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r11v10, types: [int] */
    /* JADX WARN: Type inference failed for: r13v17, types: [int] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v49, types: [int] */
    /* JADX WARN: Type inference failed for: r13v52 */
    /* JADX WARN: Type inference failed for: r13v55 */
    /* JADX WARN: Type inference failed for: r17v3, types: [int] */
    /* JADX WARN: Type inference failed for: r17v8, types: [int] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int[]] */
    /* JADX WARN: Type inference failed for: r9v5, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.esotericsoftware.jsonbeans.JsonValue parse(char[] r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 1092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.jsonbeans.JsonReader.parse(char[], int, int):com.esotericsoftware.jsonbeans.JsonValue");
    }
}

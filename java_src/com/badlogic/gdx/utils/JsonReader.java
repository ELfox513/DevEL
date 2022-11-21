package com.badlogic.gdx.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.JsonValue;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class JsonReader implements BaseJsonReader {

    /* renamed from: e */
    public static final byte[] f6541e = m23622c();

    /* renamed from: f */
    public static final short[] f6542f = m23618g();

    /* renamed from: g */
    public static final char[] f6543g = m23614k();

    /* renamed from: h */
    public static final byte[] f6544h = m23616i();

    /* renamed from: i */
    public static final byte[] f6545i = m23617h();

    /* renamed from: j */
    public static final short[] f6546j = m23620e();

    /* renamed from: k */
    public static final byte[] f6547k = m23619f();

    /* renamed from: l */
    public static final byte[] f6548l = m23613l();

    /* renamed from: m */
    public static final byte[] f6549m = m23615j();

    /* renamed from: n */
    public static final byte[] f6550n = m23621d();

    /* renamed from: a */
    public final Array<JsonValue> f6551a = new Array<>(8);

    /* renamed from: b */
    public final Array<JsonValue> f6552b = new Array<>(8);

    /* renamed from: c */
    public JsonValue f6553c;

    /* renamed from: d */
    public JsonValue f6554d;

    /* renamed from: c */
    public static byte[] m23622c() {
        return new byte[]{0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 2, 0, 7, 2, 0, 8, 2, 1, 3, 2, 1, 5};
    }

    /* renamed from: d */
    public static byte[] m23621d() {
        return new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0};
    }

    /* renamed from: e */
    public static short[] m23620e() {
        return new short[]{0, 0, 11, 14, 16, 19, 28, 34, 40, 43, 54, 62, 70, 79, 81, 90, 93, 96, 105, 108, 111, 113, 116, 119, 130, 138, 146, 157, 159, 170, 173, 176, 187, 190, 193, 196, 201, 206, 207};
    }

    /* renamed from: f */
    public static byte[] m23619f() {
        return new byte[]{1, 1, 2, 3, 4, 3, 5, 3, 6, 1, 0, 7, 7, 3, 8, 3, 9, 9, 3, 11, 11, 12, 13, 14, 3, 15, 11, 10, 16, 16, 17, 18, 16, 3, 19, 19, 20, 21, 19, 3, 22, 22, 3, 21, 21, 24, 3, 25, 3, 26, 3, 27, 21, 23, 28, 29, 29, 28, 30, 31, 32, 3, 33, 34, 34, 33, 13, 35, 15, 3, 34, 34, 12, 36, 37, 3, 15, 34, 10, 16, 3, 36, 36, 12, 3, 38, 3, 3, 36, 10, 39, 39, 3, 40, 40, 3, 13, 13, 12, 3, 41, 3, 15, 13, 10, 42, 42, 3, 43, 43, 3, 28, 3, 44, 44, 3, 45, 45, 3, 47, 47, 48, 49, 50, 3, 51, 52, 53, 47, 46, 54, 55, 55, 54, 56, 57, 58, 3, 59, 60, 60, 59, 49, 61, 52, 3, 60, 60, 48, 62, 63, 3, 51, 52, 53, 60, 46, 54, 3, 62, 62, 48, 3, 64, 3, 51, 3, 53, 62, 46, 65, 65, 3, 66, 66, 3, 49, 49, 48, 3, 67, 3, 51, 52, 53, 49, 46, 68, 68, 3, 69, 69, 3, 70, 70, 3, 8, 8, 71, 8, 3, 72, 72, 73, 72, 3, 3, 3, 0};
    }

    /* renamed from: g */
    public static short[] m23618g() {
        return new short[]{0, 0, 11, 13, 14, 16, 25, 31, 37, 39, 50, 57, 64, 73, 74, 83, 85, 87, 96, 98, 100, 101, 103, 105, 116, 123, 130, 141, 142, 153, 155, 157, 168, 170, 172, 174, 179, 184, 184};
    }

    /* renamed from: h */
    public static byte[] m23617h() {
        return new byte[]{0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0};
    }

    /* renamed from: i */
    public static byte[] m23616i() {
        return new byte[]{0, 9, 2, 1, 2, 7, 4, 4, 2, 9, 7, 7, 7, 1, 7, 2, 2, 7, 2, 2, 1, 2, 2, 9, 7, 7, 9, 1, 9, 2, 2, 9, 2, 2, 2, 3, 3, 0, 0};
    }

    /* renamed from: j */
    public static byte[] m23615j() {
        return new byte[]{13, 0, 15, 0, 0, 7, 3, 11, 1, 11, 17, 0, 20, 0, 0, 5, 1, 1, 1, 0, 0, 0, 11, 13, 15, 0, 7, 3, 1, 1, 1, 1, 23, 0, 0, 0, 0, 0, 0, 11, 11, 0, 11, 11, 11, 11, 13, 0, 15, 0, 0, 7, 9, 3, 1, 1, 1, 1, 26, 0, 0, 0, 0, 0, 0, 11, 11, 0, 11, 11, 11, 1, 0, 0};
    }

    /* renamed from: k */
    public static char[] m23614k() {
        return new char[]{'\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', '\"', ',', '/', ':', '}', '\t', '\n', '\r', ' ', '/', ':', '\t', '\n', '\r', ' ', '/', ':', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '\t', '\n', '\t', '\n', '\r', ' ', ',', '/', '}', '\t', '\n', '\r', ' ', ',', '/', '}', '\r', ' ', '\"', ',', '/', ':', '}', '\t', '\n', '\"', '\r', ' ', '\"', ',', '/', ':', '}', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', '\"', ',', '/', ':', '}', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\"', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '\t', '\n', '\t', '\n', '\r', ' ', ',', '/', ']', '\t', '\n', '\r', ' ', ',', '/', ']', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '\t', '\n', '\"', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', '\"', ',', '/', ':', TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH, ']', '{', '\t', '\n', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH, '/', '\r', ' ', '/', '\t', '\n', '\r', ' ', '/', '\t', '\n', 0};
    }

    /* renamed from: l */
    public static byte[] m23613l() {
        return new byte[]{35, 1, 3, 0, 4, 36, 36, 36, 36, 1, 6, 5, 13, 17, 22, 37, 7, 8, 9, 7, 8, 9, 7, 10, 20, 21, 11, 11, 11, 12, 17, 19, 37, 11, 12, 19, 14, 16, 15, 14, 12, 18, 17, 11, 9, 5, 24, 23, 27, 31, 34, 25, 38, 25, 25, 26, 31, 33, 38, 25, 26, 33, 28, 30, 29, 28, 26, 32, 31, 25, 23, 2, 36, 2};
    }

    /* renamed from: b */
    public void m23623b(String str, boolean z) {
        m23624a(str, new JsonValue(z));
    }

    /* renamed from: m */
    public void m23612m(String str, double d, String str2) {
        m23624a(str, new JsonValue(d, str2));
    }

    /* renamed from: n */
    public void m23611n(String str, long j, String str2) {
        m23624a(str, new JsonValue(j, str2));
    }

    public JsonValue parse(String str) {
        char[] charArray = str.toCharArray();
        return parse(charArray, 0, charArray.length);
    }

    /* renamed from: r */
    public void m23607r(String str, String str2) {
        m23624a(str, new JsonValue(str2));
    }

    /* renamed from: o */
    public void m23610o() {
        JsonValue jsonValue;
        this.f6553c = this.f6551a.pop();
        if (this.f6554d.size > 0) {
            this.f6552b.pop();
        }
        Array<JsonValue> array = this.f6551a;
        if (array.size > 0) {
            jsonValue = array.peek();
        } else {
            jsonValue = null;
        }
        this.f6554d = jsonValue;
    }

    /* renamed from: p */
    public void m23609p(@Null String str) {
        JsonValue jsonValue = new JsonValue(JsonValue.ValueType.array);
        if (this.f6554d != null) {
            m23624a(str, jsonValue);
        }
        this.f6551a.add(jsonValue);
        this.f6554d = jsonValue;
    }

    /* renamed from: q */
    public void m23608q(@Null String str) {
        JsonValue jsonValue = new JsonValue(JsonValue.ValueType.object);
        if (this.f6554d != null) {
            m23624a(str, jsonValue);
        }
        this.f6551a.add(jsonValue);
        this.f6554d = jsonValue;
    }

    /* renamed from: a */
    public final void m23624a(@Null String str, JsonValue jsonValue) {
        jsonValue.setName(str);
        JsonValue jsonValue2 = this.f6554d;
        if (jsonValue2 == null) {
            this.f6554d = jsonValue;
            this.f6553c = jsonValue;
        } else if (!jsonValue2.isArray() && !this.f6554d.isObject()) {
            this.f6553c = this.f6554d;
        } else {
            JsonValue jsonValue3 = this.f6554d;
            jsonValue.parent = jsonValue3;
            if (jsonValue3.size == 0) {
                jsonValue3.child = jsonValue;
            } else {
                JsonValue pop = this.f6552b.pop();
                pop.next = jsonValue;
                jsonValue.prev = pop;
            }
            this.f6552b.add(jsonValue);
            this.f6554d.size++;
        }
    }

    public JsonValue parse(Reader reader) {
        char[] cArr = new char[1024];
        int i = 0;
        while (true) {
            try {
                try {
                    int read = reader.read(cArr, i, cArr.length - i);
                    if (read == -1) {
                        StreamUtils.closeQuietly(reader);
                        return parse(cArr, 0, i);
                    } else if (read == 0) {
                        char[] cArr2 = new char[cArr.length * 2];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        cArr = cArr2;
                    } else {
                        i += read;
                    }
                } catch (IOException e) {
                    throw new SerializationException("Error reading input.", e);
                }
            } catch (Throwable th) {
                StreamUtils.closeQuietly(reader);
                throw th;
            }
        }
    }

    /* renamed from: s */
    public final String m23606s(String str) {
        int length = str.length();
        StringBuilder stringBuilder = new StringBuilder(length + 16);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != '\\') {
                stringBuilder.append(charAt);
            } else if (i2 == length) {
                break;
            } else {
                i = i2 + 1;
                char charAt2 = str.charAt(i2);
                if (charAt2 == 'u') {
                    i2 = i + 4;
                    stringBuilder.append(Character.toChars(Integer.parseInt(str.substring(i, i2), 16)));
                } else {
                    if (charAt2 != '\"' && charAt2 != '/' && charAt2 != '\\') {
                        if (charAt2 != 'b') {
                            if (charAt2 != 'f') {
                                if (charAt2 != 'n') {
                                    if (charAt2 != 'r') {
                                        if (charAt2 == 't') {
                                            charAt2 = '\t';
                                        } else {
                                            throw new SerializationException("Illegal escaped character: \\" + charAt2);
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
                    stringBuilder.append(charAt2);
                }
            }
            i = i2;
        }
        return stringBuilder.toString();
    }

    @Override // com.badlogic.gdx.utils.BaseJsonReader
    public JsonValue parse(InputStream inputStream) {
        try {
            return parse(new InputStreamReader(inputStream, "UTF-8"));
        } catch (Exception e) {
            throw new SerializationException("Error reading stream.", e);
        }
    }

    @Override // com.badlogic.gdx.utils.BaseJsonReader
    public JsonValue parse(FileHandle fileHandle) {
        try {
            try {
                return parse(fileHandle.reader("UTF-8"));
            } catch (Exception e) {
                throw new SerializationException("Error parsing file: " + fileHandle, e);
            }
        } catch (Exception e2) {
            throw new SerializationException("Error reading file: " + fileHandle, e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r11 != 4) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0228, code lost:
        r4 = r11;
        r11 = 2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0190 A[LOOP:7: B:361:0x0157->B:129:0x0190, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01a2 A[Catch: RuntimeException -> 0x0082, LOOP:6: B:132:0x019a->B:134:0x01a2, LOOP_END, TryCatch #2 {RuntimeException -> 0x0082, blocks: (B:253:0x0372, B:255:0x0378, B:259:0x038a, B:266:0x039b, B:272:0x03b0, B:277:0x03bb, B:60:0x00f8, B:132:0x019a, B:134:0x01a2, B:138:0x01b4, B:141:0x01be, B:25:0x0067), top: B:351:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0337 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0330 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0323 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d6 A[Catch: RuntimeException -> 0x0439, TRY_LEAVE, TryCatch #10 {RuntimeException -> 0x0439, blocks: (B:41:0x00aa, B:43:0x00ae, B:45:0x00b5, B:47:0x00bb, B:48:0x00be, B:50:0x00c8, B:52:0x00d6), top: B:367:0x00aa }] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r13v16, types: [int] */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v48, types: [int] */
    /* JADX WARN: Type inference failed for: r13v51 */
    /* JADX WARN: Type inference failed for: r13v54 */
    /* JADX WARN: Type inference failed for: r18v13, types: [int] */
    /* JADX WARN: Type inference failed for: r18v16, types: [int] */
    /* JADX WARN: Type inference failed for: r18v18, types: [int] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int[]] */
    /* JADX WARN: Type inference failed for: r9v5, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.badlogic.gdx.utils.JsonValue parse(char[] r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 1328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.JsonReader.parse(char[], int, int):com.badlogic.gdx.utils.JsonValue");
    }
}

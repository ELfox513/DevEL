package com.badlogic.gdx.p032ai.btree.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.SerializationException;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import net.bytebuddy.pool.TypePool;
/* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeReader */
/* loaded from: classes.dex */
public abstract class BehaviorTreeReader {

    /* renamed from: d */
    public static final byte[] f3257d = m24409f();

    /* renamed from: e */
    public static final short[] f3258e = m24405j();

    /* renamed from: f */
    public static final char[] f3259f = m24401n();

    /* renamed from: g */
    public static final byte[] f3260g = m24403l();

    /* renamed from: h */
    public static final byte[] f3261h = m24404k();

    /* renamed from: i */
    public static final short[] f3262i = m24407h();

    /* renamed from: j */
    public static final byte[] f3263j = m24406i();

    /* renamed from: k */
    public static final byte[] f3264k = m24400o();

    /* renamed from: l */
    public static final byte[] f3265l = m24402m();

    /* renamed from: m */
    public static final byte[] f3266m = m24408g();

    /* renamed from: a */
    public boolean f3267a;

    /* renamed from: b */
    public int f3268b;

    /* renamed from: c */
    public boolean f3269c;

    public BehaviorTreeReader() {
        this(false);
    }

    /* renamed from: f */
    public static byte[] m24409f() {
        return new byte[]{0, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 9, 1, 12, 1, 13, 2, 0, 5, 2, 0, 13, 2, 5, 3, 2, 7, 5, 2, 10, 8, 2, 11, 8, 3, 0, 5, 3, 3, 6, 7, 5, 3, 7, 5, 3, 3, 10, 8, 5, 3, 10, 8, 13, 3, 11, 8, 5, 3, 11, 8, 13, 4, 6, 7, 5, 3, 4, 10, 8, 5, 3, 4, 11, 8, 5, 3};
    }

    /* renamed from: g */
    public static byte[] m24408g() {
        return new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 43, 30, 59, 59, 51, 11, 21, 11, 51, 51};
    }

    /* renamed from: h */
    public static short[] m24407h() {
        return new short[]{0, 0, 2, 6, 15, 19, 29, 34, 43, 53, 58, 67, 69, 74, 78, 82, 87, 99, 107, 117, 122, 131, 136, 138, 143, 148, 152, 163, 168, 172, 183, 189, 192, 195, 206, 212, 225, 234, 240, 246, 258};
    }

    /* renamed from: i */
    public static byte[] m24406i() {
        return new byte[]{0, 1, 2, 2, 2, 1, 3, 3, 3, 4, 5, 6, 6, 6, 1, 7, 7, 7, 1, 8, 8, 8, 9, 11, 10, 10, 10, 10, 1, 12, 12, 12, 5, 1, 13, 13, 13, 14, 15, 16, 16, 16, 1, 17, 17, 17, 19, 20, 18, 18, 18, 18, 1, 21, 21, 21, 22, 1, 22, 1, 22, 22, 24, 1, 1, 1, 23, 25, 1, 17, 17, 17, 19, 1, 26, 26, 26, 1, 27, 27, 27, 1, 8, 8, 8, 9, 1, 28, 28, 28, 29, 30, 31, 33, 32, 32, 32, 32, 1, 34, 34, 34, 5, 35, 35, 35, 1, 36, 36, 36, 38, 39, 37, 37, 37, 37, 1, 40, 40, 40, 41, 1, 41, 1, 41, 41, 43, 1, 1, 1, 42, 44, 44, 44, 45, 1, 46, 1, 34, 34, 34, 5, 1, 36, 36, 36, 38, 1, 47, 47, 47, 1, 28, 28, 28, 29, 30, 33, 47, 47, 47, 47, 1, 28, 28, 28, 30, 1, 32, 32, 32, 1, 48, 49, 50, 48, 51, 14, 15, 16, 16, 16, 1, 50, 49, 50, 50, 51, 1, 53, 54, 52, 56, 57, 55, 58, 59, 58, 58, 60, 62, 61, 61, 61, 61, 1, 58, 59, 58, 58, 60, 1, 63, 64, 63, 63, 65, 66, 67, 68, 27, 27, 27, 27, 1, 69, 49, 69, 69, 51, 70, 70, 70, 1, 71, 72, 71, 71, 73, 1, 69, 49, 69, 69, 51, 1, 63, 64, 63, 63, 65, 66, 68, 26, 26, 26, 26, 1, 63, 64, 63, 63, 65, 1, 0};
    }

    /* renamed from: j */
    public static short[] m24405j() {
        return new short[]{0, 0, 1, 6, 16, 21, 33, 37, 47, 59, 63, 72, 73, 77, 82, 87, 91, 105, 114, 126, 130, 139, 143, 144, 148, 152, 157, 170, 174, 179, 191, 196, 198, 200, 213, 218, 233, 243, 248, 253, 267};
    }

    /* renamed from: k */
    public static byte[] m24404k() {
        return new byte[]{0, 0, 2, 2, 2, 3, 0, 2, 3, 0, 1, 0, 0, 2, 2, 0, 3, 2, 3, 0, 1, 0, 0, 0, 0, 2, 3, 0, 2, 2, 0, 0, 0, 3, 0, 3, 2, 0, 0, 3, 0};
    }

    /* renamed from: l */
    public static byte[] m24403l() {
        return new byte[]{0, 1, 1, 6, 1, 6, 4, 6, 6, 4, 7, 1, 4, 1, 1, 4, 8, 5, 6, 4, 7, 4, 1, 4, 4, 1, 7, 4, 1, 8, 5, 2, 2, 7, 5, 9, 6, 5, 5, 8, 5};
    }

    /* renamed from: m */
    public static byte[] m24402m() {
        return new byte[]{7, 0, 13, 0, 0, 19, 13, 13, 36, 63, 0, 0, 0, 0, 0, 17, 13, 15, 0, 15, 0, 0, 0, 3, 5, 1, 0, 0, 33, 0, 55, 0, 0, 0, 0, 13, 15, 0, 15, 0, 0, 0, 3, 5, 1, 24, 1, 0, 9, 27, 0, 0, 13, 67, 43, 0, 47, 30, 36, 77, 36, 0, 0, 33, 72, 33, 0, 0, 0, 0, 13, 1, 39, 1};
    }

    /* renamed from: n */
    public static char[] m24401n() {
        return new char[]{'\n', '_', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', '$', ')', '_', 'A', 'Z', 'a', 'z', '_', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ')', '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ')', '\t', '\r', ' ', '$', '(', '_', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ':', '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ':', '\t', '\n', '\r', ' ', '\"', '#', ':', '(', ')', '\"', '\t', '\r', ' ', ':', '_', 'A', 'Z', 'a', 'z', '_', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ')', '\t', '\r', ' ', '$', ')', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ')', '_', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ':', '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ':', '\t', '\n', '\r', ' ', '\"', '#', ':', '(', ')', '\t', '\r', ' ', ')', '\"', '\t', '\r', ' ', ')', '\t', '\r', ' ', ':', '_', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', '$', ')', '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\r', ' ', ')', '_', 'A', 'Z', 'a', 'z', '\t', '\n', '\r', ' ', '#', '$', '(', '_', 'A', 'Z', 'a', 'z', '\t', '\n', '\r', ' ', '#', '\n', '\r', '\n', '\r', '\t', '\n', '\r', ' ', '#', '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\n', '\r', ' ', '#', '\t', '\n', '\r', ' ', '#', '$', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\n', '\r', ' ', '#', '_', 'A', 'Z', 'a', 'z', '\t', '\n', '\r', ' ', '#', '\t', '\n', '\r', ' ', '#', '\t', '\n', '\r', ' ', '#', '$', '?', '_', '0', '9', 'A', 'Z', 'a', 'z', '\t', '\n', '\r', ' ', '#', 0};
    }

    /* renamed from: o */
    public static byte[] m24400o() {
        return new byte[]{29, 0, 33, 3, 4, 7, 16, 5, 6, 7, 5, 15, 6, 7, 2, 3, 35, 9, 8, 10, 12, 9, 10, 37, 11, 38, 39, 35, 17, 25, 7, 28, 16, 27, 17, 18, 19, 18, 20, 24, 19, 20, 21, 22, 17, 7, 23, 26, 29, 29, 30, 31, 32, 29, 1, 32, 29, 1, 30, 29, 31, 33, 34, 36, 29, 31, 13, 14, 40, 36, 8, 36, 29, 31};
    }

    /* renamed from: a */
    public abstract void mo24414a(String str, Object obj);

    /* renamed from: b */
    public void m24413b(String str) {
    }

    /* renamed from: d */
    public abstract void mo24411d();

    /* renamed from: e */
    public abstract void mo24410e();

    /* renamed from: p */
    public abstract void mo24399p(int i);

    public void parse(String str) {
        char[] charArray = str.toCharArray();
        parse(charArray, 0, charArray.length);
    }

    /* renamed from: q */
    public abstract void mo24398q(String str, boolean z, boolean z2);

    public BehaviorTreeReader(boolean z) {
        this.f3267a = false;
        this.f3269c = z;
    }

    /* renamed from: c */
    public static boolean m24412c(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '.' || charAt == 'E' || charAt == 'e') {
                return true;
            }
        }
        return false;
    }

    /* renamed from: r */
    public static String m24397r(String str) {
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
                    sb.append(charAt2);
                }
            }
            i = i2;
        }
        return sb.toString();
    }

    public void parse(Reader reader) {
        try {
            try {
                char[] cArr = new char[1024];
                int i = 0;
                while (true) {
                    int read = reader.read(cArr, i, cArr.length - i);
                    if (read == -1) {
                        parse(cArr, 0, i);
                        return;
                    } else if (read == 0) {
                        char[] cArr2 = new char[cArr.length * 2];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        cArr = cArr2;
                    } else {
                        i += read;
                    }
                }
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        } finally {
            StreamUtils.closeQuietly(reader);
        }
    }

    public void parse(InputStream inputStream) {
        try {
            try {
                parse(new InputStreamReader(inputStream, "UTF-8"));
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        } finally {
            StreamUtils.closeQuietly(inputStream);
        }
    }

    public void parse(FileHandle fileHandle) {
        try {
            parse(fileHandle.reader("UTF-8"));
        } catch (Exception e) {
            throw new SerializationException("Error parsing file: " + fileHandle, e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:231:0x05cc  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0943 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x05eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x05e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013c A[Catch: RuntimeException -> 0x092e, TRY_LEAVE, TryCatch #11 {RuntimeException -> 0x092e, blocks: (B:44:0x0110, B:46:0x0114, B:48:0x011b, B:50:0x0121, B:51:0x0124, B:53:0x012e, B:55:0x013c), top: B:415:0x0110 }] */
    /* JADX WARN: Type inference failed for: r13v44, types: [int] */
    /* JADX WARN: Type inference failed for: r13v47 */
    /* JADX WARN: Type inference failed for: r15v23, types: [int] */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v90 */
    /* JADX WARN: Type inference failed for: r16v24, types: [int] */
    /* JADX WARN: Type inference failed for: r20v4, types: [int] */
    /* JADX WARN: Type inference failed for: r24v22, types: [int] */
    /* JADX WARN: Type inference failed for: r24v28, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parse(char[] r45, int r46, int r47) {
        /*
            Method dump skipped, instructions count: 2480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeReader.parse(char[], int, int):void");
    }
}

package p018b5;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: b5.f9 */
/* loaded from: classes2.dex */
public final class C0650f9 {

    /* renamed from: a */
    public static final Charset f1817a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final Charset f1818b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f1819c;

    /* renamed from: d */
    public static final ByteBuffer f1820d;

    /* renamed from: e */
    public static final C0581b8 f1821e;

    /* renamed from: a */
    public static int m25950a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: b */
    public static int m25949b(byte[] bArr) {
        int length = bArr.length;
        int m25947d = m25947d(length, bArr, 0, length);
        if (m25947d == 0) {
            return 1;
        }
        return m25947d;
    }

    /* renamed from: c */
    public static int m25948c(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: d */
    public static int m25947d(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: e */
    public static <T> T m25946e(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: f */
    public static <T> T m25945f(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: g */
    public static Object m25944g(Object obj, Object obj2) {
        return ((InterfaceC0634ea) obj).mo24972u0().mo26023y((InterfaceC0634ea) obj2).mo25098m();
    }

    /* renamed from: h */
    public static String m25943h(byte[] bArr) {
        return new String(bArr, f1817a);
    }

    /* renamed from: i */
    public static boolean m25942i(byte[] bArr) {
        return C0941wb.m25020e(bArr);
    }

    static {
        byte[] bArr = new byte[0];
        f1819c = bArr;
        f1820d = ByteBuffer.wrap(bArr);
        int i = C0581b8.f1748a;
        C0988z7 c0988z7 = new C0988z7(bArr, 0, 0, false, null);
        try {
            c0988z7.m24868c(0);
            f1821e = c0988z7;
        } catch (C0684h9 e) {
            throw new IllegalArgumentException(e);
        }
    }
}

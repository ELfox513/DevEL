package p168r4;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: r4.zm3 */
/* loaded from: classes2.dex */
public final class zm3 {

    /* renamed from: a */
    public static final Charset f34680a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final Charset f34681b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f34682c;

    /* renamed from: d */
    public static final ByteBuffer f34683d;

    /* renamed from: e */
    public static final rl3 f34684e;

    /* renamed from: a */
    public static <T> T m4180a(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: b */
    public static <T> T m4179b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: c */
    public static boolean m4178c(byte[] bArr) {
        return wp3.m5630a(bArr);
    }

    /* renamed from: d */
    public static String m4177d(byte[] bArr) {
        return new String(bArr, f34680a);
    }

    /* renamed from: e */
    public static int m4176e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: f */
    public static int m4175f(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: g */
    public static int m4174g(byte[] bArr) {
        int length = bArr.length;
        int m4173h = m4173h(length, bArr, 0, length);
        if (m4173h == 0) {
            return 1;
        }
        return m4173h;
    }

    /* renamed from: h */
    public static int m4173h(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: i */
    public static Object m4172i(Object obj, Object obj2) {
        return ((ao3) obj).mo8268a().mo4159q((ao3) obj2).mo4160H();
    }

    static {
        byte[] bArr = new byte[0];
        f34682c = bArr;
        f34683d = ByteBuffer.wrap(bArr);
        f34684e = rl3.m7460d(bArr, 0, 0, false);
    }
}

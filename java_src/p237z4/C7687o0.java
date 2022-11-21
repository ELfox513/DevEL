package p237z4;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: z4.o0 */
/* loaded from: classes2.dex */
public final class C7687o0 {

    /* renamed from: a */
    public static final Charset f37833a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final Charset f37834b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f37835c;

    /* renamed from: d */
    public static final ByteBuffer f37836d;

    /* renamed from: e */
    public static final AbstractC7714u f37837e;

    /* renamed from: a */
    public static <T> T m636a(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: b */
    public static int m635b(byte[] bArr) {
        int length = bArr.length;
        int m634c = m634c(length, bArr, 0, length);
        if (m634c == 0) {
            return 1;
        }
        return m634c;
    }

    /* renamed from: c */
    public static int m634c(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: d */
    public static Object m633d(Object obj, Object obj2) {
        return ((InterfaceC7703r1) obj).mo608i().mo598e((InterfaceC7703r1) obj2).mo596w();
    }

    /* renamed from: e */
    public static <T> T m632e(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: f */
    public static boolean m631f(byte[] bArr) {
        return C7641f3.m777g(bArr);
    }

    /* renamed from: g */
    public static int m630g(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: h */
    public static String m629h(byte[] bArr) {
        return new String(bArr, f37833a);
    }

    /* renamed from: i */
    public static boolean m628i(InterfaceC7703r1 interfaceC7703r1) {
        return false;
    }

    /* renamed from: j */
    public static int m627j(long j) {
        return (int) (j ^ (j >>> 32));
    }

    static {
        byte[] bArr = new byte[0];
        f37835c = bArr;
        f37836d = ByteBuffer.wrap(bArr);
        f37837e = AbstractC7714u.m588a(bArr, 0, bArr.length, false);
    }
}

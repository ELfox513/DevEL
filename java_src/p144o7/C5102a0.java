package p144o7;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: o7.a0 */
/* loaded from: classes2.dex */
public final class C5102a0 {

    /* renamed from: a */
    public static final Charset f19363a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final Charset f19364b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f19365c;

    /* renamed from: d */
    public static final ByteBuffer f19366d;

    /* renamed from: e */
    public static final AbstractC5151i f19367e;

    /* renamed from: o7.a0$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC5103a extends InterfaceC5111i<Boolean> {
    }

    /* renamed from: o7.a0$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC5104b extends InterfaceC5111i<Double> {
    }

    /* renamed from: o7.a0$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC5105c {
        /* renamed from: e */
        int mo14649e();
    }

    /* renamed from: o7.a0$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC5106d<T extends InterfaceC5105c> {
        /* renamed from: a */
        T mo14648a(int i);
    }

    /* renamed from: o7.a0$e */
    /* loaded from: classes2.dex */
    public interface InterfaceC5107e {
        /* renamed from: a */
        boolean mo14647a(int i);
    }

    /* renamed from: o7.a0$f */
    /* loaded from: classes2.dex */
    public interface InterfaceC5108f extends InterfaceC5111i<Float> {
    }

    /* renamed from: o7.a0$g */
    /* loaded from: classes2.dex */
    public interface InterfaceC5109g extends InterfaceC5111i<Integer> {
        /* renamed from: P */
        void mo13759P(int i);

        int getInt(int i);

        @Override // p144o7.C5102a0.InterfaceC5111i
        /* renamed from: n */
        InterfaceC5111i<Integer> mo13752n(int i);
    }

    /* renamed from: o7.a0$h */
    /* loaded from: classes2.dex */
    public interface InterfaceC5110h extends InterfaceC5111i<Long> {
    }

    /* renamed from: o7.a0$i */
    /* loaded from: classes2.dex */
    public interface InterfaceC5111i<E> extends List<E>, RandomAccess {
        /* renamed from: F */
        void mo14640F();

        /* renamed from: V0 */
        boolean mo14568V0();

        /* renamed from: n */
        InterfaceC5111i<E> mo13752n(int i);
    }

    /* renamed from: a */
    public static <T> T m14659a(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: b */
    public static <T> T m14658b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: c */
    public static int m14657c(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: d */
    public static int m14656d(byte[] bArr) {
        return m14655e(bArr, 0, bArr.length);
    }

    /* renamed from: e */
    public static int m14655e(byte[] bArr, int i, int i2) {
        int m14651i = m14651i(i2, bArr, i, i2);
        if (m14651i == 0) {
            return 1;
        }
        return m14651i;
    }

    /* renamed from: f */
    public static int m14654f(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: g */
    public static boolean m14653g(byte[] bArr) {
        return C5220t1.m14006m(bArr);
    }

    /* renamed from: h */
    public static Object m14652h(Object obj, Object obj2) {
        return ((InterfaceC5210s0) obj).mo13774f().mo14080r((InterfaceC5210s0) obj2).mo13779s();
    }

    /* renamed from: i */
    public static int m14651i(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: j */
    public static String m14650j(byte[] bArr) {
        return new String(bArr, f19363a);
    }

    static {
        byte[] bArr = new byte[0];
        f19365c = bArr;
        f19366d = ByteBuffer.wrap(bArr);
        f19367e = AbstractC5151i.m14527f(bArr);
    }
}

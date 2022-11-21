package p222x5;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: x5.f */
/* loaded from: classes2.dex */
public class C7339f {

    /* renamed from: a */
    public static final AtomicLong f36835a = new AtomicLong(0);

    /* renamed from: b */
    public static String f36836b;

    /* renamed from: a */
    public static byte[] m1801a(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    /* renamed from: b */
    public static byte[] m1800b(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    public String toString() {
        return f36836b;
    }

    /* renamed from: d */
    public final void m1798d(byte[] bArr) {
        byte[] m1800b = m1800b(f36835a.incrementAndGet());
        bArr[6] = m1800b[0];
        bArr[7] = m1800b[1];
    }

    /* renamed from: e */
    public final void m1797e(byte[] bArr) {
        long time = new Date().getTime();
        byte[] m1801a = m1801a(time / 1000);
        bArr[0] = m1801a[0];
        bArr[1] = m1801a[1];
        bArr[2] = m1801a[2];
        bArr[3] = m1801a[3];
        byte[] m1800b = m1800b(time % 1000);
        bArr[4] = m1800b[0];
        bArr[5] = m1800b[1];
    }

    public C7339f(C7386v c7386v) {
        byte[] bArr = new byte[10];
        m1797e(bArr);
        m1798d(bArr);
        m1799c(bArr);
        String m1770z = C7341g.m1770z(c7386v.mo1602a());
        String m1774v = C7341g.m1774v(bArr);
        Locale locale = Locale.US;
        f36836b = String.format(locale, "%s%s%s%s", m1774v.substring(0, 12), m1774v.substring(12, 16), m1774v.subSequence(16, 20), m1770z.substring(0, 12)).toUpperCase(locale);
    }

    /* renamed from: c */
    public final void m1799c(byte[] bArr) {
        byte[] m1800b = m1800b(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = m1800b[0];
        bArr[9] = m1800b[1];
    }
}

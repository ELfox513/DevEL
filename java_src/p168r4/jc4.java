package p168r4;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* renamed from: r4.jc4 */
/* loaded from: classes2.dex */
public final class jc4 {

    /* renamed from: a */
    public static boolean f26000a = false;

    /* renamed from: b */
    public static MessageDigest f26001b;

    /* renamed from: c */
    public static final Object f26002c = new Object();

    /* renamed from: d */
    public static final Object f26003d = new Object();

    /* renamed from: e */
    public static final CountDownLatch f26004e = new CountDownLatch(1);

    /* renamed from: d */
    public static Vector<byte[]> m10305d(byte[] bArr, int i) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        int i2 = (length + 254) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i4 > 255) {
                    length2 = i4 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i4, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    /* renamed from: g */
    public static byte[] m10302g(byte[] bArr, String str, boolean z) {
        int i;
        byte[] array;
        if (true != z) {
            i = 255;
        } else {
            i = 239;
        }
        if (bArr.length > i) {
            bArr = m10303f(4096).mo6490t();
        }
        int length = bArr.length;
        if (length < i) {
            byte[] bArr2 = new byte[i - length];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(m10304e(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        kc4[] kc4VarArr = new C5892j().f25686G2;
        int length2 = kc4VarArr.length;
        for (int i2 = 0; i2 < 12; i2++) {
            kc4VarArr[i2].mo7883a(array, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new sk3(str.getBytes("UTF-8")).m7147a(bArr3);
        }
        return bArr3;
    }

    /* renamed from: b */
    public static void m10307b() {
        synchronized (f26003d) {
            if (!f26000a) {
                f26000a = true;
                new Thread(new hc4(null)).start();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x001e, code lost:
        r1.reset();
        r1.update(r6);
        r6 = p168r4.jc4.f26001b.digest();
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m10304e(byte[] r6) {
        /*
            java.lang.Object r0 = p168r4.jc4.f26002c
            monitor-enter(r0)
            m10307b()     // Catch: java.lang.Throwable -> L34
            r1 = 0
            java.util.concurrent.CountDownLatch r2 = p168r4.jc4.f26004e     // Catch: java.lang.InterruptedException -> L1b java.lang.Throwable -> L34
            r3 = 2
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.InterruptedException -> L1b java.lang.Throwable -> L34
            boolean r2 = r2.await(r3, r5)     // Catch: java.lang.InterruptedException -> L1b java.lang.Throwable -> L34
            if (r2 != 0) goto L14
            goto L1c
        L14:
            java.security.MessageDigest r2 = p168r4.jc4.f26001b     // Catch: java.lang.Throwable -> L34
            if (r2 != 0) goto L19
            goto L1c
        L19:
            r1 = r2
            goto L1c
        L1b:
        L1c:
            if (r1 == 0) goto L2c
            r1.reset()     // Catch: java.lang.Throwable -> L34
            r1.update(r6)     // Catch: java.lang.Throwable -> L34
            java.security.MessageDigest r6 = p168r4.jc4.f26001b     // Catch: java.lang.Throwable -> L34
            byte[] r6 = r6.digest()     // Catch: java.lang.Throwable -> L34
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            return r6
        L2c:
            java.security.NoSuchAlgorithmException r6 = new java.security.NoSuchAlgorithmException     // Catch: java.lang.Throwable -> L34
            java.lang.String r1 = "Cannot compute hash"
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L34
            throw r6     // Catch: java.lang.Throwable -> L34
        L34:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.jc4.m10304e(byte[]):byte[]");
    }

    /* renamed from: c */
    public static String m10306c(pb4 pb4Var, String str) {
        byte[] m10302g;
        byte[] bArr;
        byte[] mo6490t = pb4Var.mo6490t();
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30896R1)).booleanValue()) {
            if (C6375w0.f32998a != null) {
                if (str != null) {
                    bArr = str.getBytes();
                } else {
                    bArr = new byte[0];
                }
                byte[] mo9409a = C6375w0.f32998a.mo9409a(mo6490t, bArr);
                cc4 m12168C = dc4.m12168C();
                m12168C.m12492v(ll3.m9632I(mo9409a));
                m12168C.m12490z(3);
                m10302g = m12168C.m9614o().mo6490t();
            } else {
                throw new GeneralSecurityException();
            }
        } else {
            Vector<byte[]> m10305d = m10305d(mo6490t, 255);
            if (m10305d != null && m10305d.size() != 0) {
                cc4 m12168C2 = dc4.m12168C();
                int size = m10305d.size();
                for (int i = 0; i < size; i++) {
                    m12168C2.m12492v(ll3.m9632I(m10302g(m10305d.get(i), str, false)));
                }
                m12168C2.m12491x(ll3.m9632I(m10304e(mo6490t)));
                m10302g = m12168C2.m9614o().mo6490t();
            } else {
                m10302g = m10302g(m10303f(4096).mo6490t(), str, true);
            }
        }
        return fc4.m11575a(m10302g, true);
    }

    /* renamed from: f */
    public static pb4 m10303f(int i) {
        za4 m8365z0 = pb4.m8365z0();
        m8365z0.m4359q0(4096L);
        return m8365z0.m9614o();
    }
}

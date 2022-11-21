package p168r4;

import java.security.SecureRandom;
/* renamed from: r4.bk3 */
/* loaded from: classes2.dex */
public final class bk3 {

    /* renamed from: a */
    public static final ThreadLocal<SecureRandom> f21091a = new ak3();

    /* renamed from: a */
    public static byte[] m12766a(int i) {
        byte[] bArr = new byte[i];
        f21091a.get().nextBytes(bArr);
        return bArr;
    }
}

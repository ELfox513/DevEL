package p168r4;

import java.security.SecureRandom;
/* renamed from: r4.ak3 */
/* loaded from: classes2.dex */
public final class ak3 extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ SecureRandom initialValue() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}

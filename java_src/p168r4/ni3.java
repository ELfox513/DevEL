package p168r4;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: r4.ni3 */
/* loaded from: classes2.dex */
public final class ni3 extends ThreadLocal<Cipher> {
    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m9085a();
    }

    /* renamed from: a */
    public static final Cipher m9085a() {
        try {
            return kj3.f26443e.m10017b("AES/CTR/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}

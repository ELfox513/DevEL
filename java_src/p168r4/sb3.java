package p168r4;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: r4.sb3 */
/* loaded from: classes2.dex */
public final class sb3 extends ThreadLocal<Cipher> {
    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m7182a();
    }

    /* renamed from: a */
    public static final Cipher m7182a() {
        try {
            return kj3.f26443e.m10017b("AES/GCM-SIV/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}

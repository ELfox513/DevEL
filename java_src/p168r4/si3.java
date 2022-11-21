package p168r4;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* renamed from: r4.si3 */
/* loaded from: classes2.dex */
public final class si3 extends ThreadLocal<Cipher> {
    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Cipher initialValue() {
        return m7153a();
    }

    /* renamed from: a */
    public static final Cipher m7153a() {
        try {
            return kj3.f26443e.m10017b("AES/GCM/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}

package p168r4;

import java.security.Provider;
import javax.crypto.KeyAgreement;
/* renamed from: r4.mj3 */
/* loaded from: classes2.dex */
public final class mj3 implements sj3<KeyAgreement> {
    @Override // p168r4.sj3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ KeyAgreement mo7150a(String str, Provider provider) {
        if (provider == null) {
            return KeyAgreement.getInstance(str);
        }
        return KeyAgreement.getInstance(str, provider);
    }
}

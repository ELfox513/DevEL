package p168r4;

import java.security.KeyPairGenerator;
import java.security.Provider;
/* renamed from: r4.oj3 */
/* loaded from: classes2.dex */
public final class oj3 implements sj3<KeyPairGenerator> {
    @Override // p168r4.sj3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ KeyPairGenerator mo7150a(String str, Provider provider) {
        if (provider == null) {
            return KeyPairGenerator.getInstance(str);
        }
        return KeyPairGenerator.getInstance(str, provider);
    }
}

package p168r4;

import java.security.Provider;
import java.security.Signature;
/* renamed from: r4.rj3 */
/* loaded from: classes2.dex */
public final class rj3 implements sj3<Signature> {
    @Override // p168r4.sj3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Signature mo7150a(String str, Provider provider) {
        if (provider == null) {
            return Signature.getInstance(str);
        }
        return Signature.getInstance(str, provider);
    }
}

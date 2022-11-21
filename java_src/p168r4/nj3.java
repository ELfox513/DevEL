package p168r4;

import java.security.KeyFactory;
import java.security.Provider;
/* renamed from: r4.nj3 */
/* loaded from: classes2.dex */
public final class nj3 implements sj3<KeyFactory> {
    @Override // p168r4.sj3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ KeyFactory mo7150a(String str, Provider provider) {
        if (provider == null) {
            return KeyFactory.getInstance(str);
        }
        return KeyFactory.getInstance(str, provider);
    }
}

package p168r4;

import java.security.Provider;
import javax.crypto.Cipher;
/* renamed from: r4.lj3 */
/* loaded from: classes2.dex */
public final class lj3 implements sj3<Cipher> {
    @Override // p168r4.sj3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Cipher mo7150a(String str, Provider provider) {
        if (provider == null) {
            return Cipher.getInstance(str);
        }
        return Cipher.getInstance(str, provider);
    }
}

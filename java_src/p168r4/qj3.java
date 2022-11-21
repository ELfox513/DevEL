package p168r4;

import java.security.MessageDigest;
import java.security.Provider;
/* renamed from: r4.qj3 */
/* loaded from: classes2.dex */
public final class qj3 implements sj3<MessageDigest> {
    @Override // p168r4.sj3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ MessageDigest mo7150a(String str, Provider provider) {
        if (provider == null) {
            return MessageDigest.getInstance(str);
        }
        return MessageDigest.getInstance(str, provider);
    }
}

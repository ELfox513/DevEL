package p168r4;

import java.security.Provider;
import javax.crypto.Mac;
/* renamed from: r4.pj3 */
/* loaded from: classes2.dex */
public final class pj3 implements sj3<Mac> {
    @Override // p168r4.sj3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Mac mo7150a(String str, Provider provider) {
        if (provider == null) {
            return Mac.getInstance(str);
        }
        return Mac.getInstance(str, provider);
    }
}

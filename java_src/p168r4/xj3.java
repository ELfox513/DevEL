package p168r4;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;
/* renamed from: r4.xj3 */
/* loaded from: classes2.dex */
public final class xj3 extends ThreadLocal<Mac> {

    /* renamed from: a */
    public final /* synthetic */ yj3 f33618a;

    public xj3(yj3 yj3Var) {
        this.f33618a = yj3Var;
    }

    @Override // java.lang.ThreadLocal
    /* renamed from: a */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            kj3<pj3, Mac> kj3Var = kj3.f26444f;
            str = this.f33618a.f34113b;
            Mac m10017b = kj3Var.m10017b(str);
            key = this.f33618a.f34114c;
            m10017b.init(key);
            return m10017b;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}

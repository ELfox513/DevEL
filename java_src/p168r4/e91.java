package p168r4;

import android.os.Bundle;
import java.util.Set;
/* renamed from: r4.e91 */
/* loaded from: classes2.dex */
public final class e91 extends yc1<cx2> implements t40 {

    /* renamed from: b */
    public final Bundle f22914b;

    /* renamed from: T0 */
    public final synchronized Bundle m11839T0() {
        return new Bundle(this.f22914b);
    }

    @Override // p168r4.t40
    /* renamed from: s */
    public final synchronized void mo4161s(String str, Bundle bundle) {
        this.f22914b.putAll(bundle);
        m4757S0(d91.f22182a);
    }

    public e91(Set<ve1<cx2>> set) {
        super(set);
        this.f22914b = new Bundle();
    }
}

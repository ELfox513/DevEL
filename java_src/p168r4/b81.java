package p168r4;

import java.util.Set;
/* renamed from: r4.b81 */
/* loaded from: classes2.dex */
public final class b81 extends yc1<d81> {

    /* renamed from: b */
    public boolean f20900b;

    public b81(Set<ve1<d81>> set) {
        super(set);
        this.f20900b = false;
    }

    public final synchronized void zza() {
        if (this.f20900b) {
            return;
        }
        m4757S0(a81.f20414a);
        this.f20900b = true;
    }
}

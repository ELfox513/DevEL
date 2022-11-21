package p168r4;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: r4.eb2 */
/* loaded from: classes2.dex */
public final class eb2 {

    /* renamed from: a */
    public final AtomicBoolean f22923a = new AtomicBoolean(false);

    /* renamed from: a */
    public final void m11829a(boolean z) {
        this.f22923a.set(true);
    }

    /* renamed from: b */
    public final boolean m11828b() {
        return this.f22923a.get();
    }
}

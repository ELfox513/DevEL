package p128n0;

import java.util.concurrent.atomic.AtomicBoolean;
import p155q0.InterfaceC5390f;
/* renamed from: n0.l */
/* loaded from: classes.dex */
public abstract class AbstractC4689l {

    /* renamed from: a */
    public final AtomicBoolean f18817a = new AtomicBoolean(false);

    /* renamed from: b */
    public final AbstractC4676e f18818b;

    /* renamed from: c */
    public volatile InterfaceC5390f f18819c;

    /* renamed from: b */
    public void m15774b() {
        this.f18818b.m15830a();
    }

    /* renamed from: d */
    public abstract String mo15772d();

    /* renamed from: e */
    public final InterfaceC5390f m15771e(boolean z) {
        if (z) {
            if (this.f18819c == null) {
                this.f18819c = m15773c();
            }
            return this.f18819c;
        }
        return m15773c();
    }

    /* renamed from: f */
    public void m15770f(InterfaceC5390f interfaceC5390f) {
        if (interfaceC5390f == this.f18819c) {
            this.f18817a.set(false);
        }
    }

    public AbstractC4689l(AbstractC4676e abstractC4676e) {
        this.f18818b = abstractC4676e;
    }

    /* renamed from: a */
    public InterfaceC5390f m15775a() {
        m15774b();
        return m15771e(this.f18817a.compareAndSet(false, true));
    }

    /* renamed from: c */
    public final InterfaceC5390f m15773c() {
        return this.f18818b.m15827d(mo15772d());
    }
}

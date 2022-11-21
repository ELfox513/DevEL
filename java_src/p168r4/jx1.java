package p168r4;

import android.os.Binder;
import java.io.InputStream;
import p185t3.C6734b;
import p220x3.AbstractC7246c;
/* renamed from: r4.jx1 */
/* loaded from: classes2.dex */
public abstract class jx1 implements AbstractC7246c.InterfaceC7247a, AbstractC7246c.InterfaceC7248b {

    /* renamed from: a */
    public final vm0<InputStream> f26168a = new vm0<>();

    /* renamed from: b */
    public final Object f26169b = new Object();

    /* renamed from: d */
    public boolean f26170d = false;

    /* renamed from: k */
    public boolean f26171k = false;

    /* renamed from: p */
    public og0 f26172p;

    /* renamed from: q */
    public yf0 f26173q;

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
        cm0.m12442a("Cannot connect to remote service, fallback to local instance.");
    }

    /* renamed from: a */
    public final void m10159a() {
        synchronized (this.f26169b) {
            this.f26171k = true;
            if (this.f26173q.isConnected() || this.f26173q.m2000c()) {
                this.f26173q.mo1996e();
            }
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: t0 */
    public void mo1940t0(C6734b c6734b) {
        cm0.m12442a("Disconnected from remote ad request service.");
        this.f26168a.m6085f(new yx1(1));
    }
}

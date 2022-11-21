package p168r4;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import p185t3.C6734b;
import p220x3.AbstractC7246c;
/* renamed from: r4.tx2 */
/* loaded from: classes2.dex */
public final class tx2 implements AbstractC7246c.InterfaceC7247a, AbstractC7246c.InterfaceC7248b {

    /* renamed from: a */
    public final py2 f32074a;

    /* renamed from: b */
    public final jy2 f32075b;

    /* renamed from: d */
    public final Object f32076d = new Object();

    /* renamed from: k */
    public boolean f32077k = false;

    /* renamed from: p */
    public boolean f32078p = false;

    public tx2(Context context, Looper looper, jy2 jy2Var) {
        this.f32075b = jy2Var;
        this.f32074a = new py2(context, looper, this, this, 12800000);
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
    }

    /* renamed from: a */
    public final void m6687a() {
        synchronized (this.f32076d) {
            if (!this.f32077k) {
                this.f32077k = true;
                this.f32074a.m1985p();
            }
        }
    }

    /* renamed from: b */
    public final void m6686b() {
        synchronized (this.f32076d) {
            if (this.f32074a.isConnected() || this.f32074a.m2000c()) {
                this.f32074a.mo1996e();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        synchronized (this.f32076d) {
            if (this.f32078p) {
                return;
            }
            this.f32078p = true;
            try {
                this.f32074a.m8101h0().m6294A2(new ny2(this.f32075b.mo6490t()));
            } catch (Exception unused) {
            } catch (Throwable th) {
                m6686b();
                throw th;
            }
            m6686b();
        }
    }
}

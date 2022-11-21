package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import p185t3.C6734b;
import p220x3.AbstractC7246c;
/* renamed from: r4.qx2 */
/* loaded from: classes2.dex */
public final class qx2 implements AbstractC7246c.InterfaceC7247a, AbstractC7246c.InterfaceC7248b {

    /* renamed from: a */
    public final py2 f30348a;

    /* renamed from: b */
    public final String f30349b;

    /* renamed from: d */
    public final String f30350d;

    /* renamed from: k */
    public final LinkedBlockingQueue<cz2> f30351k;

    /* renamed from: p */
    public final HandlerThread f30352p;

    /* renamed from: q */
    public final hx2 f30353q;

    /* renamed from: r */
    public final long f30354r;

    /* renamed from: s */
    public final int f30355s;

    /* renamed from: c */
    public static cz2 m7644c() {
        return new cz2(null, 1);
    }

    /* renamed from: a */
    public final cz2 m7646a(int i) {
        cz2 cz2Var;
        try {
            cz2Var = this.f30351k.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            m7642e(2009, this.f30354r, e);
            cz2Var = null;
        }
        m7642e(3004, this.f30354r, null);
        if (cz2Var != null) {
            if (cz2Var.f21997d == 7) {
                hx2.m10762g(3);
            } else {
                hx2.m10762g(2);
            }
        }
        if (cz2Var == null) {
            return m7644c();
        }
        return cz2Var;
    }

    /* renamed from: d */
    public final uy2 m7643d() {
        try {
            return this.f30348a.m8101h0();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public final void m7645b() {
        py2 py2Var = this.f30348a;
        if (py2Var != null) {
            if (py2Var.isConnected() || this.f30348a.m2000c()) {
                this.f30348a.mo1996e();
            }
        }
    }

    /* renamed from: e */
    public final void m7642e(int i, long j, Exception exc) {
        this.f30353q.m10766c(i, System.currentTimeMillis() - j, exc);
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
        try {
            m7642e(4011, this.f30354r, null);
            this.f30351k.put(m7644c());
        } catch (InterruptedException unused) {
        }
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
        try {
            m7642e(4012, this.f30354r, null);
            this.f30351k.put(m7644c());
        } catch (InterruptedException unused) {
        }
    }

    public qx2(Context context, int i, int i2, String str, String str2, String str3, hx2 hx2Var) {
        this.f30349b = str;
        this.f30355s = i2;
        this.f30350d = str2;
        this.f30353q = hx2Var;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f30352p = handlerThread;
        handlerThread.start();
        this.f30354r = System.currentTimeMillis();
        py2 py2Var = new py2(context, handlerThread.getLooper(), this, this, 19621000);
        this.f30348a = py2Var;
        this.f30351k = new LinkedBlockingQueue<>();
        py2Var.m1985p();
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        uy2 m7643d = m7643d();
        if (m7643d != null) {
            try {
                cz2 m6292e3 = m7643d.m6292e3(new zy2(1, this.f30355s, this.f30349b, this.f30350d));
                m7642e(5011, this.f30354r, null);
                this.f30351k.put(m6292e3);
            } finally {
                try {
                } finally {
                }
            }
        }
    }
}

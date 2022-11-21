package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import p185t3.C6734b;
import p220x3.AbstractC7246c;
/* renamed from: r4.ox2 */
/* loaded from: classes2.dex */
public final class ox2 implements AbstractC7246c.InterfaceC7247a, AbstractC7246c.InterfaceC7248b {

    /* renamed from: a */
    public final py2 f29262a;

    /* renamed from: b */
    public final String f29263b;

    /* renamed from: d */
    public final String f29264d;

    /* renamed from: k */
    public final LinkedBlockingQueue<pb4> f29265k;

    /* renamed from: p */
    public final HandlerThread f29266p;

    /* renamed from: d */
    public final uy2 m8572d() {
        try {
            return this.f29262a.m8101h0();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
        try {
            this.f29265k.put(m8573c());
        } catch (InterruptedException unused) {
        }
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
        try {
            this.f29265k.put(m8573c());
        } catch (InterruptedException unused) {
        }
    }

    /* renamed from: a */
    public final pb4 m8575a(int i) {
        pb4 pb4Var;
        try {
            pb4Var = this.f29265k.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            pb4Var = null;
        }
        if (pb4Var == null) {
            return m8573c();
        }
        return pb4Var;
    }

    /* renamed from: b */
    public final void m8574b() {
        py2 py2Var = this.f29262a;
        if (py2Var != null) {
            if (py2Var.isConnected() || this.f29262a.m2000c()) {
                this.f29262a.mo1996e();
            }
        }
    }

    public ox2(Context context, String str, String str2) {
        this.f29263b = str;
        this.f29264d = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f29266p = handlerThread;
        handlerThread.start();
        py2 py2Var = new py2(context, handlerThread.getLooper(), this, this, 9200000);
        this.f29262a = py2Var;
        this.f29265k = new LinkedBlockingQueue<>();
        py2Var.m1985p();
    }

    /* renamed from: c */
    public static pb4 m8573c() {
        za4 m8365z0 = pb4.m8365z0();
        m8365z0.m4359q0(32768L);
        return m8365z0.m9614o();
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        uy2 m8572d = m8572d();
        if (m8572d != null) {
            try {
                try {
                    this.f29265k.put(m8572d.m6293b2(new qy2(this.f29263b, this.f29264d)).m6950X0());
                } catch (Throwable unused) {
                    this.f29265k.put(m8573c());
                }
            } catch (InterruptedException unused2) {
            } catch (Throwable th) {
                m8574b();
                this.f29266p.quit();
                throw th;
            }
            m8574b();
            this.f29266p.quit();
        }
    }
}

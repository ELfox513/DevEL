package p168r4;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p060f4.BinderC3514b;
/* renamed from: r4.q21 */
/* loaded from: classes2.dex */
public final class q21 extends h11 {

    /* renamed from: i */
    public final d40 f29892i;

    /* renamed from: j */
    public final Runnable f29893j;

    /* renamed from: k */
    public final Executor f29894k;

    public q21(h31 h31Var, d40 d40Var, Runnable runnable, Executor executor) {
        super(h31Var);
        this.f29892i = d40Var;
        this.f29893j = runnable;
        this.f29894k = executor;
    }

    @Override // p168r4.h11
    /* renamed from: g */
    public final View mo8071g() {
        return null;
    }

    @Override // p168r4.h11
    /* renamed from: h */
    public final void mo8070h(ViewGroup viewGroup, C6478yt c6478yt) {
    }

    @Override // p168r4.h11
    /* renamed from: i */
    public final InterfaceC6000lx mo8069i() {
        return null;
    }

    @Override // p168r4.h11
    /* renamed from: j */
    public final qo2 mo8068j() {
        return null;
    }

    @Override // p168r4.h11
    /* renamed from: k */
    public final qo2 mo8067k() {
        return null;
    }

    @Override // p168r4.h11
    /* renamed from: l */
    public final int mo8066l() {
        return 0;
    }

    @Override // p168r4.h11
    /* renamed from: m */
    public final void mo8065m() {
    }

    @Override // p168r4.i31
    /* renamed from: a */
    public final void mo4221a() {
        final AtomicReference atomicReference = new AtomicReference(this.f29893j);
        final Runnable runnable = new Runnable(atomicReference) { // from class: r4.o21

            /* renamed from: a */
            public final AtomicReference f28772a;

            {
                this.f28772a = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.f28772a.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        this.f29894k.execute(new Runnable(this, runnable) { // from class: r4.p21

            /* renamed from: a */
            public final q21 f29313a;

            /* renamed from: b */
            public final Runnable f29314b;

            {
                this.f29313a = this;
                this.f29314b = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29313a.m8064n(this.f29314b);
            }
        });
    }

    /* renamed from: n */
    public final /* synthetic */ void m8064n(Runnable runnable) {
        try {
            if (!this.f29892i.mo12226b0(BinderC3514b.m18741L0(runnable))) {
                runnable.run();
            }
        } catch (RemoteException unused) {
            runnable.run();
        }
    }
}

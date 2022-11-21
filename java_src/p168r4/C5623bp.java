package p168r4;

import android.os.Bundle;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.Future;
import p220x3.AbstractC7246c;
/* renamed from: r4.bp */
/* loaded from: classes2.dex */
public final class C5623bp implements AbstractC7246c.InterfaceC7247a {

    /* renamed from: a */
    public final /* synthetic */ C6288to f21146a;

    /* renamed from: b */
    public final /* synthetic */ vm0 f21147b;

    /* renamed from: d */
    public final /* synthetic */ C5696dp f21148d;

    public C5623bp(C5696dp c5696dp, C6288to c6288to, vm0 vm0Var) {
        this.f21148d = c5696dp;
        this.f21146a = c6288to;
        this.f21147b = vm0Var;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        Object obj;
        boolean z;
        final C6251so c6251so;
        obj = this.f21148d.f22395d;
        synchronized (obj) {
            z = this.f21148d.f22393b;
            if (z) {
                return;
            }
            this.f21148d.f22393b = true;
            c6251so = this.f21148d.f22392a;
            if (c6251so == null) {
                return;
            }
            i83 i83Var = qm0.f30190a;
            final C6288to c6288to = this.f21146a;
            final vm0 vm0Var = this.f21147b;
            final h83<?> mo8014d = i83Var.mo8014d(new Runnable(this, c6251so, c6288to, vm0Var) { // from class: r4.yo

                /* renamed from: a */
                public final C5623bp f34153a;

                /* renamed from: b */
                public final C6251so f34154b;

                /* renamed from: d */
                public final C6288to f34155d;

                /* renamed from: k */
                public final vm0 f34156k;

                {
                    this.f34153a = this;
                    this.f34154b = c6251so;
                    this.f34155d = c6288to;
                    this.f34156k = vm0Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C6177qo m6054b2;
                    C5623bp c5623bp = this.f34153a;
                    C6251so c6251so2 = this.f34154b;
                    C6288to c6288to2 = this.f34155d;
                    vm0 vm0Var2 = this.f34156k;
                    try {
                        C6362vo m7094i0 = c6251so2.m7094i0();
                        if (c6251so2.m7095h0()) {
                            m6054b2 = m7094i0.m6055A2(c6288to2);
                        } else {
                            m6054b2 = m7094i0.m6054b2(c6288to2);
                        }
                        if (!m6054b2.zza()) {
                            vm0Var2.m6085f(new RuntimeException("No entry contents."));
                            C5696dp.m12013f(c5623bp.f21148d);
                            return;
                        }
                        C5586ap c5586ap = new C5586ap(c5623bp, m6054b2.m7771X0(), 1);
                        int read = c5586ap.read();
                        if (read != -1) {
                            c5586ap.unread(read);
                            vm0Var2.m6086e(C5771fp.m11445a(c5586ap, m6054b2.m7767e(), m6054b2.m7766g(), m6054b2.m7769Z0(), m6054b2.m7768c()));
                            return;
                        }
                        throw new IOException("Unable to read from cache.");
                    } catch (RemoteException | IOException e) {
                        cm0.m12439d("Unable to obtain a cache service instance.", e);
                        vm0Var2.m6085f(e);
                        C5696dp.m12013f(c5623bp.f21148d);
                    }
                }
            });
            final vm0 vm0Var2 = this.f21147b;
            vm0Var2.mo6087c(new Runnable(vm0Var2, mo8014d) { // from class: r4.zo

                /* renamed from: a */
                public final vm0 f34693a;

                /* renamed from: b */
                public final Future f34694b;

                {
                    this.f34693a = vm0Var2;
                    this.f34694b = mo8014d;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vm0 vm0Var3 = this.f34693a;
                    Future future = this.f34694b;
                    if (vm0Var3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, qm0.f30195f);
        }
    }
}

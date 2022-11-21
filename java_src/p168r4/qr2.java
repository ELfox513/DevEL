package p168r4;

import java.util.ArrayDeque;
import p168r4.i31;
import p168r4.r61;
import p235z2.C7601t;
/* renamed from: r4.qr2 */
/* loaded from: classes2.dex */
public final class qr2<R extends r61<AdT>, AdT extends i31> {

    /* renamed from: a */
    public final uq2 f30299a;

    /* renamed from: b */
    public final or2<R, AdT> f30300b;

    /* renamed from: c */
    public final pq2 f30301c;

    /* renamed from: e */
    public xr2<R, AdT> f30303e;

    /* renamed from: f */
    public int f30304f = 1;

    /* renamed from: d */
    public final ArrayDeque<pr2<R, AdT>> f30302d = new ArrayDeque<>();

    /* renamed from: c */
    public final synchronized void m7690c(pr2<R, AdT> pr2Var) {
        this.f30302d.add(pr2Var);
    }

    /* renamed from: d */
    public final synchronized h83<nr2<R, AdT>> m7689d(pr2<R, AdT> pr2Var) {
        this.f30304f = 2;
        if (m7684i()) {
            return null;
        }
        return this.f30303e.m5140b(pr2Var);
    }

    /* renamed from: f */
    public final /* synthetic */ void m7687f() {
        synchronized (this) {
            this.f30304f = 1;
            m7685h();
        }
    }

    /* renamed from: h */
    public final synchronized void m7685h() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30787D4)).booleanValue() && !C7601t.m935h().m9051p().mo26194p().m10882i()) {
            this.f30302d.clear();
            return;
        }
        if (m7684i()) {
            while (!this.f30302d.isEmpty()) {
                pr2<R, AdT> pollFirst = this.f30302d.pollFirst();
                if (pollFirst == null || (pollFirst.mo8218a() != null && this.f30299a.mo6036b(pollFirst.mo8218a()))) {
                    xr2<R, AdT> xr2Var = new xr2<>(this.f30299a, this.f30300b, pollFirst);
                    this.f30303e = xr2Var;
                    xr2Var.m5141a(new mr2(this, pollFirst));
                    return;
                }
            }
        }
    }

    /* renamed from: i */
    public final synchronized boolean m7684i() {
        return this.f30303e == null;
    }

    public qr2(uq2 uq2Var, pq2 pq2Var, or2<R, AdT> or2Var) {
        this.f30299a = uq2Var;
        this.f30301c = pq2Var;
        this.f30300b = or2Var;
        pq2Var.m8222a(new oq2(this) { // from class: r4.lr2

            /* renamed from: a */
            public final qr2 f27336a;

            {
                this.f27336a = this;
            }

            @Override // p168r4.oq2
            public final void zza() {
                this.f27336a.m7687f();
            }
        });
    }
}

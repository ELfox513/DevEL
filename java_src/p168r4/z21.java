package p168r4;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: r4.z21 */
/* loaded from: classes2.dex */
public final class z21 implements y81, InterfaceC6064nm {

    /* renamed from: a */
    public final no2 f34302a;

    /* renamed from: b */
    public final b81 f34303b;

    /* renamed from: d */
    public final h91 f34304d;

    /* renamed from: k */
    public final AtomicBoolean f34305k = new AtomicBoolean();

    /* renamed from: p */
    public final AtomicBoolean f34306p = new AtomicBoolean();

    @Override // p168r4.y81
    /* renamed from: d */
    public final synchronized void mo4268d() {
        if (this.f34302a.f28414f != 1) {
            m4471a();
        }
    }

    @Override // p168r4.InterfaceC6064nm
    /* renamed from: Y */
    public final void mo4017Y(C6026mm c6026mm) {
        if (this.f34302a.f28414f == 1 && c6026mm.f27782j) {
            m4471a();
        }
        if (c6026mm.f27782j && this.f34306p.compareAndSet(false, true)) {
            this.f34304d.zza();
        }
    }

    /* renamed from: a */
    public final void m4471a() {
        if (this.f34305k.compareAndSet(false, true)) {
            this.f34303b.zza();
        }
    }

    public z21(no2 no2Var, b81 b81Var, h91 h91Var) {
        this.f34302a = no2Var;
        this.f34303b = b81Var;
        this.f34304d = h91Var;
    }
}

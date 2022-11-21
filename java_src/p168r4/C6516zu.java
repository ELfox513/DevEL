package p168r4;

import p184t2.AbstractC6704c;
import p184t2.C6716m;
/* renamed from: r4.zu */
/* loaded from: classes2.dex */
public class C6516zu extends AbstractC6704c {

    /* renamed from: a */
    public final Object f34730a = new Object();

    /* renamed from: b */
    public AbstractC6704c f34731b;

    /* renamed from: u */
    public final void m4081u(AbstractC6704c abstractC6704c) {
        synchronized (this.f34730a) {
            this.f34731b = abstractC6704c;
        }
    }

    @Override // p184t2.AbstractC6704c, p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        synchronized (this.f34730a) {
            AbstractC6704c abstractC6704c = this.f34731b;
            if (abstractC6704c != null) {
                abstractC6704c.mo3609F0();
            }
        }
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: j */
    public final void mo3608j() {
        synchronized (this.f34730a) {
            AbstractC6704c abstractC6704c = this.f34731b;
            if (abstractC6704c != null) {
                abstractC6704c.mo3608j();
            }
        }
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: o */
    public void mo3607o(C6716m c6716m) {
        synchronized (this.f34730a) {
            AbstractC6704c abstractC6704c = this.f34731b;
            if (abstractC6704c != null) {
                abstractC6704c.mo3607o(c6716m);
            }
        }
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: p */
    public final void mo3606p() {
        synchronized (this.f34730a) {
            AbstractC6704c abstractC6704c = this.f34731b;
            if (abstractC6704c != null) {
                abstractC6704c.mo3606p();
            }
        }
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: q */
    public void mo3605q() {
        synchronized (this.f34730a) {
            AbstractC6704c abstractC6704c = this.f34731b;
            if (abstractC6704c != null) {
                abstractC6704c.mo3605q();
            }
        }
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: s */
    public final void mo3604s() {
        synchronized (this.f34730a) {
            AbstractC6704c abstractC6704c = this.f34731b;
            if (abstractC6704c != null) {
                abstractC6704c.mo3604s();
            }
        }
    }
}

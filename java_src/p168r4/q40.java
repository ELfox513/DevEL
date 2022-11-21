package p168r4;

import p202v2.InterfaceC6980f;
/* renamed from: r4.q40 */
/* loaded from: classes2.dex */
public final class q40 {

    /* renamed from: a */
    public final InterfaceC6980f.InterfaceC6982b f29965a;

    /* renamed from: b */
    public final InterfaceC6980f.InterfaceC6981a f29966b;

    /* renamed from: c */
    public InterfaceC6980f f29967c;

    public q40(InterfaceC6980f.InterfaceC6982b interfaceC6982b, InterfaceC6980f.InterfaceC6981a interfaceC6981a) {
        this.f29965a = interfaceC6982b;
        this.f29966b = interfaceC6981a;
    }

    /* renamed from: c */
    public final t30 m8032c() {
        return new p40(this, null);
    }

    /* renamed from: d */
    public final q30 m8031d() {
        if (this.f29966b == null) {
            return null;
        }
        return new o40(this, null);
    }

    /* renamed from: f */
    public final synchronized InterfaceC6980f m8029f(g30 g30Var) {
        InterfaceC6980f interfaceC6980f = this.f29967c;
        if (interfaceC6980f != null) {
            return interfaceC6980f;
        }
        h30 h30Var = new h30(g30Var);
        this.f29967c = h30Var;
        return h30Var;
    }
}

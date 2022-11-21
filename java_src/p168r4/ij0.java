package p168r4;

import p016b3.C0543w1;
import p016b3.InterfaceC0549y1;
import p026c4.InterfaceC1045f;
/* renamed from: r4.ij0 */
/* loaded from: classes2.dex */
public final class ij0 {

    /* renamed from: a */
    public final InterfaceC1045f f25128a;

    /* renamed from: b */
    public final InterfaceC0549y1 f25129b;

    /* renamed from: c */
    public final ik0 f25130c;

    public ij0(InterfaceC1045f interfaceC1045f, InterfaceC0549y1 interfaceC0549y1, ik0 ik0Var) {
        this.f25128a = interfaceC1045f;
        this.f25129b = interfaceC0549y1;
        this.f25130c = ik0Var;
    }

    /* renamed from: a */
    public final void m10635a(int i, long j) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31050k0)).booleanValue()) {
            return;
        }
        if (j - this.f25129b.mo26223N() < 0) {
            C0543w1.m26251k("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31058l0)).booleanValue()) {
            this.f25129b.mo26215U0(-1);
            this.f25129b.mo26207a1(j);
        } else {
            this.f25129b.mo26215U0(i);
            this.f25129b.mo26207a1(j);
        }
        m10634b();
    }

    /* renamed from: b */
    public final void m10634b() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31058l0)).booleanValue()) {
            return;
        }
        this.f25130c.m10623f();
    }
}

package p168r4;

import p016b3.InterfaceC0549y1;
/* renamed from: r4.d02 */
/* loaded from: classes2.dex */
public final class d02 implements y81, m71 {

    /* renamed from: d */
    public static final Object f22012d = new Object();

    /* renamed from: k */
    public static int f22013k;

    /* renamed from: a */
    public final InterfaceC0549y1 f22014a;

    /* renamed from: b */
    public final n02 f22015b;

    public d02(n02 n02Var, InterfaceC0549y1 interfaceC0549y1) {
        this.f22015b = n02Var;
        this.f22014a = interfaceC0549y1;
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(C5996lt c5996lt) {
        m12239a(false);
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final void mo4268d() {
        m12239a(true);
    }

    /* renamed from: a */
    public final void m12239a(boolean z) {
        int i;
        int intValue;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31158x4)).booleanValue() && !this.f22014a.mo26190y()) {
            Object obj = f22012d;
            synchronized (obj) {
                i = f22013k;
                intValue = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31166y4)).intValue();
            }
            if (i >= intValue) {
                return;
            }
            this.f22015b.m9224f(z);
            synchronized (obj) {
                f22013k++;
            }
        }
    }
}

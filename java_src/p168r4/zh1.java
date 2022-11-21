package p168r4;

import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: r4.zh1 */
/* loaded from: classes2.dex */
public final class zh1 implements u50<Object> {

    /* renamed from: a */
    public final WeakReference<di1> f34614a;

    public /* synthetic */ zh1(di1 di1Var, ci1 ci1Var) {
        this.f34614a = new WeakReference<>(di1Var);
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        h71 h71Var;
        af1 af1Var;
        di1 di1Var = this.f34614a.get();
        if (di1Var != null && "_ac".equals(map.get("eventName"))) {
            h71Var = di1Var.f22266h;
            h71Var.mo3609F0();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30983b7)).booleanValue()) {
                af1Var = di1Var.f22267i;
                af1Var.mo5096a();
            }
        }
    }
}

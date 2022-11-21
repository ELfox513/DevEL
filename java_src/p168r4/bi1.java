package p168r4;

import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: r4.bi1 */
/* loaded from: classes2.dex */
public final class bi1 implements u50<Object> {

    /* renamed from: a */
    public final WeakReference<di1> f21067a;

    public /* synthetic */ bi1(di1 di1Var, ci1 ci1Var) {
        this.f21067a = new WeakReference<>(di1Var);
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        di1 di1Var = this.f21067a.get();
        if (di1Var == null) {
            return;
        }
        di1.m12130v(di1Var).zza();
    }
}

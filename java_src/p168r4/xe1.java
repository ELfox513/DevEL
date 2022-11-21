package p168r4;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: r4.xe1 */
/* loaded from: classes2.dex */
public final class xe1 extends yc1<InterfaceC6064nm> implements InterfaceC6064nm {

    /* renamed from: b */
    public final Map<View, View$OnAttachStateChangeListenerC6101om> f33575b;

    /* renamed from: d */
    public final Context f33576d;

    /* renamed from: k */
    public final no2 f33577k;

    /* renamed from: T0 */
    public final synchronized void m5335T0(View view) {
        View$OnAttachStateChangeListenerC6101om view$OnAttachStateChangeListenerC6101om = this.f33575b.get(view);
        if (view$OnAttachStateChangeListenerC6101om == null) {
            view$OnAttachStateChangeListenerC6101om = new View$OnAttachStateChangeListenerC6101om(this.f33576d, view);
            view$OnAttachStateChangeListenerC6101om.m8770a(this);
            this.f33575b.put(view, view$OnAttachStateChangeListenerC6101om);
        }
        if (this.f33577k.f28397T) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30911T0)).booleanValue()) {
                view$OnAttachStateChangeListenerC6101om.m8766e(((Long) C5592av.m12935c().m8098c(C6225rz.f30903S0)).longValue());
                return;
            }
        }
        view$OnAttachStateChangeListenerC6101om.m8765f();
    }

    @Override // p168r4.InterfaceC6064nm
    /* renamed from: Y */
    public final synchronized void mo4017Y(final C6026mm c6026mm) {
        m4757S0(new xc1(c6026mm) { // from class: r4.we1

            /* renamed from: a */
            public final C6026mm f33180a;

            {
                this.f33180a = c6026mm;
            }

            @Override // p168r4.xc1
            /* renamed from: a */
            public final void mo4278a(Object obj) {
                ((InterfaceC6064nm) obj).mo4017Y(this.f33180a);
            }
        });
    }

    /* renamed from: Z0 */
    public final synchronized void m5334Z0(View view) {
        if (this.f33575b.containsKey(view)) {
            this.f33575b.get(view).m8769b(this);
            this.f33575b.remove(view);
        }
    }

    public xe1(Context context, Set<ve1<InterfaceC6064nm>> set, no2 no2Var) {
        super(set);
        this.f33575b = new WeakHashMap(1);
        this.f33576d = context;
        this.f33577k = no2Var;
    }
}

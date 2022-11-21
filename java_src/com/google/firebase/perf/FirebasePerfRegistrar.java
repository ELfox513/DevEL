package com.google.firebase.perf;

import androidx.annotation.Keep;
import com.google.firebase.perf.FirebasePerfRegistrar;
import java.util.Arrays;
import java.util.List;
import p008a7.C0120a;
import p020b7.C1000a;
import p058f2.InterfaceC3508g;
import p117l7.C4582h;
import p124m5.C4638c;
import p126m7.C4669p;
import p170r6.InterfaceC6538g;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
import p178s5.InterfaceC6605i;
import p223x6.C7393c;
@Keep
/* loaded from: classes2.dex */
public class FirebasePerfRegistrar implements InterfaceC6605i {
    @Override // p178s5.InterfaceC6605i
    @Keep
    public List<C6592d<?>> getComponents() {
        return Arrays.asList(C6592d.m3861c(C7393c.class).m3846b(C6618q.m3782i(C4638c.class)).m3846b(C6618q.m3781j(C4669p.class)).m3846b(C6618q.m3782i(InterfaceC6538g.class)).m3846b(C6618q.m3781j(InterfaceC3508g.class)).m3843e(new InterfaceC6604h() { // from class: x6.b
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                C7393c providesFirebasePerformance;
                providesFirebasePerformance = FirebasePerfRegistrar.providesFirebasePerformance(interfaceC6596e);
                return providesFirebasePerformance;
            }
        }).m3845c(), C4582h.m15976b("fire-perf", "20.0.3"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static C7393c providesFirebasePerformance(InterfaceC6596e interfaceC6596e) {
        return C0120a.m27635b().m27632b(new C1000a((C4638c) interfaceC6596e.mo3827a(C4638c.class), (InterfaceC6538g) interfaceC6596e.mo3827a(InterfaceC6538g.class), interfaceC6596e.mo3826b(C4669p.class), interfaceC6596e.mo3826b(InterfaceC3508g.class))).m27633a().mo27631a();
    }
}

package com.google.firebase.crashlytics;

import com.google.firebase.crashlytics.CrashlyticsRegistrar;
import java.util.Arrays;
import java.util.List;
import p117l7.C4582h;
import p124m5.C4638c;
import p160q5.InterfaceC5424a;
import p170r6.InterfaceC6538g;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
import p178s5.InterfaceC6605i;
import p187t5.C6795g;
import p196u5.InterfaceC6923a;
/* loaded from: classes2.dex */
public class CrashlyticsRegistrar implements InterfaceC6605i {
    @Override // p178s5.InterfaceC6605i
    public List<C6592d<?>> getComponents() {
        return Arrays.asList(C6592d.m3861c(C6795g.class).m3846b(C6618q.m3782i(C4638c.class)).m3846b(C6618q.m3782i(InterfaceC6538g.class)).m3846b(C6618q.m3790a(InterfaceC6923a.class)).m3846b(C6618q.m3790a(InterfaceC5424a.class)).m3843e(new InterfaceC6604h() { // from class: t5.f
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                C6795g m22961b;
                m22961b = CrashlyticsRegistrar.this.m22961b(interfaceC6596e);
                return m22961b;
            }
        }).m3844d().m3845c(), C4582h.m15976b("fire-cls", "18.2.3"));
    }

    /* renamed from: b */
    public final C6795g m22961b(InterfaceC6596e interfaceC6596e) {
        return C6795g.m3420a((C4638c) interfaceC6596e.mo3827a(C4638c.class), (InterfaceC6538g) interfaceC6596e.mo3827a(InterfaceC6538g.class), interfaceC6596e.mo3823e(InterfaceC6923a.class), interfaceC6596e.mo3823e(InterfaceC5424a.class));
    }
}

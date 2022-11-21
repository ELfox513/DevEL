package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import p117l7.C4582h;
import p117l7.InterfaceC4584i;
import p124m5.C4638c;
import p152p6.InterfaceC5365f;
import p170r6.C6535f;
import p170r6.InterfaceC6538g;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
import p178s5.InterfaceC6605i;
@Keep
/* loaded from: classes2.dex */
public class FirebaseInstallationsRegistrar implements InterfaceC6605i {
    @Override // p178s5.InterfaceC6605i
    public List<C6592d<?>> getComponents() {
        return Arrays.asList(C6592d.m3861c(InterfaceC6538g.class).m3846b(C6618q.m3782i(C4638c.class)).m3846b(C6618q.m3783h(InterfaceC5365f.class)).m3846b(C6618q.m3783h(InterfaceC4584i.class)).m3843e(new InterfaceC6604h() { // from class: r6.i
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                InterfaceC6538g lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(interfaceC6596e);
                return lambda$getComponents$0;
            }
        }).m3845c(), C4582h.m15976b("fire-installations", "17.0.0"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC6538g lambda$getComponents$0(InterfaceC6596e interfaceC6596e) {
        return new C6535f((C4638c) interfaceC6596e.mo3827a(C4638c.class), interfaceC6596e.mo3826b(InterfaceC4584i.class), interfaceC6596e.mo3826b(InterfaceC5365f.class));
    }
}

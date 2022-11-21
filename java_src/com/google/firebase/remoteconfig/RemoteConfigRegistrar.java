package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import java.util.Arrays;
import java.util.List;
import p117l7.C4582h;
import p124m5.C4638c;
import p126m7.C4669p;
import p142o5.C5094a;
import p160q5.InterfaceC5424a;
import p170r6.InterfaceC6538g;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
import p178s5.InterfaceC6605i;
@Keep
/* loaded from: classes2.dex */
public class RemoteConfigRegistrar implements InterfaceC6605i {
    @Override // p178s5.InterfaceC6605i
    public List<C6592d<?>> getComponents() {
        return Arrays.asList(C6592d.m3861c(C4669p.class).m3846b(C6618q.m3782i(Context.class)).m3846b(C6618q.m3782i(C4638c.class)).m3846b(C6618q.m3782i(InterfaceC6538g.class)).m3846b(C6618q.m3782i(C5094a.class)).m3846b(C6618q.m3783h(InterfaceC5424a.class)).m3843e(new InterfaceC6604h() { // from class: m7.q
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                C4669p lambda$getComponents$0;
                lambda$getComponents$0 = RemoteConfigRegistrar.lambda$getComponents$0(interfaceC6596e);
                return lambda$getComponents$0;
            }
        }).m3844d().m3845c(), C4582h.m15976b("fire-rc", "21.0.1"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4669p lambda$getComponents$0(InterfaceC6596e interfaceC6596e) {
        return new C4669p((Context) interfaceC6596e.mo3827a(Context.class), (C4638c) interfaceC6596e.mo3827a(C4638c.class), (InterfaceC6538g) interfaceC6596e.mo3827a(InterfaceC6538g.class), ((C5094a) interfaceC6596e.mo3827a(C5094a.class)).m14671b("frc"), interfaceC6596e.mo3826b(InterfaceC5424a.class));
    }
}

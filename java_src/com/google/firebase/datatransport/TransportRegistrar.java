package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.datatransport.TransportRegistrar;
import java.util.Collections;
import java.util.List;
import p058f2.InterfaceC3508g;
import p067g2.C3572a;
import p085i2.C4119r;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
import p178s5.InterfaceC6605i;
@Keep
/* loaded from: classes2.dex */
public class TransportRegistrar implements InterfaceC6605i {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC3508g lambda$getComponents$0(InterfaceC6596e interfaceC6596e) {
        C4119r.m17337f((Context) interfaceC6596e.mo3827a(Context.class));
        return C4119r.m17340c().m17336g(C3572a.f16149h);
    }

    @Override // p178s5.InterfaceC6605i
    public List<C6592d<?>> getComponents() {
        return Collections.singletonList(C6592d.m3861c(InterfaceC3508g.class).m3846b(C6618q.m3782i(Context.class)).m3843e(new InterfaceC6604h() { // from class: j6.a
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                InterfaceC3508g lambda$getComponents$0;
                lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(interfaceC6596e);
                return lambda$getComponents$0;
            }
        }).m3845c());
    }
}

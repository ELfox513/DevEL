package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.AbtRegistrar;
import java.util.Arrays;
import java.util.List;
import p117l7.C4582h;
import p142o5.C5094a;
import p160q5.InterfaceC5424a;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
import p178s5.InterfaceC6605i;
@Keep
/* loaded from: classes2.dex */
public class AbtRegistrar implements InterfaceC6605i {
    @Override // p178s5.InterfaceC6605i
    public List<C6592d<?>> getComponents() {
        return Arrays.asList(C6592d.m3861c(C5094a.class).m3846b(C6618q.m3782i(Context.class)).m3846b(C6618q.m3783h(InterfaceC5424a.class)).m3843e(new InterfaceC6604h() { // from class: o5.b
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                C5094a lambda$getComponents$0;
                lambda$getComponents$0 = AbtRegistrar.lambda$getComponents$0(interfaceC6596e);
                return lambda$getComponents$0;
            }
        }).m3845c(), C4582h.m15976b("fire-abt", "21.0.0"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C5094a lambda$getComponents$0(InterfaceC6596e interfaceC6596e) {
        return new C5094a((Context) interfaceC6596e.mo3827a(Context.class), interfaceC6596e.mo3826b(InterfaceC5424a.class));
    }
}

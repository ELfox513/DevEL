package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p117l7.C4582h;
import p124m5.C4638c;
import p143o6.InterfaceC5099d;
import p160q5.InterfaceC5424a;
import p169r5.C6522a;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6605i;
@Keep
/* loaded from: classes2.dex */
public class AnalyticsConnectorRegistrar implements InterfaceC6605i {
    @Override // p178s5.InterfaceC6605i
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<C6592d<?>> getComponents() {
        return Arrays.asList(C6592d.m3861c(InterfaceC5424a.class).m3846b(C6618q.m3782i(C4638c.class)).m3846b(C6618q.m3782i(Context.class)).m3846b(C6618q.m3782i(InterfaceC5099d.class)).m3843e(C6522a.f34800a).m3844d().m3845c(), C4582h.m15976b("fire-analytics", "19.0.2"));
    }
}

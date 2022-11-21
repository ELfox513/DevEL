package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.e */
/* loaded from: classes.dex */
public final class C1420e implements DynamiteModule.InterfaceC1415b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.InterfaceC1415b
    /* renamed from: a */
    public final C1426k mo22996a(Context context, String str, InterfaceC1425j interfaceC1425j) {
        C1426k c1426k = new C1426k();
        c1426k.f7779a = interfaceC1425j.mo22994b(context, str);
        int mo22995a = interfaceC1425j.mo22995a(context, str, true);
        c1426k.f7780b = mo22995a;
        int i = c1426k.f7779a;
        if (i == 0) {
            if (mo22995a == 0) {
                c1426k.f7781c = 0;
                return c1426k;
            }
            i = 0;
        }
        if (i >= mo22995a) {
            c1426k.f7781c = -1;
        } else {
            c1426k.f7781c = 1;
        }
        return c1426k;
    }
}

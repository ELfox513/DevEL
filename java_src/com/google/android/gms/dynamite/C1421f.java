package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.f */
/* loaded from: classes.dex */
public final class C1421f implements DynamiteModule.InterfaceC1415b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.InterfaceC1415b
    /* renamed from: a */
    public final C1426k mo22996a(Context context, String str, InterfaceC1425j interfaceC1425j) {
        int mo22995a;
        C1426k c1426k = new C1426k();
        int mo22994b = interfaceC1425j.mo22994b(context, str);
        c1426k.f7779a = mo22994b;
        int i = 0;
        if (mo22994b != 0) {
            mo22995a = interfaceC1425j.mo22995a(context, str, false);
            c1426k.f7780b = mo22995a;
        } else {
            mo22995a = interfaceC1425j.mo22995a(context, str, true);
            c1426k.f7780b = mo22995a;
        }
        int i2 = c1426k.f7779a;
        if (i2 == 0) {
            if (mo22995a == 0) {
                c1426k.f7781c = 0;
                return c1426k;
            }
        } else {
            i = i2;
        }
        if (i >= mo22995a) {
            c1426k.f7781c = -1;
        } else {
            c1426k.f7781c = 1;
        }
        return c1426k;
    }
}

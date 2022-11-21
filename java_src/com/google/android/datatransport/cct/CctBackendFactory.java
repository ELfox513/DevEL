package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import p067g2.C3575d;
import p094j2.AbstractC4319h;
import p094j2.InterfaceC4313d;
import p094j2.InterfaceC4325m;
@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements InterfaceC4313d {
    @Override // p094j2.InterfaceC4313d
    public InterfaceC4325m create(AbstractC4319h abstractC4319h) {
        return new C3575d(abstractC4319h.mo16829b(), abstractC4319h.mo16826e(), abstractC4319h.mo16827d());
    }
}

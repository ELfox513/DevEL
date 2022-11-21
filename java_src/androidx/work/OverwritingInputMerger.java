package androidx.work;

import androidx.work.C0380b;
import java.util.HashMap;
import java.util.List;
import p209w0.AbstractC7111h;
/* loaded from: classes.dex */
public final class OverwritingInputMerger extends AbstractC7111h {
    @Override // p209w0.AbstractC7111h
    /* renamed from: b */
    public C0380b mo2495b(List<C0380b> list) {
        C0380b.C0381a c0381a = new C0380b.C0381a();
        HashMap hashMap = new HashMap();
        for (C0380b c0380b : list) {
            hashMap.putAll(c0380b.m26659i());
        }
        c0381a.m26652d(hashMap);
        return c0381a.m26655a();
    }
}

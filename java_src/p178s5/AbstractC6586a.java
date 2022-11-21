package p178s5;

import java.util.Set;
import p161q6.InterfaceC5434b;
/* renamed from: s5.a */
/* loaded from: classes2.dex */
public abstract class AbstractC6586a implements InterfaceC6596e {
    @Override // p178s5.InterfaceC6596e
    /* renamed from: d */
    public <T> Set<T> mo3824d(Class<T> cls) {
        return mo3825c(cls).get();
    }

    @Override // p178s5.InterfaceC6596e
    /* renamed from: a */
    public <T> T mo3827a(Class<T> cls) {
        InterfaceC5434b<T> mo3826b = mo3826b(cls);
        if (mo3826b == null) {
            return null;
        }
        return mo3826b.get();
    }
}

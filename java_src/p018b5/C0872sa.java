package p018b5;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: b5.sa */
/* loaded from: classes2.dex */
public final class C0872sa extends C0618db {
    public C0872sa(int i) {
        super(i, null);
    }

    @Override // p018b5.C0618db
    /* renamed from: a */
    public final void mo25252a() {
        if (!m26044j()) {
            for (int i = 0; i < m26052b(); i++) {
                Map.Entry m26047g = m26047g(i);
                if (((InterfaceC0802o8) m26047g.getKey()).m25552b()) {
                    m26047g.setValue(Collections.unmodifiableList((List) m26047g.getValue()));
                }
            }
            for (Map.Entry entry : m26051c()) {
                if (((InterfaceC0802o8) entry.getKey()).m25552b()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo25252a();
    }
}

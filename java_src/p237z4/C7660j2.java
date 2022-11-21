package p237z4;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: z4.j2 */
/* loaded from: classes2.dex */
public final class C7660j2 extends C7655i2 {
    public C7660j2(int i) {
        super(i, null);
    }

    @Override // p237z4.C7655i2
    /* renamed from: j */
    public final void mo677j() {
        if (!m695a()) {
            for (int i = 0; i < m684m(); i++) {
                Map.Entry m689g = m689g(i);
                if (((InterfaceC7648h0) m689g.getKey()).m759s()) {
                    m689g.setValue(Collections.unmodifiableList((List) m689g.getValue()));
                }
            }
            for (Map.Entry entry : m683n()) {
                if (((InterfaceC7648h0) entry.getKey()).m759s()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo677j();
    }
}

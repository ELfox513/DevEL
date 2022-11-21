package p168r4;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: r4.vo3 */
/* loaded from: classes2.dex */
public final class vo3 extends dp3 {
    public vo3(int i) {
        super(i, null);
    }

    @Override // p168r4.dp3
    /* renamed from: a */
    public final void mo6043a() {
        if (!m12009d()) {
            for (int i = 0; i < m12008e(); i++) {
                Map.Entry m12007f = m12007f(i);
                if (((fm3) m12007f.getKey()).m11476b()) {
                    m12007f.setValue(Collections.unmodifiableList((List) m12007f.getValue()));
                }
            }
            for (Map.Entry entry : m12006g()) {
                if (((fm3) entry.getKey()).m11476b()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo6043a();
    }
}

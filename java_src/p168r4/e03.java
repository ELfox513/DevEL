package p168r4;

import p097j5.AbstractC4346i;
import p097j5.InterfaceC4336d;
/* renamed from: r4.e03 */
/* loaded from: classes2.dex */
public final class e03 {
    /* renamed from: a */
    public static <V> h83<V> m11890a(AbstractC4346i<V> abstractC4346i) {
        final p83 m8451E = p83.m8451E();
        abstractC4346i.mo16798d(o83.m8868a(), new InterfaceC4336d(m8451E) { // from class: r4.d03

            /* renamed from: a */
            public final p83 f22016a;

            {
                this.f22016a = m8451E;
            }

            @Override // p097j5.InterfaceC4336d
            /* renamed from: a */
            public final void mo2639a(AbstractC4346i abstractC4346i2) {
                p83 p83Var = this.f22016a;
                if (abstractC4346i2.mo16788n()) {
                    p83Var.cancel(false);
                } else if (abstractC4346i2.mo16786p()) {
                    p83Var.mo8450u(abstractC4346i2.mo16790l());
                } else {
                    Exception mo16791k = abstractC4346i2.mo16791k();
                    if (mo16791k != null) {
                        p83Var.mo8449v(mo16791k);
                        return;
                    }
                    throw new IllegalStateException();
                }
            }
        });
        return m8451E;
    }
}

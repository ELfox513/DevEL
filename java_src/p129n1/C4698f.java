package p129n1;

import p015b2.C0438g;
import p015b2.C0444m;
/* renamed from: n1.f */
/* loaded from: classes.dex */
public final class C4698f extends C0444m {
    public C4698f(int i) {
        super(i);
    }

    /* renamed from: E */
    public C4697e m15735E(int i) {
        return (C4697e) get0(i);
    }

    /* renamed from: H */
    public void m15733H(int i, C4697e c4697e) {
        super.m26452D(i, c4697e);
    }

    /* renamed from: F */
    public C4697e m15734F(int i) {
        int m26455A = m26455A(i);
        if (m26455A >= 0) {
            return m15735E(m26455A);
        }
        throw new IllegalArgumentException("no such label: " + C0438g.m26478g(i));
    }
}

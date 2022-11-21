package p120m1;

import p218x1.AbstractC7218g0;
import p218x1.C7212d0;
import p218x1.C7224l;
import p218x1.C7227o;
import p218x1.C7228p;
import p218x1.C7235w;
/* renamed from: m1.d */
/* loaded from: classes.dex */
public final class C4601d extends AbstractC4618u {

    /* renamed from: b */
    public final AbstractC7218g0 f18648b;

    /* renamed from: a */
    public AbstractC7218g0 m15931a() {
        return this.f18648b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return 8;
    }

    public C4601d(AbstractC7218g0 abstractC7218g0) {
        super("ConstantValue");
        if (!(abstractC7218g0 instanceof C7212d0) && !(abstractC7218g0 instanceof C7228p) && !(abstractC7218g0 instanceof C7235w) && !(abstractC7218g0 instanceof C7227o) && !(abstractC7218g0 instanceof C7224l)) {
            if (abstractC7218g0 == null) {
                throw new NullPointerException("constantValue == null");
            }
            throw new IllegalArgumentException("bad type for constantValue");
        }
        this.f18648b = abstractC7218g0;
    }
}

package p120m1;

import p218x1.AbstractC7204a;
/* renamed from: m1.a */
/* loaded from: classes.dex */
public final class C4598a extends AbstractC4618u {

    /* renamed from: b */
    public final AbstractC7204a f18639b;

    /* renamed from: c */
    public final int f18640c;

    /* renamed from: a */
    public AbstractC7204a m15938a() {
        return this.f18639b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return this.f18640c + 6;
    }

    public C4598a(AbstractC7204a abstractC7204a, int i) {
        super("AnnotationDefault");
        if (abstractC7204a != null) {
            this.f18639b = abstractC7204a;
            this.f18640c = i;
            return;
        }
        throw new NullPointerException("value == null");
    }
}

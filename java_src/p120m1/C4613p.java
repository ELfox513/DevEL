package p120m1;

import p218x1.C7212d0;
/* renamed from: m1.p */
/* loaded from: classes.dex */
public final class C4613p extends AbstractC4618u {

    /* renamed from: b */
    public final C7212d0 f18654b;

    /* renamed from: a */
    public C7212d0 m15925a() {
        return this.f18654b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return 8;
    }

    public C4613p(C7212d0 c7212d0) {
        super("Signature");
        if (c7212d0 != null) {
            this.f18654b = c7212d0;
            return;
        }
        throw new NullPointerException("signature == null");
    }
}

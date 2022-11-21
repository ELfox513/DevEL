package p120m1;

import p218x1.C7212d0;
/* renamed from: m1.q */
/* loaded from: classes.dex */
public final class C4614q extends AbstractC4618u {

    /* renamed from: b */
    public final C7212d0 f18655b;

    /* renamed from: a */
    public C7212d0 m15924a() {
        return this.f18655b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return this.f18655b.m2110z() + 6;
    }

    public C4614q(C7212d0 c7212d0) {
        super("SourceDebugExtension");
        if (c7212d0 != null) {
            this.f18655b = c7212d0;
            return;
        }
        throw new NullPointerException("smapString == null");
    }
}

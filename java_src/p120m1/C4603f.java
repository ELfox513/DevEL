package p120m1;

import p218x1.C7205a0;
import p218x1.C7214e0;
/* renamed from: m1.f */
/* loaded from: classes.dex */
public final class C4603f extends AbstractC4618u {

    /* renamed from: b */
    public final C7214e0 f18649b;

    /* renamed from: c */
    public final C7205a0 f18650c;

    /* renamed from: a */
    public C7214e0 m15930a() {
        return this.f18649b;
    }

    /* renamed from: b */
    public C7205a0 m15929b() {
        return this.f18650c;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return 10;
    }

    public C4603f(C7214e0 c7214e0, C7205a0 c7205a0) {
        super("EnclosingMethod");
        if (c7214e0 != null) {
            this.f18649b = c7214e0;
            this.f18650c = c7205a0;
            return;
        }
        throw new NullPointerException("type == null");
    }
}

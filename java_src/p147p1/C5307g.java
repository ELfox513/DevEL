package p147p1;

import p156q1.C5402l;
import p156q1.C5403m;
import p156q1.InterfaceC5392b;
import p156q1.InterfaceC5396f;
import p210w1.C7136a;
import p218x1.C7205a0;
import p218x1.C7214e0;
/* renamed from: p1.g */
/* loaded from: classes.dex */
public final class C5307g extends AbstractC5308h {

    /* renamed from: g */
    public final C5403m f19895g;

    @Override // p147p1.AbstractC5308h
    /* renamed from: a */
    public int mo13553a() {
        return 1;
    }

    @Override // p147p1.AbstractC5308h
    /* renamed from: e */
    public String mo13552e(int i) {
        return C7136a.m2459b(i);
    }

    @Override // p147p1.AbstractC5308h
    /* renamed from: f */
    public String mo13551f() {
        return "field";
    }

    @Override // p147p1.AbstractC5308h
    /* renamed from: i */
    public InterfaceC5396f mo13550i(int i, int i2, C7205a0 c7205a0, InterfaceC5392b interfaceC5392b) {
        C5402l c5402l = new C5402l(m13558c(), i2, c7205a0, interfaceC5392b);
        this.f19895g.m13335x(i, c5402l);
        return c5402l;
    }

    public C5307g(C5305f c5305f, C7214e0 c7214e0, int i, C5296b c5296b) {
        super(c5305f, c7214e0, i, c5296b);
        this.f19895g = new C5403m(m13559b());
    }

    /* renamed from: k */
    public C5403m m13560k() {
        m13555h();
        return this.f19895g;
    }
}

package p147p1;

import p156q1.C5405o;
import p156q1.C5406p;
import p156q1.InterfaceC5392b;
import p156q1.InterfaceC5396f;
import p210w1.C7136a;
import p218x1.C7205a0;
import p218x1.C7214e0;
/* renamed from: p1.i */
/* loaded from: classes.dex */
public final class C5309i extends AbstractC5308h {

    /* renamed from: g */
    public final C5406p f19902g;

    @Override // p147p1.AbstractC5308h
    /* renamed from: a */
    public int mo13553a() {
        return 2;
    }

    @Override // p147p1.AbstractC5308h
    /* renamed from: e */
    public String mo13552e(int i) {
        return C7136a.m2450k(i);
    }

    @Override // p147p1.AbstractC5308h
    /* renamed from: f */
    public String mo13551f() {
        return "method";
    }

    @Override // p147p1.AbstractC5308h
    /* renamed from: i */
    public InterfaceC5396f mo13550i(int i, int i2, C7205a0 c7205a0, InterfaceC5392b interfaceC5392b) {
        C5405o c5405o = new C5405o(m13558c(), i2, c7205a0, interfaceC5392b);
        this.f19902g.m13330x(i, c5405o);
        return c5405o;
    }

    public C5309i(C5305f c5305f, C7214e0 c7214e0, int i, C5296b c5296b) {
        super(c5305f, c7214e0, i, c5296b);
        this.f19902g = new C5406p(m13559b());
    }

    /* renamed from: k */
    public C5406p m13549k() {
        m13555h();
        return this.f19902g;
    }
}

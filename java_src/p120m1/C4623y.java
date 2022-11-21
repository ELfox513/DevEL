package p120m1;

import p015b2.C0432d;
import p218x1.InterfaceC7206b;
/* renamed from: m1.y */
/* loaded from: classes.dex */
public final class C4623y extends AbstractC4618u {

    /* renamed from: b */
    public final C0432d f18667b;

    /* renamed from: c */
    public final InterfaceC7206b f18668c;

    public C4623y(String str, C0432d c0432d, InterfaceC7206b interfaceC7206b) {
        super(str);
        if (c0432d != null) {
            this.f18667b = c0432d;
            this.f18668c = interfaceC7206b;
            return;
        }
        throw new NullPointerException("data == null");
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return this.f18667b.m26506q() + 6;
    }

    public C4623y(String str, C0432d c0432d, int i, int i2, InterfaceC7206b interfaceC7206b) {
        this(str, c0432d.m26505r(i, i2 + i), interfaceC7206b);
    }
}

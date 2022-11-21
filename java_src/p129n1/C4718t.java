package p129n1;

import p015b2.C0438g;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
/* renamed from: n1.t */
/* loaded from: classes.dex */
public final class C4718t implements InterfaceC7403d {

    /* renamed from: a */
    public final int f18894a;

    /* renamed from: a */
    public int m15606a() {
        return this.f18894a;
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: f */
    public int mo1523f() {
        return C7402c.f37062D.mo1523f();
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37062D;
    }

    public int hashCode() {
        return this.f18894a;
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: l */
    public boolean mo1522l() {
        return false;
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: p */
    public int mo1521p() {
        return C7402c.f37062D.mo1521p();
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return toString();
    }

    public String toString() {
        return "<addr:" + C0438g.m26478g(this.f18894a) + ">";
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: v */
    public InterfaceC7403d mo1520v() {
        return this;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C4718t) || this.f18894a != ((C4718t) obj).f18894a) {
            return false;
        }
        return true;
    }

    public C4718t(int i) {
        if (i >= 0) {
            this.f18894a = i;
            return;
        }
        throw new IllegalArgumentException("subroutineAddress < 0");
    }
}

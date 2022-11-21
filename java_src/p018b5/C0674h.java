package p018b5;

import java.util.Iterator;
import java.util.List;
/* renamed from: b5.h */
/* loaded from: classes2.dex */
public final class C0674h implements InterfaceC0827q {

    /* renamed from: a */
    public final InterfaceC0827q f1842a;

    /* renamed from: b */
    public final String f1843b;

    public C0674h() {
        throw null;
    }

    public C0674h(String str) {
        this.f1842a = InterfaceC0827q.f2154c;
        this.f1843b = str;
    }

    public C0674h(String str, InterfaceC0827q interfaceC0827q) {
        this.f1842a = interfaceC0827q;
        this.f1843b = str;
    }

    /* renamed from: a */
    public final InterfaceC0827q m25880a() {
        return this.f1842a;
    }

    /* renamed from: b */
    public final String m25879b() {
        return this.f1843b;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        return new C0674h(this.f1843b, this.f1842a.mo25086e());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0674h)) {
            return false;
        }
        C0674h c0674h = (C0674h) obj;
        return this.f1843b.equals(c0674h.f1843b) && this.f1842a.equals(c0674h.f1842a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: f */
    public final Double mo25085f() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: g */
    public final Boolean mo25084g() {
        throw new IllegalStateException("Control is not a boolean");
    }

    public final int hashCode() {
        return (this.f1843b.hashCode() * 31) + this.f1842a.hashCode();
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return null;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        throw new IllegalStateException("Control does not have functions");
    }
}

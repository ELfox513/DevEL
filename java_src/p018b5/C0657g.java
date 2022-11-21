package p018b5;

import java.util.Iterator;
import java.util.List;
/* renamed from: b5.g */
/* loaded from: classes2.dex */
public final class C0657g implements InterfaceC0827q {

    /* renamed from: a */
    public final boolean f1827a;

    public C0657g(Boolean bool) {
        this.f1827a = bool == null ? false : bool.booleanValue();
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        return new C0657g(Boolean.valueOf(this.f1827a));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0657g) && this.f1827a == ((C0657g) obj).f1827a;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: f */
    public final Double mo25085f() {
        return Double.valueOf(true != this.f1827a ? 0.0d : 1.0d);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: g */
    public final Boolean mo25084g() {
        return Boolean.valueOf(this.f1827a);
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f1827a).hashCode();
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        return Boolean.toString(this.f1827a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return null;
    }

    public final String toString() {
        return String.valueOf(this.f1827a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        if ("toString".equals(str)) {
            return new C0895u(Boolean.toString(this.f1827a));
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", Boolean.toString(this.f1827a), str));
    }
}

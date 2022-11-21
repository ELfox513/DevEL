package p018b5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: b5.r */
/* loaded from: classes2.dex */
public final class C0844r implements InterfaceC0827q {

    /* renamed from: a */
    public final String f2231a;

    /* renamed from: b */
    public final ArrayList<InterfaceC0827q> f2232b;

    /* renamed from: a */
    public final String m25451a() {
        return this.f2231a;
    }

    /* renamed from: b */
    public final ArrayList<InterfaceC0827q> m25450b() {
        return this.f2232b;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        return this;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: f */
    public final Double mo25085f() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: g */
    public final Boolean mo25084g() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return null;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0844r)) {
            return false;
        }
        C0844r c0844r = (C0844r) obj;
        String str = this.f2231a;
        if (str == null ? c0844r.f2231a != null : !str.equals(c0844r.f2231a)) {
            return false;
        }
        return this.f2232b.equals(c0844r.f2232b);
    }

    public final int hashCode() {
        int i;
        String str = this.f2231a;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return (i * 31) + this.f2232b.hashCode();
    }

    public C0844r(String str, List<InterfaceC0827q> list) {
        this.f2231a = str;
        ArrayList<InterfaceC0827q> arrayList = new ArrayList<>();
        this.f2232b = arrayList;
        arrayList.addAll(list);
    }
}

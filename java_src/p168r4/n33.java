package p168r4;

import java.util.List;
/* renamed from: r4.n33 */
/* loaded from: classes2.dex */
public final class n33 extends o33 {

    /* renamed from: d */
    public final transient int f28104d;

    /* renamed from: k */
    public final transient int f28105k;

    /* renamed from: p */
    public final /* synthetic */ o33 f28106p;

    public n33(o33 o33Var, int i, int i2) {
        this.f28106p = o33Var;
        this.f28104d = i;
        this.f28105k = i2;
    }

    @Override // p168r4.j33
    /* renamed from: e */
    public final Object[] mo9200e() {
        return this.f28106p.mo9200e();
    }

    @Override // p168r4.j33
    /* renamed from: g */
    public final int mo9199g() {
        return this.f28106p.mo9199g() + this.f28104d;
    }

    @Override // p168r4.j33
    /* renamed from: i */
    public final int mo9198i() {
        return this.f28106p.mo9199g() + this.f28104d + this.f28105k;
    }

    @Override // p168r4.j33
    /* renamed from: l */
    public final boolean mo9197l() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f28105k;
    }

    @Override // p168r4.o33, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // java.util.List
    public final Object get(int i) {
        z03.m4492e(i, this.f28105k, "index");
        return this.f28106p.get(i + this.f28104d);
    }

    @Override // p168r4.o33
    /* renamed from: o */
    public final o33 mo8901o(int i, int i2) {
        z03.m4490g(i, i2, this.f28105k);
        o33 o33Var = this.f28106p;
        int i3 = this.f28104d;
        return o33Var.subList(i + i3, i2 + i3);
    }
}

package p168r4;

import android.content.Context;
/* renamed from: r4.hw0 */
/* loaded from: classes2.dex */
public final class hw0 implements ho2 {

    /* renamed from: a */
    public final ow0 f24885a;

    /* renamed from: b */
    public final hw0 f24886b = this;

    /* renamed from: c */
    public final is3<Context> f24887c;

    /* renamed from: d */
    public final is3<am2<ap1, uo1>> f24888d;

    /* renamed from: e */
    public final is3<qn2> f24889e;

    /* renamed from: f */
    public final is3<cp2> f24890f;

    /* renamed from: g */
    public final is3<ao2> f24891g;

    /* renamed from: h */
    public final is3<ko2> f24892h;

    /* renamed from: i */
    public final is3<String> f24893i;

    /* renamed from: j */
    public final is3<eo2> f24894j;

    @Override // p168r4.ho2
    /* renamed from: a */
    public final eo2 mo10779a() {
        return this.f24894j.mo4079a();
    }

    @Override // p168r4.ho2
    public final ko2 zza() {
        return this.f24892h.mo4079a();
    }

    public /* synthetic */ hw0(ow0 ow0Var, Context context, String str, fw0 fw0Var) {
        is3 is3Var;
        is3 is3Var2;
        is3 is3Var3;
        is3 is3Var4;
        is3 is3Var5;
        this.f24885a = ow0Var;
        vr3 m5603b = wr3.m5603b(context);
        this.f24887c = m5603b;
        is3Var = ow0Var.f29244t0;
        is3Var2 = ow0Var.f29246u0;
        fm2 fm2Var = new fm2(m5603b, is3Var, is3Var2);
        this.f24888d = fm2Var;
        is3Var3 = ow0Var.f29244t0;
        is3<qn2> m6730b = tr3.m6730b(new rn2(is3Var3));
        this.f24889e = m6730b;
        is3<cp2> m6730b2 = tr3.m6730b(ep2.m11698b());
        this.f24890f = m6730b2;
        is3Var4 = ow0Var.f29237q;
        is3Var5 = ow0Var.f29194O;
        is3<ao2> m6730b3 = tr3.m6730b(new bo2(m5603b, is3Var4, is3Var5, fm2Var, m6730b, jp2.m10226b(), m6730b2));
        this.f24891g = m6730b3;
        this.f24892h = tr3.m6730b(new lo2(m6730b3, m6730b, m6730b2));
        vr3 m5602c = wr3.m5602c(str);
        this.f24893i = m5602c;
        this.f24894j = tr3.m6730b(new fo2(m5602c, m6730b3, m5603b, m6730b, m6730b2));
    }
}

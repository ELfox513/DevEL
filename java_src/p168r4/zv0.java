package p168r4;

import android.content.Context;
/* renamed from: r4.zv0 */
/* loaded from: classes2.dex */
public final class zv0 implements vt1 {

    /* renamed from: a */
    public final Context f34746a;

    /* renamed from: b */
    public final o60 f34747b;

    /* renamed from: c */
    public final ow0 f34748c;

    /* renamed from: d */
    public final zv0 f34749d = this;

    /* renamed from: e */
    public final is3<vt1> f34750e;

    /* renamed from: f */
    public final is3<o60> f34751f;

    /* renamed from: g */
    public final is3<qt1> f34752g;

    /* renamed from: h */
    public final is3<st1> f34753h;

    @Override // p168r4.vt1
    /* renamed from: b */
    public final st1 mo4068b() {
        return this.f34753h.mo4079a();
    }

    @Override // p168r4.vt1
    /* renamed from: e */
    public final mt1 mo4066e() {
        return new wv0(this.f34748c, this.f34749d, null);
    }

    public /* synthetic */ zv0(ow0 ow0Var, Context context, o60 o60Var, fw0 fw0Var) {
        this.f34748c = ow0Var;
        this.f34746a = context;
        this.f34747b = o60Var;
        vr3 m5603b = wr3.m5603b(this);
        this.f34750e = m5603b;
        vr3 m5603b2 = wr3.m5603b(o60Var);
        this.f34751f = m5603b2;
        rt1 rt1Var = new rt1(m5603b2);
        this.f34752g = rt1Var;
        this.f34753h = tr3.m6730b(new tt1(m5603b, rt1Var));
    }
}

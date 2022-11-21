package p168r4;

import android.content.Context;
/* renamed from: r4.rv0 */
/* loaded from: classes2.dex */
public final class rv0 implements xk2 {

    /* renamed from: a */
    public final Context f30698a;

    /* renamed from: b */
    public final C6478yt f30699b;

    /* renamed from: c */
    public final String f30700c;

    /* renamed from: d */
    public final ow0 f30701d;

    /* renamed from: e */
    public final rv0 f30702e = this;

    /* renamed from: f */
    public final is3<Context> f30703f;

    /* renamed from: g */
    public final is3<C6478yt> f30704g;

    /* renamed from: h */
    public final is3<d92> f30705h;

    /* renamed from: i */
    public final is3<h92> f30706i;

    /* renamed from: j */
    public final is3<uk2> f30707j;

    @Override // p168r4.xk2
    public final i82 zza() {
        return new i82(this.f30698a, this.f30699b, this.f30700c, this.f30707j.mo4079a(), this.f30705h.mo4079a());
    }

    public /* synthetic */ rv0(ow0 ow0Var, Context context, String str, C6478yt c6478yt, fw0 fw0Var) {
        is3 is3Var;
        is3 is3Var2;
        is3 is3Var3;
        this.f30701d = ow0Var;
        this.f30698a = context;
        this.f30699b = c6478yt;
        this.f30700c = str;
        vr3 m5603b = wr3.m5603b(context);
        this.f30703f = m5603b;
        vr3 m5603b2 = wr3.m5603b(c6478yt);
        this.f30704g = m5603b2;
        is3Var = ow0Var.f29235p;
        is3<d92> m6730b = tr3.m6730b(new e92(is3Var));
        this.f30705h = m6730b;
        is3<h92> m6730b2 = tr3.m6730b(j92.m10377b());
        this.f30706i = m6730b2;
        is3Var2 = ow0Var.f29237q;
        is3Var3 = ow0Var.f29194O;
        this.f30707j = tr3.m6730b(new vk2(m5603b, is3Var2, m5603b2, is3Var3, m6730b, m6730b2, jp2.m10226b()));
    }
}

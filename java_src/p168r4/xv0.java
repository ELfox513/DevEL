package p168r4;

import android.content.Context;
/* renamed from: r4.xv0 */
/* loaded from: classes2.dex */
public final class xv0 implements nt1 {

    /* renamed from: a */
    public final Long f33773a;

    /* renamed from: b */
    public final String f33774b;

    /* renamed from: c */
    public final ow0 f33775c;

    /* renamed from: d */
    public final zv0 f33776d;

    /* renamed from: e */
    public final xv0 f33777e = this;

    public /* synthetic */ xv0(ow0 ow0Var, zv0 zv0Var, Long l, String str, fw0 fw0Var) {
        this.f33775c = ow0Var;
        this.f33776d = zv0Var;
        this.f33773a = l;
        this.f33774b = str;
    }

    @Override // p168r4.nt1
    /* renamed from: a */
    public final bu1 mo4964a() {
        Context context;
        qt1 m7339c;
        long longValue = this.f33773a.longValue();
        context = this.f33776d.f34746a;
        m7339c = rt1.m7339c(this.f33776d.f34747b);
        return cu1.m12359b(longValue, context, m7339c, this.f33775c, this.f33774b);
    }

    @Override // p168r4.nt1
    public final xt1 zza() {
        Context context;
        qt1 m7339c;
        long longValue = this.f33773a.longValue();
        context = this.f33776d.f34746a;
        m7339c = rt1.m7339c(this.f33776d.f34747b);
        return yt1.m4569b(longValue, context, m7339c, this.f33775c, this.f33774b);
    }
}

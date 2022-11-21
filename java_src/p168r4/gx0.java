package p168r4;
/* renamed from: r4.gx0 */
/* loaded from: classes2.dex */
public final class gx0 implements vr3<hm0> {

    /* renamed from: a */
    public final is3<ra0> f24366a;

    /* renamed from: b */
    public final is3<String> f24367b;

    public gx0(is3<ra0> is3Var, is3<String> is3Var2) {
        this.f24366a = is3Var;
        this.f24367b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        ta0 ta0Var = new ta0();
        String mo4079a = this.f24367b.mo4079a();
        if (g10.f23822a.m6673e().booleanValue()) {
            return new sa0(ta0Var, mo4079a);
        }
        return new hm0(mo4079a);
    }
}

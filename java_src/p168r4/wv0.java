package p168r4;
/* renamed from: r4.wv0 */
/* loaded from: classes2.dex */
public final class wv0 implements mt1 {

    /* renamed from: a */
    public final ow0 f33334a;

    /* renamed from: b */
    public final zv0 f33335b;

    /* renamed from: c */
    public Long f33336c;

    /* renamed from: d */
    public String f33337d;

    public /* synthetic */ wv0(ow0 ow0Var, zv0 zv0Var, fw0 fw0Var) {
        this.f33334a = ow0Var;
        this.f33335b = zv0Var;
    }

    @Override // p168r4.mt1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ mt1 mo5563b(long j) {
        this.f33336c = Long.valueOf(j);
        return this;
    }

    @Override // p168r4.mt1
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ mt1 mo5562u(String str) {
        str.getClass();
        this.f33337d = str;
        return this;
    }

    @Override // p168r4.mt1
    public final nt1 zza() {
        ds3.m11979c(this.f33336c, Long.class);
        ds3.m11979c(this.f33337d, String.class);
        return new xv0(this.f33334a, this.f33335b, this.f33336c, this.f33337d, null);
    }
}

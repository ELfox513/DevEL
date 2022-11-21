package p168r4;
/* renamed from: r4.dp1 */
/* loaded from: classes2.dex */
public final class dp1 implements vr3<EnumC6178qp> {

    /* renamed from: a */
    public final is3<hp2> f22397a;

    public dp1(is3<hp2> is3Var) {
        this.f22397a = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        EnumC6178qp enumC6178qp;
        if (((z61) this.f22397a).m4418b().f24790o.f33649a == 3) {
            enumC6178qp = EnumC6178qp.REWARDED_INTERSTITIAL;
        } else {
            enumC6178qp = EnumC6178qp.REWARD_BASED_VIDEO_AD;
        }
        ds3.m11980b(enumC6178qp);
        return enumC6178qp;
    }
}

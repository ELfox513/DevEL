package p168r4;

import android.content.Context;
/* renamed from: r4.lv0 */
/* loaded from: classes2.dex */
public final class lv0 implements gj2 {

    /* renamed from: a */
    public final ow0 f27381a;

    /* renamed from: b */
    public Context f27382b;

    /* renamed from: c */
    public String f27383c;

    public /* synthetic */ lv0(ow0 ow0Var, fw0 fw0Var) {
        this.f27381a = ow0Var;
    }

    @Override // p168r4.gj2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ gj2 mo9561a(Context context) {
        context.getClass();
        this.f27382b = context;
        return this;
    }

    @Override // p168r4.gj2
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ gj2 mo9560u(String str) {
        str.getClass();
        this.f27383c = str;
        return this;
    }

    @Override // p168r4.gj2
    public final hj2 zza() {
        ds3.m11979c(this.f27382b, Context.class);
        ds3.m11979c(this.f27383c, String.class);
        return new mv0(this.f27381a, this.f27382b, this.f27383c, null);
    }
}

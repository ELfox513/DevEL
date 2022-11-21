package p168r4;

import android.content.Context;
/* renamed from: r4.gw0 */
/* loaded from: classes2.dex */
public final class gw0 implements go2 {

    /* renamed from: a */
    public final ow0 f24356a;

    /* renamed from: b */
    public Context f24357b;

    /* renamed from: c */
    public String f24358c;

    public /* synthetic */ gw0(ow0 ow0Var, fw0 fw0Var) {
        this.f24356a = ow0Var;
    }

    @Override // p168r4.go2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ go2 mo11048a(Context context) {
        context.getClass();
        this.f24357b = context;
        return this;
    }

    @Override // p168r4.go2
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ go2 mo11047u(String str) {
        this.f24358c = str;
        return this;
    }

    @Override // p168r4.go2
    public final ho2 zza() {
        ds3.m11979c(this.f24357b, Context.class);
        return new hw0(this.f24356a, this.f24357b, this.f24358c, null);
    }
}

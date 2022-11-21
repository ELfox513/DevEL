package p168r4;

import android.content.Context;
/* renamed from: r4.qv0 */
/* loaded from: classes2.dex */
public final class qv0 implements wk2 {

    /* renamed from: a */
    public final ow0 f30329a;

    /* renamed from: b */
    public Context f30330b;

    /* renamed from: c */
    public String f30331c;

    /* renamed from: d */
    public C6478yt f30332d;

    public /* synthetic */ qv0(ow0 ow0Var, fw0 fw0Var) {
        this.f30329a = ow0Var;
    }

    @Override // p168r4.wk2
    /* renamed from: A */
    public final /* bridge */ /* synthetic */ wk2 mo5702A(String str) {
        str.getClass();
        this.f30331c = str;
        return this;
    }

    @Override // p168r4.wk2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ wk2 mo5701a(C6478yt c6478yt) {
        c6478yt.getClass();
        this.f30332d = c6478yt;
        return this;
    }

    @Override // p168r4.wk2
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ wk2 mo5700b(Context context) {
        context.getClass();
        this.f30330b = context;
        return this;
    }

    @Override // p168r4.wk2
    public final xk2 zza() {
        ds3.m11979c(this.f30330b, Context.class);
        ds3.m11979c(this.f30331c, String.class);
        ds3.m11979c(this.f30332d, C6478yt.class);
        return new rv0(this.f30329a, this.f30330b, this.f30331c, this.f30332d, null);
    }
}

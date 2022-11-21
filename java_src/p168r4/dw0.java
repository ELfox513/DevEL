package p168r4;

import android.content.Context;
/* renamed from: r4.dw0 */
/* loaded from: classes2.dex */
public final class dw0 implements rm2 {

    /* renamed from: a */
    public final ow0 f22659a;

    /* renamed from: b */
    public Context f22660b;

    /* renamed from: c */
    public String f22661c;

    /* renamed from: d */
    public C6478yt f22662d;

    public /* synthetic */ dw0(ow0 ow0Var, fw0 fw0Var) {
        this.f22659a = ow0Var;
    }

    @Override // p168r4.rm2
    /* renamed from: A */
    public final /* bridge */ /* synthetic */ rm2 mo7436A(String str) {
        str.getClass();
        this.f22661c = str;
        return this;
    }

    @Override // p168r4.rm2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ rm2 mo7435a(C6478yt c6478yt) {
        c6478yt.getClass();
        this.f22662d = c6478yt;
        return this;
    }

    @Override // p168r4.rm2
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ rm2 mo7434b(Context context) {
        context.getClass();
        this.f22660b = context;
        return this;
    }

    @Override // p168r4.rm2
    public final sm2 zza() {
        ds3.m11979c(this.f22660b, Context.class);
        ds3.m11979c(this.f22661c, String.class);
        ds3.m11979c(this.f22662d, C6478yt.class);
        return new ew0(this.f22659a, this.f22660b, this.f22661c, this.f22662d, null);
    }
}

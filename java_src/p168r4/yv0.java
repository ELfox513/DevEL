package p168r4;

import android.content.Context;
/* renamed from: r4.yv0 */
/* loaded from: classes2.dex */
public final class yv0 implements ut1 {

    /* renamed from: a */
    public final ow0 f34228a;

    /* renamed from: b */
    public Context f34229b;

    /* renamed from: c */
    public o60 f34230c;

    public /* synthetic */ yv0(ow0 ow0Var, fw0 fw0Var) {
        this.f34228a = ow0Var;
    }

    @Override // p168r4.ut1
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ ut1 mo4548a(Context context) {
        context.getClass();
        this.f34229b = context;
        return this;
    }

    @Override // p168r4.ut1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ ut1 mo4547b(o60 o60Var) {
        o60Var.getClass();
        this.f34230c = o60Var;
        return this;
    }

    @Override // p168r4.ut1
    public final vt1 zza() {
        ds3.m11979c(this.f34229b, Context.class);
        ds3.m11979c(this.f34230c, o60.class);
        return new zv0(this.f34228a, this.f34229b, this.f34230c, null);
    }
}

package p168r4;

import android.graphics.Bitmap;
/* renamed from: r4.nl1 */
/* loaded from: classes2.dex */
public final class nl1 implements p03<l84, Bitmap> {

    /* renamed from: a */
    public final /* synthetic */ double f28330a;

    /* renamed from: b */
    public final /* synthetic */ boolean f28331b;

    /* renamed from: c */
    public final /* synthetic */ pl1 f28332c;

    public nl1(pl1 pl1Var, double d, boolean z) {
        this.f28332c = pl1Var;
        this.f28330a = d;
        this.f28331b = z;
    }

    @Override // p168r4.p03
    public final /* bridge */ /* synthetic */ Bitmap apply(l84 l84Var) {
        return pl1.m8280b(this.f28332c, l84Var.f27129b, this.f28330a, this.f28331b);
    }
}

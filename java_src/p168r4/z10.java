package p168r4;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
/* renamed from: r4.z10 */
/* loaded from: classes2.dex */
public final class z10 extends o20 {

    /* renamed from: a */
    public final Drawable f34280a;

    /* renamed from: b */
    public final Uri f34281b;

    /* renamed from: d */
    public final double f34282d;

    /* renamed from: k */
    public final int f34283k;

    /* renamed from: p */
    public final int f34284p;

    public z10(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.f34280a = drawable;
        this.f34281b = uri;
        this.f34282d = d;
        this.f34283k = i;
        this.f34284p = i2;
    }

    @Override // p168r4.p20
    /* renamed from: a */
    public final InterfaceC3512a mo4484a() {
        return BinderC3514b.m18741L0(this.f34280a);
    }

    @Override // p168r4.p20
    /* renamed from: b */
    public final Uri mo4483b() {
        return this.f34281b;
    }

    @Override // p168r4.p20
    /* renamed from: c */
    public final int mo4482c() {
        return this.f34283k;
    }

    @Override // p168r4.p20
    /* renamed from: d */
    public final int mo4481d() {
        return this.f34284p;
    }

    @Override // p168r4.p20
    /* renamed from: e */
    public final double mo4480e() {
        return this.f34282d;
    }
}

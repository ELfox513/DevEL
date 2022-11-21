package p168r4;

import android.os.Bundle;
/* renamed from: r4.zb2 */
/* loaded from: classes2.dex */
public final class zb2 implements dg2<Bundle> {

    /* renamed from: a */
    public final int f34437a;

    /* renamed from: b */
    public final boolean f34438b;

    /* renamed from: c */
    public final boolean f34439c;

    /* renamed from: d */
    public final int f34440d;

    /* renamed from: e */
    public final int f34441e;

    /* renamed from: f */
    public final int f34442f;

    /* renamed from: g */
    public final float f34443g;

    /* renamed from: h */
    public final boolean f34444h;

    public zb2(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.f34437a = i;
        this.f34438b = z;
        this.f34439c = z2;
        this.f34440d = i2;
        this.f34441e = i3;
        this.f34442f = i4;
        this.f34443g = f;
        this.f34444h = z3;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f34437a);
        bundle2.putBoolean("ma", this.f34438b);
        bundle2.putBoolean("sp", this.f34439c);
        bundle2.putInt("muv", this.f34440d);
        bundle2.putInt("rm", this.f34441e);
        bundle2.putInt("riv", this.f34442f);
        bundle2.putFloat("android_app_volume", this.f34443g);
        bundle2.putBoolean("android_app_muted", this.f34444h);
    }
}

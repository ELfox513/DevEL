package p168r4;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* renamed from: r4.pe2 */
/* loaded from: classes2.dex */
public final class pe2 implements vr3<oe2> {

    /* renamed from: a */
    public final is3<ApplicationInfo> f29445a;

    /* renamed from: b */
    public final is3<PackageInfo> f29446b;

    public pe2(is3<ApplicationInfo> is3Var, is3<PackageInfo> is3Var2) {
        this.f29445a = is3Var;
        this.f29446b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new oe2(((ew1) this.f29445a).mo4079a(), this.f29446b.mo4079a());
    }
}

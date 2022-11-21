package p168r4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* renamed from: r4.ew1 */
/* loaded from: classes2.dex */
public final class ew1 implements vr3<ApplicationInfo> {

    /* renamed from: a */
    public final is3<Context> f23193a;

    public ew1(is3<Context> is3Var) {
        this.f23193a = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final ApplicationInfo mo4079a() {
        ApplicationInfo applicationInfo = this.f23193a.mo4079a().getApplicationInfo();
        ds3.m11980b(applicationInfo);
        return applicationInfo;
    }
}

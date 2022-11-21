package p168r4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import p042d4.C3325e;
/* renamed from: r4.kw1 */
/* loaded from: classes2.dex */
public final class kw1 implements vr3<PackageInfo> {

    /* renamed from: a */
    public final is3<Context> f26972a;

    /* renamed from: b */
    public final is3<ApplicationInfo> f26973b;

    public kw1(is3<Context> is3Var, is3<ApplicationInfo> is3Var2) {
        this.f26972a = is3Var;
        this.f26973b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        try {
            return C3325e.m19140a(this.f26972a.mo4079a()).m19143f(((ew1) this.f26973b).mo4079a().packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}

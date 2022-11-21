package p168r4;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.t0 */
/* loaded from: classes2.dex */
public final class RunnableC6264t0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f31600a;

    /* renamed from: b */
    public final /* synthetic */ C6338v0 f31601b;

    public RunnableC6264t0(C6338v0 c6338v0, int i, boolean z) {
        this.f31601b = c6338v0;
        this.f31600a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pb4 pb4Var;
        C6338v0 c6338v0 = this.f31601b;
        int i = this.f31600a;
        if (i > 0) {
            try {
                Thread.sleep(i * CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
            } catch (InterruptedException unused) {
            }
        }
        try {
            PackageInfo packageInfo = c6338v0.f32515a.getPackageManager().getPackageInfo(c6338v0.f32515a.getPackageName(), 0);
            Context context = c6338v0.f32515a;
            pb4Var = px2.m8102a(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            pb4Var = null;
        }
        this.f31601b.f32524j = pb4Var;
        if (this.f31600a < 4) {
            if (pb4Var == null || !pb4Var.m8385f0() || pb4Var.m8371t0().equals("0000000000000000000000000000000000000000000000000000000000000000") || !pb4Var.m8368w0() || !pb4Var.m8367x0().m4334C() || pb4Var.m8367x0().m4333D() == -2) {
                this.f31601b.m6267s(this.f31600a + 1, true);
            }
        }
    }
}

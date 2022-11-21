package p168r4;

import android.content.Context;
import android.view.WindowManager;
/* renamed from: r4.ky3 */
/* loaded from: classes2.dex */
public final class ky3 implements jy3 {

    /* renamed from: a */
    public final WindowManager f26989a;

    public ky3(WindowManager windowManager) {
        this.f26989a = windowManager;
    }

    @Override // p168r4.jy3
    /* renamed from: a */
    public final void mo9537a() {
    }

    @Override // p168r4.jy3
    /* renamed from: b */
    public final void mo9536b(iy3 iy3Var) {
        iy3Var.mo10457a(this.f26989a.getDefaultDisplay());
    }

    /* renamed from: c */
    public static jy3 m9833c(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            return new ky3(windowManager);
        }
        return null;
    }
}

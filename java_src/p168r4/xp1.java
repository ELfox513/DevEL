package p168r4;

import android.content.Context;
/* renamed from: r4.xp1 */
/* loaded from: classes2.dex */
public final class xp1 implements e81 {

    /* renamed from: a */
    public final cs0 f33671a;

    public xp1(cs0 cs0Var) {
        this.f33671a = cs0Var;
    }

    @Override // p168r4.e81
    /* renamed from: e0 */
    public final void mo5185e0(Context context) {
        cs0 cs0Var = this.f33671a;
        if (cs0Var != null) {
            cs0Var.onPause();
        }
    }

    @Override // p168r4.e81
    /* renamed from: o */
    public final void mo5184o(Context context) {
        cs0 cs0Var = this.f33671a;
        if (cs0Var != null) {
            cs0Var.onResume();
        }
    }

    @Override // p168r4.e81
    /* renamed from: v */
    public final void mo5183v(Context context) {
        cs0 cs0Var = this.f33671a;
        if (cs0Var != null) {
            cs0Var.destroy();
        }
    }
}

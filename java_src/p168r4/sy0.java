package p168r4;

import android.content.Context;
/* renamed from: r4.sy0 */
/* loaded from: classes2.dex */
public final class sy0 implements e81 {

    /* renamed from: a */
    public final zp2 f31581a;

    public sy0(zp2 zp2Var) {
        this.f31581a = zp2Var;
    }

    @Override // p168r4.e81
    /* renamed from: e0 */
    public final void mo5185e0(Context context) {
        try {
            this.f31581a.m4132l();
        } catch (mp2 e) {
            cm0.m12436g("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // p168r4.e81
    /* renamed from: o */
    public final void mo5184o(Context context) {
        try {
            this.f31581a.m4131m();
            if (context != null) {
                this.f31581a.m4125s(context);
            }
        } catch (mp2 e) {
            cm0.m12436g("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // p168r4.e81
    /* renamed from: v */
    public final void mo5183v(Context context) {
        try {
            this.f31581a.m4135i();
        } catch (mp2 e) {
            cm0.m12436g("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}

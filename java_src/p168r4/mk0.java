package p168r4;

import android.content.SharedPreferences;
import java.util.List;
/* renamed from: r4.mk0 */
/* loaded from: classes2.dex */
public final class mk0 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    public final String f27754a;

    /* renamed from: b */
    public final /* synthetic */ ok0 f27755b;

    public mk0(ok0 ok0Var, String str) {
        this.f27755b = ok0Var;
        this.f27754a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<nk0> list;
        synchronized (this.f27755b) {
            list = this.f27755b.f29022b;
            for (nk0 nk0Var : list) {
                nk0Var.mo9076a(sharedPreferences, this.f27754a, str);
            }
        }
    }
}

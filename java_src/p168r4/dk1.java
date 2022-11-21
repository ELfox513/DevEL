package p168r4;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: r4.dk1 */
/* loaded from: classes2.dex */
public final class dk1 implements b20 {

    /* renamed from: a */
    public final /* synthetic */ al1 f22307a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f22308b;

    public dk1(al1 al1Var, ViewGroup viewGroup) {
        this.f22307a = al1Var;
        this.f22308b = viewGroup;
    }

    @Override // p168r4.b20
    /* renamed from: a */
    public final void mo9611a(MotionEvent motionEvent) {
        this.f22307a.onTouch(null, motionEvent);
    }

    @Override // p168r4.b20
    /* renamed from: b */
    public final JSONObject mo9610b() {
        return this.f22307a.mo4667o();
    }

    @Override // p168r4.b20
    /* renamed from: e */
    public final JSONObject mo9609e() {
        return this.f22307a.mo4668m();
    }

    @Override // p168r4.b20
    public final void zza() {
        al1 al1Var = this.f22307a;
        o33<String> o33Var = ak1.f20521y;
        Map<String, WeakReference<View>> mo4670i = al1Var.mo4670i();
        if (mo4670i != null) {
            int size = o33Var.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                if (mo4670i.get(o33Var.get(i)) == null) {
                    i = i2;
                } else {
                    this.f22307a.onClick(this.f22308b);
                    return;
                }
            }
        }
    }
}

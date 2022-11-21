package p168r4;

import android.os.RemoteException;
import java.util.Map;
/* renamed from: r4.qn1 */
/* loaded from: classes2.dex */
public final class qn1 implements u50<Object> {

    /* renamed from: a */
    public final q30 f30207a;

    /* renamed from: b */
    public final fo1 f30208b;

    /* renamed from: c */
    public final or3<mn1> f30209c;

    public qn1(pj1 pj1Var, ej1 ej1Var, fo1 fo1Var, or3<mn1> or3Var) {
        this.f30207a = pj1Var.m8303g(ej1Var.m11745q());
        this.f30208b = fo1Var;
        this.f30209c = or3Var;
    }

    /* renamed from: b */
    public final void m7780b() {
        if (this.f30207a == null) {
            return;
        }
        this.f30208b.m11452e("/nativeAdCustomClick", this);
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f30207a.mo8038F6(this.f30209c.m8710a(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            cm0.m12436g(sb.toString(), e);
        }
    }
}

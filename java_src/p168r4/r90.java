package p168r4;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
import p016b3.C0543w1;
/* renamed from: r4.r90 */
/* loaded from: classes2.dex */
public final class r90 implements g80, q90 {

    /* renamed from: a */
    public final q90 f30507a;

    /* renamed from: b */
    public final HashSet<AbstractMap.SimpleEntry<String, u50<? super q90>>> f30508b = new HashSet<>();

    public r90(q90 q90Var) {
        this.f30507a = q90Var;
    }

    @Override // p168r4.e80
    /* renamed from: H0 */
    public final void mo5125H0(String str, Map map) {
        f80.m11596d(this, str, map);
    }

    @Override // p168r4.s80
    /* renamed from: K0 */
    public final void mo5120K0(String str, JSONObject jSONObject) {
        f80.m11599a(this, str, jSONObject);
    }

    @Override // p168r4.g80, p168r4.e80
    /* renamed from: c */
    public final void mo5091c(String str, JSONObject jSONObject) {
        f80.m11597c(this, str, jSONObject);
    }

    @Override // p168r4.g80, p168r4.s80
    /* renamed from: g */
    public final void mo5081g(String str, String str2) {
        f80.m11598b(this, str, str2);
    }

    @Override // p168r4.g80, p168r4.s80
    /* renamed from: q */
    public final void mo5052q(String str) {
        this.f30507a.mo5052q(str);
    }

    @Override // p168r4.q90
    /* renamed from: A0 */
    public final void mo7573A0(String str, u50<? super q90> u50Var) {
        this.f30507a.mo7573A0(str, u50Var);
        this.f30508b.add(new AbstractMap.SimpleEntry<>(str, u50Var));
    }

    @Override // p168r4.q90
    /* renamed from: U */
    public final void mo7572U(String str, u50<? super q90> u50Var) {
        this.f30507a.mo7572U(str, u50Var);
        this.f30508b.remove(new AbstractMap.SimpleEntry(str, u50Var));
    }

    /* renamed from: a */
    public final void m7571a() {
        String str;
        Iterator<AbstractMap.SimpleEntry<String, u50<? super q90>>> it = this.f30508b.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, u50<? super q90>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            if (valueOf.length() != 0) {
                str = "Unregistering eventhandler: ".concat(valueOf);
            } else {
                str = new String("Unregistering eventhandler: ");
            }
            C0543w1.m26251k(str);
            this.f30507a.mo7572U(next.getKey(), next.getValue());
        }
        this.f30508b.clear();
    }
}

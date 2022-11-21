package p168r4;

import java.util.UUID;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.ia0 */
/* loaded from: classes2.dex */
public final class ia0<I, O> implements t90<I, O> {

    /* renamed from: a */
    public final v90<O> f25017a;

    /* renamed from: b */
    public final w90<I> f25018b;

    /* renamed from: c */
    public final p90 f25019c;

    /* renamed from: d */
    public final String f25020d;

    public ia0(p90 p90Var, String str, w90<I> w90Var, v90<O> v90Var) {
        this.f25019c = p90Var;
        this.f25020d = str;
        this.f25018b = w90Var;
        this.f25017a = v90Var;
    }

    @Override // p168r4.e73
    /* renamed from: a */
    public final h83<O> mo1029a(I i) {
        return mo6896b(i);
    }

    @Override // p168r4.t90
    /* renamed from: b */
    public final h83<O> mo6896b(I i) {
        vm0 vm0Var = new vm0();
        j90 m8440g = this.f25019c.m8440g(null);
        m8440g.m12411b(new fa0(this, m8440g, i, vm0Var), new ga0(this, vm0Var, m8440g));
        return vm0Var;
    }

    /* renamed from: d */
    public static /* synthetic */ void m10701d(ia0 ia0Var, j90 j90Var, q90 q90Var, Object obj, vm0 vm0Var) {
        try {
            C7601t.m939d();
            String uuid = UUID.randomUUID().toString();
            t50.f31703o.m10397b(uuid, new ha0(ia0Var, j90Var, vm0Var));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put("args", ia0Var.f25018b.mo4532b(obj));
            q90Var.mo5120K0(ia0Var.f25020d, jSONObject);
        } catch (Exception e) {
            try {
                vm0Var.m6085f(e);
                cm0.m12439d("Unable to invokeJavascript", e);
            } finally {
                j90Var.m10378g();
            }
        }
    }
}

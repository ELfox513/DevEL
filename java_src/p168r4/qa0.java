package p168r4;

import java.util.UUID;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.qa0 */
/* loaded from: classes2.dex */
public final class qa0<I, O> implements e73<I, O> {

    /* renamed from: a */
    public final v90<O> f30066a;

    /* renamed from: b */
    public final w90<I> f30067b;

    /* renamed from: c */
    public final String f30068c = "google.afma.activeView.handleUpdate";

    /* renamed from: d */
    public final h83<q90> f30069d;

    public qa0(h83<q90> h83Var, String str, w90<I> w90Var, v90<O> v90Var) {
        this.f30069d = h83Var;
        this.f30067b = w90Var;
        this.f30066a = v90Var;
    }

    @Override // p168r4.e73
    /* renamed from: a */
    public final h83<O> mo1029a(I i) {
        return m7915b(i);
    }

    /* renamed from: b */
    public final h83<O> m7915b(final I i) {
        return y73.m4806i(this.f30069d, new e73(this, i) { // from class: r4.oa0

            /* renamed from: a */
            public final qa0 f28939a;

            /* renamed from: b */
            public final Object f28940b;

            {
                this.f28939a = this;
                this.f28940b = i;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f28939a.m7914c(this.f28940b, (q90) obj);
            }
        }, qm0.f30195f);
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m7914c(Object obj, q90 q90Var) {
        vm0 vm0Var = new vm0();
        C7601t.m939d();
        String uuid = UUID.randomUUID().toString();
        t50.f31703o.m10397b(uuid, new pa0(this, vm0Var));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) obj);
        q90Var.mo5120K0(this.f30068c, jSONObject);
        return vm0Var;
    }
}

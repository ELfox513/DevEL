package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.pa0 */
/* loaded from: classes2.dex */
public final class pa0 implements i60 {

    /* renamed from: a */
    public final vm0 f29405a;

    /* renamed from: b */
    public final /* synthetic */ qa0 f29406b;

    public pa0(qa0 qa0Var, vm0 vm0Var) {
        this.f29406b = qa0Var;
        this.f29405a = vm0Var;
    }

    @Override // p168r4.i60
    /* renamed from: a */
    public final void mo8431a(JSONObject jSONObject) {
        try {
            this.f29405a.m6086e(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.f29405a.m6085f(e);
        }
    }

    @Override // p168r4.i60
    /* renamed from: u */
    public final void mo8430u(String str) {
        try {
            if (str == null) {
                this.f29405a.m6085f(new s90());
            } else {
                this.f29405a.m6085f(new s90(str));
            }
        } catch (IllegalStateException unused) {
        }
    }
}

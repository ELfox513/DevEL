package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.ha0 */
/* loaded from: classes2.dex */
public final class ha0 implements i60 {

    /* renamed from: a */
    public final j90 f24524a;

    /* renamed from: b */
    public final vm0 f24525b;

    /* renamed from: c */
    public final /* synthetic */ ia0 f24526c;

    public ha0(ia0 ia0Var, j90 j90Var, vm0 vm0Var) {
        this.f24526c = ia0Var;
        this.f24524a = j90Var;
        this.f24525b = vm0Var;
    }

    @Override // p168r4.i60
    /* renamed from: a */
    public final void mo8431a(JSONObject jSONObject) {
        j90 j90Var;
        v90 v90Var;
        try {
            try {
                vm0 vm0Var = this.f24525b;
                v90Var = this.f24526c.f25017a;
                vm0Var.m6086e(v90Var.mo4403a(jSONObject));
                j90Var = this.f24524a;
            } catch (IllegalStateException unused) {
                j90Var = this.f24524a;
            } catch (JSONException e) {
                this.f24525b.m6085f(e);
                j90Var = this.f24524a;
            }
            j90Var.m10378g();
        } catch (Throwable th) {
            this.f24524a.m10378g();
            throw th;
        }
    }

    @Override // p168r4.i60
    /* renamed from: u */
    public final void mo8430u(String str) {
        j90 j90Var;
        try {
            if (str == null) {
                this.f24525b.m6085f(new s90());
            } else {
                this.f24525b.m6085f(new s90(str));
            }
            j90Var = this.f24524a;
        } catch (IllegalStateException unused) {
            j90Var = this.f24524a;
        } catch (Throwable th) {
            this.f24524a.m10378g();
            throw th;
        }
        j90Var.m10378g();
    }
}

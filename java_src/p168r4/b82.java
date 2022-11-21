package p168r4;

import android.os.RemoteException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.b82 */
/* loaded from: classes2.dex */
public final class b82 extends gd0 {

    /* renamed from: a */
    public final String f20901a;

    /* renamed from: b */
    public final ed0 f20902b;

    /* renamed from: d */
    public final vm0<JSONObject> f20903d;

    /* renamed from: k */
    public final JSONObject f20904k;

    /* renamed from: p */
    public boolean f20905p;

    @Override // p168r4.hd0
    /* renamed from: F */
    public final synchronized void mo10949F(C5996lt c5996lt) {
        if (this.f20905p) {
            return;
        }
        try {
            this.f20904k.put("signal_error", c5996lt.f27362b);
        } catch (JSONException unused) {
        }
        this.f20903d.m6086e(this.f20904k);
        this.f20905p = true;
    }

    @Override // p168r4.hd0
    /* renamed from: H */
    public final synchronized void mo10948H(String str) {
        if (this.f20905p) {
            return;
        }
        if (str == null) {
            mo10947s("Adapter returned null signals");
            return;
        }
        try {
            this.f20904k.put("signals", str);
        } catch (JSONException unused) {
        }
        this.f20903d.m6086e(this.f20904k);
        this.f20905p = true;
    }

    /* renamed from: a */
    public final synchronized void m12845a() {
        if (this.f20905p) {
            return;
        }
        this.f20903d.m6086e(this.f20904k);
        this.f20905p = true;
    }

    @Override // p168r4.hd0
    /* renamed from: s */
    public final synchronized void mo10947s(String str) {
        if (this.f20905p) {
            return;
        }
        try {
            this.f20904k.put("signal_error", str);
        } catch (JSONException unused) {
        }
        this.f20903d.m6086e(this.f20904k);
        this.f20905p = true;
    }

    public b82(String str, ed0 ed0Var, vm0<JSONObject> vm0Var) {
        JSONObject jSONObject = new JSONObject();
        this.f20904k = jSONObject;
        this.f20905p = false;
        this.f20903d = vm0Var;
        this.f20901a = str;
        this.f20902b = ed0Var;
        try {
            jSONObject.put("adapter_version", ed0Var.mo8351d().toString());
            jSONObject.put("sdk_version", ed0Var.mo8349g().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }
}

package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.fe0 */
/* loaded from: classes2.dex */
public class fe0 {

    /* renamed from: a */
    public final cs0 f23459a;

    /* renamed from: b */
    public final String f23460b;

    public fe0(cs0 cs0Var, String str) {
        this.f23459a = cs0Var;
        this.f23460b = str;
    }

    /* renamed from: b */
    public final void m11557b(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f23460b);
            cs0 cs0Var = this.f23459a;
            if (cs0Var != null) {
                cs0Var.mo5091c("onError", put);
            }
        } catch (JSONException e) {
            cm0.m12439d("Error occurred while dispatching error event.", e);
        }
    }

    /* renamed from: c */
    public final void m11556c(String str) {
        try {
            this.f23459a.mo5091c("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            cm0.m12439d("Error occurred while dispatching ready Event.", e);
        }
    }

    /* renamed from: d */
    public final void m11555d(int i, int i2, int i3, int i4) {
        try {
            this.f23459a.mo5091c("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            cm0.m12439d("Error occurred while dispatching size change.", e);
        }
    }

    /* renamed from: e */
    public final void m11554e(int i, int i2, int i3, int i4) {
        try {
            this.f23459a.mo5091c("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            cm0.m12439d("Error occurred while dispatching default position.", e);
        }
    }

    /* renamed from: f */
    public final void m11553f(String str) {
        try {
            this.f23459a.mo5091c("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            cm0.m12439d("Error occurred while dispatching state change.", e);
        }
    }

    /* renamed from: g */
    public final void m11552g(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f23459a.mo5091c("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            cm0.m12439d("Error occurred while obtaining screen information.", e);
        }
    }
}

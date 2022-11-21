package p168r4;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0482h;
import p235z2.C7601t;
/* renamed from: r4.kz0 */
/* loaded from: classes2.dex */
public final class kz0 implements w90<nz0> {

    /* renamed from: a */
    public final Context f26993a;

    /* renamed from: b */
    public final C5879im f26994b;

    /* renamed from: c */
    public final PowerManager f26995c;

    public kz0(Context context, C5879im c5879im) {
        this.f26993a = context;
        this.f26994b = c5879im;
        this.f26995c = (PowerManager) context.getSystemService("power");
    }

    @Override // p168r4.w90
    /* renamed from: a */
    public final JSONObject mo4532b(nz0 nz0Var) {
        boolean isScreenOn;
        JSONObject jSONObject;
        Integer valueOf;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        C6026mm c6026mm = nz0Var.f28741f;
        if (c6026mm == null) {
            jSONObject = new JSONObject();
        } else if (this.f26994b.m10598c() != null) {
            boolean z = c6026mm.f27773a;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject put = jSONObject3.put("afmaVersion", this.f26994b.m10599b()).put("activeViewJSON", this.f26994b.m10598c()).put("timestamp", nz0Var.f28739d).put("adFormat", this.f26994b.m10600a()).put("hashCode", this.f26994b.m10597d()).put("isMraid", false).put("isStopped", false).put("isPaused", nz0Var.f28737b).put("isNative", this.f26994b.m10596e());
            if (Build.VERSION.SDK_INT >= 20) {
                isScreenOn = this.f26995c.isInteractive();
            } else {
                isScreenOn = this.f26995c.isScreenOn();
            }
            put.put("isScreenOn", isScreenOn).put("appMuted", C7601t.m934i().m26368d()).put("appVolume", C7601t.m934i().m26370b()).put("deviceVolume", C0482h.m26367e(this.f26993a.getApplicationContext()));
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30954Y3)).booleanValue()) {
                AudioManager audioManager = (AudioManager) this.f26993a.getApplicationContext().getSystemService("audio");
                if (audioManager == null) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf(audioManager.getMode());
                }
                if (valueOf != null) {
                    jSONObject3.put("audioMode", valueOf);
                }
            }
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.f26993a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", c6026mm.f27774b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", c6026mm.f27775c.top).put("bottom", c6026mm.f27775c.bottom).put("left", c6026mm.f27775c.left).put("right", c6026mm.f27775c.right)).put("adBox", new JSONObject().put("top", c6026mm.f27776d.top).put("bottom", c6026mm.f27776d.bottom).put("left", c6026mm.f27776d.left).put("right", c6026mm.f27776d.right)).put("globalVisibleBox", new JSONObject().put("top", c6026mm.f27777e.top).put("bottom", c6026mm.f27777e.bottom).put("left", c6026mm.f27777e.left).put("right", c6026mm.f27777e.right)).put("globalVisibleBoxVisible", c6026mm.f27778f).put("localVisibleBox", new JSONObject().put("top", c6026mm.f27779g.top).put("bottom", c6026mm.f27779g.bottom).put("left", c6026mm.f27779g.left).put("right", c6026mm.f27779g.right)).put("localVisibleBoxVisible", c6026mm.f27780h).put("hitBox", new JSONObject().put("top", c6026mm.f27781i.top).put("bottom", c6026mm.f27781i.bottom).put("left", c6026mm.f27781i.left).put("right", c6026mm.f27781i.right)).put("screenDensity", this.f26993a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", nz0Var.f28736a);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30919U0)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = c6026mm.f27783k;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(nz0Var.f28740e)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        } else {
            throw new JSONException("Active view Info cannot be null.");
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}

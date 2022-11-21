package p168r4;

import org.json.JSONObject;
/* renamed from: r4.kp2 */
/* loaded from: classes2.dex */
public final class kp2 {

    /* renamed from: a */
    public final JSONObject f26512a;

    public kp2(JSONObject jSONObject) {
        this.f26512a = jSONObject;
    }

    /* renamed from: a */
    public final String m9962a() {
        if (m9961b() - 1 != 1) {
            return "javascript";
        }
        return null;
    }

    /* renamed from: b */
    public final int m9961b() {
        int optInt = this.f26512a.optInt("media_type", -1);
        if (optInt != 0) {
            return optInt != 1 ? 3 : 1;
        }
        return 2;
    }
}

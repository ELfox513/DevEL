package p168r4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.gw2 */
/* loaded from: classes2.dex */
public final class gw2 {

    /* renamed from: a */
    public static WindowManager f24359a;

    /* renamed from: b */
    public static final String[] f24360b = {"x", "y", "width", "height"};

    /* renamed from: c */
    public static float f24361c = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: i */
    public static boolean m11038i(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject != null && jSONObject2 != null) {
            String[] strArr = f24360b;
            int i = 0;
            while (true) {
                if (i < 4) {
                    String str = strArr[i];
                    if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                        break;
                    }
                    i++;
                } else if (jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""))) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
                    JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
                    if (optJSONArray != null || optJSONArray2 != null) {
                        if (m11037j(optJSONArray, optJSONArray2)) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                if (!optJSONArray.optString(i2, "").equals(optJSONArray2.optString(i2, ""))) {
                                    break;
                                }
                            }
                        }
                    }
                    JSONArray optJSONArray3 = jSONObject.optJSONArray("childViews");
                    JSONArray optJSONArray4 = jSONObject2.optJSONArray("childViews");
                    if (optJSONArray3 != null || optJSONArray4 != null) {
                        if (m11037j(optJSONArray3, optJSONArray4)) {
                            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                                if (m11038i(optJSONArray3.optJSONObject(i3), optJSONArray4.optJSONObject(i3))) {
                                }
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: j */
    public static boolean m11037j(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    /* renamed from: a */
    public static void m11046a(Context context) {
        if (context != null) {
            f24361c = context.getResources().getDisplayMetrics().density;
            f24359a = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: b */
    public static JSONObject m11045b(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f24361c);
            jSONObject.put("y", i2 / f24361c);
            jSONObject.put("width", i3 / f24361c);
            jSONObject.put("height", i4 / f24361c);
        } catch (JSONException e) {
            hw2.m10777a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: d */
    public static void m11043d(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            hw2.m10777a("Error with setting ad session id", e);
        }
    }

    /* renamed from: e */
    public static void m11042e(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            hw2.m10777a("Error with setting not visible reason", e);
        }
    }

    /* renamed from: g */
    public static void m11040g(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
                jSONObject.put("childViews", optJSONArray);
            }
            optJSONArray.put(jSONObject2);
        } catch (JSONException e) {
            rk3.m7479b(e);
        }
    }

    /* renamed from: h */
    public static void m11039h(JSONObject jSONObject) {
        float f;
        float f2 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f24359a != null) {
                Point point = new Point(0, 0);
                f24359a.getDefaultDisplay().getRealSize(point);
                float f3 = f24361c;
                float f4 = point.x / f3;
                f = point.y / f3;
                f2 = f4;
            }
            f = 0.0f;
        } else {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                f = 0.0f;
                for (int i = 0; i < length; i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        double optDouble = optJSONObject.optDouble("x");
                        double optDouble2 = optJSONObject.optDouble("y");
                        double optDouble3 = optJSONObject.optDouble("width");
                        double optDouble4 = optJSONObject.optDouble("height");
                        f2 = Math.max(f2, (float) (optDouble + optDouble3));
                        f = Math.max(f, (float) (optDouble2 + optDouble4));
                    }
                }
            }
            f = 0.0f;
        }
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", f);
        } catch (JSONException e) {
            rk3.m7479b(e);
        }
    }

    /* renamed from: c */
    public static void m11044c(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
            sb.append("JSONException during JSONObject.put for name [");
            sb.append(str);
            sb.append("]");
            hw2.m10777a(sb.toString(), e);
        }
    }

    /* renamed from: f */
    public static void m11041f(JSONObject jSONObject, kw2 kw2Var) {
        qv2 m9855b = kw2Var.m9855b();
        JSONArray jSONArray = new JSONArray();
        ArrayList<String> m9854c = kw2Var.m9854c();
        int size = m9854c.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(m9854c.get(i));
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", m9855b.m7659b());
            jSONObject.put("friendlyObstructionPurpose", m9855b.m7658c());
            jSONObject.put("friendlyObstructionReason", m9855b.m7657d());
        } catch (JSONException e) {
            hw2.m10777a("Error with setting friendly obstruction", e);
        }
    }
}

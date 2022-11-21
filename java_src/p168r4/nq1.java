package p168r4;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.nq1 */
/* loaded from: classes2.dex */
public final class nq1 {
    /* renamed from: b */
    public static boolean m9015b(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                } catch (PatternSyntaxException e) {
                    C7601t.m935h().m9056k(e, "RtbAdapterMap.hasAtleastOneRegexMatch");
                }
                if (Pattern.compile(jSONArray.optString(i)).matcher(str).lookingAt()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public static String m9016a(JSONObject jSONObject, String str, String str2) {
        JSONArray optJSONArray;
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray(str2)) != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("including");
                    JSONArray optJSONArray3 = optJSONObject.optJSONArray("excluding");
                    if (m9015b(optJSONArray2, str) && !m9015b(optJSONArray3, str)) {
                        return optJSONObject.optString("effective_ad_unit_id", "");
                    }
                }
            }
        }
        return "";
    }
}

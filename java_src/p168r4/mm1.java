package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: r4.mm1 */
/* loaded from: classes2.dex */
public final class mm1 {

    /* renamed from: a */
    public final Executor f27786a;

    /* renamed from: b */
    public final hm1 f27787b;

    public mm1(Executor executor, hm1 hm1Var) {
        this.f27786a = executor;
        this.f27787b = hm1Var;
    }

    /* renamed from: a */
    public final h83<List<lm1>> m9335a(JSONObject jSONObject, String str) {
        h83 m4814a;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return y73.m4814a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                m4814a = y73.m4814a(null);
            } else {
                final String optString = optJSONObject.optString("name");
                if (optString == null) {
                    m4814a = y73.m4814a(null);
                } else {
                    String optString2 = optJSONObject.optString("type");
                    if ("string".equals(optString2)) {
                        m4814a = y73.m4814a(new lm1(optString, optJSONObject.optString("string_value")));
                    } else if ("image".equals(optString2)) {
                        m4814a = y73.m4805j(this.f27787b.m10878a(optJSONObject, "image_value"), new p03(optString) { // from class: r4.km1

                            /* renamed from: a */
                            public final String f26481a;

                            {
                                this.f26481a = optString;
                            }

                            @Override // p168r4.p03
                            public final Object apply(Object obj) {
                                return new lm1(this.f26481a, (z10) obj);
                            }
                        }, this.f27786a);
                    } else {
                        m4814a = y73.m4814a(null);
                    }
                }
            }
            arrayList.add(m4814a);
        }
        return y73.m4805j(y73.m4804k(arrayList), jm1.f26075a, this.f27786a);
    }
}

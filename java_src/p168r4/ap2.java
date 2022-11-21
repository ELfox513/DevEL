package p168r4;

import android.util.JsonReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p026c4.C1052m;
/* renamed from: r4.ap2 */
/* loaded from: classes2.dex */
public final class ap2 {

    /* renamed from: a */
    public final List<no2> f20573a;

    /* renamed from: b */
    public final so2 f20574b;

    /* renamed from: c */
    public final List<zo2> f20575c;

    /* renamed from: a */
    public static ap2 m12979a(Reader reader) {
        try {
            try {
                return new ap2(new JsonReader(reader));
            } finally {
                C1052m.m24745a(reader);
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new to2("unable to parse ServerResponse", e);
        }
    }

    public ap2(JsonReader jsonReader) {
        List<no2> emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        so2 so2Var = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("responses".equals(nextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(nextName2)) {
                        emptyList = new ArrayList<>();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            emptyList.add(new no2(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        so2Var = new so2(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (nextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String str = null;
                    JSONObject jSONObject = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if ("name".equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            jSONObject = C0460b1.m26427c(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new zo2(str, jSONObject));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.f20575c = arrayList;
        this.f20573a = emptyList;
        this.f20574b = so2Var == null ? new so2(new JsonReader(new StringReader("{}"))) : so2Var;
    }
}

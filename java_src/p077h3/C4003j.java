package p077h3;

import android.os.Bundle;
import android.util.JsonReader;
import java.util.HashMap;
import java.util.Map;
/* renamed from: h3.j */
/* loaded from: classes.dex */
public final class C4003j {

    /* renamed from: a */
    public final String f17480a;

    /* renamed from: b */
    public String f17481b;

    /* renamed from: c */
    public Bundle f17482c = new Bundle();

    public C4003j(JsonReader jsonReader) {
        char c;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            int hashCode = nextName.hashCode();
            if (hashCode != -995427962) {
                if (hashCode == -271442291 && nextName.equals("signal_dictionary")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (nextName.equals("params")) {
                    c = 0;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    jsonReader.skipValue();
                } else {
                    hashMap = new HashMap();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                    }
                    jsonReader.endObject();
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        this.f17480a = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.f17482c.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }
}

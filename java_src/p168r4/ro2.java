package p168r4;

import android.util.JsonReader;
/* renamed from: r4.ro2 */
/* loaded from: classes2.dex */
public final class ro2 {

    /* renamed from: a */
    public String f30644a;

    /* renamed from: a */
    public final String m7413a() {
        return this.f30644a;
    }

    public ro2(JsonReader jsonReader) {
        char c;
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            int hashCode = nextName.hashCode();
            if (hashCode != -1724546052) {
                if (hashCode == 3059181 && nextName.equals("code")) {
                    c = 0;
                }
                c = 65535;
            } else {
                if (nextName.equals("description")) {
                    c = 1;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    jsonReader.skipValue();
                } else {
                    str = jsonReader.nextString();
                }
            } else {
                jsonReader.nextInt();
            }
        }
        jsonReader.endObject();
        this.f30644a = str;
    }
}

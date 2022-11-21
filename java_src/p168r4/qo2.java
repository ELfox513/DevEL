package p168r4;

import android.util.JsonReader;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.qo2 */
/* loaded from: classes2.dex */
public final class qo2 {

    /* renamed from: a */
    public final int f30241a;

    /* renamed from: b */
    public final int f30242b;

    /* renamed from: c */
    public final boolean f30243c;

    public qo2(int i, int i2, boolean z) {
        this.f30241a = i;
        this.f30242b = i2;
        this.f30243c = z;
    }

    /* renamed from: a */
    public static List<qo2> m7758a(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int i = 0;
            int i2 = 0;
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if ("width".equals(nextName)) {
                    i = jsonReader.nextInt();
                } else if ("height".equals(nextName)) {
                    i2 = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(nextName)) {
                    z = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new qo2(i, i2, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}

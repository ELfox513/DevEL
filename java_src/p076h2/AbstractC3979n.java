package p076h2;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.auto.value.AutoValue;
import java.io.IOException;
import java.io.Reader;
@AutoValue
/* renamed from: h2.n */
/* loaded from: classes.dex */
public abstract class AbstractC3979n {
    /* renamed from: a */
    public static AbstractC3979n m17613a(long j) {
        return new C3967h(j);
    }

    /* renamed from: c */
    public abstract long mo17611c();

    /* renamed from: b */
    public static AbstractC3979n m17612b(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        return m17613a(Long.parseLong(jsonReader.nextString()));
                    }
                    return m17613a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }
}

package p168r4;

import android.util.JsonReader;
import android.util.JsonToken;
import java.util.Collections;
import java.util.List;
import p016b3.C0460b1;
/* renamed from: r4.so2 */
/* loaded from: classes2.dex */
public final class so2 {

    /* renamed from: a */
    public final List<String> f31425a;

    /* renamed from: b */
    public final String f31426b;

    /* renamed from: c */
    public final int f31427c;

    /* renamed from: d */
    public final String f31428d;

    /* renamed from: e */
    public final int f31429e;

    /* renamed from: f */
    public final long f31430f;

    /* renamed from: g */
    public final boolean f31431g;

    /* renamed from: h */
    public final String f31432h;

    /* renamed from: i */
    public final ro2 f31433i;

    public so2(JsonReader jsonReader) {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        int i = 0;
        String str = "";
        long j = 0;
        ro2 ro2Var = null;
        boolean z = false;
        String str2 = str;
        String str3 = str2;
        int i2 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = C0460b1.m26428b(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str3 = jsonReader.nextString();
            } else if ("is_idless".equals(nextName)) {
                z = jsonReader.nextBoolean();
            } else if ("response_code".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                j = jsonReader.nextLong();
            } else {
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30932V5)).booleanValue() && "public_error".equals(nextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    ro2Var = new ro2(jsonReader);
                } else if ("bidding_data".equals(nextName)) {
                    str = jsonReader.nextString();
                } else {
                    jsonReader.skipValue();
                }
            }
        }
        jsonReader.endObject();
        this.f31425a = emptyList;
        this.f31427c = i;
        this.f31426b = str2;
        this.f31428d = str3;
        this.f31429e = i2;
        this.f31430f = j;
        this.f31433i = ro2Var;
        this.f31431g = z;
        this.f31432h = str;
    }
}

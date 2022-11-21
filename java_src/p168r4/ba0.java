package p168r4;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;
/* renamed from: r4.ba0 */
/* loaded from: classes2.dex */
public final class ba0 {

    /* renamed from: a */
    public static final Charset f20927a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final y90<JSONObject> f20928b = new aa0();

    /* renamed from: c */
    public static final v90<InputStream> f20929c = z90.f34401a;

    /* renamed from: a */
    public static final /* synthetic */ InputStream m12836a(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f20927a));
    }
}

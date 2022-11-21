package p168r4;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.oo0 */
/* loaded from: classes2.dex */
public final class oo0 {

    /* renamed from: a */
    public final boolean f29085a;

    /* renamed from: b */
    public final int f29086b;

    /* renamed from: c */
    public final int f29087c;

    /* renamed from: d */
    public final int f29088d;

    /* renamed from: e */
    public final String f29089e;

    /* renamed from: f */
    public final int f29090f;

    /* renamed from: g */
    public final int f29091g;

    /* renamed from: h */
    public final int f29092h;

    /* renamed from: i */
    public final int f29093i;

    /* renamed from: j */
    public final boolean f29094j;

    /* renamed from: k */
    public final int f29095k;

    /* renamed from: l */
    public final boolean f29096l;

    /* renamed from: m */
    public final boolean f29097m;

    /* renamed from: n */
    public final boolean f29098n;

    /* renamed from: b */
    public static final int m8719b(JSONObject jSONObject, String str, AbstractC5928jz<Integer> abstractC5928jz) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) C5592av.m12935c().m8098c(abstractC5928jz)).intValue();
    }

    public oo0(String str) {
        String string;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.f29085a = m8720a(jSONObject, "aggressive_media_codec_release", C6225rz.f30782D);
        this.f29086b = m8719b(jSONObject, "byte_buffer_precache_limit", C6225rz.f31041j);
        this.f29087c = m8719b(jSONObject, "exo_cache_buffer_size", C6225rz.f31105r);
        this.f29088d = m8719b(jSONObject, "exo_connect_timeout_millis", C6225rz.f31009f);
        AbstractC5928jz<String> abstractC5928jz = C6225rz.f31001e;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString("exo_player_version");
            } catch (JSONException unused2) {
            }
            this.f29089e = string;
            this.f29090f = m8719b(jSONObject, "exo_read_timeout_millis", C6225rz.f31017g);
            this.f29091g = m8719b(jSONObject, "load_check_interval_bytes", C6225rz.f31025h);
            this.f29092h = m8719b(jSONObject, "player_precache_limit", C6225rz.f31033i);
            this.f29093i = m8719b(jSONObject, "socket_receive_buffer_size", C6225rz.f31049k);
            this.f29094j = m8720a(jSONObject, "use_cache_data_source", C6225rz.f30817H2);
            this.f29095k = m8719b(jSONObject, "min_retry_count", C6225rz.f31057l);
            this.f29096l = m8720a(jSONObject, "treat_load_exception_as_non_fatal", C6225rz.f31081o);
            this.f29097m = m8720a(jSONObject, "using_official_simple_exo_player", C6225rz.f31067m1);
            this.f29098n = m8720a(jSONObject, "enable_multiple_video_playback", C6225rz.f31075n1);
        }
        string = (String) C5592av.m12935c().m8098c(abstractC5928jz);
        this.f29089e = string;
        this.f29090f = m8719b(jSONObject, "exo_read_timeout_millis", C6225rz.f31017g);
        this.f29091g = m8719b(jSONObject, "load_check_interval_bytes", C6225rz.f31025h);
        this.f29092h = m8719b(jSONObject, "player_precache_limit", C6225rz.f31033i);
        this.f29093i = m8719b(jSONObject, "socket_receive_buffer_size", C6225rz.f31049k);
        this.f29094j = m8720a(jSONObject, "use_cache_data_source", C6225rz.f30817H2);
        this.f29095k = m8719b(jSONObject, "min_retry_count", C6225rz.f31057l);
        this.f29096l = m8720a(jSONObject, "treat_load_exception_as_non_fatal", C6225rz.f31081o);
        this.f29097m = m8720a(jSONObject, "using_official_simple_exo_player", C6225rz.f31067m1);
        this.f29098n = m8720a(jSONObject, "enable_multiple_video_playback", C6225rz.f31075n1);
    }

    /* renamed from: a */
    public static final boolean m8720a(JSONObject jSONObject, String str, AbstractC5928jz<Boolean> abstractC5928jz) {
        boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue();
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
                return booleanValue;
            }
        }
        return booleanValue;
    }
}

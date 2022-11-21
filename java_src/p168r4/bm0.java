package p168r4;

import android.content.Context;
import android.os.Build;
import android.provider.Settings$Global;
import android.util.JsonWriter;
import com.badlogic.gdx.Net;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import p026c4.C1042c;
import p026c4.C1048i;
import p026c4.InterfaceC1045f;
/* renamed from: r4.bm0 */
/* loaded from: classes2.dex */
public final class bm0 {

    /* renamed from: c */
    public static boolean f21108c = false;

    /* renamed from: d */
    public static boolean f21109d = false;

    /* renamed from: a */
    public final List<String> f21112a;

    /* renamed from: b */
    public static final Object f21107b = new Object();

    /* renamed from: e */
    public static final InterfaceC1045f f21110e = C1048i.m24760d();

    /* renamed from: f */
    public static final Set<String> f21111f = new HashSet(Arrays.asList(new String[0]));

    /* renamed from: h */
    public static void m12758h(boolean z) {
        synchronized (f21107b) {
            f21108c = true;
            f21109d = z;
        }
    }

    /* renamed from: f */
    public final void m12760f(final byte[] bArr) {
        m12748r("onNetworkResponseBody", new am0(bArr) { // from class: r4.yl0

            /* renamed from: a */
            public final byte[] f34135a;

            {
                this.f34135a = bArr;
            }

            @Override // p168r4.am0
            /* renamed from: a */
            public final void mo4188a(JsonWriter jsonWriter) {
                byte[] bArr2 = this.f34135a;
                Object obj = bm0.f21107b;
                jsonWriter.name("params").beginObject();
                int length = bArr2.length;
                String m24776a = C1042c.m24776a(bArr2);
                if (length < 10000) {
                    jsonWriter.name("body").value(m24776a);
                } else {
                    String m6124d = vl0.m6124d(m24776a);
                    if (m6124d != null) {
                        jsonWriter.name("bodydigest").value(m6124d);
                    }
                }
                jsonWriter.name("bodylength").value(length);
                jsonWriter.endObject();
            }
        });
    }

    /* renamed from: n */
    public final void m12752n(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) {
        m12748r("onNetworkRequest", new am0(str, str2, map, bArr) { // from class: r4.wl0

            /* renamed from: a */
            public final String f33245a;

            /* renamed from: b */
            public final String f33246b;

            /* renamed from: c */
            public final Map f33247c;

            /* renamed from: d */
            public final byte[] f33248d;

            {
                this.f33245a = str;
                this.f33246b = str2;
                this.f33247c = map;
                this.f33248d = bArr;
            }

            @Override // p168r4.am0
            /* renamed from: a */
            public final void mo4188a(JsonWriter jsonWriter) {
                bm0.m12753m(this.f33245a, this.f33246b, this.f33247c, this.f33248d, jsonWriter);
            }
        });
    }

    /* renamed from: o */
    public final void m12751o(final Map<String, ?> map, final int i) {
        m12748r("onNetworkResponse", new am0(i, map) { // from class: r4.xl0

            /* renamed from: a */
            public final int f33632a;

            /* renamed from: b */
            public final Map f33633b;

            {
                this.f33632a = i;
                this.f33633b = map;
            }

            @Override // p168r4.am0
            /* renamed from: a */
            public final void mo4188a(JsonWriter jsonWriter) {
                bm0.m12754l(this.f33632a, this.f33633b, jsonWriter);
            }
        });
    }

    /* renamed from: p */
    public final void m12750p(final String str) {
        m12748r("onNetworkRequestError", new am0(str) { // from class: r4.zl0

            /* renamed from: a */
            public final String f34667a;

            {
                this.f34667a = str;
            }

            @Override // p168r4.am0
            /* renamed from: a */
            public final void mo4188a(JsonWriter jsonWriter) {
                String str2 = this.f34667a;
                Object obj = bm0.f21107b;
                jsonWriter.name("params").beginObject();
                if (str2 != null) {
                    jsonWriter.name("error_description").value(str2);
                }
                jsonWriter.endObject();
            }
        });
    }

    /* renamed from: g */
    public static void m12759g() {
        synchronized (f21107b) {
            f21108c = false;
            f21109d = false;
            cm0.m12437f("Ad debug logging enablement is out of date.");
        }
    }

    /* renamed from: i */
    public static boolean m12757i() {
        boolean z;
        synchronized (f21107b) {
            z = f21108c;
        }
        return z;
    }

    /* renamed from: j */
    public static boolean m12756j() {
        boolean z;
        synchronized (f21107b) {
            z = false;
            if (f21108c && f21109d) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: k */
    public static boolean m12755k(Context context) {
        if (Build.VERSION.SDK_INT < 17 || !c10.f21303a.m6673e().booleanValue()) {
            return false;
        }
        try {
            if (Settings$Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) == 0) {
                return false;
            }
            return true;
        } catch (Exception e) {
            cm0.m12436g("Fail to determine debug setting.", e);
            return false;
        }
    }

    /* renamed from: l */
    public static final /* synthetic */ void m12754l(int i, Map map, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m12749q(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: m */
    public static final /* synthetic */ void m12753m(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m12749q(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(C1042c.m24776a(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: q */
    public static void m12749q(JsonWriter jsonWriter, Map<String, ?> map) {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!f21111f.contains(key)) {
                if (next.getValue() instanceof List) {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                } else if (next.getValue() instanceof String) {
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    cm0.m12440c("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                    break;
                }
            }
        }
        jsonWriter.endArray();
    }

    /* renamed from: s */
    public static synchronized void m12747s(String str) {
        String str2;
        synchronized (bm0.class) {
            cm0.m12438e("GMA Debug BEGIN");
            int i = 0;
            while (i < str.length()) {
                int i2 = i + 4000;
                String valueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
                if (valueOf.length() != 0) {
                    str2 = "GMA Debug CONTENT ".concat(valueOf);
                } else {
                    str2 = new String("GMA Debug CONTENT ");
                }
                cm0.m12438e(str2);
                i = i2;
            }
            cm0.m12438e("GMA Debug FINISH");
        }
    }

    /* renamed from: r */
    public final void m12748r(String str, am0 am0Var) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f21110e.mo24763a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f21112a) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            am0Var.mo4188a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            cm0.m12439d("unable to log", e);
        }
        m12747s(stringWriter.toString());
    }

    public bm0(String str) {
        String str2;
        List<String> asList;
        if (!m12756j()) {
            asList = new ArrayList<>();
        } else {
            String[] strArr = new String[1];
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            if (valueOf.length() != 0) {
                str2 = "network_request_".concat(valueOf);
            } else {
                str2 = new String("network_request_");
            }
            strArr[0] = str2;
            asList = Arrays.asList(strArr);
        }
        this.f21112a = asList;
    }

    /* renamed from: a */
    public final void m12765a(HttpURLConnection httpURLConnection, byte[] bArr) {
        HashMap hashMap;
        if (!m12756j()) {
            return;
        }
        if (httpURLConnection.getRequestProperties() == null) {
            hashMap = null;
        } else {
            hashMap = new HashMap(httpURLConnection.getRequestProperties());
        }
        m12752n(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), hashMap, bArr);
    }

    /* renamed from: b */
    public final void m12764b(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (!m12756j()) {
            return;
        }
        m12752n(str, Net.HttpMethods.GET, map, bArr);
    }

    /* renamed from: c */
    public final void m12763c(HttpURLConnection httpURLConnection, int i) {
        HashMap hashMap;
        String str;
        if (!m12756j()) {
            return;
        }
        String str2 = null;
        if (httpURLConnection.getHeaderFields() == null) {
            hashMap = null;
        } else {
            hashMap = new HashMap(httpURLConnection.getHeaderFields());
        }
        m12751o(hashMap, i);
        if (i >= 200 && i < 300) {
            return;
        }
        try {
            str2 = httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str = "Can not get error message from error HttpURLConnection\n".concat(valueOf);
            } else {
                str = new String("Can not get error message from error HttpURLConnection\n");
            }
            cm0.m12437f(str);
        }
        m12750p(str2);
    }

    /* renamed from: d */
    public final void m12762d(Map<String, ?> map, int i) {
        if (!m12756j()) {
            return;
        }
        m12751o(map, i);
        if (i >= 200 && i < 300) {
            return;
        }
        m12750p(null);
    }

    /* renamed from: e */
    public final void m12761e(String str) {
        if (!m12756j() || str == null) {
            return;
        }
        m12760f(str.getBytes());
    }
}

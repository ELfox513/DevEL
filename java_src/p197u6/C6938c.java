package p197u6;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.net.HttpRequestHeader;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import p026c4.C1040a;
import p026c4.C1051l;
import p117l7.InterfaceC4584i;
import p152p6.InterfaceC5365f;
import p161q6.InterfaceC5434b;
import p170r6.C6539h;
import p197u6.AbstractC6939d;
import p197u6.AbstractC6943f;
import p220x3.C7297q;
/* renamed from: u6.c */
/* loaded from: classes2.dex */
public class C6938c {

    /* renamed from: e */
    public static final Pattern f35802e = Pattern.compile("[0-9]+s");

    /* renamed from: f */
    public static final Charset f35803f = Charset.forName("UTF-8");

    /* renamed from: a */
    public final Context f35804a;

    /* renamed from: b */
    public final InterfaceC5434b<InterfaceC4584i> f35805b;

    /* renamed from: c */
    public final InterfaceC5434b<InterfaceC5365f> f35806c;

    /* renamed from: d */
    public final C6942e f35807d = new C6942e();

    /* renamed from: a */
    public static String m3003a(String str, String str2, String str3) {
        String str4;
        Object[] objArr = new Object[3];
        objArr[0] = str2;
        objArr[1] = str3;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = ", " + str;
        }
        objArr[2] = str4;
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", objArr);
    }

    /* renamed from: h */
    public static byte[] m2996h(JSONObject jSONObject) {
        return jSONObject.toString().getBytes("UTF-8");
    }

    /* renamed from: i */
    public static boolean m2995i(int i) {
        return i >= 200 && i < 300;
    }

    /* renamed from: j */
    public static void m2994j() {
        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    /* renamed from: b */
    public static JSONObject m3002b(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:17.0.0");
            return jSONObject;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: c */
    public static JSONObject m3001c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:17.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            return jSONObject2;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: m */
    public static long m2991m(String str) {
        C7297q.m1891b(f35802e.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str != null && str.length() != 0) {
            return Long.parseLong(str.substring(0, str.length() - 1));
        }
        return 0L;
    }

    /* renamed from: d */
    public AbstractC6939d m3000d(String str, String str2, String str3, String str4, String str5) {
        int responseCode;
        AbstractC6939d m2990n;
        if (this.f35807d.m2971b()) {
            URL m2997g = m2997g(String.format("projects/%s/installations", str3));
            for (int i = 0; i <= 1; i++) {
                TrafficStats.setThreadStatsTag(GL20.GL_CONSTANT_COLOR);
                HttpURLConnection m2992l = m2992l(m2997g, str);
                try {
                    m2992l.setRequestMethod(Net.HttpMethods.POST);
                    m2992l.setDoOutput(true);
                    if (str5 != null) {
                        m2992l.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                    }
                    m2987q(m2992l, str2, str4);
                    responseCode = m2992l.getResponseCode();
                    this.f35807d.m2967f(responseCode);
                } catch (IOException | AssertionError unused) {
                } catch (Throwable th) {
                    m2992l.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th;
                }
                if (m2995i(responseCode)) {
                    m2990n = m2990n(m2992l);
                } else {
                    m2993k(m2992l, str4, str, str3);
                    if (responseCode != 429) {
                        if (responseCode < 500 || responseCode >= 600) {
                            m2994j();
                            m2990n = AbstractC6939d.m2984a().mo2974e(AbstractC6939d.EnumC6941b.BAD_CONFIG).mo2978a();
                        } else {
                            m2992l.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                    } else {
                        throw new C6539h("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", C6539h.EnumC6540a.TOO_MANY_REQUESTS);
                    }
                }
                m2992l.disconnect();
                TrafficStats.clearThreadStatsTag();
                return m2990n;
            }
            throw new C6539h("Firebase Installations Service is unavailable. Please try again later.", C6539h.EnumC6540a.UNAVAILABLE);
        }
        throw new C6539h("Firebase Installations Service is unavailable. Please try again later.", C6539h.EnumC6540a.UNAVAILABLE);
    }

    /* renamed from: e */
    public AbstractC6943f m2999e(String str, String str2, String str3, String str4) {
        int responseCode;
        AbstractC6943f m2988p;
        if (this.f35807d.m2971b()) {
            URL m2997g = m2997g(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i = 0; i <= 1; i++) {
                TrafficStats.setThreadStatsTag(GL20.GL_CONSTANT_ALPHA);
                HttpURLConnection m2992l = m2992l(m2997g, str);
                try {
                    m2992l.setRequestMethod(Net.HttpMethods.POST);
                    m2992l.addRequestProperty(HttpRequestHeader.Authorization, "FIS_v2 " + str4);
                    m2992l.setDoOutput(true);
                    m2986r(m2992l);
                    responseCode = m2992l.getResponseCode();
                    this.f35807d.m2967f(responseCode);
                } catch (IOException | AssertionError unused) {
                } catch (Throwable th) {
                    m2992l.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th;
                }
                if (m2995i(responseCode)) {
                    m2988p = m2988p(m2992l);
                } else {
                    m2993k(m2992l, null, str, str3);
                    if (responseCode != 401 && responseCode != 404) {
                        if (responseCode != 429) {
                            if (responseCode < 500 || responseCode >= 600) {
                                m2994j();
                                m2988p = AbstractC6943f.m2966a().mo2961b(AbstractC6943f.EnumC6945b.BAD_CONFIG).mo2962a();
                            } else {
                                m2992l.disconnect();
                                TrafficStats.clearThreadStatsTag();
                            }
                        } else {
                            throw new C6539h("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", C6539h.EnumC6540a.TOO_MANY_REQUESTS);
                        }
                    }
                    m2988p = AbstractC6943f.m2966a().mo2961b(AbstractC6943f.EnumC6945b.AUTH_ERROR).mo2962a();
                }
                m2992l.disconnect();
                TrafficStats.clearThreadStatsTag();
                return m2988p;
            }
            throw new C6539h("Firebase Installations Service is unavailable. Please try again later.", C6539h.EnumC6540a.UNAVAILABLE);
        }
        throw new C6539h("Firebase Installations Service is unavailable. Please try again later.", C6539h.EnumC6540a.UNAVAILABLE);
    }

    /* renamed from: f */
    public final String m2998f() {
        try {
            Context context = this.f35804a;
            byte[] m24781a = C1040a.m24781a(context, context.getPackageName());
            if (m24781a == null) {
                Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f35804a.getPackageName());
                return null;
            }
            return C1051l.m24747b(m24781a, false);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f35804a.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: g */
    public final URL m2997g(String str) {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new C6539h(e.getMessage(), C6539h.EnumC6540a.UNAVAILABLE);
        }
    }

    public C6938c(Context context, InterfaceC5434b<InterfaceC4584i> interfaceC5434b, InterfaceC5434b<InterfaceC5365f> interfaceC5434b2) {
        this.f35804a = context;
        this.f35805b = interfaceC5434b;
        this.f35806c = interfaceC5434b2;
    }

    /* renamed from: k */
    public static void m2993k(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        String m2989o = m2989o(httpURLConnection);
        if (!TextUtils.isEmpty(m2989o)) {
            Log.w("Firebase-Installations", m2989o);
            Log.w("Firebase-Installations", m3003a(str, str2, str3));
        }
    }

    /* renamed from: o */
    public static String m2989o(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f35803f));
        try {
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                String format = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return format;
            } catch (IOException unused2) {
                return null;
            }
        } catch (IOException unused3) {
            bufferedReader.close();
            return null;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused4) {
            }
            throw th;
        }
    }

    /* renamed from: s */
    public static void m2985s(URLConnection uRLConnection, byte[] bArr) {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                gZIPOutputStream.write(bArr);
                try {
                    return;
                } catch (IOException unused) {
                    return;
                }
            } finally {
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException unused2) {
                }
            }
        }
        throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
    }

    /* renamed from: l */
    public final HttpURLConnection m2992l(URL url, String str) {
        InterfaceC5365f.EnumC5366a mo13395a;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty(HttpRequestHeader.Accept, "application/json");
            httpURLConnection.addRequestProperty(HttpResponseHeader.ContentEncoding, "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f35804a.getPackageName());
            if (this.f35806c.get() != null && this.f35805b.get() != null && (mo13395a = this.f35806c.get().mo13395a("fire-installations-id")) != InterfaceC5365f.EnumC5366a.NONE) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f35805b.get().mo15973a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(mo13395a.m13394c()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", m2998f());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused) {
            throw new C6539h("Firebase Installations Service is unavailable. Please try again later.", C6539h.EnumC6540a.UNAVAILABLE);
        }
    }

    /* renamed from: n */
    public final AbstractC6939d m2990n(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f35803f));
        AbstractC6943f.AbstractC6944a m2966a = AbstractC6943f.m2966a();
        AbstractC6939d.AbstractC6940a m2984a = AbstractC6939d.m2984a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                m2984a.mo2973f(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                m2984a.mo2976c(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                m2984a.mo2975d(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        m2966a.mo2960c(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        m2966a.mo2959d(m2991m(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                m2984a.mo2977b(m2966a.mo2962a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return m2984a.mo2974e(AbstractC6939d.EnumC6941b.OK).mo2978a();
    }

    /* renamed from: p */
    public final AbstractC6943f m2988p(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f35803f));
        AbstractC6943f.AbstractC6944a m2966a = AbstractC6943f.m2966a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                m2966a.mo2960c(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                m2966a.mo2959d(m2991m(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return m2966a.mo2961b(AbstractC6943f.EnumC6945b.OK).mo2962a();
    }

    /* renamed from: q */
    public final void m2987q(HttpURLConnection httpURLConnection, String str, String str2) {
        m2985s(httpURLConnection, m2996h(m3002b(str, str2)));
    }

    /* renamed from: r */
    public final void m2986r(HttpURLConnection httpURLConnection) {
        m2985s(httpURLConnection, m2996h(m3001c()));
    }
}

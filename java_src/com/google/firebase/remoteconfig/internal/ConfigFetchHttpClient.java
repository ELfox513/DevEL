package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import com.badlogic.gdx.net.HttpRequestHeader;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.google.firebase.remoteconfig.internal.C1433a;
import com.google.firebase.remoteconfig.internal.C1436b;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p026c4.C1040a;
import p026c4.C1051l;
import p126m7.C4657f;
import p126m7.C4658g;
import p126m7.C4661j;
import p181t.C6641b;
/* loaded from: classes2.dex */
public class ConfigFetchHttpClient {

    /* renamed from: h */
    public static final Pattern f7872h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: a */
    public final Context f7873a;

    /* renamed from: b */
    public final String f7874b;

    /* renamed from: c */
    public final String f7875c;

    /* renamed from: d */
    public final String f7876d;

    /* renamed from: e */
    public final String f7877e;

    /* renamed from: f */
    public final long f7878f;

    /* renamed from: g */
    public final long f7879g;

    /* renamed from: a */
    public final boolean m22916a(JSONObject jSONObject) {
        try {
            return !jSONObject.get("state").equals("NO_CHANGE");
        } catch (JSONException unused) {
            return true;
        }
    }

    /* renamed from: g */
    public final String m22910g(String str, String str2) {
        return String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", str, str2);
    }

    /* renamed from: k */
    public final void m22906k(HttpURLConnection httpURLConnection, byte[] bArr) {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* renamed from: l */
    public final void m22905l(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map) {
        httpURLConnection.setDoOutput(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(this.f7878f));
        httpURLConnection.setReadTimeout((int) timeUnit.toMillis(this.f7879g));
        httpURLConnection.setRequestProperty(HttpRequestHeader.IfNoneMatch, str);
        m22908i(httpURLConnection, str2);
        m22907j(httpURLConnection, map);
    }

    /* renamed from: e */
    public static String m22912e(String str) {
        Matcher matcher = f7872h.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    /* renamed from: b */
    public final JSONObject m22915b(String str, String str2, Map<String, String> map) {
        String locale;
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.f7874b);
            Locale locale2 = this.f7873a.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale2.getCountry());
            int i = Build.VERSION.SDK_INT;
            if (i >= 21) {
                locale = locale2.toLanguageTag();
            } else {
                locale = locale2.toString();
            }
            hashMap.put("languageCode", locale);
            hashMap.put("platformVersion", Integer.toString(i));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.f7873a.getPackageManager().getPackageInfo(this.f7873a.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                    hashMap.put("appBuild", Long.toString(C6641b.m3720a(packageInfo)));
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            hashMap.put("packageName", this.f7873a.getPackageName());
            hashMap.put("sdkVersion", "21.0.1");
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new C4657f("Fetch failed: Firebase installation id is null.");
    }

    /* renamed from: c */
    public HttpURLConnection m22914c() {
        try {
            return (HttpURLConnection) new URL(m22910g(this.f7876d, this.f7877e)).openConnection();
        } catch (IOException e) {
            throw new C4658g(e.getMessage());
        }
    }

    /* renamed from: f */
    public final JSONObject m22911f(URLConnection uRLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read();
            if (read != -1) {
                sb.append((char) read);
            } else {
                return new JSONObject(sb.toString());
            }
        }
    }

    /* renamed from: h */
    public final String m22909h() {
        try {
            Context context = this.f7873a;
            byte[] m24781a = C1040a.m24781a(context, context.getPackageName());
            if (m24781a == null) {
                Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f7873a.getPackageName());
                return null;
            }
            return C1051l.m24747b(m24781a, false);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f7873a.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: i */
    public final void m22908i(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f7875c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f7873a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", m22909h());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty(HttpRequestHeader.Accept, "application/json");
    }

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f7873a = context;
        this.f7874b = str;
        this.f7875c = str2;
        this.f7876d = m22912e(str);
        this.f7877e = str3;
        this.f7878f = j;
        this.f7879g = j2;
    }

    /* renamed from: d */
    public static C1433a m22913d(JSONObject jSONObject, Date date) {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        try {
            C1433a.C1435b m22894d = C1433a.m22898g().m22894d(date);
            JSONObject jSONObject3 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException unused) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                m22894d.m22896b(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException unused2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                m22894d.m22895c(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException unused3) {
            }
            if (jSONObject3 != null) {
                m22894d.m22893e(jSONObject3);
            }
            return m22894d.m22897a();
        } catch (JSONException e) {
            throw new C4657f("Fetch failed: fetch response could not be parsed.", e);
        }
    }

    @Keep
    public C1436b.C1437a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date) {
        m22905l(httpURLConnection, str3, str2, map2);
        try {
            try {
                m22906k(httpURLConnection, m22915b(str, str2, map).toString().getBytes("utf-8"));
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    String headerField = httpURLConnection.getHeaderField(HttpResponseHeader.ETag);
                    JSONObject m22911f = m22911f(httpURLConnection);
                    try {
                        httpURLConnection.getInputStream().close();
                    } catch (IOException unused) {
                    }
                    if (!m22916a(m22911f)) {
                        return C1436b.C1437a.m22868a(date);
                    }
                    return C1436b.C1437a.m22867b(m22913d(m22911f, date), headerField);
                }
                throw new C4661j(responseCode, httpURLConnection.getResponseMessage());
            } finally {
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException unused2) {
                }
            }
        } catch (IOException | JSONException e) {
            throw new C4657f("The client had an error while calling the backend!", e);
        }
    }

    /* renamed from: j */
    public final void m22907j(HttpURLConnection httpURLConnection, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }
}

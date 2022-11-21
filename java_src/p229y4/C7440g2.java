package p229y4;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.util.JsonReader;
import android.util.JsonWriter;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.Executor;
import p106k5.C4462a;
import p106k5.C4469d;
import p106k5.InterfaceC4466c;
/* renamed from: y4.g2 */
/* loaded from: classes2.dex */
public final class C7440g2 {

    /* renamed from: a */
    public final Application f37159a;

    /* renamed from: b */
    public final C7425d f37160b;

    /* renamed from: c */
    public final Handler f37161c;

    /* renamed from: d */
    public final Executor f37162d;

    /* renamed from: e */
    public final C7463n f37163e;

    /* renamed from: f */
    public final C7422c0 f37164f;

    /* renamed from: g */
    public final C7498y1 f37165g;

    /* renamed from: h */
    public final C7456k2 f37166h;

    /* renamed from: i */
    public final C7480s1 f37167i;

    public C7440g2(Application application, C7425d c7425d, Handler handler, Executor executor, C7463n c7463n, C7422c0 c7422c0, C7498y1 c7498y1, C7456k2 c7456k2, C7480s1 c7480s1) {
        this.f37159a = application;
        this.f37160b = c7425d;
        this.f37161c = handler;
        this.f37162d = executor;
        this.f37163e = c7463n;
        this.f37164f = c7422c0;
        this.f37165g = c7498y1;
        this.f37166h = c7456k2;
        this.f37167i = c7480s1;
    }

    /* renamed from: a */
    public final /* synthetic */ void m1446a(final InterfaceC4466c.InterfaceC4468b interfaceC4468b) {
        Handler handler = this.f37161c;
        interfaceC4468b.getClass();
        handler.post(new Runnable() { // from class: y4.f2
            @Override // java.lang.Runnable
            public final void run() {
                InterfaceC4466c.InterfaceC4468b.this.mo16340a();
            }
        });
    }

    /* renamed from: c */
    public final void m1444c(final Activity activity, final C4469d c4469d, final InterfaceC4466c.InterfaceC4468b interfaceC4468b, final InterfaceC4466c.InterfaceC4467a interfaceC4467a) {
        this.f37162d.execute(new Runnable() { // from class: y4.b2
            @Override // java.lang.Runnable
            public final void run() {
                C7440g2.this.m1445b(activity, c4469d, interfaceC4468b, interfaceC4467a);
            }
        });
    }

    /* renamed from: d */
    public final C7497y0 m1443d(C7491w0 c7491w0) {
        String userAgentString;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://fundingchoicesmessages.google.com/a/consent").openConnection();
            Application application = this.f37159a;
            if (Build.VERSION.SDK_INT >= 17) {
                userAgentString = WebSettings.getDefaultUserAgent(application);
            } else {
                userAgentString = new WebView(application).getSettings().getUserAgentString();
            }
            httpURLConnection.setRequestProperty(HttpRequestHeader.UserAgent, userAgentString);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod(Net.HttpMethods.POST);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8");
            try {
                JsonWriter jsonWriter = new JsonWriter(outputStreamWriter);
                jsonWriter.beginObject();
                String str = c7491w0.f37287a;
                if (str != null) {
                    jsonWriter.name("admob_app_id");
                    jsonWriter.value(str);
                }
                Boolean bool = c7491w0.f37288b;
                if (bool != null) {
                    jsonWriter.name("is_lat");
                    jsonWriter.value(bool.booleanValue());
                }
                String str2 = c7491w0.f37289c;
                if (str2 != null) {
                    jsonWriter.name("adid");
                    jsonWriter.value(str2);
                }
                C7479s0 c7479s0 = c7491w0.f37290d;
                if (c7479s0 != null) {
                    jsonWriter.name("device_info");
                    jsonWriter.beginObject();
                    int i = c7479s0.f37270c;
                    if (i != 1) {
                        jsonWriter.name("os_type");
                        if (i != 0) {
                            EnumC7476r0 enumC7476r0 = EnumC7476r0.DEBUG_PARAM_UNKNOWN;
                            if (i - 1 != 0) {
                                jsonWriter.value("ANDROID");
                            } else {
                                jsonWriter.value("UNKNOWN");
                            }
                        } else {
                            throw null;
                        }
                    }
                    String str3 = c7479s0.f37268a;
                    if (str3 != null) {
                        jsonWriter.name("model");
                        jsonWriter.value(str3);
                    }
                    Integer num = c7479s0.f37269b;
                    if (num != null) {
                        jsonWriter.name("android_api_level");
                        jsonWriter.value(num);
                    }
                    jsonWriter.endObject();
                }
                String str4 = c7491w0.f37291e;
                if (str4 != null) {
                    jsonWriter.name("language_code");
                    jsonWriter.value(str4);
                }
                Boolean bool2 = c7491w0.f37292f;
                if (bool2 != null) {
                    jsonWriter.name("tag_for_under_age_of_consent");
                    jsonWriter.value(bool2.booleanValue());
                }
                Map<String, String> map = c7491w0.f37293g;
                if (!map.isEmpty()) {
                    jsonWriter.name("stored_infos_map");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        jsonWriter.name(entry.getKey());
                        jsonWriter.value(entry.getValue());
                    }
                    jsonWriter.endObject();
                }
                C7485u0 c7485u0 = c7491w0.f37294h;
                if (c7485u0 != null) {
                    jsonWriter.name("screen_info");
                    jsonWriter.beginObject();
                    Integer num2 = c7485u0.f37277a;
                    if (num2 != null) {
                        jsonWriter.name("width");
                        jsonWriter.value(num2);
                    }
                    Integer num3 = c7485u0.f37278b;
                    if (num3 != null) {
                        jsonWriter.name("height");
                        jsonWriter.value(num3);
                    }
                    Double d = c7485u0.f37279c;
                    if (d != null) {
                        jsonWriter.name("density");
                        jsonWriter.value(d);
                    }
                    List<C7482t0> list = c7485u0.f37280d;
                    if (!list.isEmpty()) {
                        jsonWriter.name("screen_insets");
                        jsonWriter.beginArray();
                        for (C7482t0 c7482t0 : list) {
                            jsonWriter.beginObject();
                            Integer num4 = c7482t0.f37272a;
                            if (num4 != null) {
                                jsonWriter.name("top");
                                jsonWriter.value(num4);
                            }
                            Integer num5 = c7482t0.f37273b;
                            if (num5 != null) {
                                jsonWriter.name("left");
                                jsonWriter.value(num5);
                            }
                            Integer num6 = c7482t0.f37274c;
                            if (num6 != null) {
                                jsonWriter.name("right");
                                jsonWriter.value(num6);
                            }
                            Integer num7 = c7482t0.f37275d;
                            if (num7 != null) {
                                jsonWriter.name("bottom");
                                jsonWriter.value(num7);
                            }
                            jsonWriter.endObject();
                        }
                        jsonWriter.endArray();
                    }
                    jsonWriter.endObject();
                }
                C7473q0 c7473q0 = c7491w0.f37295i;
                if (c7473q0 != null) {
                    jsonWriter.name("app_info");
                    jsonWriter.beginObject();
                    String str5 = c7473q0.f37255a;
                    if (str5 != null) {
                        jsonWriter.name("package_name");
                        jsonWriter.value(str5);
                    }
                    String str6 = c7473q0.f37256b;
                    if (str6 != null) {
                        jsonWriter.name("publisher_display_name");
                        jsonWriter.value(str6);
                    }
                    String str7 = c7473q0.f37257c;
                    if (str7 != null) {
                        jsonWriter.name("version");
                        jsonWriter.value(str7);
                    }
                    jsonWriter.endObject();
                }
                C7488v0 c7488v0 = c7491w0.f37296j;
                if (c7488v0 != null) {
                    jsonWriter.name("sdk_info");
                    jsonWriter.beginObject();
                    String str8 = c7488v0.f37283a;
                    if (str8 != null) {
                        jsonWriter.name("version");
                        jsonWriter.value(str8);
                    }
                    jsonWriter.endObject();
                }
                List<EnumC7476r0> list2 = c7491w0.f37297k;
                if (!list2.isEmpty()) {
                    jsonWriter.name("debug_params");
                    jsonWriter.beginArray();
                    for (EnumC7476r0 enumC7476r02 : list2) {
                        EnumC7476r0 enumC7476r03 = EnumC7476r0.DEBUG_PARAM_UNKNOWN;
                        int ordinal = enumC7476r02.ordinal();
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal != 2) {
                                    if (ordinal != 3) {
                                        if (ordinal == 4) {
                                            jsonWriter.value("PREVIEWING_DEBUG_MESSAGES");
                                        }
                                    } else {
                                        jsonWriter.value("GEO_OVERRIDE_NON_EEA");
                                    }
                                } else {
                                    jsonWriter.value("GEO_OVERRIDE_EEA");
                                }
                            } else {
                                jsonWriter.value("ALWAYS_SHOW");
                            }
                        } else {
                            jsonWriter.value("DEBUG_PARAM_UNKNOWN");
                        }
                    }
                    jsonWriter.endArray();
                }
                jsonWriter.endObject();
                jsonWriter.close();
                outputStreamWriter.close();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    String headerField = httpURLConnection.getHeaderField("x-ump-using-header");
                    if (headerField != null) {
                        C7497y0 m1387a = C7497y0.m1387a(new JsonReader(new StringReader(headerField)));
                        m1387a.f37307a = new Scanner(httpURLConnection.getInputStream()).useDelimiter("\\A").next();
                        return m1387a;
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                    try {
                        bufferedReader.readLine();
                        JsonReader jsonReader = new JsonReader(bufferedReader);
                        C7497y0 m1387a2 = C7497y0.m1387a(jsonReader);
                        jsonReader.close();
                        bufferedReader.close();
                        return m1387a2;
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        }
                        throw th;
                    }
                }
                String next = new Scanner(httpURLConnection.getErrorStream()).useDelimiter("\\A").next();
                StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 31);
                sb.append("Http error code - ");
                sb.append(responseCode);
                sb.append(".\n");
                sb.append(next);
                throw new IOException(sb.toString());
            } catch (Throwable th3) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th4) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                }
                throw th3;
            }
        } catch (SocketTimeoutException e) {
            throw new C7486u1(4, "The server timed out.", e);
        } catch (IOException e2) {
            throw new C7486u1(2, "Error making request.", e2);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m1445b(Activity activity, C4469d c4469d, final InterfaceC4466c.InterfaceC4468b interfaceC4468b, final InterfaceC4466c.InterfaceC4467a interfaceC4467a) {
        String str;
        try {
            C4462a m16339a = c4469d.m16339a();
            if (m16339a == null || !m16339a.m16345b()) {
                String m1374a = C7500z0.m1374a(this.f37159a);
                StringBuilder sb = new StringBuilder(String.valueOf(m1374a).length() + 95);
                sb.append("Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\"");
                sb.append(m1374a);
                sb.append("\") to set this as a debug device.");
                Log.i("UserMessagingPlatform", sb.toString());
            }
            C7417b m1430a = new C7452j2(this.f37166h, m1443d(this.f37165g.m1383d(activity, c4469d))).m1430a();
            this.f37163e.m1411e(m1430a.f37122a);
            this.f37164f.m1456b(m1430a.f37123b);
            this.f37167i.m1398a().execute(new Runnable() { // from class: y4.c2
                @Override // java.lang.Runnable
                public final void run() {
                    C7440g2.this.m1446a(interfaceC4468b);
                }
            });
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(Log.getStackTraceString(e));
            if (valueOf.length() != 0) {
                str = "Caught exception when trying to request consent info update: ".concat(valueOf);
            } else {
                str = new String("Caught exception when trying to request consent info update: ");
            }
            final C7486u1 c7486u1 = new C7486u1(1, str);
            this.f37161c.post(new Runnable() { // from class: y4.e2
                @Override // java.lang.Runnable
                public final void run() {
                    InterfaceC4466c.InterfaceC4467a.this.mo16341a(c7486u1.m1394a());
                }
            });
        } catch (C7486u1 e2) {
            this.f37161c.post(new Runnable() { // from class: y4.d2
                @Override // java.lang.Runnable
                public final void run() {
                    InterfaceC4466c.InterfaceC4467a.this.mo16341a(e2.m1394a());
                }
            });
        }
    }
}

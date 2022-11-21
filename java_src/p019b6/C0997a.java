package p019b6;

import com.badlogic.gdx.Net;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import net.bytebuddy.description.type.TypeDescription;
import p196u5.C6930f;
/* renamed from: b6.a */
/* loaded from: classes2.dex */
public class C0997a {

    /* renamed from: a */
    public final String f2477a;

    /* renamed from: b */
    public final Map<String, String> f2478b;

    /* renamed from: c */
    public final Map<String, String> f2479c = new HashMap();

    /* renamed from: c */
    public C0999c m24850c() {
        HttpsURLConnection httpsURLConnection;
        InputStream inputStream = null;
        String m24848e = null;
        inputStream = null;
        try {
            String m24851b = m24851b(this.f2477a, this.f2478b);
            C6930f.m3016f().m3013i("GET Request URL: " + m24851b);
            httpsURLConnection = (HttpsURLConnection) new URL(m24851b).openConnection();
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod(Net.HttpMethods.GET);
                for (Map.Entry<String, String> entry : this.f2479c.entrySet()) {
                    httpsURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        m24848e = m24848e(inputStream2);
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new C0999c(responseCode, m24848e);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection = null;
        }
    }

    /* renamed from: d */
    public C0997a m24849d(String str, String str2) {
        this.f2479c.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public final String m24852a(Map<String, String> map) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        Map.Entry<String, String> next = it.next();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(next.getKey());
        sb2.append("=");
        if (next.getValue() == null) {
            str = "";
        } else {
            str = next.getValue();
        }
        sb2.append(str);
        sb.append(sb2.toString());
        while (it.hasNext()) {
            Map.Entry<String, String> next2 = it.next();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("&");
            sb3.append(next2.getKey());
            sb3.append("=");
            if (next2.getValue() == null) {
                str2 = "";
            } else {
                str2 = next2.getValue();
            }
            sb3.append(str2);
            sb.append(sb3.toString());
        }
        return sb.toString();
    }

    /* renamed from: e */
    public final String m24848e(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        char[] cArr = new char[8192];
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                sb.append(cArr, 0, read);
            } else {
                return sb.toString();
            }
        }
    }

    public C0997a(String str, Map<String, String> map) {
        this.f2477a = str;
        this.f2478b = map;
    }

    /* renamed from: b */
    public final String m24851b(String str, Map<String, String> map) {
        String m24852a = m24852a(map);
        if (m24852a.isEmpty()) {
            return str;
        }
        if (str.contains(TypeDescription.Generic.OfWildcardType.SYMBOL)) {
            if (!str.endsWith("&")) {
                m24852a = "&" + m24852a;
            }
            return str + m24852a;
        }
        return str + TypeDescription.Generic.OfWildcardType.SYMBOL + m24852a;
    }
}

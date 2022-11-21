package p071g6;

import android.text.TextUtils;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import net.bytebuddy.implementation.bind.annotation.FieldProxy;
import org.json.JSONObject;
import p019b6.C0997a;
import p019b6.C0998b;
import p019b6.C0999c;
import p062f6.C3525f;
import p196u5.C6930f;
import p222x5.C7367l;
/* renamed from: g6.a */
/* loaded from: classes2.dex */
public class C3905a implements InterfaceC3906b {

    /* renamed from: a */
    public final String f17146a;

    /* renamed from: b */
    public final C0998b f17147b;

    /* renamed from: c */
    public final C6930f f17148c;

    public C3905a(String str, C0998b c0998b) {
        this(str, c0998b, C6930f.m3016f());
    }

    /* renamed from: c */
    public final void m17805c(C0997a c0997a, String str, String str2) {
        if (str2 != null) {
            c0997a.m24849d(str, str2);
        }
    }

    /* renamed from: h */
    public boolean m17800h(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    public C3905a(String str, C0998b c0998b, C6930f c6930f) {
        if (str != null) {
            this.f17148c = c6930f;
            this.f17147b = c0998b;
            this.f17146a = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }

    @Override // p071g6.InterfaceC3906b
    /* renamed from: a */
    public JSONObject mo17799a(C3525f c3525f, boolean z) {
        if (z) {
            try {
                Map<String, String> m17802f = m17802f(c3525f);
                C0997a m17806b = m17806b(m17804d(m17802f), c3525f);
                C6930f c6930f = this.f17148c;
                c6930f.m3020b("Requesting settings from " + this.f17146a);
                C6930f c6930f2 = this.f17148c;
                c6930f2.m3013i("Settings query params were: " + m17802f);
                return m17801g(m17806b.m24850c());
            } catch (IOException e) {
                this.f17148c.m3017e("Settings request failed.", e);
                return null;
            }
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    /* renamed from: b */
    public final C0997a m17806b(C0997a c0997a, C3525f c3525f) {
        m17805c(c0997a, "X-CRASHLYTICS-GOOGLE-APP-ID", c3525f.f16004a);
        m17805c(c0997a, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        m17805c(c0997a, "X-CRASHLYTICS-API-CLIENT-VERSION", C7367l.m1678i());
        m17805c(c0997a, HttpRequestHeader.Accept, "application/json");
        m17805c(c0997a, "X-CRASHLYTICS-DEVICE-MODEL", c3525f.f16005b);
        m17805c(c0997a, "X-CRASHLYTICS-OS-BUILD-VERSION", c3525f.f16006c);
        m17805c(c0997a, "X-CRASHLYTICS-OS-DISPLAY-VERSION", c3525f.f16007d);
        m17805c(c0997a, "X-CRASHLYTICS-INSTALLATION-ID", c3525f.f16008e.mo1602a());
        return c0997a;
    }

    /* renamed from: d */
    public C0997a m17804d(Map<String, String> map) {
        C0997a m24847a = this.f17147b.m24847a(this.f17146a, map);
        return m24847a.m24849d(HttpRequestHeader.UserAgent, "Crashlytics Android SDK/" + C7367l.m1678i()).m24849d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    /* renamed from: e */
    public final JSONObject m17803e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            C6930f c6930f = this.f17148c;
            c6930f.m3010l("Failed to parse settings JSON from " + this.f17146a, e);
            C6930f c6930f2 = this.f17148c;
            c6930f2.m3011k("Settings response " + str);
            return null;
        }
    }

    /* renamed from: f */
    public final Map<String, String> m17802f(C3525f c3525f) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", c3525f.f16011h);
        hashMap.put("display_version", c3525f.f16010g);
        hashMap.put("source", Integer.toString(c3525f.f16012i));
        String str = c3525f.f16009f;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put(FieldProxy.Binder.AccessorProxy.FIELD_NAME, str);
        }
        return hashMap;
    }

    /* renamed from: g */
    public JSONObject m17801g(C0999c c0999c) {
        int m24845b = c0999c.m24845b();
        C6930f c6930f = this.f17148c;
        c6930f.m3013i("Settings response code was: " + m24845b);
        if (m17800h(m24845b)) {
            return m17803e(c0999c.m24846a());
        }
        C6930f c6930f2 = this.f17148c;
        c6930f2.m3018d("Settings request failed; (status: " + m24845b + ") from " + this.f17146a);
        return null;
    }
}

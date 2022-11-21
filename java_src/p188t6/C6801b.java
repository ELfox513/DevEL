package p188t6;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
import p124m5.C4638c;
/* renamed from: t6.b */
/* loaded from: classes2.dex */
public class C6801b {

    /* renamed from: c */
    public static final String[] f35499c = {"*", "FCM", "GCM", ""};

    /* renamed from: a */
    public final SharedPreferences f35500a;

    /* renamed from: b */
    public final String f35501b;

    /* renamed from: a */
    public final String m3418a(String str, String str2) {
        return "|T|" + str + "|" + str2;
    }

    /* renamed from: d */
    public final String m3415d(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            return null;
        }
    }

    /* renamed from: e */
    public final PublicKey m3414e(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("ContentValues", "Invalid key stored " + e);
            return null;
        }
    }

    /* renamed from: f */
    public String m3413f() {
        synchronized (this.f35500a) {
            String m3412g = m3412g();
            if (m3412g != null) {
                return m3412g;
            }
            return m3411h();
        }
    }

    /* renamed from: g */
    public final String m3412g() {
        String string;
        synchronized (this.f35500a) {
            string = this.f35500a.getString("|S|id", null);
        }
        return string;
    }

    /* renamed from: h */
    public final String m3411h() {
        synchronized (this.f35500a) {
            String string = this.f35500a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey m3414e = m3414e(string);
            if (m3414e == null) {
                return null;
            }
            return m3416c(m3414e);
        }
    }

    /* renamed from: i */
    public String m3410i() {
        synchronized (this.f35500a) {
            for (String str : f35499c) {
                String string = this.f35500a.getString(m3418a(this.f35501b, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = m3415d(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }

    public C6801b(C4638c c4638c) {
        this.f35500a = c4638c.m15899h().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f35501b = m3417b(c4638c);
    }

    /* renamed from: b */
    public static String m3417b(C4638c c4638c) {
        String m15875d = c4638c.m15896k().m15875d();
        if (m15875d != null) {
            return m15875d;
        }
        String m15876c = c4638c.m15896k().m15876c();
        if (!m15876c.startsWith("1:") && !m15876c.startsWith("2:")) {
            return m15876c;
        }
        String[] split = m15876c.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    /* renamed from: c */
    public static String m3416c(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }
}

package p229y4;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: y4.z0 */
/* loaded from: classes2.dex */
public final class C7500z0 {

    /* renamed from: a */
    public static String f37328a;

    /* renamed from: c */
    public static String m1372c(String str) {
        for (int i = 0; i < 3; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format("%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return "";
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return "";
    }

    /* renamed from: a */
    public static synchronized String m1374a(Context context) {
        String str;
        String string;
        synchronized (C7500z0.class) {
            if (f37328a == null) {
                ContentResolver contentResolver = context.getContentResolver();
                if (contentResolver == null) {
                    string = null;
                } else {
                    string = Settings.Secure.getString(contentResolver, "android_id");
                }
                f37328a = m1372c((string == null || m1373b()) ? "emulator" : "emulator");
            }
            str = f37328a;
        }
        return str;
    }

    /* renamed from: b */
    public static boolean m1373b() {
        String str = Build.FINGERPRINT;
        if (!str.startsWith("generic") && !str.startsWith("unknown")) {
            String str2 = Build.MODEL;
            if (!str2.contains("google_sdk") && !str2.contains("Emulator") && !str2.contains("Android SDK built for x86") && !Build.MANUFACTURER.contains("Genymotion")) {
                if ((!Build.BRAND.startsWith("generic") || !Build.DEVICE.startsWith("generic")) && !"google_sdk".equals(Build.PRODUCT)) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }
}

package p168r4;

import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
/* renamed from: r4.dx2 */
/* loaded from: classes2.dex */
public final class dx2 {

    /* renamed from: c */
    public static final byte[] f22676c = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};

    /* renamed from: d */
    public static final byte[] f22677d = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};

    /* renamed from: a */
    public final byte[] f22678a = f22677d;

    /* renamed from: b */
    public final byte[] f22679b = f22676c;

    /* renamed from: a */
    public final boolean m11898a(File file) {
        try {
            X509Certificate[][] m6212a = v74.m6212a(file.getAbsolutePath());
            if (m6212a.length == 1) {
                byte[] digest = MessageDigest.getInstance("SHA-256").digest(m6212a[0][0].getEncoded());
                if (Arrays.equals(this.f22679b, digest)) {
                    return true;
                }
                if (!"user".equals(Build.TYPE) && Arrays.equals(this.f22678a, digest)) {
                    return true;
                }
                return false;
            }
            throw new GeneralSecurityException("APK has more than one signature.");
        } catch (IOException e) {
            e = e;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (RuntimeException e2) {
            e = e2;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (s74 e3) {
            throw new GeneralSecurityException("Package is not signed", e3);
        }
    }
}

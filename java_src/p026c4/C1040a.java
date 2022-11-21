package p026c4;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import p042d4.C3325e;
/* renamed from: c4.a */
/* loaded from: classes.dex */
public class C1040a {
    @RecentlyNullable
    /* renamed from: b */
    public static MessageDigest m24780b(@RecentlyNonNull String str) {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    @RecentlyNullable
    @Deprecated
    /* renamed from: a */
    public static byte[] m24781a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        MessageDigest m24780b;
        PackageInfo m19143f = C3325e.m19140a(context).m19143f(str, 64);
        Signature[] signatureArr = m19143f.signatures;
        if (signatureArr != null && signatureArr.length == 1 && (m24780b = m24780b("SHA1")) != null) {
            return m24780b.digest(m19143f.signatures[0].toByteArray());
        }
        return null;
    }
}

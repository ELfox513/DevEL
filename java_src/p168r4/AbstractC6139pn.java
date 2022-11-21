package p168r4;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: r4.pn */
/* loaded from: classes2.dex */
public abstract class AbstractC6139pn {

    /* renamed from: b */
    public static MessageDigest f29530b;

    /* renamed from: a */
    public final Object f29531a = new Object();

    /* renamed from: a */
    public abstract byte[] mo4628a(String str);

    /* renamed from: b */
    public final MessageDigest m8247b() {
        synchronized (this.f29531a) {
            MessageDigest messageDigest = f29530b;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    f29530b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return f29530b;
        }
    }
}

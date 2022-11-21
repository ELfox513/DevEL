package p168r4;

import android.os.Build;
import java.util.HashSet;
/* renamed from: r4.z4 */
/* loaded from: classes2.dex */
public final class C6490z4 {
    @Deprecated

    /* renamed from: a */
    public static final String f34320a;

    /* renamed from: b */
    public static final HashSet<String> f34321b;

    /* renamed from: c */
    public static final String f34322c;

    /* renamed from: a */
    public static synchronized String m4454a() {
        String str;
        synchronized (C6490z4.class) {
            str = f34322c;
        }
        return str;
    }

    static {
        String str = Build.VERSION.RELEASE;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 57);
        sb.append("ExoPlayerLib/2.15.0 (Linux; Android ");
        sb.append(str);
        sb.append(") ExoPlayerLib/2.15.0");
        f34320a = sb.toString();
        f34321b = new HashSet<>();
        f34322c = "goog.exo.core";
    }
}

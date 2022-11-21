package p168r4;

import android.os.StrictMode;
/* renamed from: r4.tz */
/* loaded from: classes2.dex */
public final class C6299tz {
    /* renamed from: a */
    public static <T> T m6685a(m13<T> m13Var) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return m13Var.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}

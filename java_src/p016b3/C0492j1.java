package p016b3;

import android.content.Context;
import android.os.StrictMode;
import java.util.concurrent.Callable;
import p168r4.cm0;
import p168r4.vf0;
/* renamed from: b3.j1 */
/* loaded from: classes.dex */
public final class C0492j1 {
    @Deprecated
    /* renamed from: a */
    public static <T> T m26361a(Context context, Callable<T> callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            T call = callable.call();
            StrictMode.setThreadPolicy(threadPolicy);
            return call;
        } catch (Throwable th) {
            cm0.m12439d("Unexpected exception.", th);
            vf0.m6164c(context).mo5332b(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }
}

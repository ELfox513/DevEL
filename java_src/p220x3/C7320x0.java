package p220x3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import p042d4.C3325e;
/* renamed from: x3.x0 */
/* loaded from: classes.dex */
public final class C7320x0 {

    /* renamed from: a */
    public static final Object f36808a = new Object();

    /* renamed from: b */
    public static boolean f36809b;

    /* renamed from: c */
    public static String f36810c;

    /* renamed from: d */
    public static int f36811d;

    /* renamed from: a */
    public static int m1841a(Context context) {
        m1840b(context);
        return f36811d;
    }

    /* renamed from: b */
    public static void m1840b(Context context) {
        Bundle bundle;
        synchronized (f36808a) {
            if (f36809b) {
                return;
            }
            f36809b = true;
            try {
                bundle = C3325e.m19140a(context).m19146c(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            f36810c = bundle.getString("com.google.app.id");
            f36811d = bundle.getInt("com.google.android.gms.version");
        }
    }
}

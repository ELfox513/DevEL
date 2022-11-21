package p163r;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.List;
import p163r.C5481o;
/* renamed from: r.v0 */
/* loaded from: classes.dex */
public class C5501v0 {

    /* renamed from: b */
    public static Field f20240b;

    /* renamed from: c */
    public static boolean f20241c;

    /* renamed from: a */
    public static final Object f20239a = new Object();

    /* renamed from: d */
    public static final Object f20242d = new Object();

    /* renamed from: e */
    public static Bundle[] m13176e(C5514z0[] c5514z0Arr) {
        if (c5514z0Arr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[c5514z0Arr.length];
        for (int i = 0; i < c5514z0Arr.length; i++) {
            C5514z0 c5514z0 = c5514z0Arr[i];
            bundleArr[i] = m13177d(null);
        }
        return bundleArr;
    }

    /* renamed from: b */
    public static Bundle m13179b(C5481o.C5482a c5482a) {
        int i;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        IconCompat m13233e = c5482a.m13233e();
        if (m13233e != null) {
            i = m13233e.m27220c();
        } else {
            i = 0;
        }
        bundle2.putInt("icon", i);
        bundle2.putCharSequence("title", c5482a.m13229i());
        bundle2.putParcelable("actionIntent", c5482a.m13237a());
        if (c5482a.m13234d() != null) {
            bundle = new Bundle(c5482a.m13234d());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c5482a.m13236b());
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray("remoteInputs", m13176e(c5482a.m13232f()));
        bundle2.putBoolean("showsUserInterface", c5482a.m13230h());
        bundle2.putInt("semanticAction", c5482a.m13231g());
        return bundle2;
    }

    /* renamed from: c */
    public static Bundle m13178c(Notification notification) {
        synchronized (f20239a) {
            if (f20241c) {
                return null;
            }
            try {
                if (f20240b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f20241c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f20240b = declaredField;
                }
                Bundle bundle = (Bundle) f20240b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f20240b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f20241c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f20241c = true;
                return null;
            }
        }
    }

    /* renamed from: d */
    public static Bundle m13177d(C5514z0 c5514z0) {
        new Bundle();
        throw null;
    }

    /* renamed from: a */
    public static SparseArray<Bundle> m13180a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    /* renamed from: f */
    public static Bundle m13175f(Notification.Builder builder, C5481o.C5482a c5482a) {
        int i;
        IconCompat m13233e = c5482a.m13233e();
        if (m13233e != null) {
            i = m13233e.m27220c();
        } else {
            i = 0;
        }
        builder.addAction(i, c5482a.m13229i(), c5482a.m13237a());
        Bundle bundle = new Bundle(c5482a.m13234d());
        if (c5482a.m13232f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", m13176e(c5482a.m13232f()));
        }
        if (c5482a.m13235c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", m13176e(c5482a.m13235c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", c5482a.m13236b());
        return bundle;
    }
}

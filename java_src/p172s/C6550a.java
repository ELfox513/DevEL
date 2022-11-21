package p172s;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import java.io.File;
import p190u.C6820h;
/* renamed from: s.a */
/* loaded from: classes.dex */
public class C6550a {

    /* renamed from: a */
    public static final Object f34860a = new Object();

    /* renamed from: b */
    public static final Object f34861b = new Object();

    /* renamed from: s.a$a */
    /* loaded from: classes.dex */
    public static class C6551a {
        /* renamed from: a */
        public static void m3931a(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        /* renamed from: b */
        public static void m3930b(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    /* renamed from: s.a$b */
    /* loaded from: classes.dex */
    public static class C6552b {
        /* renamed from: a */
        public static File m3929a(Context context) {
            File codeCacheDir;
            codeCacheDir = context.getCodeCacheDir();
            return codeCacheDir;
        }

        /* renamed from: b */
        public static Drawable m3928b(Context context, int i) {
            Drawable drawable;
            drawable = context.getDrawable(i);
            return drawable;
        }

        /* renamed from: c */
        public static File m3927c(Context context) {
            File noBackupFilesDir;
            noBackupFilesDir = context.getNoBackupFilesDir();
            return noBackupFilesDir;
        }
    }

    /* renamed from: s.a$c */
    /* loaded from: classes.dex */
    public static class C6553c {
        /* renamed from: a */
        public static int m3926a(Context context, int i) {
            int color;
            color = context.getColor(i);
            return color;
        }

        /* renamed from: b */
        public static ColorStateList m3925b(Context context, int i) {
            ColorStateList colorStateList;
            colorStateList = context.getColorStateList(i);
            return colorStateList;
        }

        /* renamed from: c */
        public static <T> T m3924c(Context context, Class<T> cls) {
            Object systemService;
            systemService = context.getSystemService(cls);
            return (T) systemService;
        }

        /* renamed from: d */
        public static String m3923d(Context context, Class<?> cls) {
            String systemServiceName;
            systemServiceName = context.getSystemServiceName(cls);
            return systemServiceName;
        }
    }

    /* renamed from: s.a$d */
    /* loaded from: classes.dex */
    public static class C6554d {
        /* renamed from: a */
        public static Context m3922a(Context context) {
            Context createDeviceProtectedStorageContext;
            createDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            return createDeviceProtectedStorageContext;
        }

        /* renamed from: b */
        public static File m3921b(Context context) {
            File dataDir;
            dataDir = context.getDataDir();
            return dataDir;
        }

        /* renamed from: c */
        public static boolean m3920c(Context context) {
            boolean isDeviceProtectedStorage;
            isDeviceProtectedStorage = context.isDeviceProtectedStorage();
            return isDeviceProtectedStorage;
        }
    }

    /* renamed from: s.a$e */
    /* loaded from: classes.dex */
    public static class C6555e {
        /* renamed from: a */
        public static ComponentName m3919a(Context context, Intent intent) {
            ComponentName startForegroundService;
            startForegroundService = context.startForegroundService(intent);
            return startForegroundService;
        }
    }

    /* renamed from: d */
    public static ColorStateList m3936d(Context context, int i) {
        return C6820h.m3315c(context.getResources(), i, context.getTheme());
    }

    /* renamed from: f */
    public static boolean m3934f(Context context, Intent[] intentArr, Bundle bundle) {
        C6551a.m3931a(context, intentArr, bundle);
        return true;
    }

    /* renamed from: g */
    public static void m3933g(Context context, Intent intent, Bundle bundle) {
        C6551a.m3930b(context, intent, bundle);
    }

    /* renamed from: a */
    public static int m3939a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* renamed from: b */
    public static Context m3938b(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return C6554d.m3922a(context);
        }
        return null;
    }

    /* renamed from: c */
    public static int m3937c(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return C6553c.m3926a(context, i);
        }
        return context.getResources().getColor(i);
    }

    /* renamed from: e */
    public static Drawable m3935e(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return C6552b.m3928b(context, i);
        }
        return context.getResources().getDrawable(i);
    }

    /* renamed from: h */
    public static void m3932h(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            C6555e.m3919a(context, intent);
        } else {
            context.startService(intent);
        }
    }
}

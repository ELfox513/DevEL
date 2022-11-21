package p066g1;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.C0376a;
import java.lang.reflect.Method;
import java.util.List;
import p209w0.AbstractC7114j;
/* renamed from: g1.h */
/* loaded from: classes.dex */
public class C3555h {

    /* renamed from: a */
    public static final String f16091a = AbstractC7114j.m2489f("ProcessUtils");

    @SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
    /* renamed from: a */
    public static String m18618a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        Object invoke;
        String processName;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            processName = Application.getProcessName();
            return processName;
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread", false, C3555h.class.getClassLoader());
            if (i >= 18) {
                Method declaredMethod = cls.getDeclaredMethod("currentProcessName", new Class[0]);
                declaredMethod.setAccessible(true);
                invoke = declaredMethod.invoke(null, new Object[0]);
            } else {
                Method declaredMethod2 = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = cls.getDeclaredMethod("getProcessName", new Class[0]);
                declaredMethod3.setAccessible(true);
                invoke = declaredMethod3.invoke(declaredMethod2.invoke(null, new Object[0]), new Object[0]);
            }
            if (invoke instanceof String) {
                return (String) invoke;
            }
        } catch (Throwable th) {
            AbstractC7114j.m2491c().mo2488a(f16091a, "Unable to check ActivityThread for processName", th);
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && !runningAppProcesses.isEmpty()) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m18617b(Context context, C0376a c0376a) {
        String m18618a = m18618a(context);
        if (!TextUtils.isEmpty(c0376a.m26680c())) {
            return TextUtils.equals(m18618a, c0376a.m26680c());
        }
        return TextUtils.equals(m18618a, context.getApplicationInfo().processName);
    }
}

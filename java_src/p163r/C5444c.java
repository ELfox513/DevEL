package p163r;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Arrays;
import p172s.C6550a;
/* renamed from: r.c */
/* loaded from: classes.dex */
public class C5444c extends C6550a {

    /* renamed from: c */
    public static InterfaceC5448d f20132c;

    /* renamed from: r.c$a */
    /* loaded from: classes.dex */
    public class RunnableC5445a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String[] f20133a;

        /* renamed from: b */
        public final /* synthetic */ Activity f20134b;

        /* renamed from: d */
        public final /* synthetic */ int f20135d;

        public RunnableC5445a(String[] strArr, Activity activity, int i) {
            this.f20133a = strArr;
            this.f20134b = activity;
            this.f20135d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f20133a.length];
            PackageManager packageManager = this.f20134b.getPackageManager();
            String packageName = this.f20134b.getPackageName();
            int length = this.f20133a.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.f20133a[i], packageName);
            }
            ((InterfaceC5447c) this.f20134b).onRequestPermissionsResult(this.f20135d, this.f20133a, iArr);
        }
    }

    /* renamed from: r.c$b */
    /* loaded from: classes.dex */
    public class RunnableC5446b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Activity f20136a;

        public RunnableC5446b(Activity activity) {
            this.f20136a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f20136a.isFinishing() && !C5451d.m13270i(this.f20136a)) {
                this.f20136a.recreate();
            }
        }
    }

    /* renamed from: r.c$c */
    /* loaded from: classes.dex */
    public interface InterfaceC5447c {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: r.c$d */
    /* loaded from: classes.dex */
    public interface InterfaceC5448d {
        /* renamed from: a */
        boolean m13282a(Activity activity, int i, int i2, Intent intent);

        /* renamed from: b */
        boolean m13281b(Activity activity, String[] strArr, int i);
    }

    /* renamed from: r.c$e */
    /* loaded from: classes.dex */
    public interface InterfaceC5449e {
        /* renamed from: a */
        void mo13280a(int i);
    }

    /* renamed from: i */
    public static void m13289i(Activity activity) {
        activity.finishAffinity();
    }

    /* renamed from: j */
    public static InterfaceC5448d m13288j() {
        return f20132c;
    }

    /* renamed from: n */
    public static void m13284n(Activity activity, Intent intent, int i, Bundle bundle) {
        activity.startActivityForResult(intent, i, bundle);
    }

    /* renamed from: o */
    public static void m13283o(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    /* renamed from: k */
    public static void m13287k(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            activity.recreate();
        } else if (i <= 23) {
            new Handler(activity.getMainLooper()).post(new RunnableC5446b(activity));
        } else if (!C5451d.m13270i(activity)) {
            activity.recreate();
        }
    }

    /* renamed from: l */
    public static void m13286l(Activity activity, String[] strArr, int i) {
        InterfaceC5448d interfaceC5448d = f20132c;
        if (interfaceC5448d != null && interfaceC5448d.m13281b(activity, strArr, i)) {
            return;
        }
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof InterfaceC5449e) {
                ((InterfaceC5449e) activity).mo13280a(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof InterfaceC5447c) {
            new Handler(Looper.getMainLooper()).post(new RunnableC5445a(strArr, activity, i));
        }
    }

    /* renamed from: m */
    public static boolean m13285m(Activity activity, String str) {
        boolean shouldShowRequestPermissionRationale;
        if (Build.VERSION.SDK_INT >= 23) {
            shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(str);
            return shouldShowRequestPermissionRationale;
        }
        return false;
    }
}

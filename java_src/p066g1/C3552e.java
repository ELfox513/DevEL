package p066g1;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import p209w0.AbstractC7114j;
/* renamed from: g1.e */
/* loaded from: classes.dex */
public class C3552e {

    /* renamed from: a */
    public static final String f16089a = AbstractC7114j.m2489f("PackageManagerHelper");

    /* renamed from: a */
    public static void m18623a(Context context, Class<?> cls, boolean z) {
        int i;
        Object obj;
        try {
            PackageManager packageManager = context.getPackageManager();
            ComponentName componentName = new ComponentName(context, cls.getName());
            if (z) {
                i = 1;
            } else {
                i = 2;
            }
            packageManager.setComponentEnabledSetting(componentName, i, 1);
            AbstractC7114j m2491c = AbstractC7114j.m2491c();
            String str = f16089a;
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            if (!z) {
                obj = "disabled";
            } else {
                obj = "enabled";
            }
            objArr[1] = obj;
            m2491c.mo2488a(str, String.format("%s %s", objArr), new Throwable[0]);
        } catch (Exception e) {
            AbstractC7114j m2491c2 = AbstractC7114j.m2491c();
            String str2 = f16089a;
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            objArr2[1] = z ? "enabled" : "disabled";
            m2491c2.mo2488a(str2, String.format("%s could not be %s", objArr2), e);
        }
    }
}

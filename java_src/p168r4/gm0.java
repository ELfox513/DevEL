package p168r4;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* renamed from: r4.gm0 */
/* loaded from: classes2.dex */
public final class gm0 {
    /* renamed from: b */
    public static Context m11108b(Context context) {
        return m11107c(context).m23006b();
    }

    /* renamed from: c */
    public static DynamiteModule m11107c(Context context) {
        try {
            return DynamiteModule.m23003e(context, DynamiteModule.f7762b, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new fm0(e);
        }
    }

    /* renamed from: a */
    public static <T> T m11109a(Context context, String str, em0<IBinder, T> em0Var) {
        try {
            return em0Var.mo5793a(m11107c(context).m23004d(str));
        } catch (Exception e) {
            throw new fm0(e);
        }
    }
}

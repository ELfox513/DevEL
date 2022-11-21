package p022c0;

import android.os.Build;
import java.util.Arrays;
/* renamed from: c0.e */
/* loaded from: classes.dex */
public class C1022e {
    /* renamed from: a */
    public static boolean m24813a(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return C1021d.m24814a(obj, obj2);
        }
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    /* renamed from: b */
    public static int m24812b(Object... objArr) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Arrays.hashCode(objArr);
        }
        return Arrays.hashCode(objArr);
    }
}

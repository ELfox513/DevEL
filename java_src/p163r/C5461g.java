package p163r;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
/* renamed from: r.g */
/* loaded from: classes.dex */
public final class C5461g {
    /* renamed from: a */
    public static int m13264a(Context context, String str, String str2) {
        Object systemService;
        int noteProxyOpNoThrow;
        if (Build.VERSION.SDK_INT >= 23) {
            systemService = context.getSystemService(AppOpsManager.class);
            noteProxyOpNoThrow = ((AppOpsManager) systemService).noteProxyOpNoThrow(str, str2);
            return noteProxyOpNoThrow;
        }
        return 1;
    }

    /* renamed from: b */
    public static String m13263b(String str) {
        String permissionToOp;
        if (Build.VERSION.SDK_INT >= 23) {
            permissionToOp = AppOpsManager.permissionToOp(str);
            return permissionToOp;
        }
        return null;
    }
}

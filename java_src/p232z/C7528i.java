package p232z;

import android.content.Context;
import android.os.Build;
import android.p010os.UserManager;
/* renamed from: z.i */
/* loaded from: classes.dex */
public class C7528i {
    /* renamed from: a */
    public static boolean m1297a(Context context) {
        Object systemService;
        boolean isUserUnlocked;
        if (Build.VERSION.SDK_INT >= 24) {
            systemService = context.getSystemService(UserManager.class);
            isUserUnlocked = ((UserManager) systemService).isUserUnlocked();
            return isUserUnlocked;
        }
        return true;
    }
}

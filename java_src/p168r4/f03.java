package p168r4;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
/* renamed from: r4.f03 */
/* loaded from: classes2.dex */
public final class f03 {

    /* renamed from: a */
    public static final int f23235a;

    /* renamed from: b */
    public static final ClipData f23236b;

    static {
        f23235a = Build.VERSION.SDK_INT > 22 ? 67108864 : 0;
        f23236b = ClipData.newIntent("", new Intent());
    }

    /* renamed from: b */
    public static boolean m11649b(int i, int i2) {
        return (i & i2) == i2;
    }

    /* renamed from: a */
    public static PendingIntent m11650a(Context context, int i, Intent intent, int i2, int i3) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if ((i2 & 95) == 0) {
            z = true;
        } else {
            z = false;
        }
        z03.m4496a(z, "Cannot set any dangerous parts of intent to be mutable.");
        if (intent.getComponent() != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        z03.m4496a(z2, "Must set component on Intent.");
        if (m11649b(0, 1)) {
            z03.m4496a(!m11649b(i2, 67108864), "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.");
        } else {
            if (Build.VERSION.SDK_INT >= 23 && !m11649b(i2, 67108864)) {
                z3 = false;
            }
            z03.m4496a(z3, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.");
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !m11649b(i2, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!m11649b(0, 3) && intent2.getAction() == null) {
                intent2.setAction("");
            }
            if (!m11649b(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory("");
            }
            if (!m11649b(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!m11649b(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(f23236b);
            }
        }
        return PendingIntent.getService(context, 0, intent2, i2);
    }
}

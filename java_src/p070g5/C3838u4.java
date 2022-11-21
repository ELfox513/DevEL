package p070g5;

import android.content.Context;
import android.content.res.Resources;
import p185t3.C6759o;
/* renamed from: g5.u4 */
/* loaded from: classes2.dex */
public final class C3838u4 {
    /* renamed from: b */
    public static final String m17960b(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier != 0) {
            try {
            } catch (Resources.NotFoundException unused) {
                return null;
            }
        }
        return resources.getString(identifier);
    }

    /* renamed from: a */
    public static String m17961a(Context context) {
        try {
            return context.getResources().getResourcePackageName(C6759o.f35439a);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }
}

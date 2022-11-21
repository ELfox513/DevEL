package p026c4;

import android.util.Base64;
import androidx.annotation.RecentlyNonNull;
/* renamed from: c4.c */
/* loaded from: classes.dex */
public final class C1042c {
    @RecentlyNonNull
    /* renamed from: a */
    public static String m24776a(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static String m24775b(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}

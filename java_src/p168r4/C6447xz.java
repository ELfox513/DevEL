package p168r4;

import android.text.TextUtils;
@Deprecated
/* renamed from: r4.xz */
/* loaded from: classes2.dex */
public final class C6447xz {
    /* renamed from: a */
    public static final void m4946a(C6410wz c6410wz, C6336uz c6336uz) {
        if (c6336uz.m6290b() != null) {
            if (!TextUtils.isEmpty(c6336uz.m6289c())) {
                c6410wz.m5542a(c6336uz.m6290b(), c6336uz.m6289c(), c6336uz.m6291a(), c6336uz.m6288d());
                return;
            }
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}

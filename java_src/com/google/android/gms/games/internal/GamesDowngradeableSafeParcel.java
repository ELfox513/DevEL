package com.google.android.gms.games.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import p026c4.C1050k;
/* loaded from: classes.dex */
public abstract class GamesDowngradeableSafeParcel extends DowngradeableSafeParcel {
    /* renamed from: a1 */
    public static boolean m22980a1(@RecentlyNonNull Integer num) {
        if (num == null) {
            return false;
        }
        return C1050k.m24749a(num.intValue());
    }
}

package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p228y3.AbstractC7408a;
/* loaded from: classes.dex */
public abstract class DowngradeableSafeParcel extends AbstractC7408a implements ReflectedParcelable {

    /* renamed from: b */
    public static final Object f7754b = new Object();

    /* renamed from: a */
    public boolean f7755a = false;

    /* renamed from: Z0 */
    public boolean m23009Z0() {
        return this.f7755a;
    }

    /* renamed from: X0 */
    public static boolean m23011X0(@RecentlyNonNull String str) {
        synchronized (f7754b) {
        }
        return true;
    }

    @RecentlyNullable
    /* renamed from: Y0 */
    public static Integer m23010Y0() {
        synchronized (f7754b) {
        }
        return null;
    }
}

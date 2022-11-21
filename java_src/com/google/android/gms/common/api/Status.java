package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.prineside.tdi2.tiles.CoreTile;
import p185t3.C6734b;
import p194u3.C6896d;
import p194u3.C6917t;
import p194u3.InterfaceC6909l;
import p220x3.C7289o;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* loaded from: classes.dex */
public final class Status extends AbstractC7408a implements InterfaceC6909l, ReflectedParcelable {

    /* renamed from: a */
    public final int f7716a;

    /* renamed from: b */
    public final int f7717b;

    /* renamed from: d */
    public final String f7718d;

    /* renamed from: k */
    public final PendingIntent f7719k;

    /* renamed from: p */
    public final C6734b f7720p;
    @RecentlyNonNull

    /* renamed from: q */
    public static final Status f7709q = new Status(0);
    @RecentlyNonNull

    /* renamed from: r */
    public static final Status f7710r = new Status(14);
    @RecentlyNonNull

    /* renamed from: s */
    public static final Status f7711s = new Status(8);
    @RecentlyNonNull

    /* renamed from: t */
    public static final Status f7712t = new Status(15);
    @RecentlyNonNull

    /* renamed from: u */
    public static final Status f7713u = new Status(16);
    @RecentlyNonNull

    /* renamed from: w */
    public static final Status f7715w = new Status(17);
    @RecentlyNonNull

    /* renamed from: v */
    public static final Status f7714v = new Status(18);
    @RecentlyNonNull
    public static final Parcelable.Creator<Status> CREATOR = new C6917t();

    public Status(int i) {
        this(i, (String) null);
    }

    public Status(int i, int i2, String str, PendingIntent pendingIntent, C6734b c6734b) {
        this.f7716a = i;
        this.f7717b = i2;
        this.f7718d = str;
        this.f7719k = pendingIntent;
        this.f7720p = c6734b;
    }

    @RecentlyNullable
    /* renamed from: X0 */
    public C6734b m23038X0() {
        return this.f7720p;
    }

    @RecentlyNullable
    /* renamed from: Y0 */
    public PendingIntent m23037Y0() {
        return this.f7719k;
    }

    /* renamed from: Z0 */
    public int m23036Z0() {
        return this.f7717b;
    }

    @RecentlyNullable
    /* renamed from: a1 */
    public String m23035a1() {
        return this.f7718d;
    }

    /* renamed from: b1 */
    public boolean m23034b1() {
        return this.f7719k != null;
    }

    /* renamed from: c1 */
    public boolean m23033c1() {
        return this.f7717b <= 0;
    }

    @RecentlyNonNull
    /* renamed from: d1 */
    public final String m23032d1() {
        String str = this.f7718d;
        return str != null ? str : C6896d.m3062a(this.f7717b);
    }

    @Override // p194u3.InterfaceC6909l
    @RecentlyNonNull
    public Status getStatus() {
        return this;
    }

    public int hashCode() {
        return C7289o.m1907b(Integer.valueOf(this.f7716a), Integer.valueOf(this.f7717b), this.f7718d, this.f7719k, this.f7720p);
    }

    public Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this(i, i2, str, pendingIntent, null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (this.f7716a != status.f7716a || this.f7717b != status.f7717b || !C7289o.m1908a(this.f7718d, status.f7718d) || !C7289o.m1908a(this.f7719k, status.f7719k) || !C7289o.m1908a(this.f7720p, status.f7720p)) {
            return false;
        }
        return true;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    @RecentlyNonNull
    public String toString() {
        C7289o.C7290a m1906c = C7289o.m1906c(this);
        m1906c.m1905a("statusCode", m23032d1());
        m1906c.m1905a("resolution", this.f7719k);
        return m1906c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, m23036Z0());
        C7411c.m1473r(parcel, 2, m23035a1(), false);
        C7411c.m1474q(parcel, 3, this.f7719k, i, false);
        C7411c.m1474q(parcel, 4, m23038X0(), i, false);
        C7411c.m1479l(parcel, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, this.f7716a);
        C7411c.m1489b(parcel, m1490a);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public Status(@RecentlyNonNull C6734b c6734b, @RecentlyNonNull String str) {
        this(c6734b, str, 17);
    }

    @Deprecated
    public Status(@RecentlyNonNull C6734b c6734b, @RecentlyNonNull String str, int i) {
        this(1, i, str, c6734b.m3526Z0(), c6734b);
    }
}

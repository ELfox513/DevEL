package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p194u3.C6916s;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* loaded from: classes.dex */
public final class Scope extends AbstractC7408a implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<Scope> CREATOR = new C6916s();

    /* renamed from: a */
    public final int f7707a;

    /* renamed from: b */
    public final String f7708b;

    public Scope(int i, String str) {
        C7297q.m1886g(str, "scopeUri must not be null or empty");
        this.f7707a = i;
        this.f7708b = str;
    }

    @RecentlyNonNull
    /* renamed from: X0 */
    public String m23039X0() {
        return this.f7708b;
    }

    public int hashCode() {
        return this.f7708b.hashCode();
    }

    @RecentlyNonNull
    public String toString() {
        return this.f7708b;
    }

    public Scope(@RecentlyNonNull String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f7708b.equals(((Scope) obj).f7708b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f7707a);
        C7411c.m1473r(parcel, 2, m23039X0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}

package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p051e4.C3375c;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
import p237z4.AbstractC7673m0;
import p237z4.C7607a;
/* loaded from: classes.dex */
public class DriveId extends AbstractC7408a implements ReflectedParcelable {
    public static final Parcelable.Creator<DriveId> CREATOR = new C3375c();

    /* renamed from: a */
    public final String f7756a;

    /* renamed from: b */
    public final long f7757b;

    /* renamed from: d */
    public final long f7758d;

    /* renamed from: k */
    public final int f7759k;

    /* renamed from: p */
    public volatile String f7760p = null;

    /* renamed from: q */
    public volatile String f7761q = null;

    public boolean equals(Object obj) {
        String str;
        if (obj != null && obj.getClass() == DriveId.class) {
            DriveId driveId = (DriveId) obj;
            if (driveId.f7758d != this.f7758d) {
                return false;
            }
            long j = driveId.f7757b;
            if (j == -1 && this.f7757b == -1) {
                return driveId.f7756a.equals(this.f7756a);
            }
            String str2 = this.f7756a;
            if (str2 != null && (str = driveId.f7756a) != null) {
                return j == this.f7757b && str.equals(str2);
            } else if (j == this.f7757b) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return m23008X0();
    }

    /* renamed from: X0 */
    public final String m23008X0() {
        String str;
        if (this.f7760p == null) {
            C7607a.C7608a m890z = C7607a.m896y().m890z(1);
            String str2 = this.f7756a;
            if (str2 == null) {
                str2 = "";
            }
            String valueOf = String.valueOf(Base64.encodeToString(((C7607a) ((AbstractC7673m0) m890z.m893u(str2).m892v(this.f7757b).m891x(this.f7758d).m894A(this.f7759k).mo597k())).m878d(), 10));
            if (valueOf.length() != 0) {
                str = "DriveId:".concat(valueOf);
            } else {
                str = new String("DriveId:");
            }
            this.f7760p = str;
        }
        return this.f7760p;
    }

    public int hashCode() {
        String str;
        if (this.f7757b == -1) {
            return this.f7756a.hashCode();
        }
        String valueOf = String.valueOf(String.valueOf(this.f7758d));
        String valueOf2 = String.valueOf(String.valueOf(this.f7757b));
        if (valueOf2.length() != 0) {
            str = valueOf.concat(valueOf2);
        } else {
            str = new String(valueOf);
        }
        return str.hashCode();
    }

    public DriveId(String str, long j, long j2, int i) {
        this.f7756a = str;
        boolean z = true;
        C7297q.m1892a(!"".equals(str));
        if (str == null && j == -1) {
            z = false;
        }
        C7297q.m1892a(z);
        this.f7757b = j;
        this.f7758d = j2;
        this.f7759k = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f7756a, false);
        C7411c.m1476o(parcel, 3, this.f7757b);
        C7411c.m1476o(parcel, 4, this.f7758d);
        C7411c.m1479l(parcel, 5, this.f7759k);
        C7411c.m1489b(parcel, m1490a);
    }
}

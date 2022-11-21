package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.ci */
/* loaded from: classes2.dex */
public final class C5652ci extends AbstractC5764fi {
    public static final Parcelable.Creator<C5652ci> CREATOR = new C5616bi();

    /* renamed from: b */
    public final String f21537b;

    /* renamed from: d */
    public final String f21538d;

    /* renamed from: k */
    public final String f21539k;

    public C5652ci(Parcel parcel) {
        super("COMM");
        this.f21537b = parcel.readString();
        this.f21538d = parcel.readString();
        this.f21539k = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5652ci.class == obj.getClass()) {
            C5652ci c5652ci = (C5652ci) obj;
            if (C5988ll.m9653a(this.f21538d, c5652ci.f21538d) && C5988ll.m9653a(this.f21537b, c5652ci.f21537b) && C5988ll.m9653a(this.f21539k, c5652ci.f21539k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        String str = this.f21537b;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = (i + 527) * 31;
        String str2 = this.f21538d;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        String str3 = this.f21539k;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return i5 + i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f23507a);
        parcel.writeString(this.f21537b);
        parcel.writeString(this.f21539k);
    }

    public C5652ci(String str, String str2, String str3) {
        super("COMM");
        this.f21537b = "und";
        this.f21538d = str2;
        this.f21539k = str3;
    }
}

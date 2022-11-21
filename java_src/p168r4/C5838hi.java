package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.hi */
/* loaded from: classes2.dex */
public final class C5838hi extends AbstractC5764fi {
    public static final Parcelable.Creator<C5838hi> CREATOR = new C5801gi();

    /* renamed from: b */
    public final String f24644b;

    /* renamed from: d */
    public final String f24645d;

    public C5838hi(Parcel parcel) {
        super(parcel.readString());
        this.f24644b = parcel.readString();
        this.f24645d = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5838hi.class == obj.getClass()) {
            C5838hi c5838hi = (C5838hi) obj;
            if (this.f23507a.equals(c5838hi.f23507a) && C5988ll.m9653a(this.f24644b, c5838hi.f24644b) && C5988ll.m9653a(this.f24645d, c5838hi.f24645d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.f23507a.hashCode() + 527) * 31;
        String str = this.f24644b;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i3 = (hashCode + i) * 31;
        String str2 = this.f24645d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return i3 + i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f23507a);
        parcel.writeString(this.f24644b);
        parcel.writeString(this.f24645d);
    }

    public C5838hi(String str, String str2, String str3) {
        super(str);
        this.f24644b = null;
        this.f24645d = str3;
    }
}

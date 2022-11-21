package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.v8 */
/* loaded from: classes2.dex */
public final class C6346v8 implements InterfaceC5865i8 {
    public static final Parcelable.Creator<C6346v8> CREATOR = new C6309u8();

    /* renamed from: a */
    public final int f32643a;

    /* renamed from: b */
    public final String f32644b;

    /* renamed from: d */
    public final String f32645d;

    /* renamed from: k */
    public final String f32646k;

    /* renamed from: p */
    public final boolean f32647p;

    /* renamed from: q */
    public final int f32648q;

    public C6346v8(int i, String str, String str2, String str3, boolean z, int i2) {
        boolean z2 = true;
        if (i2 != -1 && i2 <= 0) {
            z2 = false;
        }
        C5903ja.m10374a(z2);
        this.f32643a = i;
        this.f32644b = str;
        this.f32645d = str2;
        this.f32646k = str3;
        this.f32647p = z;
        this.f32648q = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6346v8.class == obj.getClass()) {
            C6346v8 c6346v8 = (C6346v8) obj;
            if (this.f32643a == c6346v8.f32643a && C5979lc.m9729H(this.f32644b, c6346v8.f32644b) && C5979lc.m9729H(this.f32645d, c6346v8.f32645d) && C5979lc.m9729H(this.f32646k, c6346v8.f32646k) && this.f32647p == c6346v8.f32647p && this.f32648q == c6346v8.f32648q) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.InterfaceC5865i8
    /* renamed from: f0 */
    public final void mo5450f0(C6380w5 c6380w5) {
    }

    public final String toString() {
        String str = this.f32645d;
        String str2 = this.f32644b;
        int i = this.f32643a;
        int i2 = this.f32648q;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80 + String.valueOf(str2).length());
        sb.append("IcyHeaders: name=\"");
        sb.append(str);
        sb.append("\", genre=\"");
        sb.append(str2);
        sb.append("\", bitrate=");
        sb.append(i);
        sb.append(", metadataInterval=");
        sb.append(i2);
        return sb.toString();
    }

    public C6346v8(Parcel parcel) {
        this.f32643a = parcel.readInt();
        this.f32644b = parcel.readString();
        this.f32645d = parcel.readString();
        this.f32646k = parcel.readString();
        this.f32647p = C5979lc.m9718S(parcel);
        this.f32648q = parcel.readInt();
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3 = (this.f32643a + 527) * 31;
        String str = this.f32644b;
        int i4 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i5 = (i3 + i) * 31;
        String str2 = this.f32645d;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        String str3 = this.f32646k;
        if (str3 != null) {
            i4 = str3.hashCode();
        }
        return ((((i6 + i4) * 31) + (this.f32647p ? 1 : 0)) * 31) + this.f32648q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f32643a);
        parcel.writeString(this.f32644b);
        parcel.writeString(this.f32645d);
        parcel.writeString(this.f32646k);
        C5979lc.m9717T(parcel, this.f32647p);
        parcel.writeInt(this.f32648q);
    }
}

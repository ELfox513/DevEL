package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.h9 */
/* loaded from: classes2.dex */
public final class C5829h9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C5829h9> CREATOR = new C5792g9();

    /* renamed from: b */
    public final String f24514b;

    /* renamed from: d */
    public final String f24515d;

    /* renamed from: k */
    public final String f24516k;

    /* renamed from: p */
    public final byte[] f24517p;

    public C5829h9(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f24514b = readString;
        this.f24515d = parcel.readString();
        this.f24516k = parcel.readString();
        this.f24517p = (byte[]) C5979lc.m9728I(parcel.createByteArray());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5829h9.class == obj.getClass()) {
            C5829h9 c5829h9 = (C5829h9) obj;
            if (C5979lc.m9729H(this.f24514b, c5829h9.f24514b) && C5979lc.m9729H(this.f24515d, c5829h9.f24515d) && C5979lc.m9729H(this.f24516k, c5829h9.f24516k) && Arrays.equals(this.f24517p, c5829h9.f24517p)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.AbstractC6013m9
    public final String toString() {
        String str = this.f27541a;
        String str2 = this.f24514b;
        String str3 = this.f24515d;
        String str4 = this.f24516k;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(length + 36 + length2 + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append(str);
        sb.append(": mimeType=");
        sb.append(str2);
        sb.append(", filename=");
        sb.append(str3);
        sb.append(", description=");
        sb.append(str4);
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        int i2;
        String str = this.f24514b;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = (i + 527) * 31;
        String str2 = this.f24515d;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        String str3 = this.f24516k;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return ((i5 + i3) * 31) + Arrays.hashCode(this.f24517p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f24514b);
        parcel.writeString(this.f24515d);
        parcel.writeString(this.f24516k);
        parcel.writeByteArray(this.f24517p);
    }

    public C5829h9(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f24514b = str;
        this.f24515d = str2;
        this.f24516k = str3;
        this.f24517p = bArr;
    }
}

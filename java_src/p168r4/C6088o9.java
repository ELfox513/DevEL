package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.o9 */
/* loaded from: classes2.dex */
public final class C6088o9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C6088o9> CREATOR = new C6051n9();

    /* renamed from: b */
    public final String f28926b;

    /* renamed from: d */
    public final String f28927d;

    /* renamed from: k */
    public final String f28928k;

    public C6088o9(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f28926b = readString;
        this.f28927d = parcel.readString();
        this.f28928k = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6088o9.class == obj.getClass()) {
            C6088o9 c6088o9 = (C6088o9) obj;
            if (C5979lc.m9729H(this.f28927d, c6088o9.f28927d) && C5979lc.m9729H(this.f28926b, c6088o9.f28926b) && C5979lc.m9729H(this.f28928k, c6088o9.f28928k)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.AbstractC6013m9
    public final String toString() {
        String str = this.f27541a;
        String str2 = this.f28926b;
        String str3 = this.f28927d;
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 23 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": domain=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        int i2;
        String str = this.f28926b;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = (i + 527) * 31;
        String str2 = this.f28927d;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        String str3 = this.f28928k;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return i5 + i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f27541a);
        parcel.writeString(this.f28926b);
        parcel.writeString(this.f28928k);
    }

    public C6088o9(String str, String str2, String str3) {
        super("----");
        this.f28926b = str;
        this.f28927d = str2;
        this.f28928k = str3;
    }
}

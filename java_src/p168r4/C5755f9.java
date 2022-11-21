package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.f9 */
/* loaded from: classes2.dex */
public final class C5755f9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C5755f9> CREATOR = new C5718e9();

    /* renamed from: b */
    public final String f23417b;

    /* renamed from: d */
    public final String f23418d;

    /* renamed from: k */
    public final String f23419k;

    public C5755f9(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f23417b = readString;
        this.f23418d = parcel.readString();
        this.f23419k = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5755f9.class == obj.getClass()) {
            C5755f9 c5755f9 = (C5755f9) obj;
            if (C5979lc.m9729H(this.f23418d, c5755f9.f23418d) && C5979lc.m9729H(this.f23417b, c5755f9.f23417b) && C5979lc.m9729H(this.f23419k, c5755f9.f23419k)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.AbstractC6013m9
    public final String toString() {
        String str = this.f27541a;
        String str2 = this.f23417b;
        String str3 = this.f23418d;
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": language=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        int i2;
        String str = this.f23417b;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = (i + 527) * 31;
        String str2 = this.f23418d;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        String str3 = this.f23419k;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return i5 + i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f27541a);
        parcel.writeString(this.f23417b);
        parcel.writeString(this.f23419k);
    }

    public C5755f9(String str, String str2, String str3) {
        super("COMM");
        this.f23417b = str;
        this.f23418d = str2;
        this.f23419k = str3;
    }
}

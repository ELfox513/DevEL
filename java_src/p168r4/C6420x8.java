package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.x8 */
/* loaded from: classes2.dex */
public final class C6420x8 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C6420x8> CREATOR = new C6383w8();

    /* renamed from: b */
    public final String f33507b;

    /* renamed from: d */
    public final String f33508d;

    /* renamed from: k */
    public final int f33509k;

    /* renamed from: p */
    public final byte[] f33510p;

    public C6420x8(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f33507b = readString;
        this.f33508d = parcel.readString();
        this.f33509k = parcel.readInt();
        this.f33510p = (byte[]) C5979lc.m9728I(parcel.createByteArray());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6420x8.class == obj.getClass()) {
            C6420x8 c6420x8 = (C6420x8) obj;
            if (this.f33509k == c6420x8.f33509k && C5979lc.m9729H(this.f33507b, c6420x8.f33507b) && C5979lc.m9729H(this.f33508d, c6420x8.f33508d) && Arrays.equals(this.f33510p, c6420x8.f33510p)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.AbstractC6013m9, p168r4.InterfaceC5865i8
    /* renamed from: f0 */
    public final void mo5450f0(C6380w5 c6380w5) {
        c6380w5.m5866G(this.f33510p, this.f33509k);
    }

    @Override // p168r4.AbstractC6013m9
    public final String toString() {
        String str = this.f27541a;
        String str2 = this.f33507b;
        String str3 = this.f33508d;
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": mimeType=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        int i2 = (this.f33509k + 527) * 31;
        String str = this.f33507b;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = (i2 + i) * 31;
        String str2 = this.f33508d;
        if (str2 != null) {
            i3 = str2.hashCode();
        }
        return ((i4 + i3) * 31) + Arrays.hashCode(this.f33510p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33507b);
        parcel.writeString(this.f33508d);
        parcel.writeInt(this.f33509k);
        parcel.writeByteArray(this.f33510p);
    }

    public C6420x8(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f33507b = str;
        this.f33508d = str2;
        this.f33509k = i;
        this.f33510p = bArr;
    }
}

package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.r8 */
/* loaded from: classes2.dex */
public final class C6198r8 implements InterfaceC5865i8 {
    public static final Parcelable.Creator<C6198r8> CREATOR = new C6161q8();

    /* renamed from: a */
    public final int f30492a;

    /* renamed from: b */
    public final String f30493b;

    /* renamed from: d */
    public final String f30494d;

    /* renamed from: k */
    public final int f30495k;

    /* renamed from: p */
    public final int f30496p;

    /* renamed from: q */
    public final int f30497q;

    /* renamed from: r */
    public final int f30498r;

    /* renamed from: s */
    public final byte[] f30499s;

    public C6198r8(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f30492a = i;
        this.f30493b = str;
        this.f30494d = str2;
        this.f30495k = i2;
        this.f30496p = i3;
        this.f30497q = i4;
        this.f30498r = i5;
        this.f30499s = bArr;
    }

    public C6198r8(Parcel parcel) {
        this.f30492a = parcel.readInt();
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f30493b = readString;
        this.f30494d = parcel.readString();
        this.f30495k = parcel.readInt();
        this.f30496p = parcel.readInt();
        this.f30497q = parcel.readInt();
        this.f30498r = parcel.readInt();
        this.f30499s = (byte[]) C5979lc.m9728I(parcel.createByteArray());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6198r8.class == obj.getClass()) {
            C6198r8 c6198r8 = (C6198r8) obj;
            if (this.f30492a == c6198r8.f30492a && this.f30493b.equals(c6198r8.f30493b) && this.f30494d.equals(c6198r8.f30494d) && this.f30495k == c6198r8.f30495k && this.f30496p == c6198r8.f30496p && this.f30497q == c6198r8.f30497q && this.f30498r == c6198r8.f30498r && Arrays.equals(this.f30499s, c6198r8.f30499s)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.InterfaceC5865i8
    /* renamed from: f0 */
    public final void mo5450f0(C6380w5 c6380w5) {
        c6380w5.m5866G(this.f30499s, this.f30492a);
    }

    public final String toString() {
        String str = this.f30493b;
        String str2 = this.f30494d;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(str2).length());
        sb.append("Picture: mimeType=");
        sb.append(str);
        sb.append(", description=");
        sb.append(str2);
        return sb.toString();
    }

    public final int hashCode() {
        return ((((((((((((((this.f30492a + 527) * 31) + this.f30493b.hashCode()) * 31) + this.f30494d.hashCode()) * 31) + this.f30495k) * 31) + this.f30496p) * 31) + this.f30497q) * 31) + this.f30498r) * 31) + Arrays.hashCode(this.f30499s);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f30492a);
        parcel.writeString(this.f30493b);
        parcel.writeString(this.f30494d);
        parcel.writeInt(this.f30495k);
        parcel.writeInt(this.f30496p);
        parcel.writeInt(this.f30497q);
        parcel.writeInt(this.f30498r);
        parcel.writeByteArray(this.f30499s);
    }
}

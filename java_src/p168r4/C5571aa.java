package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.aa */
/* loaded from: classes2.dex */
public final class C5571aa implements InterfaceC5865i8 {
    public static final Parcelable.Creator<C5571aa> CREATOR = new C6458y9();

    /* renamed from: a */
    public final String f20427a;

    /* renamed from: b */
    public final byte[] f20428b;

    /* renamed from: d */
    public final int f20429d;

    /* renamed from: k */
    public final int f20430k;

    public /* synthetic */ C5571aa(Parcel parcel, C6495z9 c6495z9) {
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f20427a = readString;
        this.f20428b = (byte[]) C5979lc.m9728I(parcel.createByteArray());
        this.f20429d = parcel.readInt();
        this.f20430k = parcel.readInt();
    }

    public C5571aa(String str, byte[] bArr, int i, int i2) {
        this.f20427a = str;
        this.f20428b = bArr;
        this.f20429d = i;
        this.f20430k = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5571aa.class == obj.getClass()) {
            C5571aa c5571aa = (C5571aa) obj;
            if (this.f20427a.equals(c5571aa.f20427a) && Arrays.equals(this.f20428b, c5571aa.f20428b) && this.f20429d == c5571aa.f20429d && this.f20430k == c5571aa.f20430k) {
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
        String valueOf = String.valueOf(this.f20427a);
        return valueOf.length() != 0 ? "mdta: key=".concat(valueOf) : new String("mdta: key=");
    }

    public final int hashCode() {
        return ((((((this.f20427a.hashCode() + 527) * 31) + Arrays.hashCode(this.f20428b)) * 31) + this.f20429d) * 31) + this.f20430k;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f20427a);
        parcel.writeByteArray(this.f20428b);
        parcel.writeInt(this.f20429d);
        parcel.writeInt(this.f20430k);
    }
}

package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.t9 */
/* loaded from: classes2.dex */
public final class C6273t9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C6273t9> CREATOR = new C6236s9();

    /* renamed from: b */
    public final String f31746b;

    /* renamed from: d */
    public final byte[] f31747d;

    public C6273t9(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f31746b = readString;
        this.f31747d = (byte[]) C5979lc.m9728I(parcel.createByteArray());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6273t9.class == obj.getClass()) {
            C6273t9 c6273t9 = (C6273t9) obj;
            if (C5979lc.m9729H(this.f31746b, c6273t9.f31746b) && Arrays.equals(this.f31747d, c6273t9.f31747d)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.AbstractC6013m9
    public final String toString() {
        String str = this.f27541a;
        String str2 = this.f31746b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": owner=");
        sb.append(str2);
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        String str = this.f31746b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return ((i + 527) * 31) + Arrays.hashCode(this.f31747d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f31746b);
        parcel.writeByteArray(this.f31747d);
    }

    public C6273t9(String str, byte[] bArr) {
        super("PRIV");
        this.f31746b = str;
        this.f31747d = bArr;
    }
}

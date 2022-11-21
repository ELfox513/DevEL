package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.z8 */
/* loaded from: classes2.dex */
public final class C6494z8 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C6494z8> CREATOR = new C6457y8();

    /* renamed from: b */
    public final byte[] f34396b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6494z8(android.os.Parcel r3) {
        /*
            r2 = this;
            java.lang.String r0 = r3.readString()
            int r1 = p168r4.C5979lc.f27164a
            r2.<init>(r0)
            byte[] r3 = r3.createByteArray()
            java.lang.Object r3 = p168r4.C5979lc.m9728I(r3)
            byte[] r3 = (byte[]) r3
            r2.f34396b = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6494z8.<init>(android.os.Parcel):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6494z8.class == obj.getClass()) {
            C6494z8 c6494z8 = (C6494z8) obj;
            if (this.f27541a.equals(c6494z8.f27541a) && Arrays.equals(this.f34396b, c6494z8.f34396b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f27541a.hashCode() + 527) * 31) + Arrays.hashCode(this.f34396b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f27541a);
        parcel.writeByteArray(this.f34396b);
    }

    public C6494z8(String str, byte[] bArr) {
        super(str);
        this.f34396b = bArr;
    }
}

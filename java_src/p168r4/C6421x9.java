package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.x9 */
/* loaded from: classes2.dex */
public final class C6421x9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C6421x9> CREATOR = new C6384w9();

    /* renamed from: b */
    public final String f33517b;

    /* renamed from: d */
    public final String f33518d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6421x9(android.os.Parcel r3) {
        /*
            r2 = this;
            java.lang.String r0 = r3.readString()
            int r1 = p168r4.C5979lc.f27164a
            r2.<init>(r0)
            java.lang.String r0 = r3.readString()
            r2.f33517b = r0
            java.lang.String r3 = r3.readString()
            r2.f33518d = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6421x9.<init>(android.os.Parcel):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6421x9.class == obj.getClass()) {
            C6421x9 c6421x9 = (C6421x9) obj;
            if (this.f27541a.equals(c6421x9.f27541a) && C5979lc.m9729H(this.f33517b, c6421x9.f33517b) && C5979lc.m9729H(this.f33518d, c6421x9.f33518d)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.AbstractC6013m9
    public final String toString() {
        String str = this.f27541a;
        String str2 = this.f33518d;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": url=");
        sb.append(str2);
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.f27541a.hashCode() + 527) * 31;
        String str = this.f33517b;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i3 = (hashCode + i) * 31;
        String str2 = this.f33518d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return i3 + i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f27541a);
        parcel.writeString(this.f33517b);
        parcel.writeString(this.f33518d);
    }

    public C6421x9(String str, String str2, String str3) {
        super(str);
        this.f33517b = str2;
        this.f33518d = str3;
    }
}

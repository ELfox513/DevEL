package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.ol */
/* loaded from: classes2.dex */
public final class C6100ol implements Parcelable {
    public static final Parcelable.Creator<C6100ol> CREATOR = new C6063nl();

    /* renamed from: a */
    public final int f29037a;

    /* renamed from: b */
    public final int f29038b;

    /* renamed from: d */
    public final int f29039d;

    /* renamed from: k */
    public final byte[] f29040k;

    /* renamed from: p */
    public int f29041p;

    public C6100ol(int i, int i2, int i3, byte[] bArr) {
        this.f29037a = i;
        this.f29038b = i2;
        this.f29039d = i3;
        this.f29040k = bArr;
    }

    public C6100ol(Parcel parcel) {
        this.f29037a = parcel.readInt();
        this.f29038b = parcel.readInt();
        this.f29039d = parcel.readInt();
        this.f29040k = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6100ol.class == obj.getClass()) {
            C6100ol c6100ol = (C6100ol) obj;
            if (this.f29037a == c6100ol.f29037a && this.f29038b == c6100ol.f29038b && this.f29039d == c6100ol.f29039d && Arrays.equals(this.f29040k, c6100ol.f29040k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f29041p;
        if (i == 0) {
            int hashCode = ((((((this.f29037a + 527) * 31) + this.f29038b) * 31) + this.f29039d) * 31) + Arrays.hashCode(this.f29040k);
            this.f29041p = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        int i = this.f29037a;
        int i2 = this.f29038b;
        int i3 = this.f29039d;
        boolean z = this.f29040k != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2;
        parcel.writeInt(this.f29037a);
        parcel.writeInt(this.f29038b);
        parcel.writeInt(this.f29039d);
        if (this.f29040k != null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        byte[] bArr = this.f29040k;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}

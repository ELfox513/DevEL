package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.UUID;
/* renamed from: r4.dy3 */
/* loaded from: classes2.dex */
public final class dy3 implements Parcelable {
    public static final Parcelable.Creator<dy3> CREATOR = new cx3();

    /* renamed from: a */
    public int f22688a;

    /* renamed from: b */
    public final UUID f22689b;

    /* renamed from: d */
    public final String f22690d;

    /* renamed from: k */
    public final String f22691k;

    /* renamed from: p */
    public final byte[] f22692p;

    public dy3(Parcel parcel) {
        this.f22689b = new UUID(parcel.readLong(), parcel.readLong());
        this.f22690d = parcel.readString();
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f22691k = readString;
        this.f22692p = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dy3)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        dy3 dy3Var = (dy3) obj;
        if (!C5979lc.m9729H(this.f22690d, dy3Var.f22690d) || !C5979lc.m9729H(this.f22691k, dy3Var.f22691k) || !C5979lc.m9729H(this.f22689b, dy3Var.f22689b) || !Arrays.equals(this.f22692p, dy3Var.f22692p)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = this.f22688a;
        if (i == 0) {
            int hashCode2 = this.f22689b.hashCode() * 31;
            String str = this.f22690d;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = ((((hashCode2 + hashCode) * 31) + this.f22691k.hashCode()) * 31) + Arrays.hashCode(this.f22692p);
            this.f22688a = hashCode3;
            return hashCode3;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f22689b.getMostSignificantBits());
        parcel.writeLong(this.f22689b.getLeastSignificantBits());
        parcel.writeString(this.f22690d);
        parcel.writeString(this.f22691k);
        parcel.writeByteArray(this.f22692p);
    }

    public dy3(UUID uuid, String str, String str2, byte[] bArr) {
        uuid.getClass();
        this.f22689b = uuid;
        this.f22690d = null;
        this.f22691k = str2;
        this.f22692p = bArr;
    }
}

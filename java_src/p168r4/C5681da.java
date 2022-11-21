package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.da */
/* loaded from: classes2.dex */
public final class C5681da implements InterfaceC5865i8 {
    public static final Parcelable.Creator<C5681da> CREATOR = new C5608ba();

    /* renamed from: a */
    public final long f22197a;

    /* renamed from: b */
    public final long f22198b;

    /* renamed from: d */
    public final long f22199d;

    /* renamed from: k */
    public final long f22200k;

    /* renamed from: p */
    public final long f22201p;

    public C5681da(long j, long j2, long j3, long j4, long j5) {
        this.f22197a = j;
        this.f22198b = j2;
        this.f22199d = j3;
        this.f22200k = j4;
        this.f22201p = j5;
    }

    public /* synthetic */ C5681da(Parcel parcel, C5644ca c5644ca) {
        this.f22197a = parcel.readLong();
        this.f22198b = parcel.readLong();
        this.f22199d = parcel.readLong();
        this.f22200k = parcel.readLong();
        this.f22201p = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5681da.class == obj.getClass()) {
            C5681da c5681da = (C5681da) obj;
            if (this.f22197a == c5681da.f22197a && this.f22198b == c5681da.f22198b && this.f22199d == c5681da.f22199d && this.f22200k == c5681da.f22200k && this.f22201p == c5681da.f22201p) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.InterfaceC5865i8
    /* renamed from: f0 */
    public final void mo5450f0(C6380w5 c6380w5) {
    }

    public final int hashCode() {
        long j = this.f22197a;
        long j2 = this.f22198b;
        long j3 = this.f22199d;
        long j4 = this.f22200k;
        long j5 = this.f22201p;
        return ((((((((((int) (j ^ (j >>> 32))) + 527) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + ((int) ((j4 >>> 32) ^ j4))) * 31) + ((int) ((j5 >>> 32) ^ j5));
    }

    public final String toString() {
        long j = this.f22197a;
        long j2 = this.f22198b;
        long j3 = this.f22199d;
        long j4 = this.f22200k;
        long j5 = this.f22201p;
        StringBuilder sb = new StringBuilder(218);
        sb.append("Motion photo metadata: photoStartPosition=");
        sb.append(j);
        sb.append(", photoSize=");
        sb.append(j2);
        sb.append(", photoPresentationTimestampUs=");
        sb.append(j3);
        sb.append(", videoStartPosition=");
        sb.append(j4);
        sb.append(", videoSize=");
        sb.append(j5);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f22197a);
        parcel.writeLong(this.f22198b);
        parcel.writeLong(this.f22199d);
        parcel.writeLong(this.f22200k);
        parcel.writeLong(this.f22201p);
    }
}

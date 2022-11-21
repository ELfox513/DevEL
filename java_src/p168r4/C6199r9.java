package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.r9 */
/* loaded from: classes2.dex */
public final class C6199r9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C6199r9> CREATOR = new C6162q9();

    /* renamed from: b */
    public final int f30502b;

    /* renamed from: d */
    public final int f30503d;

    /* renamed from: k */
    public final int f30504k;

    /* renamed from: p */
    public final int[] f30505p;

    /* renamed from: q */
    public final int[] f30506q;

    public C6199r9(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f30502b = i;
        this.f30503d = i2;
        this.f30504k = i3;
        this.f30505p = iArr;
        this.f30506q = iArr2;
    }

    @Override // p168r4.AbstractC6013m9, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6199r9.class == obj.getClass()) {
            C6199r9 c6199r9 = (C6199r9) obj;
            if (this.f30502b == c6199r9.f30502b && this.f30503d == c6199r9.f30503d && this.f30504k == c6199r9.f30504k && Arrays.equals(this.f30505p, c6199r9.f30505p) && Arrays.equals(this.f30506q, c6199r9.f30506q)) {
                return true;
            }
        }
        return false;
    }

    public C6199r9(Parcel parcel) {
        super("MLLT");
        this.f30502b = parcel.readInt();
        this.f30503d = parcel.readInt();
        this.f30504k = parcel.readInt();
        this.f30505p = (int[]) C5979lc.m9728I(parcel.createIntArray());
        this.f30506q = (int[]) C5979lc.m9728I(parcel.createIntArray());
    }

    public final int hashCode() {
        return ((((((((this.f30502b + 527) * 31) + this.f30503d) * 31) + this.f30504k) * 31) + Arrays.hashCode(this.f30505p)) * 31) + Arrays.hashCode(this.f30506q);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f30502b);
        parcel.writeInt(this.f30503d);
        parcel.writeInt(this.f30504k);
        parcel.writeIntArray(this.f30505p);
        parcel.writeIntArray(this.f30506q);
    }
}

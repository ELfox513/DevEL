package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.b9 */
/* loaded from: classes2.dex */
public final class C5607b9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C5607b9> CREATOR = new C5570a9();

    /* renamed from: b */
    public final String f20913b;

    /* renamed from: d */
    public final int f20914d;

    /* renamed from: k */
    public final int f20915k;

    /* renamed from: p */
    public final long f20916p;

    /* renamed from: q */
    public final long f20917q;

    /* renamed from: r */
    public final AbstractC6013m9[] f20918r;

    public C5607b9(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f20913b = readString;
        this.f20914d = parcel.readInt();
        this.f20915k = parcel.readInt();
        this.f20916p = parcel.readLong();
        this.f20917q = parcel.readLong();
        int readInt = parcel.readInt();
        this.f20918r = new AbstractC6013m9[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f20918r[i2] = (AbstractC6013m9) parcel.readParcelable(AbstractC6013m9.class.getClassLoader());
        }
    }

    @Override // p168r4.AbstractC6013m9, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5607b9.class == obj.getClass()) {
            C5607b9 c5607b9 = (C5607b9) obj;
            if (this.f20914d == c5607b9.f20914d && this.f20915k == c5607b9.f20915k && this.f20916p == c5607b9.f20916p && this.f20917q == c5607b9.f20917q && C5979lc.m9729H(this.f20913b, c5607b9.f20913b) && Arrays.equals(this.f20918r, c5607b9.f20918r)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (((((((this.f20914d + 527) * 31) + this.f20915k) * 31) + ((int) this.f20916p)) * 31) + ((int) this.f20917q)) * 31;
        String str = this.f20913b;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f20913b);
        parcel.writeInt(this.f20914d);
        parcel.writeInt(this.f20915k);
        parcel.writeLong(this.f20916p);
        parcel.writeLong(this.f20917q);
        parcel.writeInt(this.f20918r.length);
        for (AbstractC6013m9 abstractC6013m9 : this.f20918r) {
            parcel.writeParcelable(abstractC6013m9, 0);
        }
    }

    public C5607b9(String str, int i, int i2, long j, long j2, AbstractC6013m9[] abstractC6013m9Arr) {
        super("CHAP");
        this.f20913b = str;
        this.f20914d = i;
        this.f20915k = i2;
        this.f20916p = j;
        this.f20917q = j2;
        this.f20918r = abstractC6013m9Arr;
    }
}

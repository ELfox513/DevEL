package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.d9 */
/* loaded from: classes2.dex */
public final class C5680d9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C5680d9> CREATOR = new C5643c9();

    /* renamed from: b */
    public final String f22174b;

    /* renamed from: d */
    public final boolean f22175d;

    /* renamed from: k */
    public final boolean f22176k;

    /* renamed from: p */
    public final String[] f22177p;

    /* renamed from: q */
    public final AbstractC6013m9[] f22178q;

    public C5680d9(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f22174b = readString;
        this.f22175d = parcel.readByte() != 0;
        this.f22176k = parcel.readByte() != 0;
        this.f22177p = (String[]) C5979lc.m9728I(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.f22178q = new AbstractC6013m9[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f22178q[i2] = (AbstractC6013m9) parcel.readParcelable(AbstractC6013m9.class.getClassLoader());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5680d9.class == obj.getClass()) {
            C5680d9 c5680d9 = (C5680d9) obj;
            if (this.f22175d == c5680d9.f22175d && this.f22176k == c5680d9.f22176k && C5979lc.m9729H(this.f22174b, c5680d9.f22174b) && Arrays.equals(this.f22177p, c5680d9.f22177p) && Arrays.equals(this.f22178q, c5680d9.f22178q)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = ((((this.f22175d ? 1 : 0) + 527) * 31) + (this.f22176k ? 1 : 0)) * 31;
        String str = this.f22174b;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22174b);
        parcel.writeByte(this.f22175d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f22176k ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f22177p);
        parcel.writeInt(this.f22178q.length);
        for (AbstractC6013m9 abstractC6013m9 : this.f22178q) {
            parcel.writeParcelable(abstractC6013m9, 0);
        }
    }

    public C5680d9(String str, boolean z, boolean z2, String[] strArr, AbstractC6013m9[] abstractC6013m9Arr) {
        super("CTOC");
        this.f22174b = str;
        this.f22175d = z;
        this.f22176k = z2;
        this.f22177p = strArr;
        this.f22178q = abstractC6013m9Arr;
    }
}

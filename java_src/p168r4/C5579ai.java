package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.ai */
/* loaded from: classes2.dex */
public final class C5579ai extends AbstractC5764fi {
    public static final Parcelable.Creator<C5579ai> CREATOR = new C6503zh();

    /* renamed from: b */
    public final String f20484b;

    /* renamed from: d */
    public final String f20485d;

    /* renamed from: k */
    public final int f20486k;

    /* renamed from: p */
    public final byte[] f20487p;

    public C5579ai(Parcel parcel) {
        super("APIC");
        this.f20484b = parcel.readString();
        this.f20485d = parcel.readString();
        this.f20486k = parcel.readInt();
        this.f20487p = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5579ai.class == obj.getClass()) {
            C5579ai c5579ai = (C5579ai) obj;
            if (this.f20486k == c5579ai.f20486k && C5988ll.m9653a(this.f20484b, c5579ai.f20484b) && C5988ll.m9653a(this.f20485d, c5579ai.f20485d) && Arrays.equals(this.f20487p, c5579ai.f20487p)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = (this.f20486k + 527) * 31;
        String str = this.f20484b;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = (i2 + i) * 31;
        String str2 = this.f20485d;
        if (str2 != null) {
            i3 = str2.hashCode();
        }
        return ((i4 + i3) * 31) + Arrays.hashCode(this.f20487p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f20484b);
        parcel.writeString(this.f20485d);
        parcel.writeInt(this.f20486k);
        parcel.writeByteArray(this.f20487p);
    }

    public C5579ai(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f20484b = str;
        this.f20485d = null;
        this.f20486k = 3;
        this.f20487p = bArr;
    }
}

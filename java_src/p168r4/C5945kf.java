package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.UUID;
/* renamed from: r4.kf */
/* loaded from: classes2.dex */
public final class C5945kf implements Parcelable {
    public static final Parcelable.Creator<C5945kf> CREATOR = new C5908jf();

    /* renamed from: a */
    public int f26384a;

    /* renamed from: b */
    public final UUID f26385b;

    /* renamed from: d */
    public final String f26386d;

    /* renamed from: k */
    public final byte[] f26387k;

    /* renamed from: p */
    public final boolean f26388p;

    public C5945kf(Parcel parcel) {
        this.f26385b = new UUID(parcel.readLong(), parcel.readLong());
        this.f26386d = parcel.readString();
        this.f26387k = parcel.createByteArray();
        this.f26388p = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C5945kf)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C5945kf c5945kf = (C5945kf) obj;
        if (!this.f26386d.equals(c5945kf.f26386d) || !C5988ll.m9653a(this.f26385b, c5945kf.f26385b) || !Arrays.equals(this.f26387k, c5945kf.f26387k)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f26384a;
        if (i == 0) {
            int hashCode = (((this.f26385b.hashCode() * 31) + this.f26386d.hashCode()) * 31) + Arrays.hashCode(this.f26387k);
            this.f26384a = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f26385b.getMostSignificantBits());
        parcel.writeLong(this.f26385b.getLeastSignificantBits());
        parcel.writeString(this.f26386d);
        parcel.writeByteArray(this.f26387k);
        parcel.writeByte(this.f26388p ? (byte) 1 : (byte) 0);
    }

    public C5945kf(UUID uuid, String str, byte[] bArr, boolean z) {
        uuid.getClass();
        this.f26385b = uuid;
        this.f26386d = str;
        bArr.getClass();
        this.f26387k = bArr;
        this.f26388p = false;
    }
}

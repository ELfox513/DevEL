package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: r4.n8 */
/* loaded from: classes2.dex */
public final class C6050n8 implements InterfaceC5865i8 {
    public static final Parcelable.Creator<C6050n8> CREATOR;

    /* renamed from: r */
    public static final C5713e5 f28189r;

    /* renamed from: s */
    public static final C5713e5 f28190s;

    /* renamed from: a */
    public final String f28191a;

    /* renamed from: b */
    public final String f28192b;

    /* renamed from: d */
    public final long f28193d;

    /* renamed from: k */
    public final long f28194k;

    /* renamed from: p */
    public final byte[] f28195p;

    /* renamed from: q */
    public int f28196q;

    public C6050n8(Parcel parcel) {
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f28191a = readString;
        this.f28192b = parcel.readString();
        this.f28193d = parcel.readLong();
        this.f28194k = parcel.readLong();
        this.f28195p = (byte[]) C5979lc.m9728I(parcel.createByteArray());
    }

    public C6050n8(String str, String str2, long j, long j2, byte[] bArr) {
        this.f28191a = str;
        this.f28192b = str2;
        this.f28193d = j;
        this.f28194k = j2;
        this.f28195p = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6050n8.class == obj.getClass()) {
            C6050n8 c6050n8 = (C6050n8) obj;
            if (this.f28193d == c6050n8.f28193d && this.f28194k == c6050n8.f28194k && C5979lc.m9729H(this.f28191a, c6050n8.f28191a) && C5979lc.m9729H(this.f28192b, c6050n8.f28192b) && Arrays.equals(this.f28195p, c6050n8.f28195p)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.InterfaceC5865i8
    /* renamed from: f0 */
    public final void mo5450f0(C6380w5 c6380w5) {
    }

    public final String toString() {
        String str = this.f28191a;
        long j = this.f28194k;
        long j2 = this.f28193d;
        String str2 = this.f28192b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 79 + String.valueOf(str2).length());
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j);
        sb.append(", durationMs=");
        sb.append(j2);
        sb.append(", value=");
        sb.append(str2);
        return sb.toString();
    }

    static {
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12564n("application/id3");
        f28189r = c5639c5.m12603I();
        C5639c5 c5639c52 = new C5639c5();
        c5639c52.m12564n("application/x-scte35");
        f28190s = c5639c52.m12603I();
        CREATOR = new C6012m8();
    }

    public final int hashCode() {
        int i;
        int i2 = this.f28196q;
        if (i2 == 0) {
            String str = this.f28191a;
            int i3 = 0;
            if (str != null) {
                i = str.hashCode();
            } else {
                i = 0;
            }
            int i4 = (i + 527) * 31;
            String str2 = this.f28192b;
            if (str2 != null) {
                i3 = str2.hashCode();
            }
            long j = this.f28193d;
            long j2 = this.f28194k;
            int hashCode = ((((((i4 + i3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + Arrays.hashCode(this.f28195p);
            this.f28196q = hashCode;
            return hashCode;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f28191a);
        parcel.writeString(this.f28192b);
        parcel.writeLong(this.f28193d);
        parcel.writeLong(this.f28194k);
        parcel.writeByteArray(this.f28195p);
    }
}

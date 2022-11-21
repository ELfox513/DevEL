package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.t8 */
/* loaded from: classes2.dex */
public final class C6272t8 implements InterfaceC5865i8 {
    public static final Parcelable.Creator<C6272t8> CREATOR = new C6235s8();

    /* renamed from: a */
    public final String f31728a;

    /* renamed from: b */
    public final String f31729b;

    public C6272t8(Parcel parcel) {
        String readString = parcel.readString();
        int i = C5979lc.f27164a;
        this.f31728a = readString;
        this.f31729b = parcel.readString();
    }

    public C6272t8(String str, String str2) {
        this.f31728a = str;
        this.f31729b = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6272t8.class == obj.getClass()) {
            C6272t8 c6272t8 = (C6272t8) obj;
            if (this.f31728a.equals(c6272t8.f31728a) && this.f31729b.equals(c6272t8.f31729b)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str = this.f31728a;
        String str2 = this.f31729b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb.append("VC: ");
        sb.append(str);
        sb.append("=");
        sb.append(str2);
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p168r4.InterfaceC5865i8
    /* renamed from: f0 */
    public final void mo5450f0(C6380w5 c6380w5) {
        char c;
        String str = this.f31728a;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            return;
                        }
                        c6380w5.m5867F(this.f31729b);
                        return;
                    }
                    c6380w5.m5868E(this.f31729b);
                    return;
                }
                c6380w5.m5869D(this.f31729b);
                return;
            }
            c6380w5.m5870C(this.f31729b);
            return;
        }
        c6380w5.m5871B(this.f31729b);
    }

    public final int hashCode() {
        return ((this.f31728a.hashCode() + 527) * 31) + this.f31729b.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f31728a);
        parcel.writeString(this.f31729b);
    }
}

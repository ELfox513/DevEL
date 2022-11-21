package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r4.ga */
/* loaded from: classes2.dex */
public final class C5793ga implements InterfaceC5865i8 {
    public static final Parcelable.Creator<C5793ga> CREATOR = new C5719ea();

    /* renamed from: a */
    public final float f23947a;

    /* renamed from: b */
    public final int f23948b;

    public C5793ga(float f, int i) {
        this.f23947a = f;
        this.f23948b = i;
    }

    public /* synthetic */ C5793ga(Parcel parcel, C5756fa c5756fa) {
        this.f23947a = parcel.readFloat();
        this.f23948b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5793ga.class == obj.getClass()) {
            C5793ga c5793ga = (C5793ga) obj;
            if (this.f23947a == c5793ga.f23947a && this.f23948b == c5793ga.f23948b) {
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
        return ((Float.valueOf(this.f23947a).hashCode() + 527) * 31) + this.f23948b;
    }

    public final String toString() {
        float f = this.f23947a;
        int i = this.f23948b;
        StringBuilder sb = new StringBuilder(73);
        sb.append("smta: captureFrameRate=");
        sb.append(f);
        sb.append(", svcTemporalLayerCount=");
        sb.append(i);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.f23947a);
        parcel.writeInt(this.f23948b);
    }
}

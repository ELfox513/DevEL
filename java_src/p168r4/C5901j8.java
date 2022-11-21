package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* renamed from: r4.j8 */
/* loaded from: classes2.dex */
public final class C5901j8 implements Parcelable {
    public static final Parcelable.Creator<C5901j8> CREATOR = new C5828h8();

    /* renamed from: a */
    public final InterfaceC5865i8[] f25951a;

    public C5901j8(Parcel parcel) {
        this.f25951a = new InterfaceC5865i8[parcel.readInt()];
        int i = 0;
        while (true) {
            InterfaceC5865i8[] interfaceC5865i8Arr = this.f25951a;
            if (i >= interfaceC5865i8Arr.length) {
                return;
            }
            interfaceC5865i8Arr[i] = (InterfaceC5865i8) parcel.readParcelable(InterfaceC5865i8.class.getClassLoader());
            i++;
        }
    }

    public C5901j8(InterfaceC5865i8... interfaceC5865i8Arr) {
        this.f25951a = interfaceC5865i8Arr;
    }

    /* renamed from: a */
    public final int m10388a() {
        return this.f25951a.length;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: h */
    public final InterfaceC5865i8 m10387h(int i) {
        return this.f25951a[i];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f25951a);
    }

    /* renamed from: j */
    public final C5901j8 m10386j(C5901j8 c5901j8) {
        return c5901j8 == null ? this : m10385l(c5901j8.f25951a);
    }

    /* renamed from: l */
    public final C5901j8 m10385l(InterfaceC5865i8... interfaceC5865i8Arr) {
        if (interfaceC5865i8Arr.length == 0) {
            return this;
        }
        return new C5901j8((InterfaceC5865i8[]) C5979lc.m9725L(this.f25951a, interfaceC5865i8Arr));
    }

    public final String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.f25951a));
        return valueOf.length() != 0 ? "entries=".concat(valueOf) : new String("entries=");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5901j8.class == obj.getClass()) {
            return Arrays.equals(this.f25951a, ((C5901j8) obj).f25951a);
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f25951a.length);
        for (InterfaceC5865i8 interfaceC5865i8 : this.f25951a) {
            parcel.writeParcelable(interfaceC5865i8, 0);
        }
    }

    public C5901j8(List<? extends InterfaceC5865i8> list) {
        this.f25951a = (InterfaceC5865i8[]) list.toArray(new InterfaceC5865i8[0]);
    }
}

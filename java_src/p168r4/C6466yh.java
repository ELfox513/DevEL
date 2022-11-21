package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* renamed from: r4.yh */
/* loaded from: classes2.dex */
public final class C6466yh implements Parcelable {
    public static final Parcelable.Creator<C6466yh> CREATOR = new C6392wh();

    /* renamed from: a */
    public final InterfaceC6429xh[] f34075a;

    public C6466yh(Parcel parcel) {
        this.f34075a = new InterfaceC6429xh[parcel.readInt()];
        int i = 0;
        while (true) {
            InterfaceC6429xh[] interfaceC6429xhArr = this.f34075a;
            if (i >= interfaceC6429xhArr.length) {
                return;
            }
            interfaceC6429xhArr[i] = (InterfaceC6429xh) parcel.readParcelable(InterfaceC6429xh.class.getClassLoader());
            i++;
        }
    }

    /* renamed from: a */
    public final int m4718a() {
        return this.f34075a.length;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: h */
    public final InterfaceC6429xh m4717h(int i) {
        return this.f34075a[i];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f34075a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6466yh.class == obj.getClass()) {
            return Arrays.equals(this.f34075a, ((C6466yh) obj).f34075a);
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f34075a.length);
        for (InterfaceC6429xh interfaceC6429xh : this.f34075a) {
            parcel.writeParcelable(interfaceC6429xh, 0);
        }
    }

    public C6466yh(List<? extends InterfaceC6429xh> list) {
        InterfaceC6429xh[] interfaceC6429xhArr = new InterfaceC6429xh[list.size()];
        this.f34075a = interfaceC6429xhArr;
        list.toArray(interfaceC6429xhArr);
    }
}

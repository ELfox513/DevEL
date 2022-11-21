package p027c5;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: c5.f */
/* loaded from: classes2.dex */
public class C1067f {

    /* renamed from: a */
    public static final ClassLoader f2965a = C1067f.class.getClassLoader();

    /* renamed from: b */
    public static void m24693b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m24694a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }
}

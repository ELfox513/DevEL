package p204v4;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: v4.e */
/* loaded from: classes2.dex */
public class C7066e {

    /* renamed from: a */
    public static final ClassLoader f36063a = C7066e.class.getClassLoader();

    /* renamed from: c */
    public static void m2571c(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: b */
    public static void m2572b(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m2573a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }
}

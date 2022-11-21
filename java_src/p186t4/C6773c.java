package p186t4;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: t4.c */
/* loaded from: classes2.dex */
public final class C6773c {

    /* renamed from: a */
    public static final ClassLoader f35452a = C6773c.class.getClassLoader();

    /* renamed from: b */
    public static void m3449b(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static void m3448c(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface);
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m3450a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }
}

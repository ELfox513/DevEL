package p000a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: a.a */
/* loaded from: classes.dex */
public interface InterfaceC0000a extends IInterface {
    /* renamed from: A4 */
    void mo14745A4(String str, Bundle bundle);

    /* renamed from: I6 */
    void mo14744I6(int i, Uri uri, boolean z, Bundle bundle);

    /* renamed from: f5 */
    void mo14743f5(int i, Bundle bundle);

    /* renamed from: n6 */
    void mo14742n6(String str, Bundle bundle);

    /* renamed from: z6 */
    void mo14741z6(Bundle bundle);

    /* renamed from: a.a$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0001a extends Binder implements InterfaceC0000a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Uri uri;
            boolean z;
            Bundle bundle = null;
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 6) {
                                if (i != 1598968902) {
                                    return super.onTransact(i, parcel, parcel2, i2);
                                }
                                parcel2.writeString("android.support.customtabs.ICustomTabsCallback");
                                return true;
                            }
                            parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                            int readInt = parcel.readInt();
                            if (parcel.readInt() != 0) {
                                uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                            } else {
                                uri = null;
                            }
                            if (parcel.readInt() != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (parcel.readInt() != 0) {
                                bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            }
                            mo14744I6(readInt, uri, z, bundle);
                            parcel2.writeNoException();
                            return true;
                        }
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        mo14742n6(readString, bundle);
                        parcel2.writeNoException();
                        return true;
                    }
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo14741z6(bundle);
                    parcel2.writeNoException();
                    return true;
                }
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo14745A4(readString2, bundle);
                parcel2.writeNoException();
                return true;
            }
            parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
            int readInt2 = parcel.readInt();
            if (parcel.readInt() != 0) {
                bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
            }
            mo14743f5(readInt2, bundle);
            parcel2.writeNoException();
            return true;
        }

        public AbstractBinderC0001a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsCallback");
        }
    }
}

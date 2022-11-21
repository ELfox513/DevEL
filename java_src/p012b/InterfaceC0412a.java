package p012b;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: b.a */
/* loaded from: classes.dex */
public interface InterfaceC0412a extends IInterface {

    /* renamed from: b.a$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0413a extends Binder implements InterfaceC0412a {
        /* renamed from: o0 */
        public static InterfaceC0412a m26561o0() {
            return C0414a.f1481b;
        }

        /* renamed from: b.a$a$a */
        /* loaded from: classes.dex */
        public static class C0414a implements InterfaceC0412a {

            /* renamed from: b */
            public static InterfaceC0412a f1481b;

            /* renamed from: a */
            public IBinder f1482a;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1482a;
            }

            public C0414a(IBinder iBinder) {
                this.f1482a = iBinder;
            }

            @Override // p012b.InterfaceC0412a
            /* renamed from: E6 */
            public void mo26560E6(String str, int i, String str2, Notification notification) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f1482a.transact(1, obtain, null, 1) && AbstractBinderC0413a.m26561o0() != null) {
                        AbstractBinderC0413a.m26561o0().mo26560E6(str, i, str2, notification);
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* renamed from: j0 */
        public static InterfaceC0412a m26562j0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
            if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC0412a)) {
                return (InterfaceC0412a) queryLocalInterface;
            }
            return new C0414a(iBinder);
        }
    }

    /* renamed from: E6 */
    void mo26560E6(String str, int i, String str2, Notification notification);
}

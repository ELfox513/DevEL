package p060f4;

import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.RecentlyNonNull;
import p221x4.BinderC7326b;
/* renamed from: f4.a */
/* loaded from: classes.dex */
public interface InterfaceC3512a extends IInterface {

    /* renamed from: f4.a$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC3513a extends BinderC7326b implements InterfaceC3512a {
        public AbstractBinderC3513a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        @RecentlyNonNull
        /* renamed from: o0 */
        public static InterfaceC3512a m18742o0(@RecentlyNonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            if (queryLocalInterface instanceof InterfaceC3512a) {
                return (InterfaceC3512a) queryLocalInterface;
            }
            return new C3517d(iBinder);
        }
    }
}

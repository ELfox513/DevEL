package p018b5;

import android.os.Binder;
/* renamed from: b5.z5 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0986z5 {
    /* renamed from: a */
    public static <V> V m24869a(InterfaceC0561a6<V> interfaceC0561a6) {
        try {
            return interfaceC0561a6.zza();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return interfaceC0561a6.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}

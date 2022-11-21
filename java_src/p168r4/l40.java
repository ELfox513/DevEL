package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import p060f4.AbstractC3515c;
/* renamed from: r4.l40 */
/* loaded from: classes2.dex */
public final class l40 extends AbstractC3515c<u20> {
    public l40() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    @Override // p060f4.AbstractC3515c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ u20 mo6841a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        if (queryLocalInterface instanceof u20) {
            return (u20) queryLocalInterface;
        }
        return new t20(iBinder);
    }
}

package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import p060f4.AbstractC3515c;
/* renamed from: r4.m40 */
/* loaded from: classes2.dex */
public final class m40 extends AbstractC3515c<y20> {
    public m40() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // p060f4.AbstractC3515c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ y20 mo6841a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        if (queryLocalInterface instanceof y20) {
            return (y20) queryLocalInterface;
        }
        return new x20(iBinder);
    }
}

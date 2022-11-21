package p168r4;

import android.os.IInterface;
/* renamed from: r4.ki0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class ki0 implements em0 {

    /* renamed from: a */
    public static final em0 f26430a = new ki0();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.em0
    /* renamed from: a */
    public final Object mo5793a(Object obj) {
        if (obj == 0) {
            return null;
        }
        IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        if (queryLocalInterface instanceof ci0) {
            return (ci0) queryLocalInterface;
        }
        return new ci0(obj);
    }
}

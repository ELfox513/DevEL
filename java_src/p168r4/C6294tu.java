package p168r4;

import android.os.IInterface;
/* renamed from: r4.tu */
/* loaded from: classes2.dex */
public final /* synthetic */ class C6294tu implements em0 {

    /* renamed from: a */
    public static final em0 f32022a = new C6294tu();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.em0
    /* renamed from: a */
    public final Object mo5793a(Object obj) {
        if (obj == 0) {
            return null;
        }
        IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        if (queryLocalInterface instanceof C6111ow) {
            return (C6111ow) queryLocalInterface;
        }
        return new C6111ow(obj);
    }
}

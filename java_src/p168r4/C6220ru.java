package p168r4;

import android.os.IInterface;
/* renamed from: r4.ru */
/* loaded from: classes2.dex */
public final /* synthetic */ class C6220ru implements em0 {

    /* renamed from: a */
    public static final em0 f30688a = new C6220ru();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.em0
    /* renamed from: a */
    public final Object mo5793a(Object obj) {
        if (obj == 0) {
            return null;
        }
        IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        if (queryLocalInterface instanceof C6258sv) {
            return (C6258sv) queryLocalInterface;
        }
        return new C6258sv(obj);
    }
}

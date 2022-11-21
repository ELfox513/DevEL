package p168r4;

import android.os.IInterface;
/* renamed from: r4.rt */
/* loaded from: classes2.dex */
public final /* synthetic */ class C6219rt implements em0 {

    /* renamed from: a */
    public static final em0 f30680a = new C6219rt();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.em0
    /* renamed from: a */
    public final Object mo5793a(Object obj) {
        if (obj == 0) {
            return null;
        }
        IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (queryLocalInterface instanceof C6406wv) {
            return (C6406wv) queryLocalInterface;
        }
        return new C6406wv(obj);
    }
}

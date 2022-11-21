package p195u4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: u4.a */
/* loaded from: classes2.dex */
public class C6918a implements IInterface {

    /* renamed from: a */
    public final IBinder f35771a;

    /* renamed from: b */
    public final String f35772b;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f35771a;
    }

    public C6918a(IBinder iBinder, String str) {
        this.f35771a = iBinder;
        this.f35772b = str;
    }
}

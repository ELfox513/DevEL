package p018b5;

import java.io.Serializable;
/* renamed from: b5.a7 */
/* loaded from: classes2.dex */
public final class C0562a7<T> implements Serializable, InterfaceC0987z6 {

    /* renamed from: a */
    public final InterfaceC0987z6<T> f1725a;

    /* renamed from: b */
    public volatile transient boolean f1726b;

    /* renamed from: d */
    public transient T f1727d;

    public C0562a7(InterfaceC0987z6<T> interfaceC0987z6) {
        interfaceC0987z6.getClass();
        this.f1725a = interfaceC0987z6;
    }

    public final String toString() {
        Object obj;
        if (this.f1726b) {
            String valueOf = String.valueOf(this.f1727d);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.f1725a;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // p018b5.InterfaceC0987z6
    public final T zza() {
        if (!this.f1726b) {
            synchronized (this) {
                if (!this.f1726b) {
                    T zza = this.f1725a.zza();
                    this.f1727d = zza;
                    this.f1726b = true;
                    return zza;
                }
            }
        }
        return this.f1727d;
    }
}

package p018b5;
/* renamed from: b5.b7 */
/* loaded from: classes2.dex */
public final class C0580b7<T> implements InterfaceC0987z6<T> {

    /* renamed from: a */
    public volatile InterfaceC0987z6<T> f1745a;

    /* renamed from: b */
    public volatile boolean f1746b;

    /* renamed from: d */
    public T f1747d;

    public C0580b7(InterfaceC0987z6<T> interfaceC0987z6) {
        interfaceC0987z6.getClass();
        this.f1745a = interfaceC0987z6;
    }

    public final String toString() {
        Object obj = this.f1745a;
        if (obj == null) {
            String valueOf = String.valueOf(this.f1747d);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
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
        if (!this.f1746b) {
            synchronized (this) {
                if (!this.f1746b) {
                    InterfaceC0987z6<T> interfaceC0987z6 = this.f1745a;
                    interfaceC0987z6.getClass();
                    T zza = interfaceC0987z6.zza();
                    this.f1747d = zza;
                    this.f1746b = true;
                    this.f1745a = null;
                    return zza;
                }
            }
        }
        return this.f1747d;
    }
}

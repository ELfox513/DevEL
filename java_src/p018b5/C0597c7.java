package p018b5;

import java.io.Serializable;
import java.util.Arrays;
/* renamed from: b5.c7 */
/* loaded from: classes2.dex */
public final class C0597c7<T> implements Serializable, InterfaceC0987z6 {

    /* renamed from: a */
    public final T f1765a;

    public C0597c7(T t) {
        this.f1765a = t;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1765a});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f1765a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // p018b5.InterfaceC0987z6
    public final T zza() {
        return this.f1765a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0597c7)) {
            return false;
        }
        T t = this.f1765a;
        T t2 = ((C0597c7) obj).f1765a;
        if (t != t2 && !t.equals(t2)) {
            return false;
        }
        return true;
    }
}

package p018b5;
/* renamed from: b5.y6 */
/* loaded from: classes2.dex */
public final class C0970y6<T> extends AbstractC0936w6<T> {

    /* renamed from: a */
    public final T f2435a;

    public C0970y6(T t) {
        this.f2435a = t;
    }

    @Override // p018b5.AbstractC0936w6
    /* renamed from: a */
    public final T mo24915a() {
        return this.f2435a;
    }

    @Override // p018b5.AbstractC0936w6
    /* renamed from: b */
    public final boolean mo24914b() {
        return true;
    }

    public final int hashCode() {
        return this.f2435a.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f2435a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0970y6) {
            return this.f2435a.equals(((C0970y6) obj).f2435a);
        }
        return false;
    }
}

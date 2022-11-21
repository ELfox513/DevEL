package p018b5;
/* renamed from: b5.u6 */
/* loaded from: classes2.dex */
public final class C0902u6<T> extends AbstractC0936w6<T> {

    /* renamed from: a */
    public static final C0902u6<Object> f2335a = new C0902u6<>();

    @Override // p018b5.AbstractC0936w6
    /* renamed from: a */
    public final T mo24915a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // p018b5.AbstractC0936w6
    /* renamed from: b */
    public final boolean mo24914b() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}

package p168r4;
/* renamed from: r4.w84 */
/* loaded from: classes2.dex */
public final class w84<T> {

    /* renamed from: a */
    public final T f33139a;

    /* renamed from: b */
    public final y74 f33140b;

    /* renamed from: c */
    public final z84 f33141c;

    /* renamed from: d */
    public boolean f33142d;

    public w84(T t, y74 y74Var) {
        this.f33142d = false;
        this.f33139a = t;
        this.f33140b = y74Var;
        this.f33141c = null;
    }

    public w84(z84 z84Var) {
        this.f33142d = false;
        this.f33139a = null;
        this.f33140b = null;
        this.f33141c = z84Var;
    }

    /* renamed from: a */
    public static <T> w84<T> m5799a(T t, y74 y74Var) {
        return new w84<>(t, y74Var);
    }

    /* renamed from: b */
    public static <T> w84<T> m5798b(z84 z84Var) {
        return new w84<>(z84Var);
    }

    /* renamed from: c */
    public final boolean m5797c() {
        return this.f33141c == null;
    }
}

package p168r4;

import java.util.Collection;
import java.util.List;
/* renamed from: r4.fs3 */
/* loaded from: classes2.dex */
public final class fs3<T> {

    /* renamed from: a */
    public final List<is3<T>> f23662a;

    /* renamed from: b */
    public final List<is3<Collection<T>>> f23663b;

    /* renamed from: a */
    public final fs3<T> m11375a(is3<? extends T> is3Var) {
        this.f23662a.add(is3Var);
        return this;
    }

    /* renamed from: b */
    public final fs3<T> m11374b(is3<? extends Collection<? extends T>> is3Var) {
        this.f23663b.add(is3Var);
        return this;
    }

    /* renamed from: c */
    public final gs3<T> m11373c() {
        return new gs3<>(this.f23662a, this.f23663b, null);
    }

    public /* synthetic */ fs3(int i, int i2, es3 es3Var) {
        this.f23662a = rr3.m7348a(i);
        this.f23663b = rr3.m7348a(i2);
    }
}

package p168r4;

import java.util.Iterator;
import java.util.List;
/* renamed from: r4.kr3 */
/* loaded from: classes2.dex */
public final class kr3 implements Iterator {

    /* renamed from: a */
    public int f26532a = 0;

    /* renamed from: b */
    public final /* synthetic */ lr3 f26533b;

    public kr3(lr3 lr3Var) {
        this.f26533b = lr3Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f26532a < this.f26533b.f27338a.size() || this.f26533b.f27339b.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f26532a < this.f26533b.f27338a.size()) {
            List<E> list = this.f26533b.f27338a;
            int i = this.f26532a;
            this.f26532a = i + 1;
            return list.get(i);
        }
        lr3 lr3Var = this.f26533b;
        lr3Var.f27338a.add(lr3Var.f27339b.next());
        return next();
    }
}

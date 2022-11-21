package p168r4;

import java.util.List;
import java.util.ListIterator;
/* renamed from: r4.f23 */
/* loaded from: classes2.dex */
public final class f23 extends c23 implements ListIterator {

    /* renamed from: k */
    public final /* synthetic */ g23 f23263k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f23(g23 g23Var) {
        super(g23Var);
        this.f23263k = g23Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f23(g23 g23Var, int i) {
        super(g23Var, ((List) g23Var.f22759b).listIterator(i));
        this.f23263k = g23Var;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        boolean isEmpty = this.f23263k.isEmpty();
        m12650a();
        ((ListIterator) this.f21319a).add(obj);
        h23 h23Var = this.f23263k.f23841q;
        i = h23Var.f24414p;
        h23Var.f24414p = i + 1;
        if (isEmpty) {
            this.f23263k.m11874e();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        m12650a();
        return ((ListIterator) this.f21319a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        m12650a();
        return ((ListIterator) this.f21319a).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        m12650a();
        return ((ListIterator) this.f21319a).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        m12650a();
        return ((ListIterator) this.f21319a).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        m12650a();
        ((ListIterator) this.f21319a).set(obj);
    }
}

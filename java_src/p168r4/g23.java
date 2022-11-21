package p168r4;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
/* renamed from: r4.g23 */
/* loaded from: classes2.dex */
public class g23 extends e23 implements List {

    /* renamed from: q */
    public final /* synthetic */ h23 f23841q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g23(h23 h23Var, Object obj, List list, e23 e23Var) {
        super(h23Var, obj, list, e23Var);
        this.f23841q = h23Var;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        m11875d();
        return new f23(this);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        int i2;
        m11875d();
        boolean isEmpty = this.f22759b.isEmpty();
        ((List) this.f22759b).add(i, obj);
        h23 h23Var = this.f23841q;
        i2 = h23Var.f24414p;
        h23Var.f24414p = i2 + 1;
        if (isEmpty) {
            m11874e();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        int i2;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = ((List) this.f22759b).addAll(i, collection);
        if (addAll) {
            int size2 = this.f22759b.size();
            h23 h23Var = this.f23841q;
            i2 = h23Var.f24414p;
            h23Var.f24414p = i2 + (size2 - size);
            if (size == 0) {
                m11874e();
                return true;
            }
            return addAll;
        }
        return addAll;
    }

    @Override // java.util.List
    public final Object get(int i) {
        m11875d();
        return ((List) this.f22759b).get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        m11875d();
        return ((List) this.f22759b).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        m11875d();
        return ((List) this.f22759b).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        m11875d();
        return new f23(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        int i2;
        m11875d();
        Object remove = ((List) this.f22759b).remove(i);
        h23 h23Var = this.f23841q;
        i2 = h23Var.f24414p;
        h23Var.f24414p = i2 - 1;
        m11876a();
        return remove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        m11875d();
        return ((List) this.f22759b).set(i, obj);
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        m11875d();
        h23 h23Var = this.f23841q;
        Object obj = this.f22758a;
        List subList = ((List) this.f22759b).subList(i, i2);
        e23 e23Var = this.f22760d;
        if (e23Var == null) {
            e23Var = this;
        }
        return h23Var.m11004q(obj, subList, e23Var);
    }
}

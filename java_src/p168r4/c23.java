package p168r4;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
/* renamed from: r4.c23 */
/* loaded from: classes2.dex */
public class c23 implements Iterator {

    /* renamed from: a */
    public final Iterator f21319a;

    /* renamed from: b */
    public final Collection f21320b;

    /* renamed from: d */
    public final /* synthetic */ e23 f21321d;

    public c23(e23 e23Var) {
        Iterator it;
        this.f21321d = e23Var;
        Collection collection = e23Var.f22759b;
        this.f21320b = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.f21319a = it;
    }

    public c23(e23 e23Var, Iterator it) {
        this.f21321d = e23Var;
        this.f21320b = e23Var.f22759b;
        this.f21319a = it;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m12650a() {
        this.f21321d.m11875d();
        if (this.f21321d.f22759b == this.f21320b) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.f21319a.remove();
        h23 h23Var = this.f21321d.f22762p;
        i = h23Var.f24414p;
        h23Var.f24414p = i - 1;
        this.f21321d.m11876a();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        m12650a();
        return this.f21319a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        m12650a();
        return this.f21319a.next();
    }
}

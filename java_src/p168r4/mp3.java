package p168r4;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: r4.mp3 */
/* loaded from: classes2.dex */
public final class mp3 extends AbstractList<String> implements RandomAccess, gn3 {

    /* renamed from: a */
    public final gn3 f27849a;

    public mp3(gn3 gn3Var) {
        this.f27849a = gn3Var;
    }

    @Override // p168r4.gn3
    /* renamed from: W */
    public final Object mo9289W(int i) {
        return this.f27849a.mo9289W(i);
    }

    @Override // p168r4.gn3
    /* renamed from: f */
    public final List<?> mo9287f() {
        return this.f27849a.mo9287f();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((fn3) this.f27849a).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new lp3(this);
    }

    @Override // p168r4.gn3
    /* renamed from: j */
    public final gn3 mo9286j() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new kp3(this, i);
    }

    @Override // p168r4.gn3
    /* renamed from: p */
    public final void mo9285p(ll3 ll3Var) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27849a.size();
    }
}

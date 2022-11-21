package p168r4;

import java.util.ListIterator;
/* renamed from: r4.kp3 */
/* loaded from: classes2.dex */
public final class kp3 implements ListIterator<String> {

    /* renamed from: a */
    public final ListIterator<String> f26513a;

    /* renamed from: b */
    public final /* synthetic */ int f26514b;

    /* renamed from: d */
    public final /* synthetic */ mp3 f26515d;

    public kp3(mp3 mp3Var, int i) {
        gn3 gn3Var;
        this.f26515d = mp3Var;
        this.f26514b = i;
        gn3Var = mp3Var.f27849a;
        this.f26513a = gn3Var.listIterator(i);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f26513a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f26513a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f26513a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f26513a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f26513a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f26513a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}

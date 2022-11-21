package p018b5;

import java.util.ListIterator;
/* renamed from: b5.kb */
/* loaded from: classes2.dex */
public final class C0737kb implements ListIterator<String> {

    /* renamed from: a */
    public final ListIterator<String> f1942a;

    /* renamed from: b */
    public final /* synthetic */ int f1943b;

    /* renamed from: d */
    public final /* synthetic */ C0771mb f1944d;

    public C0737kb(C0771mb c0771mb, int i) {
        InterfaceC0752l9 interfaceC0752l9;
        this.f1944d = c0771mb;
        this.f1943b = i;
        interfaceC0752l9 = c0771mb.f1976a;
        this.f1942a = interfaceC0752l9.listIterator(i);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f1942a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f1942a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f1942a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f1942a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f1942a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f1942a.previousIndex();
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

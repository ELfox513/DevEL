package p237z4;

import java.util.ListIterator;
/* renamed from: z4.b3 */
/* loaded from: classes2.dex */
public final class C7617b3 implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f37638a;

    /* renamed from: b */
    public final /* synthetic */ int f37639b;

    /* renamed from: d */
    public final /* synthetic */ C7612a3 f37640d;

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f37638a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f37638a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f37638a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f37638a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f37638a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f37638a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }

    public C7617b3(C7612a3 c7612a3, int i) {
        InterfaceC7610a1 interfaceC7610a1;
        this.f37640d = c7612a3;
        this.f37639b = i;
        interfaceC7610a1 = c7612a3.f37631a;
        this.f37638a = interfaceC7610a1.listIterator(i);
    }
}

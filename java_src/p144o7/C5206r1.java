package p144o7;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: o7.r1 */
/* loaded from: classes2.dex */
public class C5206r1 extends AbstractList<String> implements InterfaceC5149h0, RandomAccess {

    /* renamed from: a */
    public final InterfaceC5149h0 f19532a;

    /* renamed from: o7.r1$a */
    /* loaded from: classes2.dex */
    public class C5207a implements ListIterator<String> {

        /* renamed from: a */
        public ListIterator<String> f19533a;

        /* renamed from: b */
        public final /* synthetic */ int f19534b;

        @Override // java.util.ListIterator
        /* renamed from: a */
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* renamed from: b */
        public String next() {
            return this.f19533a.next();
        }

        @Override // java.util.ListIterator
        /* renamed from: c */
        public String previous() {
            return this.f19533a.previous();
        }

        @Override // java.util.ListIterator
        /* renamed from: e */
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f19533a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f19533a.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f19533a.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f19533a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public C5207a(int i) {
            this.f19534b = i;
            this.f19533a = C5206r1.this.f19532a.listIterator(i);
        }
    }

    /* renamed from: o7.r1$b */
    /* loaded from: classes2.dex */
    public class C5208b implements Iterator<String> {

        /* renamed from: a */
        public Iterator<String> f19536a;

        @Override // java.util.Iterator
        /* renamed from: a */
        public String next() {
            return this.f19536a.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19536a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public C5208b() {
            this.f19536a = C5206r1.this.f19532a.iterator();
        }
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: F0 */
    public InterfaceC5149h0 mo14095F0() {
        return this;
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: I0 */
    public Object mo14094I0(int i) {
        return this.f19532a.mo14094I0(i);
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: X */
    public void mo14093X(AbstractC5137h abstractC5137h) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public String get(int i) {
        return (String) this.f19532a.get(i);
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: i0 */
    public List<?> mo14090i0() {
        return this.f19532a.mo14090i0();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new C5208b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new C5207a(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19532a.size();
    }

    public C5206r1(InterfaceC5149h0 interfaceC5149h0) {
        this.f19532a = interfaceC5149h0;
    }
}

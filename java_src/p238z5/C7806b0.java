package p238z5;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: z5.b0 */
/* loaded from: classes2.dex */
public final class C7806b0<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    public final List<E> f38071a;

    /* renamed from: d */
    public static <E> C7806b0<E> m320d(List<E> list) {
        return new C7806b0<>(list);
    }

    /* renamed from: e */
    public static <E> C7806b0<E> m319e(E... eArr) {
        return new C7806b0<>(Arrays.asList(eArr));
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        return this.f38071a.add(e);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return this.f38071a.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f38071a.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.f38071a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f38071a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.f38071a.equals(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.f38071a.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f38071a.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.f38071a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f38071a.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.f38071a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.f38071a.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.f38071a.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.f38071a.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.f38071a.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.f38071a.retainAll(collection);
    }

    @Override // java.util.List
    public E set(int i, E e) {
        return this.f38071a.set(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.f38071a.size();
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return this.f38071a.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f38071a.toArray();
    }

    @Override // java.util.List
    public void add(int i, E e) {
        this.f38071a.add(i, e);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        return this.f38071a.addAll(i, collection);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return this.f38071a.listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return this.f38071a.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.f38071a.toArray(tArr);
    }

    public C7806b0(List<E> list) {
        this.f38071a = Collections.unmodifiableList(list);
    }
}

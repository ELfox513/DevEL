package p237z4;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: z4.z0 */
/* loaded from: classes2.dex */
public final class C7737z0 extends AbstractC7637f<String> implements InterfaceC7610a1, RandomAccess {

    /* renamed from: d */
    public static final C7737z0 f37932d;

    /* renamed from: k */
    public static final InterfaceC7610a1 f37933k;

    /* renamed from: b */
    public final List<Object> f37934b;

    public C7737z0() {
        this(10);
    }

    @Override // p237z4.InterfaceC7610a1
    /* renamed from: G0 */
    public final Object mo406G0(int i) {
        return this.f37934b.get(i);
    }

    @Override // p237z4.InterfaceC7610a1
    /* renamed from: L */
    public final List<?> mo404L() {
        return Collections.unmodifiableList(this.f37934b);
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f37934b.size();
    }

    @Override // p237z4.AbstractC7637f, p237z4.InterfaceC7697q0
    /* renamed from: t0 */
    public final /* bridge */ /* synthetic */ boolean mo402t0() {
        return super.mo402t0();
    }

    static {
        C7737z0 c7737z0 = new C7737z0();
        f37932d = c7737z0;
        c7737z0.mo618j0();
        f37933k = c7737z0;
    }

    public C7737z0(int i) {
        this(new ArrayList(i));
    }

    /* renamed from: e */
    public static String m403e(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC7652i) {
            return ((AbstractC7652i) obj).m700o();
        }
        return C7687o0.m629h((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m806d();
        this.f37934b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m806d();
        if (collection instanceof InterfaceC7610a1) {
            collection = ((InterfaceC7610a1) collection).mo404L();
        }
        boolean addAll = this.f37934b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f37934b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC7652i) {
            AbstractC7652i abstractC7652i = (AbstractC7652i) obj;
            String m700o = abstractC7652i.m700o();
            if (abstractC7652i.mo603q()) {
                this.f37934b.set(i, m700o);
            }
            return m700o;
        }
        byte[] bArr = (byte[]) obj;
        String m629h = C7687o0.m629h(bArr);
        if (C7687o0.m631f(bArr)) {
            this.f37934b.set(i, m629h);
        }
        return m629h;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m806d();
        Object remove = this.f37934b.remove(i);
        ((AbstractList) this).modCount++;
        return m403e(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m806d();
        return m403e(this.f37934b.set(i, (String) obj));
    }

    public C7737z0(ArrayList<Object> arrayList) {
        this.f37934b = arrayList;
    }

    @Override // p237z4.InterfaceC7610a1
    /* renamed from: H0 */
    public final InterfaceC7610a1 mo405H0() {
        if (mo402t0()) {
            return new C7612a3(this);
        }
        return this;
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m806d();
        this.f37934b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // p237z4.InterfaceC7697q0
    /* renamed from: z0 */
    public final /* synthetic */ InterfaceC7697q0 mo401z0(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f37934b);
            return new C7737z0(arrayList);
        }
        throw new IllegalArgumentException();
    }
}

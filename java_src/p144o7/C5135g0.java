package p144o7;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: o7.g0 */
/* loaded from: classes2.dex */
public class C5135g0 extends AbstractC5116c<String> implements InterfaceC5149h0, RandomAccess {

    /* renamed from: d */
    public static final C5135g0 f19419d;

    /* renamed from: k */
    public static final InterfaceC5149h0 f19420k;

    /* renamed from: b */
    public final List<Object> f19421b;

    public C5135g0() {
        this(10);
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: I0 */
    public Object mo14094I0(int i) {
        return this.f19421b.get(i);
    }

    @Override // p144o7.AbstractC5116c, p144o7.C5102a0.InterfaceC5111i
    /* renamed from: V0 */
    public /* bridge */ /* synthetic */ boolean mo14568V0() {
        return super.mo14568V0();
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: i0 */
    public List<?> mo14090i0() {
        return Collections.unmodifiableList(this.f19421b);
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19421b.size();
    }

    static {
        C5135g0 c5135g0 = new C5135g0();
        f19419d = c5135g0;
        c5135g0.mo14640F();
        f19420k = c5135g0;
    }

    public C5135g0(int i) {
        this(new ArrayList(i));
    }

    /* renamed from: g */
    public static String m14566g(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC5137h) {
            return ((AbstractC5137h) obj).m14561B();
        }
        return C5102a0.m14650j((byte[]) obj);
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        m14639d();
        if (collection instanceof InterfaceC5149h0) {
            collection = ((InterfaceC5149h0) collection).mo14090i0();
        }
        boolean addAll = this.f19421b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: i */
    public String get(int i) {
        Object obj = this.f19421b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC5137h) {
            AbstractC5137h abstractC5137h = (AbstractC5137h) obj;
            String m14561B = abstractC5137h.m14561B();
            if (abstractC5137h.mo14534q()) {
                this.f19421b.set(i, m14561B);
            }
            return m14561B;
        }
        byte[] bArr = (byte[]) obj;
        String m14650j = C5102a0.m14650j(bArr);
        if (C5102a0.m14653g(bArr)) {
            this.f19421b.set(i, m14650j);
        }
        return m14650j;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    public C5135g0(ArrayList<Object> arrayList) {
        this.f19421b = arrayList;
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: F0 */
    public InterfaceC5149h0 mo14095F0() {
        if (mo14568V0()) {
            return new C5206r1(this);
        }
        return this;
    }

    @Override // p144o7.InterfaceC5149h0
    /* renamed from: X */
    public void mo14093X(AbstractC5137h abstractC5137h) {
        m14639d();
        this.f19421b.add(abstractC5137h);
        ((AbstractList) this).modCount++;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m14639d();
        this.f19421b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public void add(int i, String str) {
        m14639d();
        this.f19421b.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // p144o7.C5102a0.InterfaceC5111i
    /* renamed from: k */
    public C5135g0 mo13752n(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f19421b);
            return new C5135g0(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    /* renamed from: l */
    public String remove(int i) {
        m14639d();
        Object remove = this.f19421b.remove(i);
        ((AbstractList) this).modCount++;
        return m14566g(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: m */
    public String set(int i, String str) {
        m14639d();
        return m14566g(this.f19421b.set(i, str));
    }
}

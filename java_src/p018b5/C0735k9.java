package p018b5;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: b5.k9 */
/* loaded from: classes2.dex */
public final class C0735k9 extends AbstractC0665g7<String> implements RandomAccess, InterfaceC0752l9 {

    /* renamed from: d */
    public static final C0735k9 f1937d;

    /* renamed from: k */
    public static final InterfaceC0752l9 f1938k;

    /* renamed from: b */
    public final List<Object> f1939b;

    public C0735k9() {
        this(10);
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: C */
    public final Object mo25653C(int i) {
        return this.f1939b.get(i);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m25927d();
        if (collection instanceof InterfaceC0752l9) {
            collection = ((InterfaceC0752l9) collection).mo25649f();
        }
        boolean addAll = this.f1939b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: c */
    public final InterfaceC0752l9 mo25651c() {
        return mo25928b() ? new C0771mb(this) : this;
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: f */
    public final List<?> mo25649f() {
        return Collections.unmodifiableList(this.f1939b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1939b.size();
    }

    static {
        C0735k9 c0735k9 = new C0735k9(10);
        f1937d = c0735k9;
        c0735k9.mo25929a();
        f1938k = c0735k9;
    }

    public C0735k9(int i) {
        this.f1939b = new ArrayList(i);
    }

    /* renamed from: g */
    public static String m25697g(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC0937w7) {
            return ((AbstractC0937w7) obj).m25027u(C0650f9.f1817a);
        }
        return C0650f9.m25943h((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        m25927d();
        this.f1939b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public final String get(int i) {
        Object obj = this.f1939b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC0937w7) {
            AbstractC0937w7 abstractC0937w7 = (AbstractC0937w7) obj;
            String m25027u = abstractC0937w7.m25027u(C0650f9.f1817a);
            if (abstractC0937w7.mo25032o()) {
                this.f1939b.set(i, m25027u);
            }
            return m25027u;
        }
        byte[] bArr = (byte[]) obj;
        String m25943h = C0650f9.m25943h(bArr);
        if (C0650f9.m25942i(bArr)) {
            this.f1939b.set(i, m25943h);
        }
        return m25943h;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        m25927d();
        return m25697g(this.f1939b.set(i, (String) obj));
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: J */
    public final void mo25652J(AbstractC0937w7 abstractC0937w7) {
        m25927d();
        this.f1939b.add(abstractC0937w7);
        ((AbstractList) this).modCount++;
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m25927d();
        this.f1939b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // p018b5.InterfaceC0633e9
    /* renamed from: p0 */
    public final /* bridge */ /* synthetic */ InterfaceC0633e9 mo24861p0(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f1939b);
            return new C0735k9(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m25927d();
        Object remove = this.f1939b.remove(i);
        ((AbstractList) this).modCount++;
        return m25697g(remove);
    }

    public C0735k9(ArrayList<Object> arrayList) {
        this.f1939b = arrayList;
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }
}

package p168r4;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: r4.fn3 */
/* loaded from: classes2.dex */
public final class fn3 extends vk3<String> implements RandomAccess, gn3 {

    /* renamed from: d */
    public static final fn3 f23578d;

    /* renamed from: k */
    public static final gn3 f23579k;

    /* renamed from: b */
    public final List<Object> f23580b;

    public fn3() {
        this(10);
    }

    @Override // p168r4.gn3
    /* renamed from: W */
    public final Object mo9289W(int i) {
        return this.f23580b.get(i);
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m6129d();
        if (collection instanceof gn3) {
            collection = ((gn3) collection).mo9287f();
        }
        boolean addAll = this.f23580b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p168r4.gn3
    /* renamed from: f */
    public final List<?> mo9287f() {
        return Collections.unmodifiableList(this.f23580b);
    }

    @Override // p168r4.gn3
    /* renamed from: j */
    public final gn3 mo9286j() {
        return zza() ? new mp3(this) : this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23580b.size();
    }

    static {
        fn3 fn3Var = new fn3(10);
        f23578d = fn3Var;
        fn3Var.mo4629a();
        f23579k = fn3Var;
    }

    public fn3(int i) {
        this.f23580b = new ArrayList(i);
    }

    /* renamed from: g */
    public static String m11460g(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ll3) {
            return ((ll3) obj).m9625d(zm3.f34680a);
        }
        return zm3.m4177d((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        m6129d();
        this.f23580b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public final String get(int i) {
        Object obj = this.f23580b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ll3) {
            ll3 ll3Var = (ll3) obj;
            String m9625d = ll3Var.m9625d(zm3.f34680a);
            if (ll3Var.mo7740y()) {
                this.f23580b.set(i, m9625d);
            }
            return m9625d;
        }
        byte[] bArr = (byte[]) obj;
        String m4177d = zm3.m4177d(bArr);
        if (zm3.m4178c(bArr)) {
            this.f23580b.set(i, m4177d);
        }
        return m4177d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        m6129d();
        return m11460g(this.f23580b.set(i, (String) obj));
    }

    @Override // p168r4.ym3
    /* renamed from: S */
    public final /* bridge */ /* synthetic */ ym3 mo4192S(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f23580b);
            return new fn3(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m6129d();
        this.f23580b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // p168r4.gn3
    /* renamed from: p */
    public final void mo9285p(ll3 ll3Var) {
        m6129d();
        this.f23580b.add(ll3Var);
        ((AbstractList) this).modCount++;
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m6129d();
        Object remove = this.f23580b.remove(i);
        ((AbstractList) this).modCount++;
        return m11460g(remove);
    }

    public fn3(ArrayList<Object> arrayList) {
        this.f23580b = arrayList;
    }

    @Override // p168r4.vk3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }
}

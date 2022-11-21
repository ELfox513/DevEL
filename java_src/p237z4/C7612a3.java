package p237z4;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: z4.a3 */
/* loaded from: classes2.dex */
public final class C7612a3 extends AbstractList<String> implements InterfaceC7610a1, RandomAccess {

    /* renamed from: a */
    public final InterfaceC7610a1 f37631a;

    @Override // p237z4.InterfaceC7610a1
    /* renamed from: G0 */
    public final Object mo406G0(int i) {
        return this.f37631a.mo406G0(i);
    }

    @Override // p237z4.InterfaceC7610a1
    /* renamed from: H0 */
    public final InterfaceC7610a1 mo405H0() {
        return this;
    }

    @Override // p237z4.InterfaceC7610a1
    /* renamed from: L */
    public final List<?> mo404L() {
        return this.f37631a.mo404L();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f37631a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C7622c3(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C7617b3(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f37631a.size();
    }

    public C7612a3(InterfaceC7610a1 interfaceC7610a1) {
        this.f37631a = interfaceC7610a1;
    }
}

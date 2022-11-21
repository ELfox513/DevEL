package p018b5;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: b5.mb */
/* loaded from: classes2.dex */
public final class C0771mb extends AbstractList<String> implements RandomAccess, InterfaceC0752l9 {

    /* renamed from: a */
    public final InterfaceC0752l9 f1976a;

    public C0771mb(InterfaceC0752l9 interfaceC0752l9) {
        this.f1976a = interfaceC0752l9;
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: C */
    public final Object mo25653C(int i) {
        return this.f1976a.mo25653C(i);
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: J */
    public final void mo25652J(AbstractC0937w7 abstractC0937w7) {
        throw new UnsupportedOperationException();
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: c */
    public final InterfaceC0752l9 mo25651c() {
        return this;
    }

    @Override // p018b5.InterfaceC0752l9
    /* renamed from: f */
    public final List<?> mo25649f() {
        return this.f1976a.mo25649f();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((C0735k9) this.f1976a).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C0754lb(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C0737kb(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1976a.size();
    }
}

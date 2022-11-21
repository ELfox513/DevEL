package p018b5;

import java.util.Iterator;
/* renamed from: b5.lb */
/* loaded from: classes2.dex */
public final class C0754lb implements Iterator<String> {

    /* renamed from: a */
    public final Iterator<String> f1959a;

    /* renamed from: b */
    public final /* synthetic */ C0771mb f1960b;

    public C0754lb(C0771mb c0771mb) {
        InterfaceC0752l9 interfaceC0752l9;
        this.f1960b = c0771mb;
        interfaceC0752l9 = c0771mb.f1976a;
        this.f1959a = interfaceC0752l9.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1959a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f1959a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

package p018b5;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: b5.d */
/* loaded from: classes2.dex */
public final class C0606d implements Iterator<InterfaceC0827q> {

    /* renamed from: a */
    public final /* synthetic */ Iterator f1774a;

    /* renamed from: b */
    public final /* synthetic */ Iterator f1775b;

    public C0606d(C0640f c0640f, Iterator it, Iterator it2) {
        this.f1774a = it;
        this.f1775b = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f1774a.hasNext()) {
            return true;
        }
        return this.f1775b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ InterfaceC0827q next() {
        if (this.f1774a.hasNext()) {
            return new C0895u(((Integer) this.f1774a.next()).toString());
        }
        if (this.f1775b.hasNext()) {
            return new C0895u((String) this.f1775b.next());
        }
        throw new NoSuchElementException();
    }
}

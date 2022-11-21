package p018b5;

import java.util.Iterator;
/* renamed from: b5.l */
/* loaded from: classes2.dex */
public final class C0742l implements Iterator<InterfaceC0827q> {

    /* renamed from: a */
    public final /* synthetic */ Iterator f1951a;

    public C0742l(Iterator it) {
        this.f1951a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1951a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ InterfaceC0827q next() {
        return new C0895u((String) this.f1951a.next());
    }
}

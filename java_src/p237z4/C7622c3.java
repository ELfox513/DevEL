package p237z4;

import java.util.Iterator;
/* renamed from: z4.c3 */
/* loaded from: classes2.dex */
public final class C7622c3 implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f37641a;

    /* renamed from: b */
    public final /* synthetic */ C7612a3 f37642b;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f37641a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f37641a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public C7622c3(C7612a3 c7612a3) {
        InterfaceC7610a1 interfaceC7610a1;
        this.f37642b = c7612a3;
        interfaceC7610a1 = c7612a3.f37631a;
        this.f37641a = interfaceC7610a1.iterator();
    }
}

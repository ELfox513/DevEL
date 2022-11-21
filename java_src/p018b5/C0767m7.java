package p018b5;

import java.util.NoSuchElementException;
/* renamed from: b5.m7 */
/* loaded from: classes2.dex */
public final class C0767m7 extends AbstractC0818p7 {

    /* renamed from: a */
    public int f1970a = 0;

    /* renamed from: b */
    public final int f1971b;

    /* renamed from: d */
    public final /* synthetic */ AbstractC0937w7 f1972d;

    public C0767m7(AbstractC0937w7 abstractC0937w7) {
        this.f1972d = abstractC0937w7;
        this.f1971b = abstractC0937w7.mo25037g();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1970a < this.f1971b;
    }

    @Override // p018b5.InterfaceC0852r7
    public final byte zza() {
        int i = this.f1970a;
        if (i < this.f1971b) {
            this.f1970a = i + 1;
            return this.f1972d.mo25038e(i);
        }
        throw new NoSuchElementException();
    }
}

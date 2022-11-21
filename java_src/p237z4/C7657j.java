package p237z4;

import java.util.NoSuchElementException;
/* renamed from: z4.j */
/* loaded from: classes2.dex */
public final class C7657j extends AbstractC7667l {

    /* renamed from: a */
    public int f37769a = 0;

    /* renamed from: b */
    public final int f37770b;

    /* renamed from: d */
    public final /* synthetic */ AbstractC7652i f37771d;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f37769a < this.f37770b;
    }

    public C7657j(AbstractC7652i abstractC7652i) {
        this.f37771d = abstractC7652i;
        this.f37770b = abstractC7652i.size();
    }

    @Override // p237z4.InterfaceC7691p
    /* renamed from: d */
    public final byte mo623d() {
        int i = this.f37769a;
        if (i < this.f37770b) {
            this.f37769a = i + 1;
            return this.f37771d.mo601u(i);
        }
        throw new NoSuchElementException();
    }
}

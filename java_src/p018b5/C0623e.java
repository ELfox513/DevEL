package p018b5;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: b5.e */
/* loaded from: classes2.dex */
public final class C0623e implements Iterator<InterfaceC0827q> {

    /* renamed from: a */
    public int f1793a = 0;

    /* renamed from: b */
    public final /* synthetic */ C0640f f1794b;

    public C0623e(C0640f c0640f) {
        this.f1794b = c0640f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1793a < this.f1794b.m26018i();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ InterfaceC0827q next() {
        if (this.f1793a < this.f1794b.m26018i()) {
            C0640f c0640f = this.f1794b;
            int i = this.f1793a;
            this.f1793a = i + 1;
            return c0640f.m26017m(i);
        }
        int i2 = this.f1793a;
        StringBuilder sb = new StringBuilder(32);
        sb.append("Out of bounds index: ");
        sb.append(i2);
        throw new NoSuchElementException(sb.toString());
    }
}

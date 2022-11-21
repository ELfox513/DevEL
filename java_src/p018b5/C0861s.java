package p018b5;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: b5.s */
/* loaded from: classes2.dex */
public final class C0861s implements Iterator<InterfaceC0827q> {

    /* renamed from: a */
    public int f2288a = 0;

    /* renamed from: b */
    public final /* synthetic */ C0895u f2289b;

    public C0861s(C0895u c0895u) {
        this.f2289b = c0895u;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i = this.f2288a;
        str = this.f2289b.f2324a;
        return i < str.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ InterfaceC0827q next() {
        String str;
        int i = this.f2288a;
        str = this.f2289b.f2324a;
        if (i < str.length()) {
            int i2 = this.f2288a;
            this.f2288a = i2 + 1;
            return new C0895u(String.valueOf(i2));
        }
        throw new NoSuchElementException();
    }
}

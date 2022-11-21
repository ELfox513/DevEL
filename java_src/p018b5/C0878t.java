package p018b5;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: b5.t */
/* loaded from: classes2.dex */
public final class C0878t implements Iterator<InterfaceC0827q> {

    /* renamed from: a */
    public int f2307a = 0;

    /* renamed from: b */
    public final /* synthetic */ C0895u f2308b;

    public C0878t(C0895u c0895u) {
        this.f2308b = c0895u;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i = this.f2307a;
        str = this.f2308b.f2324a;
        return i < str.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ InterfaceC0827q next() {
        String str;
        String str2;
        int i = this.f2307a;
        str = this.f2308b.f2324a;
        if (i < str.length()) {
            str2 = this.f2308b.f2324a;
            int i2 = this.f2307a;
            this.f2307a = i2 + 1;
            return new C0895u(String.valueOf(str2.charAt(i2)));
        }
        throw new NoSuchElementException();
    }
}

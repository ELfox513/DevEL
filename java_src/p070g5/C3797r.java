package p070g5;

import android.os.Bundle;
import java.util.Iterator;
/* renamed from: g5.r */
/* loaded from: classes2.dex */
public final class C3797r implements Iterator<String> {

    /* renamed from: a */
    public final Iterator<String> f16901a;

    /* renamed from: b */
    public final /* synthetic */ C3809s f16902b;

    public C3797r(C3809s c3809s) {
        Bundle bundle;
        this.f16902b = c3809s;
        bundle = c3809s.f16924a;
        this.f16901a = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    /* renamed from: a */
    public final String next() {
        return this.f16901a.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16901a.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}

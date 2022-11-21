package p168r4;

import java.util.NoSuchElementException;
/* renamed from: r4.z33 */
/* loaded from: classes2.dex */
public final class z33 extends r53 {

    /* renamed from: a */
    public boolean f34316a;

    /* renamed from: b */
    public final /* synthetic */ Object f34317b;

    public z33(Object obj) {
        this.f34317b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f34316a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f34316a) {
            throw new NoSuchElementException();
        }
        this.f34316a = true;
        return this.f34317b;
    }
}

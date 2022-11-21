package p168r4;

import java.util.Iterator;
import net.bytebuddy.pool.TypePool;
/* renamed from: r4.o53 */
/* loaded from: classes2.dex */
public final class o53<E> extends y33<E> {

    /* renamed from: d */
    public final transient E f28861d;

    /* renamed from: k */
    public transient int f28862k;

    public o53(E e) {
        e.getClass();
        this.f28861d = e;
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f28861d.equals(obj);
    }

    @Override // p168r4.y33, p168r4.j33
    /* renamed from: d */
    public final r53<E> mo4919d() {
        return new z33(this.f28861d);
    }

    @Override // p168r4.y33, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f28862k;
        if (i == 0) {
            int hashCode = this.f28861d.hashCode();
            this.f28862k = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // p168r4.y33, p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return new z33(this.f28861d);
    }

    @Override // p168r4.j33
    /* renamed from: m */
    public final int mo6236m(Object[] objArr, int i) {
        objArr[i] = this.f28861d;
        return i + 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f28861d.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // p168r4.y33
    /* renamed from: u */
    public final boolean mo4912u() {
        return this.f28862k != 0;
    }

    @Override // p168r4.y33
    /* renamed from: v */
    public final o33<E> mo4911v() {
        return o33.m8899r(this.f28861d);
    }

    public o53(E e, int i) {
        this.f28861d = e;
        this.f28862k = i;
    }
}

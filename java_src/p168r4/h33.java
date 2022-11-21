package p168r4;

import java.util.Arrays;
import java.util.Iterator;
/* renamed from: r4.h33 */
/* loaded from: classes2.dex */
public class h33<E> extends i33<E> {

    /* renamed from: a */
    public Object[] f24434a;

    /* renamed from: b */
    public int f24435b = 0;

    /* renamed from: c */
    public boolean f24436c;

    public h33(int i) {
        this.f24434a = new Object[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final i33<E> m10987d(Iterable<? extends E> iterable) {
        m10986e(this.f24435b + iterable.size());
        if (!(iterable instanceof j33)) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                mo5509a(it.next());
            }
            return this;
        }
        this.f24435b = ((j33) iterable).mo6236m(this.f24434a, this.f24435b);
        return this;
    }

    /* renamed from: e */
    public final void m10986e(int i) {
        Object[] objArr = this.f24434a;
        int length = objArr.length;
        if (length < i) {
            this.f24434a = Arrays.copyOf(objArr, i33.m10729b(length, i));
            this.f24436c = false;
        } else if (this.f24436c) {
            this.f24434a = (Object[]) objArr.clone();
            this.f24436c = false;
        }
    }

    /* renamed from: c */
    public final h33<E> m10988c(E e) {
        e.getClass();
        m10986e(this.f24435b + 1);
        Object[] objArr = this.f24434a;
        int i = this.f24435b;
        this.f24435b = i + 1;
        objArr[i] = e;
        return this;
    }
}

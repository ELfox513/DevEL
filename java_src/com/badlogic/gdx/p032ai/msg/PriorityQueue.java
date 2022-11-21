package com.badlogic.gdx.p032ai.msg;

import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectSet;
import java.lang.Comparable;
/* renamed from: com.badlogic.gdx.ai.msg.PriorityQueue */
/* loaded from: classes.dex */
public class PriorityQueue<E extends Comparable<E>> {

    /* renamed from: a */
    public Object[] f3309a;

    /* renamed from: b */
    public ObjectSet<E> f3310b;

    /* renamed from: c */
    public boolean f3311c;

    /* renamed from: d */
    public int f3312d;

    public PriorityQueue() {
        this(11);
    }

    public void clear() {
        for (int i = 0; i < this.f3312d; i++) {
            this.f3309a[i] = null;
        }
        this.f3312d = 0;
        this.f3310b.clear();
    }

    public E get(int i) {
        if (i >= this.f3312d) {
            return null;
        }
        return (E) this.f3309a[i];
    }

    public boolean getUniqueness() {
        return this.f3311c;
    }

    public E peek() {
        if (this.f3312d == 0) {
            return null;
        }
        return (E) this.f3309a[0];
    }

    public void setUniqueness(boolean z) {
        this.f3311c = z;
    }

    public int size() {
        return this.f3312d;
    }

    public PriorityQueue(int i) {
        this.f3312d = 0;
        this.f3309a = new Object[i];
        this.f3310b = new ObjectSet<>(i);
    }

    /* renamed from: a */
    public final void m24387a(int i) {
        double d;
        double d2;
        if (i >= 0) {
            Object[] objArr = this.f3309a;
            int length = objArr.length;
            if (length < 64) {
                d = length + 1;
                d2 = 2.0d;
            } else {
                d = length;
                d2 = 1.5d;
            }
            Double.isNaN(d);
            int i2 = (int) (d * d2);
            if (i2 < 0) {
                i2 = Integer.MAX_VALUE;
            }
            if (i2 >= i) {
                i = i2;
            }
            Object[] objArr2 = new Object[i];
            System.arraycopy(objArr, 0, objArr2, 0, this.f3312d);
            this.f3309a = objArr2;
            return;
        }
        throw new GdxRuntimeException("Capacity upper limit exceeded.");
    }

    public boolean add(E e) {
        if (e != null) {
            if (this.f3311c && !this.f3310b.add(e)) {
                return false;
            }
            int i = this.f3312d;
            if (i >= this.f3309a.length) {
                m24387a(i + 1);
            }
            this.f3312d = i + 1;
            if (i == 0) {
                this.f3309a[0] = e;
                return true;
            }
            m24385c(i, e);
            return true;
        }
        throw new IllegalArgumentException("Element cannot be null.");
    }

    /* renamed from: b */
    public final void m24386b(int i, E e) {
        int i2 = this.f3312d >>> 1;
        while (i < i2) {
            int i3 = (i << 1) + 1;
            Object[] objArr = this.f3309a;
            Comparable comparable = (Comparable) objArr[i3];
            int i4 = i3 + 1;
            if (i4 < this.f3312d && comparable.compareTo((Comparable) objArr[i4]) > 0) {
                comparable = (Comparable) this.f3309a[i4];
                i3 = i4;
            }
            if (e.compareTo(comparable) <= 0) {
                break;
            }
            this.f3309a[i] = comparable;
            i = i3;
        }
        this.f3309a[i] = e;
    }

    /* renamed from: c */
    public final void m24385c(int i, E e) {
        while (i > 0) {
            int i2 = (i - 1) >>> 1;
            Comparable comparable = (Comparable) this.f3309a[i2];
            if (e.compareTo(comparable) >= 0) {
                break;
            }
            this.f3309a[i] = comparable;
            i = i2;
        }
        this.f3309a[i] = e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public E poll() {
        int i = this.f3312d;
        if (i == 0) {
            return null;
        }
        int i2 = i - 1;
        this.f3312d = i2;
        Object[] objArr = this.f3309a;
        E e = (E) objArr[0];
        Comparable comparable = (Comparable) objArr[i2];
        objArr[i2] = null;
        if (i2 != 0) {
            m24386b(0, comparable);
        }
        if (this.f3311c) {
            this.f3310b.remove(e);
        }
        return e;
    }
}

package com.badlogic.gdx.utils;

import com.badlogic.gdx.utils.reflect.ArrayReflection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class Queue<T> implements Iterable<T> {

    /* renamed from: a */
    public T[] f6715a;

    /* renamed from: b */
    public int f6716b;

    /* renamed from: d */
    public int f6717d;

    /* renamed from: k */
    public transient QueueIterable f6718k;
    public int size;

    /* loaded from: classes.dex */
    public static class QueueIterable<T> implements Iterable<T> {

        /* renamed from: a */
        public final Queue<T> f6719a;

        /* renamed from: b */
        public final boolean f6720b;

        /* renamed from: d */
        public QueueIterator f6721d;

        /* renamed from: k */
        public QueueIterator f6722k;

        public QueueIterable(Queue<T> queue) {
            this(queue, true);
        }

        public QueueIterable(Queue<T> queue, boolean z) {
            this.f6719a = queue;
            this.f6720b = z;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            if (Collections.allocateIterators) {
                return new QueueIterator(this.f6719a, this.f6720b);
            }
            if (this.f6721d == null) {
                this.f6721d = new QueueIterator(this.f6719a, this.f6720b);
                this.f6722k = new QueueIterator(this.f6719a, this.f6720b);
            }
            QueueIterator queueIterator = this.f6721d;
            if (!queueIterator.f6726k) {
                queueIterator.f6725d = 0;
                queueIterator.f6726k = true;
                this.f6722k.f6726k = false;
                return queueIterator;
            }
            QueueIterator queueIterator2 = this.f6722k;
            queueIterator2.f6725d = 0;
            queueIterator2.f6726k = true;
            queueIterator.f6726k = false;
            return queueIterator2;
        }
    }

    /* loaded from: classes.dex */
    public static class QueueIterator<T> implements Iterator<T>, Iterable<T> {

        /* renamed from: a */
        public final Queue<T> f6723a;

        /* renamed from: b */
        public final boolean f6724b;

        /* renamed from: d */
        public int f6725d;

        /* renamed from: k */
        public boolean f6726k;

        public QueueIterator(Queue<T> queue) {
            this(queue, true);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this;
        }

        public void reset() {
            this.f6725d = 0;
        }

        public QueueIterator(Queue<T> queue, boolean z) {
            this.f6726k = true;
            this.f6723a = queue;
            this.f6724b = z;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6726k) {
                if (this.f6725d < this.f6723a.size) {
                    return true;
                }
                return false;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public T next() {
            int i = this.f6725d;
            Queue<T> queue = this.f6723a;
            if (i < queue.size) {
                if (this.f6726k) {
                    this.f6725d = i + 1;
                    return queue.get(i);
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException(String.valueOf(this.f6725d));
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f6724b) {
                int i = this.f6725d - 1;
                this.f6725d = i;
                this.f6723a.removeIndex(i);
                return;
            }
            throw new GdxRuntimeException("Remove not allowed.");
        }
    }

    public Queue() {
        this(16);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r12) {
        /*
            r11 = this;
            r0 = 1
            if (r11 != r12) goto L4
            return r0
        L4:
            r1 = 0
            if (r12 == 0) goto L40
            boolean r2 = r12 instanceof com.badlogic.gdx.utils.Queue
            if (r2 != 0) goto Lc
            goto L40
        Lc:
            com.badlogic.gdx.utils.Queue r12 = (com.badlogic.gdx.utils.Queue) r12
            int r2 = r11.size
            int r3 = r12.size
            if (r3 == r2) goto L15
            return r1
        L15:
            T[] r3 = r11.f6715a
            int r4 = r3.length
            T[] r5 = r12.f6715a
            int r6 = r5.length
            int r7 = r11.f6716b
            int r12 = r12.f6716b
            r8 = 0
        L20:
            if (r8 >= r2) goto L3f
            r9 = r3[r7]
            r10 = r5[r12]
            if (r9 != 0) goto L2b
            if (r10 != 0) goto L31
            goto L32
        L2b:
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L32
        L31:
            return r1
        L32:
            int r7 = r7 + 1
            int r12 = r12 + 1
            if (r7 != r4) goto L39
            r7 = 0
        L39:
            if (r12 != r6) goto L3c
            r12 = 0
        L3c:
            int r8 = r8 + 1
            goto L20
        L3f:
            return r0
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.Queue.equals(java.lang.Object):boolean");
    }

    public boolean equalsIdentity(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Queue)) {
            return false;
        }
        Queue queue = (Queue) obj;
        int i = this.size;
        if (queue.size != i) {
            return false;
        }
        T[] tArr = this.f6715a;
        int length = tArr.length;
        T[] tArr2 = queue.f6715a;
        int length2 = tArr2.length;
        int i2 = this.f6716b;
        int i3 = queue.f6716b;
        for (int i4 = 0; i4 < i; i4++) {
            if (tArr[i2] != tArr2[i3]) {
                return false;
            }
            i2++;
            i3++;
            if (i2 == length) {
                i2 = 0;
            }
            if (i3 == length2) {
                i3 = 0;
            }
        }
        return true;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        T[] tArr = this.f6715a;
        int i = this.f6716b;
        int i2 = this.f6717d;
        StringBuilder stringBuilder = new StringBuilder(64);
        stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        stringBuilder.append(tArr[i]);
        while (true) {
            i = (i + 1) % tArr.length;
            if (i != i2) {
                stringBuilder.append(", ").append(tArr[i]);
            } else {
                stringBuilder.append(']');
                return stringBuilder.toString();
            }
        }
    }

    public Queue(int i) {
        this.f6716b = 0;
        this.f6717d = 0;
        this.size = 0;
        this.f6715a = (T[]) new Object[i];
    }

    public void addFirst(@Null T t) {
        T[] tArr = this.f6715a;
        if (this.size == tArr.length) {
            m23548d(tArr.length << 1);
            tArr = this.f6715a;
        }
        int i = this.f6716b - 1;
        if (i == -1) {
            i = tArr.length - 1;
        }
        tArr[i] = t;
        this.f6716b = i;
        this.size++;
    }

    public void addLast(@Null T t) {
        T[] tArr = this.f6715a;
        if (this.size == tArr.length) {
            m23548d(tArr.length << 1);
            tArr = this.f6715a;
        }
        int i = this.f6717d;
        int i2 = i + 1;
        this.f6717d = i2;
        tArr[i] = t;
        if (i2 == tArr.length) {
            this.f6717d = 0;
        }
        this.size++;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        T[] tArr = this.f6715a;
        int i = this.f6716b;
        int i2 = this.f6717d;
        if (i < i2) {
            while (i < i2) {
                tArr[i] = null;
                i++;
            }
        } else {
            while (i < tArr.length) {
                tArr[i] = null;
                i++;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                tArr[i3] = null;
            }
        }
        this.f6716b = 0;
        this.f6717d = 0;
        this.size = 0;
    }

    /* renamed from: d */
    public void m23548d(int i) {
        T[] tArr = this.f6715a;
        int i2 = this.f6716b;
        int i3 = this.f6717d;
        T[] tArr2 = (T[]) ((Object[]) ArrayReflection.newInstance(tArr.getClass().getComponentType(), i));
        if (i2 < i3) {
            System.arraycopy(tArr, i2, tArr2, 0, i3 - i2);
        } else if (this.size > 0) {
            int length = tArr.length - i2;
            System.arraycopy(tArr, i2, tArr2, 0, length);
            System.arraycopy(tArr, 0, tArr2, length, i3);
        }
        this.f6715a = tArr2;
        this.f6716b = 0;
        this.f6717d = this.size;
    }

    public void ensureCapacity(int i) {
        int i2 = this.size + i;
        if (this.f6715a.length < i2) {
            m23548d(i2);
        }
    }

    public T first() {
        if (this.size != 0) {
            return this.f6715a[this.f6716b];
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public T get(int i) {
        if (i >= 0) {
            if (i < this.size) {
                T[] tArr = this.f6715a;
                int i2 = this.f6716b + i;
                if (i2 >= tArr.length) {
                    i2 -= tArr.length;
                }
                return tArr[i2];
            }
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("index can't be < 0: " + i);
    }

    public int hashCode() {
        int i = this.size;
        T[] tArr = this.f6715a;
        int length = tArr.length;
        int i2 = this.f6716b;
        int i3 = i + 1;
        for (int i4 = 0; i4 < i; i4++) {
            T t = tArr[i2];
            i3 *= 31;
            if (t != null) {
                i3 += t.hashCode();
            }
            i2++;
            if (i2 == length) {
                i2 = 0;
            }
        }
        return i3;
    }

    public int indexOf(T t, boolean z) {
        int length;
        if (this.size == 0) {
            return -1;
        }
        T[] tArr = this.f6715a;
        int i = this.f6716b;
        int i2 = this.f6717d;
        int i3 = 0;
        if (!z && t != null) {
            if (i < i2) {
                for (int i4 = i; i4 < i2; i4++) {
                    if (t.equals(tArr[i4])) {
                        return i4 - i;
                    }
                }
            } else {
                int length2 = tArr.length;
                for (int i5 = i; i5 < length2; i5++) {
                    if (t.equals(tArr[i5])) {
                        return i5 - i;
                    }
                }
                while (i3 < i2) {
                    if (t.equals(tArr[i3])) {
                        length = tArr.length;
                        return (i3 + length) - i;
                    }
                    i3++;
                }
            }
            return -1;
        }
        if (i < i2) {
            for (int i6 = i; i6 < i2; i6++) {
                if (tArr[i6] == t) {
                    return i6 - i;
                }
            }
        } else {
            int length3 = tArr.length;
            for (int i7 = i; i7 < length3; i7++) {
                if (tArr[i7] == t) {
                    return i7 - i;
                }
            }
            while (i3 < i2) {
                if (tArr[i3] == t) {
                    length = tArr.length;
                    return (i3 + length) - i;
                }
                i3++;
            }
        }
        return -1;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        if (Collections.allocateIterators) {
            return new QueueIterator(this, true);
        }
        if (this.f6718k == null) {
            this.f6718k = new QueueIterable(this);
        }
        return this.f6718k.iterator();
    }

    public T last() {
        if (this.size != 0) {
            T[] tArr = this.f6715a;
            int i = this.f6717d - 1;
            if (i == -1) {
                i = tArr.length - 1;
            }
            return tArr[i];
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public T removeFirst() {
        int i = this.size;
        if (i != 0) {
            T[] tArr = this.f6715a;
            int i2 = this.f6716b;
            T t = tArr[i2];
            tArr[i2] = null;
            int i3 = i2 + 1;
            this.f6716b = i3;
            if (i3 == tArr.length) {
                this.f6716b = 0;
            }
            this.size = i - 1;
            return t;
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public T removeIndex(int i) {
        T t;
        if (i >= 0) {
            if (i < this.size) {
                T[] tArr = this.f6715a;
                int i2 = this.f6716b;
                int i3 = this.f6717d;
                int i4 = i + i2;
                if (i2 < i3) {
                    t = tArr[i4];
                    System.arraycopy(tArr, i4 + 1, tArr, i4, i3 - i4);
                    tArr[i3] = null;
                    this.f6717d--;
                } else if (i4 >= tArr.length) {
                    int length = i4 - tArr.length;
                    t = tArr[length];
                    System.arraycopy(tArr, length + 1, tArr, length, i3 - length);
                    this.f6717d--;
                } else {
                    T t2 = tArr[i4];
                    System.arraycopy(tArr, i2, tArr, i2 + 1, i4 - i2);
                    tArr[i2] = null;
                    int i5 = this.f6716b + 1;
                    this.f6716b = i5;
                    if (i5 == tArr.length) {
                        this.f6716b = 0;
                    }
                    t = t2;
                }
                this.size--;
                return t;
            }
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("index can't be < 0: " + i);
    }

    public T removeLast() {
        int i = this.size;
        if (i != 0) {
            T[] tArr = this.f6715a;
            int i2 = this.f6717d - 1;
            if (i2 == -1) {
                i2 = tArr.length - 1;
            }
            T t = tArr[i2];
            tArr[i2] = null;
            this.f6717d = i2;
            this.size = i - 1;
            return t;
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public boolean removeValue(T t, boolean z) {
        int indexOf = indexOf(t, z);
        if (indexOf == -1) {
            return false;
        }
        removeIndex(indexOf);
        return true;
    }

    public Queue(int i, Class<T> cls) {
        this.f6716b = 0;
        this.f6717d = 0;
        this.size = 0;
        this.f6715a = (T[]) ((Object[]) ArrayReflection.newInstance(cls, i));
    }

    public String toString(String str) {
        if (this.size == 0) {
            return "";
        }
        T[] tArr = this.f6715a;
        int i = this.f6716b;
        int i2 = this.f6717d;
        StringBuilder stringBuilder = new StringBuilder(64);
        stringBuilder.append(tArr[i]);
        while (true) {
            i = (i + 1) % tArr.length;
            if (i != i2) {
                stringBuilder.append(str).append(tArr[i]);
            } else {
                return stringBuilder.toString();
            }
        }
    }
}

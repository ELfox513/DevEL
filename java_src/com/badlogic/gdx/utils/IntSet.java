package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class IntSet {

    /* renamed from: a */
    public int[] f6508a;

    /* renamed from: b */
    public boolean f6509b;

    /* renamed from: c */
    public final float f6510c;

    /* renamed from: d */
    public int f6511d;

    /* renamed from: e */
    public int f6512e;

    /* renamed from: f */
    public int f6513f;

    /* renamed from: g */
    public transient IntSetIterator f6514g;

    /* renamed from: h */
    public transient IntSetIterator f6515h;
    public int size;

    /* loaded from: classes.dex */
    public static class IntSetIterator {

        /* renamed from: a */
        public final IntSet f6516a;

        /* renamed from: b */
        public int f6517b;

        /* renamed from: c */
        public int f6518c;

        /* renamed from: d */
        public boolean f6519d = true;
        public boolean hasNext;

        public void reset() {
            this.f6518c = -2;
            this.f6517b = -1;
            if (this.f6516a.f6509b) {
                this.hasNext = true;
            } else {
                m23632a();
            }
        }

        /* renamed from: a */
        public void m23632a() {
            int i;
            int[] iArr = this.f6516a.f6508a;
            int length = iArr.length;
            do {
                i = this.f6517b + 1;
                this.f6517b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.hasNext = true;
        }

        public int next() {
            int i;
            if (this.hasNext) {
                if (this.f6519d) {
                    int i2 = this.f6517b;
                    if (i2 == -1) {
                        i = 0;
                    } else {
                        i = this.f6516a.f6508a[i2];
                    }
                    this.f6518c = i2;
                    m23632a();
                    return i;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            int i = this.f6518c;
            if (i == -1) {
                IntSet intSet = this.f6516a;
                if (intSet.f6509b) {
                    intSet.f6509b = false;
                    this.f6518c = -2;
                    IntSet intSet2 = this.f6516a;
                    intSet2.size--;
                    return;
                }
            }
            if (i >= 0) {
                IntSet intSet3 = this.f6516a;
                int[] iArr = intSet3.f6508a;
                int i2 = intSet3.f6513f;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        break;
                    }
                    int m23634c = this.f6516a.m23634c(i5);
                    if (((i4 - m23634c) & i2) > ((i - m23634c) & i2)) {
                        iArr[i] = i5;
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                iArr[i] = 0;
                if (i != this.f6518c) {
                    this.f6517b--;
                }
                this.f6518c = -2;
                IntSet intSet22 = this.f6516a;
                intSet22.size--;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f6516a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public IntSetIterator(IntSet intSet) {
            this.f6516a = intSet;
            reset();
        }
    }

    public IntSet() {
        this(51, 0.8f);
    }

    public boolean add(int i) {
        if (i == 0) {
            if (this.f6509b) {
                return false;
            }
            this.f6509b = true;
            this.size++;
            return true;
        }
        int m23635b = m23635b(i);
        if (m23635b >= 0) {
            return false;
        }
        int i2 = -(m23635b + 1);
        int[] iArr = this.f6508a;
        iArr[i2] = i;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f6511d) {
            m23633d(iArr.length << 1);
        }
        return true;
    }

    public void addAll(IntArray intArray) {
        addAll(intArray.items, 0, intArray.size);
    }

    /* renamed from: c */
    public int m23634c(int i) {
        return (int) ((i * (-7046029254386353131L)) >>> this.f6512e);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6510c);
        if (this.f6508a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        this.f6509b = false;
        m23633d(m23562k);
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public boolean remove(int i) {
        if (i == 0) {
            if (this.f6509b) {
                this.f6509b = false;
                this.size--;
                return true;
            }
            return false;
        }
        int m23635b = m23635b(i);
        if (m23635b < 0) {
            return false;
        }
        int[] iArr = this.f6508a;
        int i2 = this.f6513f;
        int i3 = m23635b + 1;
        while (true) {
            int i4 = i3 & i2;
            int i5 = iArr[i4];
            if (i5 != 0) {
                int m23634c = m23634c(i5);
                if (((i4 - m23634c) & i2) > ((m23635b - m23634c) & i2)) {
                    iArr[m23635b] = i5;
                    m23635b = i4;
                }
                i3 = i4 + 1;
            } else {
                iArr[m23635b] = 0;
                this.size--;
                return true;
            }
        }
    }

    public IntSet(int i) {
        this(i, 0.8f);
    }

    public static IntSet with(int... iArr) {
        IntSet intSet = new IntSet();
        intSet.addAll(iArr);
        return intSet;
    }

    /* renamed from: a */
    public final void m23636a(int i) {
        int[] iArr = this.f6508a;
        int m23634c = m23634c(i);
        while (iArr[m23634c] != 0) {
            m23634c = (m23634c + 1) & this.f6513f;
        }
        iArr[m23634c] = i;
    }

    public void addAll(IntArray intArray, int i, int i2) {
        if (i + i2 <= intArray.size) {
            addAll(intArray.items, i, i2);
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + i + " + " + i2 + " <= " + intArray.size);
    }

    /* renamed from: b */
    public final int m23635b(int i) {
        int[] iArr = this.f6508a;
        int m23634c = m23634c(i);
        while (true) {
            int i2 = iArr[m23634c];
            if (i2 == 0) {
                return -(m23634c + 1);
            }
            if (i2 == i) {
                return m23634c;
            }
            m23634c = (m23634c + 1) & this.f6513f;
        }
    }

    public boolean contains(int i) {
        if (i == 0) {
            return this.f6509b;
        }
        if (m23635b(i) >= 0) {
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public final void m23633d(int i) {
        int length = this.f6508a.length;
        this.f6511d = (int) (i * this.f6510c);
        int i2 = i - 1;
        this.f6513f = i2;
        this.f6512e = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.f6508a;
        this.f6508a = new int[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    m23636a(i4);
                }
            }
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6510c);
        if (this.f6508a.length < m23562k) {
            m23633d(m23562k);
        }
    }

    public boolean equals(Object obj) {
        int[] iArr;
        if (!(obj instanceof IntSet)) {
            return false;
        }
        IntSet intSet = (IntSet) obj;
        if (intSet.size != this.size || intSet.f6509b != this.f6509b) {
            return false;
        }
        for (int i : this.f6508a) {
            if (i != 0 && !intSet.contains(i)) {
                return false;
            }
        }
        return true;
    }

    public int first() {
        int[] iArr;
        if (this.f6509b) {
            return 0;
        }
        for (int i : this.f6508a) {
            if (i != 0) {
                return i;
            }
        }
        throw new IllegalStateException("IntSet is empty.");
    }

    public int hashCode() {
        int[] iArr;
        int i = this.size;
        for (int i2 : this.f6508a) {
            if (i2 != 0) {
                i += i2;
            }
        }
        return i;
    }

    public IntSetIterator iterator() {
        if (Collections.allocateIterators) {
            return new IntSetIterator(this);
        }
        if (this.f6514g == null) {
            this.f6514g = new IntSetIterator(this);
            this.f6515h = new IntSetIterator(this);
        }
        IntSetIterator intSetIterator = this.f6514g;
        if (!intSetIterator.f6519d) {
            intSetIterator.reset();
            IntSetIterator intSetIterator2 = this.f6514g;
            intSetIterator2.f6519d = true;
            this.f6515h.f6519d = false;
            return intSetIterator2;
        }
        this.f6515h.reset();
        IntSetIterator intSetIterator3 = this.f6515h;
        intSetIterator3.f6519d = true;
        this.f6514g.f6519d = false;
        return intSetIterator3;
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6510c);
            if (this.f6508a.length > m23562k) {
                m23633d(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:16:0x002e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r5 = this;
            int r0 = r5.size
            if (r0 != 0) goto L7
            java.lang.String r0 = "[]"
            return r0
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 32
            r0.<init>(r1)
            r1 = 91
            r0.append(r1)
            int[] r1 = r5.f6508a
            int r2 = r1.length
            boolean r3 = r5.f6509b
            if (r3 == 0) goto L20
            java.lang.String r3 = "0"
            r0.append(r3)
            goto L2e
        L20:
            int r3 = r2 + (-1)
            if (r2 <= 0) goto L2d
            r2 = r1[r3]
            if (r2 != 0) goto L2a
            r2 = r3
            goto L20
        L2a:
            r0.append(r2)
        L2d:
            r2 = r3
        L2e:
            int r3 = r2 + (-1)
            if (r2 <= 0) goto L40
            r2 = r1[r3]
            if (r2 != 0) goto L37
            goto L2d
        L37:
            java.lang.String r4 = ", "
            r0.append(r4)
            r0.append(r2)
            goto L2d
        L40:
            r1 = 93
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntSet.toString():java.lang.String");
    }

    public IntSet(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6510c = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6511d = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6513f = i2;
            this.f6512e = Long.numberOfLeadingZeros(i2);
            this.f6508a = new int[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public void addAll(int... iArr) {
        addAll(iArr, 0, iArr.length);
    }

    public void addAll(int[] iArr, int i, int i2) {
        ensureCapacity(i2);
        int i3 = i2 + i;
        while (i < i3) {
            add(iArr[i]);
            i++;
        }
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6508a, 0);
        this.f6509b = false;
    }

    public void addAll(IntSet intSet) {
        int[] iArr;
        ensureCapacity(intSet.size);
        if (intSet.f6509b) {
            add(0);
        }
        for (int i : intSet.f6508a) {
            if (i != 0) {
                add(i);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IntSet(com.badlogic.gdx.utils.IntSet r5) {
        /*
            r4 = this;
            int[] r0 = r5.f6508a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6510c
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            int[] r0 = r5.f6508a
            int[] r1 = r4.f6508a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r0 = r5.size
            r4.size = r0
            boolean r5 = r5.f6509b
            r4.f6509b = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntSet.<init>(com.badlogic.gdx.utils.IntSet):void");
    }
}

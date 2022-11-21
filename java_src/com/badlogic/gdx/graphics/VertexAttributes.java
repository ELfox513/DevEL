package com.badlogic.gdx.graphics;

import com.badlogic.gdx.utils.Collections;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class VertexAttributes implements Iterable<VertexAttribute>, Comparable<VertexAttributes> {

    /* renamed from: a */
    public final VertexAttribute[] f3957a;

    /* renamed from: b */
    public long f3958b = -1;

    /* renamed from: d */
    public ReadonlyIterable<VertexAttribute> f3959d;
    public final int vertexSize;

    /* loaded from: classes.dex */
    public static class ReadonlyIterable<T> implements Iterable<T> {

        /* renamed from: a */
        public final T[] f3960a;

        /* renamed from: b */
        public ReadonlyIterator f3961b;

        /* renamed from: d */
        public ReadonlyIterator f3962d;

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            if (Collections.allocateIterators) {
                return new ReadonlyIterator(this.f3960a);
            }
            if (this.f3961b == null) {
                this.f3961b = new ReadonlyIterator(this.f3960a);
                this.f3962d = new ReadonlyIterator(this.f3960a);
            }
            ReadonlyIterator readonlyIterator = this.f3961b;
            if (!readonlyIterator.f3965d) {
                readonlyIterator.f3964b = 0;
                readonlyIterator.f3965d = true;
                this.f3962d.f3965d = false;
                return readonlyIterator;
            }
            ReadonlyIterator readonlyIterator2 = this.f3962d;
            readonlyIterator2.f3964b = 0;
            readonlyIterator2.f3965d = true;
            readonlyIterator.f3965d = false;
            return readonlyIterator2;
        }

        public ReadonlyIterable(T[] tArr) {
            this.f3960a = tArr;
        }
    }

    /* loaded from: classes.dex */
    public static class ReadonlyIterator<T> implements Iterator<T>, Iterable<T> {

        /* renamed from: a */
        public final T[] f3963a;

        /* renamed from: b */
        public int f3964b;

        /* renamed from: d */
        public boolean f3965d = true;

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new GdxRuntimeException("Remove not allowed.");
        }

        public void reset() {
            this.f3964b = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f3965d) {
                if (this.f3964b < this.f3963a.length) {
                    return true;
                }
                return false;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public T next() {
            int i = this.f3964b;
            T[] tArr = this.f3963a;
            if (i < tArr.length) {
                if (this.f3965d) {
                    this.f3964b = i + 1;
                    return tArr[i];
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException(String.valueOf(this.f3964b));
        }

        public ReadonlyIterator(T[] tArr) {
            this.f3963a = tArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class Usage {
        public static final int BiNormal = 256;
        public static final int BoneWeight = 64;
        public static final int ColorPacked = 4;
        public static final int ColorUnpacked = 2;
        public static final int Generic = 32;
        public static final int Normal = 8;
        public static final int Position = 1;
        public static final int Tangent = 128;
        public static final int TextureCoordinates = 16;
    }

    /* renamed from: d */
    public final int m24249d() {
        int i = 0;
        int i2 = 0;
        while (true) {
            VertexAttribute[] vertexAttributeArr = this.f3957a;
            if (i < vertexAttributeArr.length) {
                VertexAttribute vertexAttribute = vertexAttributeArr[i];
                vertexAttribute.offset = i2;
                i2 += vertexAttribute.getSizeInBytes();
                i++;
            } else {
                return i2;
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VertexAttributes)) {
            return false;
        }
        VertexAttributes vertexAttributes = (VertexAttributes) obj;
        if (this.f3957a.length != vertexAttributes.f3957a.length) {
            return false;
        }
        int i = 0;
        while (true) {
            VertexAttribute[] vertexAttributeArr = this.f3957a;
            if (i >= vertexAttributeArr.length) {
                return true;
            }
            if (!vertexAttributeArr[i].equals(vertexAttributes.f3957a[i])) {
                return false;
            }
            i++;
        }
    }

    public VertexAttribute get(int i) {
        return this.f3957a[i];
    }

    public long getMaskWithSizePacked() {
        return getMask() | (this.f3957a.length << 32);
    }

    public int getOffset(int i, int i2) {
        VertexAttribute findByUsage = findByUsage(i);
        return findByUsage == null ? i2 : findByUsage.offset / 4;
    }

    public int size() {
        return this.f3957a.length;
    }

    @Override // java.lang.Comparable
    public int compareTo(VertexAttributes vertexAttributes) {
        VertexAttribute[] vertexAttributeArr = this.f3957a;
        int length = vertexAttributeArr.length;
        VertexAttribute[] vertexAttributeArr2 = vertexAttributes.f3957a;
        if (length != vertexAttributeArr2.length) {
            return vertexAttributeArr.length - vertexAttributeArr2.length;
        }
        long mask = getMask();
        long mask2 = vertexAttributes.getMask();
        if (mask != mask2) {
            return mask < mask2 ? -1 : 1;
        }
        for (int length2 = this.f3957a.length - 1; length2 >= 0; length2--) {
            VertexAttribute vertexAttribute = this.f3957a[length2];
            VertexAttribute vertexAttribute2 = vertexAttributes.f3957a[length2];
            int i = vertexAttribute.usage;
            int i2 = vertexAttribute2.usage;
            if (i != i2) {
                return i - i2;
            }
            int i3 = vertexAttribute.unit;
            int i4 = vertexAttribute2.unit;
            if (i3 != i4) {
                return i3 - i4;
            }
            int i5 = vertexAttribute.numComponents;
            int i6 = vertexAttribute2.numComponents;
            if (i5 != i6) {
                return i5 - i6;
            }
            boolean z = vertexAttribute.normalized;
            if (z != vertexAttribute2.normalized) {
                return z ? 1 : -1;
            }
            int i7 = vertexAttribute.type;
            int i8 = vertexAttribute2.type;
            if (i7 != i8) {
                return i7 - i8;
            }
        }
        return 0;
    }

    public long getMask() {
        if (this.f3958b == -1) {
            long j = 0;
            int i = 0;
            while (true) {
                VertexAttribute[] vertexAttributeArr = this.f3957a;
                if (i >= vertexAttributeArr.length) {
                    break;
                }
                j |= vertexAttributeArr[i].usage;
                i++;
            }
            this.f3958b = j;
        }
        return this.f3958b;
    }

    public int hashCode() {
        VertexAttribute[] vertexAttributeArr;
        long length = this.f3957a.length * 61;
        int i = 0;
        while (true) {
            if (i < this.f3957a.length) {
                length = (length * 61) + vertexAttributeArr[i].hashCode();
                i++;
            } else {
                return (int) (length ^ (length >> 32));
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<VertexAttribute> iterator() {
        if (this.f3959d == null) {
            this.f3959d = new ReadonlyIterable<>(this.f3957a);
        }
        return this.f3959d.iterator();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < this.f3957a.length; i++) {
            sb.append("(");
            sb.append(this.f3957a[i].alias);
            sb.append(", ");
            sb.append(this.f3957a[i].usage);
            sb.append(", ");
            sb.append(this.f3957a[i].numComponents);
            sb.append(", ");
            sb.append(this.f3957a[i].offset);
            sb.append(")");
            sb.append("\n");
        }
        sb.append("]");
        return sb.toString();
    }

    public VertexAttributes(VertexAttribute... vertexAttributeArr) {
        if (vertexAttributeArr.length != 0) {
            VertexAttribute[] vertexAttributeArr2 = new VertexAttribute[vertexAttributeArr.length];
            for (int i = 0; i < vertexAttributeArr.length; i++) {
                vertexAttributeArr2[i] = vertexAttributeArr[i];
            }
            this.f3957a = vertexAttributeArr2;
            this.vertexSize = m24249d();
            return;
        }
        throw new IllegalArgumentException("attributes must be >= 1");
    }

    public VertexAttribute findByUsage(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (get(i2).usage == i) {
                return get(i2);
            }
        }
        return null;
    }

    public int getOffset(int i) {
        return getOffset(i, 0);
    }
}

package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import com.badlogic.gdx.utils.Array;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Attributes implements Iterable<Attribute>, Comparator<Attribute>, Comparable<Attributes> {

    /* renamed from: a */
    public long f4363a;

    /* renamed from: b */
    public final Array<Attribute> f4364b = new Array<>();

    /* renamed from: d */
    public boolean f4365d = true;

    /* renamed from: d */
    public final void m24179d(long j) {
        this.f4363a = (j ^ (-1)) & this.f4363a;
    }

    public final Attribute get(long j) {
        if (!has(j)) {
            return null;
        }
        int i = 0;
        while (true) {
            Array<Attribute> array = this.f4364b;
            if (i >= array.size) {
                return null;
            }
            if (array.get(i).type == j) {
                return this.f4364b.get(i);
            }
            i++;
        }
    }

    public final long getMask() {
        return this.f4363a;
    }

    public final boolean has(long j) {
        return j != 0 && (this.f4363a & j) == j;
    }

    public int hashCode() {
        return attributesHash();
    }

    @Override // java.lang.Iterable
    public final Iterator<Attribute> iterator() {
        return this.f4364b.iterator();
    }

    /* renamed from: l */
    public final void m24178l(long j) {
        this.f4363a = j | this.f4363a;
    }

    public final boolean same(Attributes attributes, boolean z) {
        if (attributes == this) {
            return true;
        }
        if (attributes == null || this.f4363a != attributes.f4363a) {
            return false;
        }
        if (!z) {
            return true;
        }
        sort();
        attributes.sort();
        int i = 0;
        while (true) {
            Array<Attribute> array = this.f4364b;
            if (i >= array.size) {
                return true;
            }
            if (!array.get(i).m24181c(attributes.f4364b.get(i))) {
                return false;
            }
            i++;
        }
    }

    public final void set(Attribute attribute) {
        int m24177u = m24177u(attribute.type);
        if (m24177u < 0) {
            m24178l(attribute.type);
            this.f4364b.add(attribute);
            this.f4365d = false;
        } else {
            this.f4364b.set(m24177u, attribute);
        }
        sort();
    }

    public int size() {
        return this.f4364b.size;
    }

    public void clear() {
        this.f4363a = 0L;
        this.f4364b.clear();
    }

    @Override // java.util.Comparator
    public final int compare(Attribute attribute, Attribute attribute2) {
        return (int) (attribute.type - attribute2.type);
    }

    @Override // java.lang.Comparable
    public int compareTo(Attributes attributes) {
        if (attributes == this) {
            return 0;
        }
        long j = this.f4363a;
        long j2 = attributes.f4363a;
        if (j != j2) {
            return j < j2 ? -1 : 1;
        }
        sort();
        attributes.sort();
        int i = 0;
        while (true) {
            Array<Attribute> array = this.f4364b;
            if (i >= array.size) {
                return 0;
            }
            int compareTo = array.get(i).compareTo(attributes.f4364b.get(i));
            if (compareTo != 0) {
                if (compareTo < 0) {
                    return -1;
                }
                return compareTo > 0 ? 1 : 0;
            }
            i++;
        }
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (!(obj instanceof Attributes)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return same((Attributes) obj, true);
    }

    public final void remove(long j) {
        for (int i = this.f4364b.size - 1; i >= 0; i--) {
            long j2 = this.f4364b.get(i).type;
            if ((j & j2) == j2) {
                this.f4364b.removeIndex(i);
                m24179d(j2);
                this.f4365d = false;
            }
        }
        sort();
    }

    public final void sort() {
        if (!this.f4365d) {
            this.f4364b.sort(this);
            this.f4365d = true;
        }
    }

    public int attributesHash() {
        sort();
        int i = this.f4364b.size;
        long j = this.f4363a + 71;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 7) & MeshBuilder.MAX_INDEX;
            j += this.f4363a * this.f4364b.get(i3).hashCode() * i2;
        }
        return (int) (j ^ (j >> 32));
    }

    public final <T extends Attribute> T get(Class<T> cls, long j) {
        return (T) get(j);
    }

    /* renamed from: u */
    public int m24177u(long j) {
        if (has(j)) {
            int i = 0;
            while (true) {
                Array<Attribute> array = this.f4364b;
                if (i < array.size) {
                    if (array.get(i).type == j) {
                        return i;
                    }
                    i++;
                } else {
                    return -1;
                }
            }
        } else {
            return -1;
        }
    }

    public final Array<Attribute> get(Array<Attribute> array, long j) {
        int i = 0;
        while (true) {
            Array<Attribute> array2 = this.f4364b;
            if (i >= array2.size) {
                return array;
            }
            if ((array2.get(i).type & j) != 0) {
                array.add(this.f4364b.get(i));
            }
            i++;
        }
    }

    public final boolean same(Attributes attributes) {
        return same(attributes, false);
    }

    public final void set(Attribute attribute, Attribute attribute2) {
        set(attribute);
        set(attribute2);
    }

    public final void set(Attribute attribute, Attribute attribute2, Attribute attribute3) {
        set(attribute);
        set(attribute2);
        set(attribute3);
    }

    public final void set(Attribute attribute, Attribute attribute2, Attribute attribute3, Attribute attribute4) {
        set(attribute);
        set(attribute2);
        set(attribute3);
        set(attribute4);
    }

    public final void set(Attribute... attributeArr) {
        for (Attribute attribute : attributeArr) {
            set(attribute);
        }
    }

    public final void set(Iterable<Attribute> iterable) {
        for (Attribute attribute : iterable) {
            set(attribute);
        }
    }
}

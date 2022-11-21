package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public abstract class Attribute implements Comparable<Attribute> {

    /* renamed from: b */
    public static final Array<String> f4361b = new Array<>();

    /* renamed from: a */
    public final int f4362a;
    public final long type;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0019, code lost:
        r7 = com.badlogic.gdx.graphics.g3d.Attribute.f4361b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r0 >= r7.size) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
        return r7.get(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getAttributeAlias(long r7) {
        /*
            r0 = -1
        L1:
            r1 = 0
            int r3 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r3 == 0) goto L17
            int r0 = r0 + 1
            r3 = 63
            if (r0 >= r3) goto L17
            long r3 = r7 >> r0
            r5 = 1
            long r3 = r3 & r5
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 != 0) goto L17
            goto L1
        L17:
            if (r0 < 0) goto L26
            com.badlogic.gdx.utils.Array<java.lang.String> r7 = com.badlogic.gdx.graphics.g3d.Attribute.f4361b
            int r8 = r7.size
            if (r0 >= r8) goto L26
            java.lang.Object r7 = r7.get(r0)
            java.lang.String r7 = (java.lang.String) r7
            goto L27
        L26:
            r7 = 0
        L27:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g3d.Attribute.getAttributeAlias(long):java.lang.String");
    }

    public static final long getAttributeType(String str) {
        int i = 0;
        while (true) {
            Array<String> array = f4361b;
            if (i < array.size) {
                if (array.get(i).compareTo(str) == 0) {
                    return 1 << i;
                }
                i++;
            } else {
                return 0L;
            }
        }
    }

    /* renamed from: c */
    public boolean m24181c(Attribute attribute) {
        return attribute.hashCode() == hashCode();
    }

    public abstract Attribute copy();

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            if (this.type != attribute.type) {
                return false;
            }
            return m24181c(attribute);
        }
        return false;
    }

    public int hashCode() {
        return this.f4362a * 7489;
    }

    public String toString() {
        return getAttributeAlias(this.type);
    }

    public Attribute(long j) {
        this.type = j;
        this.f4362a = Long.numberOfTrailingZeros(j);
    }

    /* renamed from: d */
    public static final long m24180d(String str) {
        long attributeType = getAttributeType(str);
        if (attributeType > 0) {
            return attributeType;
        }
        Array<String> array = f4361b;
        array.add(str);
        return 1 << (array.size - 1);
    }
}

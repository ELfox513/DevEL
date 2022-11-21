package p201v1;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;
import p015b2.C0447o;
import p218x1.C7214e0;
/* renamed from: v1.c */
/* loaded from: classes.dex */
public final class C6971c extends C0447o implements Comparable<C6971c> {

    /* renamed from: b */
    public static final C6971c f35872b;

    /* renamed from: a */
    public final TreeMap<C7214e0, C6969a> f35873a = new TreeMap<>();

    /* renamed from: D */
    public Collection<C6969a> m2826D() {
        return Collections.unmodifiableCollection(this.f35873a.values());
    }

    public int hashCode() {
        return this.f35873a.hashCode();
    }

    public int size() {
        return this.f35873a.size();
    }

    static {
        C6971c c6971c = new C6971c();
        f35872b = c6971c;
        c6971c.setImmutable();
    }

    /* renamed from: A */
    public static C6971c m2829A(C6971c c6971c, C6969a c6969a) {
        C6971c c6971c2 = new C6971c();
        c6971c2.m2824z(c6971c);
        c6971c2.m2825x(c6969a);
        c6971c2.setImmutable();
        return c6971c2;
    }

    /* renamed from: B */
    public static C6971c m2828B(C6971c c6971c, C6971c c6971c2) {
        C6971c c6971c3 = new C6971c();
        c6971c3.m2824z(c6971c);
        c6971c3.m2824z(c6971c2);
        c6971c3.setImmutable();
        return c6971c3;
    }

    @Override // java.lang.Comparable
    /* renamed from: C */
    public int compareTo(C6971c c6971c) {
        Iterator<C6969a> it = this.f35873a.values().iterator();
        Iterator<C6969a> it2 = c6971c.f35873a.values().iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compareTo = it.next().compareTo(it2.next());
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (it.hasNext()) {
            return 1;
        }
        if (it2.hasNext()) {
            return -1;
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C6971c)) {
            return false;
        }
        return this.f35873a.equals(((C6971c) obj).f35873a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("annotations{");
        boolean z = true;
        for (C6969a c6969a : this.f35873a.values()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(c6969a.toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: x */
    public void m2825x(C6969a c6969a) {
        throwIfImmutable();
        if (c6969a != null) {
            C7214e0 m2834B = c6969a.m2834B();
            if (!this.f35873a.containsKey(m2834B)) {
                this.f35873a.put(m2834B, c6969a);
                return;
            }
            throw new IllegalArgumentException("duplicate type: " + m2834B.toHuman());
        }
        throw new NullPointerException("annotation == null");
    }

    /* renamed from: z */
    public void m2824z(C6971c c6971c) {
        throwIfImmutable();
        if (c6971c != null) {
            for (C6969a c6969a : c6971c.f35873a.values()) {
                m2825x(c6969a);
            }
            return;
        }
        throw new NullPointerException("toAdd == null");
    }
}

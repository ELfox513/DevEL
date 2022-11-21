package p201v1;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;
import p015b2.C0447o;
import p015b2.InterfaceC0450r;
import p218x1.C7212d0;
import p218x1.C7214e0;
/* renamed from: v1.a */
/* loaded from: classes.dex */
public final class C6969a extends C0447o implements Comparable<C6969a>, InterfaceC0450r {

    /* renamed from: a */
    public final C7214e0 f35863a;

    /* renamed from: b */
    public final EnumC6970b f35864b;

    /* renamed from: d */
    public final TreeMap<C7212d0, C6973e> f35865d;

    /* renamed from: A */
    public Collection<C6973e> m2835A() {
        return Collections.unmodifiableCollection(this.f35865d.values());
    }

    /* renamed from: B */
    public C7214e0 m2834B() {
        return this.f35863a;
    }

    /* renamed from: C */
    public EnumC6970b m2833C() {
        return this.f35864b;
    }

    public String toString() {
        return toHuman();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C6969a)) {
            return false;
        }
        C6969a c6969a = (C6969a) obj;
        if (!this.f35863a.equals(c6969a.f35863a) || this.f35864b != c6969a.f35864b) {
            return false;
        }
        return this.f35865d.equals(c6969a.f35865d);
    }

    public int hashCode() {
        return (((this.f35863a.hashCode() * 31) + this.f35865d.hashCode()) * 31) + this.f35864b.hashCode();
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f35864b.toHuman());
        sb.append("-annotation ");
        sb.append(this.f35863a.toHuman());
        sb.append(" {");
        boolean z = true;
        for (C6973e c6973e : this.f35865d.values()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(c6973e.m2819d().toHuman());
            sb.append(": ");
            sb.append(c6973e.m2818f().toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.lang.Comparable
    /* renamed from: z */
    public int compareTo(C6969a c6969a) {
        int compareTo = this.f35863a.compareTo(c6969a.f35863a);
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = this.f35864b.compareTo(c6969a.f35864b);
        if (compareTo2 != 0) {
            return compareTo2;
        }
        Iterator<C6973e> it = this.f35865d.values().iterator();
        Iterator<C6973e> it2 = c6969a.f35865d.values().iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compareTo3 = it.next().compareTo(it2.next());
            if (compareTo3 != 0) {
                return compareTo3;
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

    public C6969a(C7214e0 c7214e0, EnumC6970b enumC6970b) {
        if (c7214e0 != null) {
            if (enumC6970b != null) {
                this.f35863a = c7214e0;
                this.f35864b = enumC6970b;
                this.f35865d = new TreeMap<>();
                return;
            }
            throw new NullPointerException("visibility == null");
        }
        throw new NullPointerException("type == null");
    }

    /* renamed from: D */
    public void m2832D(C6973e c6973e) {
        throwIfImmutable();
        if (c6973e != null) {
            this.f35865d.put(c6973e.m2819d(), c6973e);
            return;
        }
        throw new NullPointerException("pair == null");
    }

    /* renamed from: x */
    public void m2831x(C6973e c6973e) {
        throwIfImmutable();
        if (c6973e != null) {
            C7212d0 m2819d = c6973e.m2819d();
            if (this.f35865d.get(m2819d) == null) {
                this.f35865d.put(m2819d, c6973e);
                return;
            }
            throw new IllegalArgumentException("name already added: " + m2819d);
        }
        throw new NullPointerException("pair == null");
    }
}

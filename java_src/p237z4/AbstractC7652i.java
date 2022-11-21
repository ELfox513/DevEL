package p237z4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
/* renamed from: z4.i */
/* loaded from: classes2.dex */
public abstract class AbstractC7652i implements Serializable, Iterable<Byte> {

    /* renamed from: b */
    public static final AbstractC7652i f37698b = new C7706s(C7687o0.f37835c);

    /* renamed from: d */
    public static final InterfaceC7686o f37699d;

    /* renamed from: k */
    public static final Comparator<AbstractC7652i> f37700k;

    /* renamed from: a */
    public int f37701a = 0;

    /* renamed from: d */
    public static int m703d(byte b) {
        return b & DefaultClassResolver.NAME;
    }

    /* renamed from: s */
    public static AbstractC7652i m698s(String str) {
        return new C7706s(str.getBytes(C7687o0.f37833a));
    }

    /* renamed from: v */
    public static C7696q m697v(int i) {
        return new C7696q(i, null);
    }

    /* renamed from: e */
    public abstract int mo607e(int i, int i2, int i3);

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract String mo606g(Charset charset);

    /* renamed from: i */
    public abstract AbstractC7652i mo605i(int i, int i2);

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new C7657j(this);
    }

    /* renamed from: k */
    public abstract void mo604k(AbstractC7647h abstractC7647h);

    /* renamed from: q */
    public abstract boolean mo603q();

    /* renamed from: r */
    public final int m699r() {
        return this.f37701a;
    }

    public abstract int size();

    /* renamed from: t */
    public abstract byte mo602t(int i);

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    /* renamed from: u */
    public abstract byte mo601u(int i);

    static {
        InterfaceC7686o c7672m;
        if (C7642g.m771a()) {
            c7672m = new C7710t(null);
        } else {
            c7672m = new C7672m(null);
        }
        f37699d = c7672m;
        f37700k = new C7662k();
    }

    /* renamed from: m */
    public static int m701m(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    StringBuilder sb = new StringBuilder(66);
                    sb.append("Beginning index larger than ending index: ");
                    sb.append(i);
                    sb.append(", ");
                    sb.append(i2);
                    throw new IndexOutOfBoundsException(sb.toString());
                }
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("End index: ");
                sb2.append(i2);
                sb2.append(" >= ");
                sb2.append(i3);
                throw new IndexOutOfBoundsException(sb2.toString());
            }
            StringBuilder sb3 = new StringBuilder(32);
            sb3.append("Beginning index: ");
            sb3.append(i);
            sb3.append(" < 0");
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        return i4;
    }

    public final int hashCode() {
        int i = this.f37701a;
        if (i == 0) {
            int size = size();
            i = mo607e(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.f37701a = i;
        }
        return i;
    }

    /* renamed from: o */
    public final String m700o() {
        Charset charset = C7687o0.f37833a;
        if (size() == 0) {
            return "";
        }
        return mo606g(charset);
    }
}

package p018b5;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: b5.w7 */
/* loaded from: classes2.dex */
public abstract class AbstractC0937w7 implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final AbstractC0937w7 f2373b = new C0886t7(C0650f9.f1819c);

    /* renamed from: d */
    public static final Comparator<AbstractC0937w7> f2374d;

    /* renamed from: k */
    public static final C0920v7 f2375k;

    /* renamed from: a */
    public int f2376a = 0;

    /* renamed from: t */
    public static AbstractC0937w7 m25028t(String str) {
        return new C0886t7(str.getBytes(C0650f9.f1817a));
    }

    /* renamed from: d */
    public abstract byte mo25039d(int i);

    /* renamed from: e */
    public abstract byte mo25038e(int i);

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract int mo25037g();

    public final int hashCode() {
        int i = this.f2376a;
        if (i == 0) {
            int mo25037g = mo25037g();
            i = mo25036i(mo25037g, 0, mo25037g);
            if (i == 0) {
                i = 1;
            }
            this.f2376a = i;
        }
        return i;
    }

    /* renamed from: i */
    public abstract int mo25036i(int i, int i2, int i3);

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new C0767m7(this);
    }

    /* renamed from: k */
    public abstract AbstractC0937w7 mo25035k(int i, int i2);

    /* renamed from: l */
    public abstract String mo25034l(Charset charset);

    /* renamed from: m */
    public abstract void mo25033m(C0750l7 c0750l7);

    /* renamed from: o */
    public abstract boolean mo25032o();

    /* renamed from: r */
    public final int m25030r() {
        return this.f2376a;
    }

    /* renamed from: u */
    public final String m25027u(Charset charset) {
        return mo25037g() == 0 ? "" : mo25034l(charset);
    }

    static {
        int i = C0682h7.f1846a;
        f2375k = new C0920v7(null);
        f2374d = new C0801o7();
    }

    /* renamed from: q */
    public static int m25031q(int i, int i2, int i3) {
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

    /* renamed from: s */
    public static AbstractC0937w7 m25029s(byte[] bArr, int i, int i2) {
        m25031q(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C0886t7(bArr2);
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(mo25037g());
        if (mo25037g() <= 50) {
            concat = C0652fb.m25941a(this);
        } else {
            concat = String.valueOf(C0652fb.m25941a(mo25035k(0, 47))).concat("...");
        }
        objArr[2] = concat;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}

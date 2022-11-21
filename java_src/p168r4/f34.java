package p168r4;
/* renamed from: r4.f34 */
/* loaded from: classes2.dex */
public class f34 {

    /* renamed from: a */
    public final int f23269a;

    public f34(int i) {
        this.f23269a = i;
    }

    /* renamed from: a */
    public static int m11642a(int i) {
        return (i >> 24) & 255;
    }

    /* renamed from: b */
    public static String m11641b(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return m11641b(this.f23269a);
    }
}

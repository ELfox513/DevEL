package p128n0;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import p155q0.InterfaceC5388d;
import p155q0.InterfaceC5389e;
/* renamed from: n0.i */
/* loaded from: classes.dex */
public class C4686i implements InterfaceC5389e, InterfaceC5388d {

    /* renamed from: t */
    public static final TreeMap<Integer, C4686i> f18798t = new TreeMap<>();

    /* renamed from: a */
    public volatile String f18799a;

    /* renamed from: b */
    public final long[] f18800b;

    /* renamed from: d */
    public final double[] f18801d;

    /* renamed from: k */
    public final String[] f18802k;

    /* renamed from: p */
    public final byte[][] f18803p;

    /* renamed from: q */
    public final int[] f18804q;

    /* renamed from: r */
    public final int f18805r;

    /* renamed from: s */
    public int f18806s;

    @Override // p155q0.InterfaceC5388d
    /* renamed from: A0 */
    public void mo13122A0(int i) {
        this.f18804q[i] = 1;
    }

    @Override // p155q0.InterfaceC5389e
    /* renamed from: c */
    public void mo13350c(InterfaceC5388d interfaceC5388d) {
        for (int i = 1; i <= this.f18806s; i++) {
            int i2 = this.f18804q[i];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                interfaceC5388d.mo13118k0(i, this.f18803p[i]);
                            }
                        } else {
                            interfaceC5388d.mo13121E(i, this.f18802k[i]);
                        }
                    } else {
                        interfaceC5388d.mo13120Q(i, this.f18801d[i]);
                    }
                } else {
                    interfaceC5388d.mo13119c0(i, this.f18800b[i]);
                }
            } else {
                interfaceC5388d.mo13122A0(i);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // p155q0.InterfaceC5389e
    /* renamed from: d */
    public String mo13349d() {
        return this.f18799a;
    }

    /* renamed from: e */
    public static C4686i m15782e(String str, int i) {
        TreeMap<Integer, C4686i> treeMap = f18798t;
        synchronized (treeMap) {
            Map.Entry<Integer, C4686i> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry != null) {
                treeMap.remove(ceilingEntry.getKey());
                C4686i value = ceilingEntry.getValue();
                value.m15781f(str, i);
                return value;
            }
            C4686i c4686i = new C4686i(i);
            c4686i.m15781f(str, i);
            return c4686i;
        }
    }

    /* renamed from: g */
    public static void m15780g() {
        TreeMap<Integer, C4686i> treeMap = f18798t;
        if (treeMap.size() > 15) {
            int size = treeMap.size() - 10;
            Iterator<Integer> it = treeMap.descendingKeySet().iterator();
            while (true) {
                int i = size - 1;
                if (size > 0) {
                    it.next();
                    it.remove();
                    size = i;
                } else {
                    return;
                }
            }
        }
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: E */
    public void mo13121E(int i, String str) {
        this.f18804q[i] = 4;
        this.f18802k[i] = str;
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: Q */
    public void mo13120Q(int i, double d) {
        this.f18804q[i] = 3;
        this.f18801d[i] = d;
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: c0 */
    public void mo13119c0(int i, long j) {
        this.f18804q[i] = 2;
        this.f18800b[i] = j;
    }

    /* renamed from: f */
    public void m15781f(String str, int i) {
        this.f18799a = str;
        this.f18806s = i;
    }

    /* renamed from: h */
    public void m15779h() {
        TreeMap<Integer, C4686i> treeMap = f18798t;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f18805r), this);
            m15780g();
        }
    }

    @Override // p155q0.InterfaceC5388d
    /* renamed from: k0 */
    public void mo13118k0(int i, byte[] bArr) {
        this.f18804q[i] = 5;
        this.f18803p[i] = bArr;
    }

    public C4686i(int i) {
        this.f18805r = i;
        int i2 = i + 1;
        this.f18804q = new int[i2];
        this.f18800b = new long[i2];
        this.f18801d = new double[i2];
        this.f18802k = new String[i2];
        this.f18803p = new byte[i2];
    }
}

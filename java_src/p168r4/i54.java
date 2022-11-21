package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.i54 */
/* loaded from: classes2.dex */
public final class i54 implements y64 {

    /* renamed from: a */
    public final List<C5713e5> f24977a = o33.m8900q();

    public i54(int i) {
    }

    @Override // p168r4.y64
    /* renamed from: a */
    public final a74 mo4827a(int i, x64 x64Var) {
        if (i != 2) {
            if (i != 3 && i != 4) {
                if (i != 21) {
                    if (i != 27) {
                        if (i != 36) {
                            if (i != 89) {
                                if (i != 129) {
                                    if (i != 138) {
                                        if (i != 172) {
                                            if (i != 257) {
                                                if (i != 134) {
                                                    if (i != 135) {
                                                        switch (i) {
                                                            case 15:
                                                                return new d64(new h54(false, x64Var.f33494b));
                                                            case 16:
                                                                return new d64(new r54(m10720c(x64Var)));
                                                            case 17:
                                                                return new d64(new z54(x64Var.f33494b));
                                                            default:
                                                                return null;
                                                        }
                                                    }
                                                } else {
                                                    return new n64(new c64("application/x-scte35"));
                                                }
                                            } else {
                                                return new n64(new c64("application/vnd.dvb.ait"));
                                            }
                                        } else {
                                            return new d64(new e54(x64Var.f33494b));
                                        }
                                    } else {
                                        return new d64(new j54(x64Var.f33494b));
                                    }
                                }
                                return new d64(new b54(x64Var.f33494b));
                            }
                            return new d64(new l54(x64Var.f33495c));
                        }
                        return new d64(new x54(m10721b(x64Var)));
                    }
                    return new d64(new v54(m10721b(x64Var), false, false));
                }
                return new d64(new y54());
            }
            return new d64(new a64(x64Var.f33494b));
        }
        return new d64(new o54(m10720c(x64Var)));
    }

    /* renamed from: b */
    public final o64 m10721b(x64 x64Var) {
        return new o64(m10719d(x64Var));
    }

    /* renamed from: c */
    public final c74 m10720c(x64 x64Var) {
        return new c74(m10719d(x64Var));
    }

    /* renamed from: d */
    public final List<C5713e5> m10719d(x64 x64Var) {
        String str;
        int i;
        List<byte[]> list;
        C6423xb c6423xb = new C6423xb(x64Var.f33496d);
        List<C5713e5> list2 = this.f24977a;
        while (c6423xb.m5407l() > 0) {
            int m5397v = c6423xb.m5397v();
            int m5404o = c6423xb.m5404o() + c6423xb.m5397v();
            if (m5397v == 134) {
                list2 = new ArrayList<>();
                int m5397v2 = c6423xb.m5397v() & 31;
                for (int i2 = 0; i2 < m5397v2; i2++) {
                    String m5414e = c6423xb.m5414e(3, n03.f28056c);
                    int m5397v3 = c6423xb.m5397v();
                    int i3 = m5397v3 & 128;
                    if (i3 != 0) {
                        i = m5397v3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte m5397v4 = (byte) c6423xb.m5397v();
                    c6423xb.m5400s(1);
                    if (i3 != 0) {
                        byte[] bArr = C5977la.f27145a;
                        list = Collections.singletonList((m5397v4 & 64) != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        list = null;
                    }
                    C5639c5 c5639c5 = new C5639c5();
                    c5639c5.m12564n(str);
                    c5639c5.m12573g(m5414e);
                    c5639c5.m12605G(i);
                    c5639c5.m12562p(list);
                    list2.add(c5639c5.m12603I());
                }
            }
            c6423xb.m5403p(m5404o);
        }
        return list2;
    }
}

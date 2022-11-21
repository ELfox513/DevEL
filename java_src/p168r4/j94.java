package p168r4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.j94 */
/* loaded from: classes2.dex */
public final class j94 {

    /* renamed from: a */
    public long f25965a;

    /* renamed from: b */
    public final String f25966b;

    /* renamed from: c */
    public final String f25967c;

    /* renamed from: d */
    public final long f25968d;

    /* renamed from: e */
    public final long f25969e;

    /* renamed from: f */
    public final long f25970f;

    /* renamed from: g */
    public final long f25971g;

    /* renamed from: h */
    public final List<h84> f25972h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j94(java.lang.String r14, p168r4.y74 r15) {
        /*
            r13 = this;
            java.lang.String r2 = r15.f33998b
            long r3 = r15.f33999c
            long r5 = r15.f34000d
            long r7 = r15.f34001e
            long r9 = r15.f34002f
            java.util.List<r4.h84> r0 = r15.f34004h
            if (r0 == 0) goto L10
        Le:
            r11 = r0
            goto L44
        L10:
            java.util.Map<java.lang.String, java.lang.String> r15 = r15.f34003g
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r15.size()
            r0.<init>(r1)
            java.util.Set r15 = r15.entrySet()
            java.util.Iterator r15 = r15.iterator()
        L23:
            boolean r1 = r15.hasNext()
            if (r1 == 0) goto Le
            java.lang.Object r1 = r15.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            r4.h84 r11 = new r4.h84
            java.lang.Object r12 = r1.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r11.<init>(r12, r1)
            r0.add(r11)
            goto L23
        L44:
            r0 = r13
            r1 = r14
            r0.<init>(r1, r2, r3, r5, r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.j94.<init>(java.lang.String, r4.y74):void");
    }

    /* renamed from: a */
    public static j94 m10375a(k94 k94Var) {
        List arrayList;
        if (m94.m9453h(k94Var) == 538247942) {
            String m9449l = m94.m9449l(k94Var);
            String m9449l2 = m94.m9449l(k94Var);
            long m9451j = m94.m9451j(k94Var);
            long m9451j2 = m94.m9451j(k94Var);
            long m9451j3 = m94.m9451j(k94Var);
            long m9451j4 = m94.m9451j(k94Var);
            int m9453h = m94.m9453h(k94Var);
            if (m9453h >= 0) {
                if (m9453h == 0) {
                    arrayList = Collections.emptyList();
                } else {
                    arrayList = new ArrayList();
                }
                List list = arrayList;
                for (int i = 0; i < m9453h; i++) {
                    list.add(new h84(m94.m9449l(k94Var).intern(), m94.m9449l(k94Var).intern()));
                }
                return new j94(m9449l, m9449l2, m9451j, m9451j2, m9451j3, m9451j4, list);
            }
            StringBuilder sb = new StringBuilder(31);
            sb.append("readHeaderList size=");
            sb.append(m9453h);
            throw new IOException(sb.toString());
        }
        throw new IOException();
    }

    public j94(String str, String str2, long j, long j2, long j3, long j4, List<h84> list) {
        this.f25966b = str;
        this.f25967c = true == "".equals(str2) ? null : str2;
        this.f25968d = j;
        this.f25969e = j2;
        this.f25970f = j3;
        this.f25971g = j4;
        this.f25972h = list;
    }
}

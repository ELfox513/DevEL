package p018b5;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p018b5.InterfaceC0802o8;
/* renamed from: b5.p8 */
/* loaded from: classes2.dex */
public final class C0819p8<T extends InterfaceC0802o8<T>> {

    /* renamed from: d */
    public static final C0819p8 f2141d = new C0819p8(true);

    /* renamed from: a */
    public final C0618db<T, Object> f2142a = new C0872sa(16);

    /* renamed from: b */
    public boolean f2143b;

    /* renamed from: c */
    public boolean f2144c;

    public C0819p8() {
    }

    /* renamed from: a */
    public static <T extends InterfaceC0802o8<T>> C0819p8<T> m25500a() {
        throw null;
    }

    /* renamed from: b */
    public final void m25499b() {
        if (this.f2143b) {
            return;
        }
        this.f2142a.mo25252a();
        this.f2143b = true;
    }

    public final int hashCode() {
        return this.f2142a.hashCode();
    }

    public C0819p8(boolean z) {
        m25499b();
        m25499b();
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        C0819p8 c0819p8 = new C0819p8();
        for (int i = 0; i < this.f2142a.m26052b(); i++) {
            Map.Entry<T, Object> m26047g = this.f2142a.m26047g(i);
            c0819p8.m25498c(m26047g.getKey(), m26047g.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f2142a.m26051c()) {
            c0819p8.m25498c(entry.getKey(), entry.getValue());
        }
        c0819p8.f2144c = this.f2144c;
        return c0819p8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0819p8)) {
            return false;
        }
        return this.f2142a.equals(((C0819p8) obj).f2142a);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m25497d(T r4, java.lang.Object r5) {
        /*
            b5.xb r0 = r4.m25553a()
            p018b5.C0650f9.m25946e(r5)
            b5.xb r1 = p018b5.EnumC0958xb.f2403b
            b5.yb r1 = p018b5.EnumC0975yb.INT
            b5.yb r0 = r0.m24968c()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L39;
                case 1: goto L36;
                case 2: goto L33;
                case 3: goto L30;
                case 4: goto L2d;
                case 5: goto L2a;
                case 6: goto L21;
                case 7: goto L1c;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L3e
        L17:
            boolean r0 = r5 instanceof p018b5.InterfaceC0634ea
            if (r0 == 0) goto L3e
            goto L3d
        L1c:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 == 0) goto L3e
            goto L3d
        L21:
            boolean r0 = r5 instanceof p018b5.AbstractC0937w7
            if (r0 != 0) goto L3d
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L3e
            goto L3d
        L2a:
            boolean r0 = r5 instanceof java.lang.String
            goto L3b
        L2d:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L3b
        L30:
            boolean r0 = r5 instanceof java.lang.Double
            goto L3b
        L33:
            boolean r0 = r5 instanceof java.lang.Float
            goto L3b
        L36:
            boolean r0 = r5 instanceof java.lang.Long
            goto L3b
        L39:
            boolean r0 = r5 instanceof java.lang.Integer
        L3b:
            if (r0 == 0) goto L3e
        L3d:
            return
        L3e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            int r3 = r4.zza()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            r2 = 1
            b5.xb r4 = r4.m25553a()
            b5.yb r4 = r4.m24968c()
            r1[r2] = r4
            r4 = 2
            java.lang.Class r5 = r5.getClass()
            java.lang.String r5 = r5.getName()
            r1[r4] = r5
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r1)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0819p8.m25497d(b5.o8, java.lang.Object):void");
    }

    /* renamed from: c */
    public final void m25498c(T t, Object obj) {
        if (t.m25552b()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    m25497d(t, arrayList.get(i));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            m25497d(t, obj);
        }
        this.f2142a.put(t, obj);
    }
}

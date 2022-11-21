package p168r4;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p168r4.fm3;
/* renamed from: r4.gm3 */
/* loaded from: classes2.dex */
public final class gm3<T extends fm3<T>> {

    /* renamed from: d */
    public static final gm3 f24142d = new gm3(true);

    /* renamed from: a */
    public final dp3<T, Object> f24143a = new vo3(16);

    /* renamed from: b */
    public boolean f24144b;

    /* renamed from: c */
    public boolean f24145c;

    public gm3() {
    }

    /* renamed from: a */
    public static <T extends fm3<T>> gm3<T> m11106a() {
        throw null;
    }

    /* renamed from: b */
    public final void m11105b() {
        if (this.f24144b) {
            return;
        }
        this.f24143a.mo6043a();
        this.f24144b = true;
    }

    public final int hashCode() {
        return this.f24143a.hashCode();
    }

    public gm3(boolean z) {
        m11105b();
        m11105b();
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        gm3 gm3Var = new gm3();
        for (int i = 0; i < this.f24143a.m12008e(); i++) {
            Map.Entry<T, Object> m12007f = this.f24143a.m12007f(i);
            gm3Var.m11104c(m12007f.getKey(), m12007f.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f24143a.m12006g()) {
            gm3Var.m11104c(entry.getKey(), entry.getValue());
        }
        gm3Var.f24145c = this.f24145c;
        return gm3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gm3)) {
            return false;
        }
        return this.f24143a.equals(((gm3) obj).f24143a);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m11103d(T r4, java.lang.Object r5) {
        /*
            r4.xp3 r0 = r4.m11477a()
            p168r4.zm3.m4180a(r5)
            r4.xp3 r1 = p168r4.xp3.f33677b
            r4.yp3 r1 = p168r4.yp3.INT
            r4.yp3 r0 = r0.m5181c()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L3d;
                case 1: goto L3a;
                case 2: goto L37;
                case 3: goto L34;
                case 4: goto L31;
                case 5: goto L2e;
                case 6: goto L25;
                case 7: goto L1c;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L42
        L17:
            boolean r0 = r5 instanceof p168r4.ao3
            if (r0 == 0) goto L42
            goto L41
        L1c:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L41
            boolean r0 = r5 instanceof p168r4.rm3
            if (r0 == 0) goto L42
            goto L41
        L25:
            boolean r0 = r5 instanceof p168r4.ll3
            if (r0 != 0) goto L41
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L42
            goto L41
        L2e:
            boolean r0 = r5 instanceof java.lang.String
            goto L3f
        L31:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L3f
        L34:
            boolean r0 = r5 instanceof java.lang.Double
            goto L3f
        L37:
            boolean r0 = r5 instanceof java.lang.Float
            goto L3f
        L3a:
            boolean r0 = r5 instanceof java.lang.Long
            goto L3f
        L3d:
            boolean r0 = r5 instanceof java.lang.Integer
        L3f:
            if (r0 == 0) goto L42
        L41:
            return
        L42:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            int r3 = r4.zza()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            r2 = 1
            r4.xp3 r4 = r4.m11477a()
            r4.yp3 r4 = r4.m5181c()
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
        throw new UnsupportedOperationException("Method not decompiled: p168r4.gm3.m11103d(r4.fm3, java.lang.Object):void");
    }

    /* renamed from: c */
    public final void m11104c(T t, Object obj) {
        if (t.m11476b()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    m11103d(t, arrayList.get(i));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            m11103d(t, obj);
        }
        this.f24143a.put(t, obj);
    }
}

package p237z4;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p237z4.InterfaceC7648h0;
/* renamed from: z4.f0 */
/* loaded from: classes2.dex */
public final class C7638f0<FieldDescriptorType extends InterfaceC7648h0<FieldDescriptorType>> {

    /* renamed from: d */
    public static final C7638f0 f37680d = new C7638f0(true);

    /* renamed from: b */
    public boolean f37682b;

    /* renamed from: c */
    public boolean f37683c = false;

    /* renamed from: a */
    public final C7655i2<FieldDescriptorType, Object> f37681a = C7655i2.m690f(16);

    public C7638f0() {
    }

    /* renamed from: o */
    public static <T extends InterfaceC7648h0<T>> C7638f0<T> m791o() {
        return f37680d;
    }

    /* renamed from: b */
    public final boolean m804b() {
        return this.f37682b;
    }

    /* renamed from: c */
    public final boolean m803c() {
        for (int i = 0; i < this.f37681a.m684m(); i++) {
            if (!m794l(this.f37681a.m689g(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f37681a.m683n()) {
            if (!m794l(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m799g(C7638f0<FieldDescriptorType> c7638f0) {
        for (int i = 0; i < c7638f0.f37681a.m684m(); i++) {
            m792n(c7638f0.f37681a.m689g(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : c7638f0.f37681a.m683n()) {
            m792n(entry);
        }
    }

    public final int hashCode() {
        return this.f37681a.hashCode();
    }

    /* renamed from: p */
    public final int m790p() {
        int i = 0;
        for (int i2 = 0; i2 < this.f37681a.m684m(); i2++) {
            i += m789q(this.f37681a.m689g(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f37681a.m683n()) {
            i += m789q(entry);
        }
        return i;
    }

    /* renamed from: k */
    public static int m795k(EnumC7671l3 enumC7671l3, Object obj) {
        switch (C7643g0.f37691b[enumC7671l3.ordinal()]) {
            case 1:
                return AbstractC7726x.m488z(((Double) obj).doubleValue());
            case 2:
                return AbstractC7726x.m546A(((Float) obj).floatValue());
            case 3:
                return AbstractC7726x.m493w0(((Long) obj).longValue());
            case 4:
                return AbstractC7726x.m491x0(((Long) obj).longValue());
            case 5:
                return AbstractC7726x.m501r(((Integer) obj).intValue());
            case 6:
                return AbstractC7726x.m487z0(((Long) obj).longValue());
            case 7:
                return AbstractC7726x.m497u(((Integer) obj).intValue());
            case 8:
                return AbstractC7726x.m519d0(((Boolean) obj).booleanValue());
            case 9:
                return AbstractC7726x.m521c0((InterfaceC7703r1) obj);
            case 10:
                if (obj instanceof C7715u0) {
                    return AbstractC7726x.m522c((C7715u0) obj);
                }
                return AbstractC7726x.m530R((InterfaceC7703r1) obj);
            case 11:
                if (obj instanceof AbstractC7652i) {
                    return AbstractC7726x.m536H((AbstractC7652i) obj);
                }
                return AbstractC7726x.m498t0((String) obj);
            case 12:
                if (obj instanceof AbstractC7652i) {
                    return AbstractC7726x.m536H((AbstractC7652i) obj);
                }
                return AbstractC7726x.m529S((byte[]) obj);
            case 13:
                return AbstractC7726x.m500s(((Integer) obj).intValue());
            case 14:
                return AbstractC7726x.m495v(((Integer) obj).intValue());
            case 15:
                return AbstractC7726x.m545A0(((Long) obj).longValue());
            case 16:
                return AbstractC7726x.m499t(((Integer) obj).intValue());
            case 17:
                return AbstractC7726x.m489y0(((Long) obj).longValue());
            case 18:
                if (obj instanceof InterfaceC7692p0) {
                    return AbstractC7726x.m494w(((InterfaceC7692p0) obj).m622g());
                }
                return AbstractC7726x.m494w(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: r */
    public static Object m788r(Object obj) {
        if (obj instanceof InterfaceC7730x1) {
            return ((InterfaceC7730x1) obj).m462R();
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m805a() {
        if (this.f37683c) {
            return new C7729x0(this.f37681a.m682o().iterator());
        }
        return this.f37681a.m682o().iterator();
    }

    public final /* synthetic */ Object clone() {
        C7638f0 c7638f0 = new C7638f0();
        for (int i = 0; i < this.f37681a.m684m(); i++) {
            Map.Entry<FieldDescriptorType, Object> m689g = this.f37681a.m689g(i);
            c7638f0.m798h(m689g.getKey(), m689g.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f37681a.m683n()) {
            c7638f0.m798h(entry.getKey(), entry.getValue());
        }
        c7638f0.f37683c = this.f37683c;
        return c7638f0;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m802d() {
        if (this.f37683c) {
            return new C7729x0(this.f37681a.entrySet().iterator());
        }
        return this.f37681a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7638f0)) {
            return false;
        }
        return this.f37681a.equals(((C7638f0) obj).f37681a);
    }

    /* renamed from: f */
    public final Object m800f(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f37681a.get(fielddescriptortype);
        if (obj instanceof C7715u0) {
            return C7715u0.m587e();
        }
        return obj;
    }

    /* renamed from: m */
    public final void m793m() {
        if (this.f37682b) {
            return;
        }
        this.f37681a.mo677j();
        this.f37682b = true;
    }

    /* renamed from: e */
    public static int m801e(EnumC7671l3 enumC7671l3, int i, Object obj) {
        int m503q = AbstractC7726x.m503q(i);
        if (enumC7671l3 == EnumC7671l3.f37802w) {
            C7687o0.m628i((InterfaceC7703r1) obj);
            m503q <<= 1;
        }
        return m503q + m795k(enumC7671l3, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        if ((r3 instanceof p237z4.InterfaceC7692p0) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
        if ((r3 instanceof byte[]) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        if ((r3 instanceof p237z4.C7715u0) == false) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0046 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0047  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m797i(p237z4.EnumC7671l3 r2, java.lang.Object r3) {
        /*
            p237z4.C7687o0.m636a(r3)
            int[] r0 = p237z4.C7643g0.f37690a
            z4.q3 r2 = r2.m665c()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L41;
                case 2: goto L3e;
                case 3: goto L3b;
                case 4: goto L38;
                case 5: goto L35;
                case 6: goto L32;
                case 7: goto L29;
                case 8: goto L20;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L44
        L15:
            boolean r2 = r3 instanceof p237z4.InterfaceC7703r1
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof p237z4.C7715u0
            if (r2 == 0) goto L1e
            goto L43
        L1e:
            r0 = 0
            goto L43
        L20:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof p237z4.InterfaceC7692p0
            if (r2 == 0) goto L1e
            goto L43
        L29:
            boolean r2 = r3 instanceof p237z4.AbstractC7652i
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L1e
            goto L43
        L32:
            boolean r0 = r3 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r3 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r3 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r3 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r3 instanceof java.lang.Integer
        L43:
            r1 = r0
        L44:
            if (r1 == 0) goto L47
            return
        L47:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L50
        L4f:
            throw r2
        L50:
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: p237z4.C7638f0.m797i(z4.l3, java.lang.Object):void");
    }

    /* renamed from: j */
    public static int m796j(InterfaceC7648h0<?> interfaceC7648h0, Object obj) {
        EnumC7671l3 m764G = interfaceC7648h0.m764G();
        int m763g = interfaceC7648h0.m763g();
        if (interfaceC7648h0.m759s()) {
            int i = 0;
            if (interfaceC7648h0.m762m()) {
                for (Object obj2 : (List) obj) {
                    i += m795k(m764G, obj2);
                }
                return AbstractC7726x.m503q(m763g) + i + AbstractC7726x.m490y(i);
            }
            for (Object obj3 : (List) obj) {
                i += m801e(m764G, m763g, obj3);
            }
            return i;
        }
        return m801e(m764G, m763g, obj);
    }

    /* renamed from: l */
    public static boolean m794l(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.m760q() == EnumC7700q3.MESSAGE) {
            if (key.m759s()) {
                for (InterfaceC7703r1 interfaceC7703r1 : (List) entry.getValue()) {
                    if (!interfaceC7703r1.mo591a()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof InterfaceC7703r1) {
                    if (!((InterfaceC7703r1) value).mo591a()) {
                        return false;
                    }
                } else if (value instanceof C7715u0) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    /* renamed from: q */
    public static int m789q(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.m760q() == EnumC7700q3.MESSAGE && !key.m759s() && !key.m762m()) {
            if (value instanceof C7715u0) {
                return AbstractC7726x.m540E(entry.getKey().m763g(), (C7715u0) value);
            }
            return AbstractC7726x.m538F(entry.getKey().m763g(), (InterfaceC7703r1) value);
        }
        return m796j(key, value);
    }

    /* renamed from: h */
    public final void m798h(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.m759s()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    m797i(fielddescriptortype.m764G(), obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            m797i(fielddescriptortype.m764G(), obj);
        }
        if (obj instanceof C7715u0) {
            this.f37683c = true;
        }
        this.f37681a.put(fielddescriptortype, obj);
    }

    /* renamed from: n */
    public final void m792n(Map.Entry<FieldDescriptorType, Object> entry) {
        InterfaceC7703r1 mo597k;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof C7715u0) {
            value = C7715u0.m587e();
        }
        if (key.m759s()) {
            Object m800f = m800f(key);
            if (m800f == null) {
                m800f = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) m800f).add(m788r(obj));
            }
            this.f37681a.put(key, m800f);
        } else if (key.m760q() == EnumC7700q3.MESSAGE) {
            Object m800f2 = m800f(key);
            if (m800f2 == null) {
                this.f37681a.put(key, m788r(value));
                return;
            }
            if (m800f2 instanceof InterfaceC7730x1) {
                mo597k = key.m758t((InterfaceC7730x1) m800f2, (InterfaceC7730x1) value);
            } else {
                mo597k = key.m761o(((InterfaceC7703r1) m800f2).mo608i(), (InterfaceC7703r1) value).mo597k();
            }
            this.f37681a.put(key, mo597k);
        } else {
            this.f37681a.put(key, m788r(value));
        }
    }

    public C7638f0(boolean z) {
        m793m();
    }
}

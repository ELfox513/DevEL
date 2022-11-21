package p144o7;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p144o7.AbstractC5248y;
import p144o7.C5230u1;
/* renamed from: o7.r */
/* loaded from: classes2.dex */
public final class C5203r extends AbstractC5200q<AbstractC5248y.C5252d> {

    /* renamed from: o7.r$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C5204a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19531a;

        static {
            int[] iArr = new int[C5230u1.EnumC5232b.values().length];
            f19531a = iArr;
            try {
                iArr[C5230u1.EnumC5232b.f19581d.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19582k.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19583p.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19584q.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19585r.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19586s.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19587t.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19588u.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19593z.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19576B.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19577C.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19578D.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19579E.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19575A.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19592y.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19589v.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19590w.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f19531a[C5230u1.EnumC5232b.f19591x.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: b */
    public Object mo14104b(C5196p c5196p, InterfaceC5210s0 interfaceC5210s0, int i) {
        return c5196p.m14164a(interfaceC5210s0, i);
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: c */
    public C5226u<AbstractC5248y.C5252d> mo14103c(Object obj) {
        return ((AbstractC5248y.AbstractC5251c) obj).extensions;
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: d */
    public C5226u<AbstractC5248y.C5252d> mo14102d(Object obj) {
        return ((AbstractC5248y.AbstractC5251c) obj).m13776Q();
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: e */
    public boolean mo14101e(InterfaceC5210s0 interfaceC5210s0) {
        return interfaceC5210s0 instanceof AbstractC5248y.AbstractC5251c;
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: f */
    public void mo14100f(Object obj) {
        mo14103c(obj).m13956t();
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: g */
    public <UT, UB> UB mo14099g(InterfaceC5136g1 interfaceC5136g1, Object obj, C5196p c5196p, C5226u<AbstractC5248y.C5252d> c5226u, UB ub, AbstractC5195o1<UT, UB> abstractC5195o1) {
        Object m13967i;
        ArrayList arrayList;
        AbstractC5248y.C5253e c5253e = (AbstractC5248y.C5253e) obj;
        int m13762c = c5253e.m13762c();
        if (c5253e.f19714b.mo13769i() && c5253e.f19714b.mo13765y()) {
            switch (C5204a.f19531a[c5253e.m13764a().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14468L(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14473G(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14439p(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14443l(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14437r(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14465O(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14432w(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14479A(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14447h(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14449f(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14438q(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14454a(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14448g(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    interfaceC5136g1.mo14436s(arrayList);
                    ub = (UB) C5162j1.m14360z(m13762c, arrayList, c5253e.f19714b.m13771d(), ub, abstractC5195o1);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + c5253e.f19714b.mo13768k());
            }
            c5226u.m13952x(c5253e.f19714b, arrayList);
        } else {
            Object obj2 = null;
            if (c5253e.m13764a() == C5230u1.EnumC5232b.f19575A) {
                int mo14472H = interfaceC5136g1.mo14472H();
                if (c5253e.f19714b.m13771d().mo14648a(mo14472H) == null) {
                    return (UB) C5162j1.m14405L(m13762c, mo14472H, ub, abstractC5195o1);
                }
                obj2 = Integer.valueOf(mo14472H);
            } else {
                switch (C5204a.f19531a[c5253e.m13764a().ordinal()]) {
                    case 1:
                        obj2 = Double.valueOf(interfaceC5136g1.readDouble());
                        break;
                    case 2:
                        obj2 = Float.valueOf(interfaceC5136g1.readFloat());
                        break;
                    case 3:
                        obj2 = Long.valueOf(interfaceC5136g1.mo14467M());
                        break;
                    case 4:
                        obj2 = Long.valueOf(interfaceC5136g1.mo14453b());
                        break;
                    case 5:
                        obj2 = Integer.valueOf(interfaceC5136g1.mo14472H());
                        break;
                    case 6:
                        obj2 = Long.valueOf(interfaceC5136g1.mo14452c());
                        break;
                    case 7:
                        obj2 = Integer.valueOf(interfaceC5136g1.mo14446i());
                        break;
                    case 8:
                        obj2 = Boolean.valueOf(interfaceC5136g1.mo14445j());
                        break;
                    case 9:
                        obj2 = Integer.valueOf(interfaceC5136g1.mo14442m());
                        break;
                    case 10:
                        obj2 = Integer.valueOf(interfaceC5136g1.mo14470J());
                        break;
                    case 11:
                        obj2 = Long.valueOf(interfaceC5136g1.mo14444k());
                        break;
                    case 12:
                        obj2 = Integer.valueOf(interfaceC5136g1.mo14431x());
                        break;
                    case 13:
                        obj2 = Long.valueOf(interfaceC5136g1.mo14429z());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        obj2 = interfaceC5136g1.mo14474F();
                        break;
                    case 16:
                        obj2 = interfaceC5136g1.mo14478B();
                        break;
                    case 17:
                        obj2 = interfaceC5136g1.mo14450e(c5253e.m13763b().getClass(), c5196p);
                        break;
                    case 18:
                        obj2 = interfaceC5136g1.mo14451d(c5253e.m13763b().getClass(), c5196p);
                        break;
                }
            }
            if (c5253e.m13761d()) {
                c5226u.m13975a(c5253e.f19714b, obj2);
            } else {
                int i = C5204a.f19531a[c5253e.m13764a().ordinal()];
                if ((i == 17 || i == 18) && (m13967i = c5226u.m13967i(c5253e.f19714b)) != null) {
                    obj2 = C5102a0.m14652h(m13967i, obj2);
                }
                c5226u.m13952x(c5253e.f19714b, obj2);
            }
        }
        return ub;
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: h */
    public void mo14098h(InterfaceC5136g1 interfaceC5136g1, Object obj, C5196p c5196p, C5226u<AbstractC5248y.C5252d> c5226u) {
        AbstractC5248y.C5253e c5253e = (AbstractC5248y.C5253e) obj;
        c5226u.m13952x(c5253e.f19714b, interfaceC5136g1.mo14451d(c5253e.m13763b().getClass(), c5196p));
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: i */
    public void mo14097i(AbstractC5137h abstractC5137h, Object obj, C5196p c5196p, C5226u<AbstractC5248y.C5252d> c5226u) {
        AbstractC5248y.C5253e c5253e = (AbstractC5248y.C5253e) obj;
        InterfaceC5210s0 mo13779s = c5253e.m13763b().mo13773u().mo13779s();
        AbstractC5123e m14619Q = AbstractC5123e.m14619Q(ByteBuffer.wrap(abstractC5137h.m14549x()), true);
        C5122d1.m14624a().m14623b(mo13779s, m14619Q, c5196p);
        c5226u.m13952x(c5253e.f19714b, mo13779s);
        if (m14619Q.mo14477C() == Integer.MAX_VALUE) {
            return;
        }
        throw C5117c0.m14638a();
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: a */
    public int mo14105a(Map.Entry<?, ?> entry) {
        return ((AbstractC5248y.C5252d) entry.getKey()).mo13770e();
    }

    @Override // p144o7.AbstractC5200q
    /* renamed from: j */
    public void mo14096j(InterfaceC5242v1 interfaceC5242v1, Map.Entry<?, ?> entry) {
        AbstractC5248y.C5252d c5252d = (AbstractC5248y.C5252d) entry.getKey();
        if (c5252d.mo13769i()) {
            switch (C5204a.f19531a[c5252d.mo13768k().ordinal()]) {
                case 1:
                    C5162j1.m14401P(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 2:
                    C5162j1.m14397T(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 3:
                    C5162j1.m14394W(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 4:
                    C5162j1.m14381e0(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 5:
                    C5162j1.m14395V(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 6:
                    C5162j1.m14398S(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 7:
                    C5162j1.m14399R(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 8:
                    C5162j1.m14403N(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 9:
                    C5162j1.m14383d0(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 10:
                    C5162j1.m14392Y(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 11:
                    C5162j1.m14391Z(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 12:
                    C5162j1.m14389a0(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 13:
                    C5162j1.m14387b0(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 14:
                    C5162j1.m14395V(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, c5252d.mo13765y());
                    return;
                case 15:
                    C5162j1.m14402O(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1);
                    return;
                case 16:
                    C5162j1.m14385c0(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1);
                    return;
                case 17:
                    List list = (List) entry.getValue();
                    if (list != null && !list.isEmpty()) {
                        C5162j1.m14396U(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, C5122d1.m14624a().m14621d(list.get(0).getClass()));
                        return;
                    }
                    return;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 != null && !list2.isEmpty()) {
                        C5162j1.m14393X(c5252d.mo13770e(), (List) entry.getValue(), interfaceC5242v1, C5122d1.m14624a().m14621d(list2.get(0).getClass()));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
        switch (C5204a.f19531a[c5252d.mo13768k().ordinal()]) {
            case 1:
                interfaceC5242v1.mo13858h(c5252d.mo13770e(), ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                interfaceC5242v1.mo13875F(c5252d.mo13770e(), ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                interfaceC5242v1.mo13847s(c5252d.mo13770e(), ((Long) entry.getValue()).longValue());
                return;
            case 4:
                interfaceC5242v1.mo13850p(c5252d.mo13770e(), ((Long) entry.getValue()).longValue());
                return;
            case 5:
                interfaceC5242v1.mo13843w(c5252d.mo13770e(), ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                interfaceC5242v1.mo13855k(c5252d.mo13770e(), ((Long) entry.getValue()).longValue());
                return;
            case 7:
                interfaceC5242v1.mo13859g(c5252d.mo13770e(), ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                interfaceC5242v1.mo13846t(c5252d.mo13770e(), ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                interfaceC5242v1.mo13863c(c5252d.mo13770e(), ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                interfaceC5242v1.mo13845u(c5252d.mo13770e(), ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                interfaceC5242v1.mo13840z(c5252d.mo13770e(), ((Long) entry.getValue()).longValue());
                return;
            case 12:
                interfaceC5242v1.mo13867N(c5252d.mo13770e(), ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                interfaceC5242v1.mo13876E(c5252d.mo13770e(), ((Long) entry.getValue()).longValue());
                return;
            case 14:
                interfaceC5242v1.mo13843w(c5252d.mo13770e(), ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                interfaceC5242v1.mo13860f(c5252d.mo13770e(), (AbstractC5137h) entry.getValue());
                return;
            case 16:
                interfaceC5242v1.mo13851o(c5252d.mo13770e(), (String) entry.getValue());
                return;
            case 17:
                interfaceC5242v1.mo13872I(c5252d.mo13770e(), entry.getValue(), C5122d1.m14624a().m14621d(entry.getValue().getClass()));
                return;
            case 18:
                interfaceC5242v1.mo13854l(c5252d.mo13770e(), entry.getValue(), C5122d1.m14624a().m14621d(entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }
}

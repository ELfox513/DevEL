package p234z1;

import java.util.EnumSet;
import p003a2.C0055f;
import p210w1.C7165u;
import p210w1.InterfaceC7137a0;
/* renamed from: z1.m */
/* loaded from: classes.dex */
public class C7559m {

    /* renamed from: a */
    public static boolean f37463a = true;

    /* renamed from: b */
    public static InterfaceC7137a0 f37464b;

    /* renamed from: z1.m$a */
    /* loaded from: classes.dex */
    public enum EnumC7560a {
        MOVE_PARAM_COMBINER,
        SCCP,
        LITERAL_UPGRADE,
        CONST_COLLECTOR,
        ESCAPE_ANALYSIS
    }

    /* renamed from: a */
    public static InterfaceC7137a0 m1212a() {
        return f37464b;
    }

    /* renamed from: b */
    public static boolean m1211b() {
        return f37463a;
    }

    /* renamed from: c */
    public static C7165u m1210c(C7165u c7165u, int i, boolean z, boolean z2, InterfaceC7137a0 interfaceC7137a0) {
        return m1209d(c7165u, i, z, z2, interfaceC7137a0, EnumSet.allOf(EnumC7560a.class));
    }

    /* renamed from: d */
    public static C7165u m1209d(C7165u c7165u, int i, boolean z, boolean z2, InterfaceC7137a0 interfaceC7137a0, EnumSet<EnumC7560a> enumSet) {
        f37463a = z2;
        f37464b = interfaceC7137a0;
        C7574v m1134a = C7571t.m1134a(c7165u, i, z);
        m1207f(m1134a, enumSet);
        C7165u m27714e = C0055f.m27714e(m1134a, false);
        if (m27714e.m2308b().m2434K() > f37464b.mo2425b()) {
            return m1208e(c7165u, i, z, enumSet);
        }
        return m27714e;
    }

    /* renamed from: f */
    public static void m1207f(C7574v c7574v, EnumSet<EnumC7560a> enumSet) {
        boolean z;
        if (enumSet.contains(EnumC7560a.MOVE_PARAM_COMBINER)) {
            C7555k.m1218d(c7574v);
        }
        boolean z2 = false;
        if (enumSet.contains(EnumC7560a.SCCP)) {
            C7566q.m1189c(c7574v);
            C7536c.m1277d(c7574v);
            z = false;
        } else {
            z = true;
        }
        if (enumSet.contains(EnumC7560a.LITERAL_UPGRADE)) {
            C7551h.m1234e(c7574v);
            C7536c.m1277d(c7574v);
            z = false;
        }
        EnumC7560a enumC7560a = EnumC7560a.ESCAPE_ANALYSIS;
        enumSet.remove(enumC7560a);
        if (enumSet.contains(enumC7560a)) {
            C7544f.m1254k(c7574v);
            C7536c.m1277d(c7574v);
            z = false;
        }
        if (enumSet.contains(EnumC7560a.CONST_COLLECTOR)) {
            C7533b.m1284c(c7574v);
            C7536c.m1277d(c7574v);
        } else {
            z2 = z;
        }
        if (z2) {
            C7536c.m1277d(c7574v);
        }
        C7564o.m1196b(c7574v);
    }

    /* renamed from: e */
    public static C7165u m1208e(C7165u c7165u, int i, boolean z, EnumSet<EnumC7560a> enumSet) {
        C7574v m1134a = C7571t.m1134a(c7165u, i, z);
        EnumSet<EnumC7560a> clone = enumSet.clone();
        clone.remove(EnumC7560a.CONST_COLLECTOR);
        m1207f(m1134a, clone);
        return C0055f.m27714e(m1134a, true);
    }
}

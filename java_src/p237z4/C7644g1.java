package p237z4;

import p237z4.AbstractC7673m0;
/* renamed from: z4.g1 */
/* loaded from: classes2.dex */
public final class C7644g1 implements InterfaceC7645g2 {

    /* renamed from: b */
    public static final InterfaceC7698q1 f37692b = new C7649h1();

    /* renamed from: a */
    public final InterfaceC7698q1 f37693a;

    public C7644g1() {
        this(new C7654i1(C7668l0.m672c(), m767c()));
    }

    /* renamed from: b */
    public static boolean m768b(InterfaceC7693p1 interfaceC7693p1) {
        return interfaceC7693p1.mo595a() == AbstractC7673m0.C7677d.f37820i;
    }

    /* renamed from: c */
    public static InterfaceC7698q1 m767c() {
        try {
            return (InterfaceC7698q1) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f37692b;
        }
    }

    @Override // p237z4.InterfaceC7645g2
    /* renamed from: a */
    public final <T> InterfaceC7640f2<T> mo766a(Class<T> cls) {
        C7650h2.m750H(cls);
        InterfaceC7693p1 mo616b = this.f37693a.mo616b(cls);
        if (mo616b.mo594b()) {
            if (AbstractC7673m0.class.isAssignableFrom(cls)) {
                return C7724w1.m547f(C7650h2.m704z(), C7633e0.m813b(), mo616b.mo593c());
            }
            return C7724w1.m547f(C7650h2.m706x(), C7633e0.m812c(), mo616b.mo593c());
        } else if (AbstractC7673m0.class.isAssignableFrom(cls)) {
            if (m768b(mo616b)) {
                return C7720v1.m575h(cls, mo616b, C7611a2.m885b(), AbstractC7615b1.m879d(), C7650h2.m704z(), C7633e0.m813b(), C7688o1.m625b());
            }
            return C7720v1.m575h(cls, mo616b, C7611a2.m885b(), AbstractC7615b1.m879d(), C7650h2.m704z(), null, C7688o1.m625b());
        } else if (m768b(mo616b)) {
            return C7720v1.m575h(cls, mo616b, C7611a2.m886a(), AbstractC7615b1.m880c(), C7650h2.m706x(), C7633e0.m812c(), C7688o1.m626a());
        } else {
            return C7720v1.m575h(cls, mo616b, C7611a2.m886a(), AbstractC7615b1.m880c(), C7650h2.m705y(), null, C7688o1.m626a());
        }
    }

    public C7644g1(InterfaceC7698q1 interfaceC7698q1) {
        this.f37693a = (InterfaceC7698q1) C7687o0.m632e(interfaceC7698q1, "messageInfoFactory");
    }
}

package com.android.p030dx.dex.p031cf;

import com.android.p030dx.dex.file.AnnotationUtils;
import java.io.PrintStream;
import java.util.ArrayList;
import p015b2.C0452t;
import p120m1.C4598a;
import p120m1.C4603f;
import p120m1.C4604g;
import p120m1.C4605h;
import p120m1.C4609l;
import p120m1.C4610m;
import p120m1.C4611n;
import p120m1.C4612o;
import p120m1.C4613p;
import p120m1.C4614q;
import p120m1.C4621x;
import p147p1.C5305f;
import p156q1.InterfaceC5392b;
import p156q1.InterfaceC5397g;
import p156q1.InterfaceC5398h;
import p201v1.C6969a;
import p201v1.C6971c;
import p201v1.C6972d;
import p201v1.C6973e;
import p201v1.EnumC6970b;
import p210w1.C7136a;
import p218x1.C7205a0;
import p218x1.C7214e0;
import p218x1.C7238z;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.cf.AttributeTranslator */
/* loaded from: classes.dex */
class AttributeTranslator {
    private AttributeTranslator() {
    }

    private static C6971c getAnnotations0(InterfaceC5392b interfaceC5392b) {
        C4611n c4611n = (C4611n) interfaceC5392b.mo13340j("RuntimeVisibleAnnotations");
        C4609l c4609l = (C4609l) interfaceC5392b.mo13340j("RuntimeInvisibleAnnotations");
        if (c4611n == null) {
            if (c4609l == null) {
                return C6971c.f35872b;
            }
            return c4609l.m15922a();
        } else if (c4609l == null) {
            return c4611n.m15922a();
        } else {
            return C6971c.m2828B(c4611n.m15922a(), c4609l.m15922a());
        }
    }

    private static C6969a getSignature(InterfaceC5392b interfaceC5392b) {
        C4613p c4613p = (C4613p) interfaceC5392b.mo13340j("Signature");
        if (c4613p == null) {
            return null;
        }
        return AnnotationUtils.makeSignature(c4613p.m15925a());
    }

    private static C6969a getSourceDebugExtension(InterfaceC5392b interfaceC5392b) {
        C4614q c4614q = (C4614q) interfaceC5392b.mo13340j("SourceDebugExtension");
        if (c4614q == null) {
            return null;
        }
        return AnnotationUtils.makeSourceDebugExtension(c4614q.m15924a());
    }

    private static C6969a translateEnclosingMethod(InterfaceC5392b interfaceC5392b) {
        C4603f c4603f = (C4603f) interfaceC5392b.mo13340j("EnclosingMethod");
        if (c4603f == null) {
            return null;
        }
        C7214e0 m15930a = c4603f.m15930a();
        C7205a0 m15929b = c4603f.m15929b();
        if (m15929b == null) {
            return AnnotationUtils.makeEnclosingClass(m15930a);
        }
        return AnnotationUtils.makeEnclosingMethod(new C7238z(m15930a, m15929b));
    }

    private static C6971c translateInnerClasses(C7214e0 c7214e0, InterfaceC5392b interfaceC5392b, boolean z) {
        C4605h c4605h = (C4605h) interfaceC5392b.mo13340j("InnerClasses");
        if (c4605h == null) {
            return null;
        }
        C4621x m15927a = c4605h.m15927a();
        int size = m15927a.size();
        ArrayList arrayList = new ArrayList();
        C4621x.C4622a c4622a = null;
        for (int i = 0; i < size; i++) {
            C4621x.C4622a m15919x = m15927a.m15919x(i);
            C7214e0 m15916b = m15919x.m15916b();
            if (m15916b.equals(c7214e0)) {
                c4622a = m15919x;
            } else if (c7214e0.equals(m15919x.m15914d())) {
                arrayList.add(m15916b.m2097x());
            }
        }
        int size2 = arrayList.size();
        if (c4622a == null && size2 == 0) {
            return null;
        }
        C6971c c6971c = new C6971c();
        if (c4622a != null) {
            c6971c.m2825x(AnnotationUtils.makeInnerClass(c4622a.m15915c(), c4622a.m15917a()));
            if (z) {
                if (c4622a.m15914d() != null) {
                    c6971c.m2825x(AnnotationUtils.makeEnclosingClass(c4622a.m15914d()));
                } else {
                    throw new C0452t("Ignoring InnerClasses attribute for an anonymous inner class\n(" + c7214e0.toHuman() + ") that doesn't come with an\nassociated EnclosingMethod attribute. This class was probably produced by a\ncompiler that did not target the modern .class file format. The recommended\nsolution is to recompile the class from source, using an up-to-date compiler\nand without specifying any \"-target\" type options. The consequence of ignoring\nthis warning is that reflective operations on this class will incorrectly\nindicate that it is *not* an inner class.");
                }
            }
        }
        if (size2 != 0) {
            C7401b c7401b = new C7401b(size2);
            for (int i2 = 0; i2 < size2; i2++) {
                c7401b.m1551I(i2, (C7402c) arrayList.get(i2));
            }
            c7401b.setImmutable();
            c6971c.m2825x(AnnotationUtils.makeMemberClasses(c7401b));
        }
        c6971c.setImmutable();
        return c6971c;
    }

    public static C6971c getAnnotations(InterfaceC5392b interfaceC5392b) {
        C6971c annotations0 = getAnnotations0(interfaceC5392b);
        C6969a signature = getSignature(interfaceC5392b);
        C6969a sourceDebugExtension = getSourceDebugExtension(interfaceC5392b);
        if (signature != null) {
            annotations0 = C6971c.m2829A(annotations0, signature);
        }
        if (sourceDebugExtension != null) {
            return C6971c.m2829A(annotations0, sourceDebugExtension);
        }
        return annotations0;
    }

    public static C6971c getClassAnnotations(C5305f c5305f, CfOptions cfOptions) {
        boolean z;
        C6969a translateAnnotationDefaults;
        C7214e0 m13570p = c5305f.m13570p();
        InterfaceC5392b m13583c = c5305f.m13583c();
        C6971c annotations = getAnnotations(m13583c);
        C6969a translateEnclosingMethod = translateEnclosingMethod(m13583c);
        if (translateEnclosingMethod == null) {
            z = true;
        } else {
            z = false;
        }
        try {
            C6971c translateInnerClasses = translateInnerClasses(m13570p, m13583c, z);
            if (translateInnerClasses != null) {
                annotations = C6971c.m2828B(annotations, translateInnerClasses);
            }
        } catch (C0452t e) {
            PrintStream printStream = cfOptions.warn;
            printStream.println("warning: " + e.getMessage());
        }
        if (translateEnclosingMethod != null) {
            annotations = C6971c.m2829A(annotations, translateEnclosingMethod);
        }
        if (C7136a.m2455f(c5305f.mo13347a()) && (translateAnnotationDefaults = translateAnnotationDefaults(c5305f)) != null) {
            return C6971c.m2829A(annotations, translateAnnotationDefaults);
        }
        return annotations;
    }

    public static InterfaceC7404e getExceptions(InterfaceC5397g interfaceC5397g) {
        C4604g c4604g = (C4604g) interfaceC5397g.getAttributes().mo13340j("Exceptions");
        if (c4604g == null) {
            return C7401b.f37044a;
        }
        return c4604g.m15928a();
    }

    public static C6971c getMethodAnnotations(InterfaceC5397g interfaceC5397g) {
        C6971c annotations = getAnnotations(interfaceC5397g.getAttributes());
        InterfaceC7404e exceptions = getExceptions(interfaceC5397g);
        if (exceptions.size() != 0) {
            return C6971c.m2829A(annotations, AnnotationUtils.makeThrows(exceptions));
        }
        return annotations;
    }

    public static C6972d getParameterAnnotations(InterfaceC5397g interfaceC5397g) {
        InterfaceC5392b attributes = interfaceC5397g.getAttributes();
        C4612o c4612o = (C4612o) attributes.mo13340j("RuntimeVisibleParameterAnnotations");
        C4610m c4610m = (C4610m) attributes.mo13340j("RuntimeInvisibleParameterAnnotations");
        if (c4612o == null) {
            if (c4610m == null) {
                return C6972d.f35874a;
            }
            return c4610m.m15920a();
        } else if (c4610m == null) {
            return c4612o.m15920a();
        } else {
            return C6972d.m2822x(c4612o.m15920a(), c4610m.m15920a());
        }
    }

    private static C6969a translateAnnotationDefaults(C5305f c5305f) {
        C7214e0 m13570p = c5305f.m13570p();
        InterfaceC5398h m13573m = c5305f.m13573m();
        int size = m13573m.size();
        C6969a c6969a = new C6969a(m13570p, EnumC6970b.EMBEDDED);
        boolean z = false;
        for (int i = 0; i < size; i++) {
            InterfaceC5397g interfaceC5397g = m13573m.get(i);
            C4598a c4598a = (C4598a) interfaceC5397g.getAttributes().mo13340j("AnnotationDefault");
            if (c4598a != null) {
                c6969a.m2831x(new C6973e(interfaceC5397g.mo13332d().m2128x(), c4598a.m15938a()));
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        c6969a.setImmutable();
        return AnnotationUtils.makeAnnotationDefault(c6969a);
    }
}

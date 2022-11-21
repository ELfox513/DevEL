package com.android.p030dx.dex.file;

import java.util.ArrayList;
import p201v1.C6969a;
import p201v1.C6973e;
import p201v1.EnumC6970b;
import p218x1.AbstractC7204a;
import p218x1.C7208c;
import p218x1.C7210d;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7228p;
import p218x1.C7231s;
import p218x1.C7238z;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.file.AnnotationUtils */
/* loaded from: classes.dex */
public final class AnnotationUtils {
    private static final C7214e0 ANNOTATION_DEFAULT_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/AnnotationDefault;"));
    private static final C7214e0 ENCLOSING_CLASS_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/EnclosingClass;"));
    private static final C7214e0 ENCLOSING_METHOD_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/EnclosingMethod;"));
    private static final C7214e0 INNER_CLASS_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/InnerClass;"));
    private static final C7214e0 MEMBER_CLASSES_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/MemberClasses;"));
    private static final C7214e0 SIGNATURE_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/Signature;"));
    private static final C7214e0 SOURCE_DEBUG_EXTENSION_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/SourceDebugExtension;"));
    private static final C7214e0 THROWS_TYPE = C7214e0.m2101C(C7402c.m1543D("Ldalvik/annotation/Throws;"));
    private static final C7212d0 ACCESS_FLAGS_STRING = new C7212d0("accessFlags");
    private static final C7212d0 NAME_STRING = new C7212d0("name");
    private static final C7212d0 VALUE_STRING = new C7212d0("value");

    private AnnotationUtils() {
    }

    public static C6969a makeAnnotationDefault(C6969a c6969a) {
        C6969a c6969a2 = new C6969a(ANNOTATION_DEFAULT_TYPE, EnumC6970b.SYSTEM);
        c6969a2.m2832D(new C6973e(VALUE_STRING, new C7208c(c6969a)));
        c6969a2.setImmutable();
        return c6969a2;
    }

    public static C6969a makeEnclosingClass(C7214e0 c7214e0) {
        C6969a c6969a = new C6969a(ENCLOSING_CLASS_TYPE, EnumC6970b.SYSTEM);
        c6969a.m2832D(new C6973e(VALUE_STRING, c7214e0));
        c6969a.setImmutable();
        return c6969a;
    }

    public static C6969a makeEnclosingMethod(C7238z c7238z) {
        C6969a c6969a = new C6969a(ENCLOSING_METHOD_TYPE, EnumC6970b.SYSTEM);
        c6969a.m2832D(new C6973e(VALUE_STRING, c7238z));
        c6969a.setImmutable();
        return c6969a;
    }

    public static C6969a makeInnerClass(C7212d0 c7212d0, int i) {
        C6969a c6969a = new C6969a(INNER_CLASS_TYPE, EnumC6970b.SYSTEM);
        AbstractC7204a abstractC7204a = c7212d0;
        if (c7212d0 == null) {
            abstractC7204a = C7231s.f36613a;
        }
        c6969a.m2832D(new C6973e(NAME_STRING, abstractC7204a));
        c6969a.m2832D(new C6973e(ACCESS_FLAGS_STRING, C7228p.m2074C(i)));
        c6969a.setImmutable();
        return c6969a;
    }

    public static C6969a makeSignature(C7212d0 c7212d0) {
        C6969a c6969a = new C6969a(SIGNATURE_TYPE, EnumC6970b.SYSTEM);
        String m2112u = c7212d0.m2112u();
        int length = m2112u.length();
        ArrayList arrayList = new ArrayList(20);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (m2112u.charAt(i) == 'L') {
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    char charAt = m2112u.charAt(i2);
                    if (charAt == ';') {
                        i2++;
                        break;
                    } else if (charAt == '<') {
                        break;
                    } else {
                        i2++;
                    }
                }
            } else {
                while (i2 < length && m2112u.charAt(i2) != 'L') {
                    i2++;
                }
            }
            arrayList.add(m2112u.substring(i, i2));
            i = i2;
        }
        int size = arrayList.size();
        C7210d.C7211a c7211a = new C7210d.C7211a(size);
        for (int i3 = 0; i3 < size; i3++) {
            c7211a.m2119z(i3, new C7212d0((String) arrayList.get(i3)));
        }
        c7211a.setImmutable();
        c6969a.m2832D(new C6973e(VALUE_STRING, new C7210d(c7211a)));
        c6969a.setImmutable();
        return c6969a;
    }

    public static C6969a makeSourceDebugExtension(C7212d0 c7212d0) {
        C6969a c6969a = new C6969a(SOURCE_DEBUG_EXTENSION_TYPE, EnumC6970b.SYSTEM);
        c6969a.m2832D(new C6973e(VALUE_STRING, c7212d0));
        c6969a.setImmutable();
        return c6969a;
    }

    private static C7210d makeCstArray(InterfaceC7404e interfaceC7404e) {
        int size = interfaceC7404e.size();
        C7210d.C7211a c7211a = new C7210d.C7211a(size);
        for (int i = 0; i < size; i++) {
            c7211a.m2119z(i, C7214e0.m2101C(interfaceC7404e.getType(i)));
        }
        c7211a.setImmutable();
        return new C7210d(c7211a);
    }

    public static C6969a makeMemberClasses(InterfaceC7404e interfaceC7404e) {
        C7210d makeCstArray = makeCstArray(interfaceC7404e);
        C6969a c6969a = new C6969a(MEMBER_CLASSES_TYPE, EnumC6970b.SYSTEM);
        c6969a.m2832D(new C6973e(VALUE_STRING, makeCstArray));
        c6969a.setImmutable();
        return c6969a;
    }

    public static C6969a makeThrows(InterfaceC7404e interfaceC7404e) {
        C7210d makeCstArray = makeCstArray(interfaceC7404e);
        C6969a c6969a = new C6969a(THROWS_TYPE, EnumC6970b.SYSTEM);
        c6969a.m2832D(new C6973e(VALUE_STRING, makeCstArray));
        c6969a.setImmutable();
        return c6969a;
    }
}

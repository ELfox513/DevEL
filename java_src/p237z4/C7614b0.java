package p237z4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: z4.b0 */
/* loaded from: classes2.dex */
public class C7614b0 {

    /* renamed from: b */
    public static final Class<?> f37633b = m882a();

    /* renamed from: c */
    public static final C7614b0 f37634c = new C7614b0(true);

    /* renamed from: a */
    public final Map<Object, Object> f37635a;

    public C7614b0() {
        this.f37635a = new HashMap();
    }

    /* renamed from: a */
    public static Class<?> m882a() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static C7614b0 m881b() {
        return C7609a0.m888b();
    }

    public C7614b0(boolean z) {
        this.f37635a = Collections.emptyMap();
    }
}

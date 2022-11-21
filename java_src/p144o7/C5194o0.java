package p144o7;

import java.util.Map;
import p144o7.C5182l0;
/* renamed from: o7.o0 */
/* loaded from: classes2.dex */
public class C5194o0 implements InterfaceC5191n0 {
    @Override // p144o7.InterfaceC5191n0
    /* renamed from: a */
    public Object mo14176a(Object obj, Object obj2) {
        return m14167j(obj, obj2);
    }

    @Override // p144o7.InterfaceC5191n0
    /* renamed from: b */
    public Object mo14175b(Object obj) {
        ((C5186m0) obj).m14187n();
        return obj;
    }

    @Override // p144o7.InterfaceC5191n0
    /* renamed from: c */
    public C5182l0.C5183a<?, ?> mo14174c(Object obj) {
        return ((C5182l0) obj).m14212c();
    }

    @Override // p144o7.InterfaceC5191n0
    /* renamed from: d */
    public Map<?, ?> mo14173d(Object obj) {
        return (C5186m0) obj;
    }

    @Override // p144o7.InterfaceC5191n0
    /* renamed from: e */
    public Object mo14172e(Object obj) {
        return C5186m0.m14192f().m14185p();
    }

    @Override // p144o7.InterfaceC5191n0
    /* renamed from: f */
    public int mo14171f(int i, Object obj, Object obj2) {
        return m14168i(i, obj, obj2);
    }

    @Override // p144o7.InterfaceC5191n0
    /* renamed from: g */
    public boolean mo14170g(Object obj) {
        return !((C5186m0) obj).m14188l();
    }

    @Override // p144o7.InterfaceC5191n0
    /* renamed from: h */
    public Map<?, ?> mo14169h(Object obj) {
        return (C5186m0) obj;
    }

    /* renamed from: i */
    public static <K, V> int m14168i(int i, Object obj, Object obj2) {
        C5186m0 c5186m0 = (C5186m0) obj;
        C5182l0 c5182l0 = (C5182l0) obj2;
        int i2 = 0;
        if (c5186m0.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : c5186m0.entrySet()) {
            i2 += c5182l0.m14214a(i, entry.getKey(), entry.getValue());
        }
        return i2;
    }

    /* renamed from: j */
    public static <K, V> C5186m0<K, V> m14167j(Object obj, Object obj2) {
        C5186m0<K, V> c5186m0 = (C5186m0) obj;
        C5186m0<K, V> c5186m02 = (C5186m0) obj2;
        if (!c5186m02.isEmpty()) {
            if (!c5186m0.m14188l()) {
                c5186m0 = c5186m0.m14185p();
            }
            c5186m0.m14186o(c5186m02);
        }
        return c5186m0;
    }
}

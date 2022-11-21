package p018b5;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p018b5.AbstractC0955x8;
import p018b5.C0904u8;
/* renamed from: b5.x8 */
/* loaded from: classes2.dex */
public abstract class AbstractC0955x8<MessageType extends AbstractC0955x8<MessageType, BuilderType>, BuilderType extends C0904u8<MessageType, BuilderType>> extends AbstractC0648f7<MessageType, BuilderType> {
    private static final Map<Object, AbstractC0955x8<?, ?>> zza = new ConcurrentHashMap();
    public C0703ib zzc = C0703ib.m25792c();
    public int zzd = -1;

    /* renamed from: f */
    public static <E> InterfaceC0633e9<E> m24984f() {
        return C0787na.m25575e();
    }

    /* renamed from: i */
    public static Object m24981i(InterfaceC0634ea interfaceC0634ea, String str, Object[] objArr) {
        return new C0804oa(interfaceC0634ea, str, objArr);
    }

    /* renamed from: j */
    public static <T extends AbstractC0955x8> void m24980j(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    /* renamed from: o */
    public static InterfaceC0599c9 m24976o() {
        return C0989z8.m24864g();
    }

    /* renamed from: p */
    public static InterfaceC0616d9 m24975p() {
        return C0871s9.m25257e();
    }

    @Override // p018b5.InterfaceC0651fa
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC0634ea mo24987a() {
        return (AbstractC0955x8) mo24877r(6, null, null);
    }

    @Override // p018b5.AbstractC0648f7
    /* renamed from: b */
    public final int mo24986b() {
        return this.zzd;
    }

    @Override // p018b5.AbstractC0648f7
    /* renamed from: d */
    public final void mo24985d(int i) {
        this.zzd = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return C0770ma.m25655a().m25654b(getClass()).mo25489h(this, (AbstractC0955x8) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int mo25495b = C0770ma.m25655a().m25654b(getClass()).mo25495b(this);
        this.zzb = mo25495b;
        return mo25495b;
    }

    /* renamed from: k */
    public final <MessageType extends AbstractC0955x8<MessageType, BuilderType>, BuilderType extends C0904u8<MessageType, BuilderType>> BuilderType m24979k() {
        return (BuilderType) mo24877r(5, null, null);
    }

    /* renamed from: l */
    public final BuilderType m24978l() {
        BuilderType buildertype = (BuilderType) mo24877r(5, null, null);
        buildertype.m25096o(this);
        return buildertype;
    }

    /* renamed from: r */
    public abstract Object mo24877r(int i, Object obj, Object obj2);

    @Override // p018b5.InterfaceC0634ea
    /* renamed from: t0 */
    public final int mo24973t0() {
        int i = this.zzd;
        if (i == -1) {
            int mo25496a = C0770ma.m25655a().m25654b(getClass()).mo25496a(this);
            this.zzd = mo25496a;
            return mo25496a;
        }
        return i;
    }

    public final String toString() {
        return C0668ga.m25889a(this, super.toString());
    }

    @Override // p018b5.InterfaceC0634ea
    /* renamed from: u0 */
    public final /* bridge */ /* synthetic */ InterfaceC0617da mo24972u0() {
        C0904u8 c0904u8 = (C0904u8) mo24877r(5, null, null);
        c0904u8.m25096o(this);
        return c0904u8;
    }

    @Override // p018b5.InterfaceC0634ea
    /* renamed from: w0 */
    public final /* bridge */ /* synthetic */ InterfaceC0617da mo24970w0() {
        return (C0904u8) mo24877r(5, null, null);
    }

    /* renamed from: n */
    public static <T extends AbstractC0955x8> T m24977n(Class<T> cls) {
        Map<Object, AbstractC0955x8<?, ?>> map = zza;
        AbstractC0955x8<?, ?> abstractC0955x8 = map.get(cls);
        if (abstractC0955x8 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC0955x8 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC0955x8 == null) {
            abstractC0955x8 = (AbstractC0955x8) ((AbstractC0955x8) C0856rb.m25351j(cls)).mo24877r(6, null, null);
            if (abstractC0955x8 != null) {
                map.put(cls, abstractC0955x8);
            } else {
                throw new IllegalStateException();
            }
        }
        return abstractC0955x8;
    }

    /* renamed from: g */
    public static <E> InterfaceC0633e9<E> m24983g(InterfaceC0633e9<E> interfaceC0633e9) {
        int i;
        int size = interfaceC0633e9.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return interfaceC0633e9.mo24861p0(i);
    }

    /* renamed from: h */
    public static Object m24982h(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* renamed from: q */
    public static InterfaceC0616d9 m24974q(InterfaceC0616d9 interfaceC0616d9) {
        int i;
        int size = interfaceC0616d9.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return interfaceC0616d9.mo25258S(i);
    }

    @Override // p018b5.InterfaceC0634ea
    /* renamed from: v0 */
    public final void mo24971v0(AbstractC0649f8 abstractC0649f8) {
        C0770ma.m25655a().m25654b(getClass()).mo25488i(this, C0666g8.m25904l(abstractC0649f8));
    }
}

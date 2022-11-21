package p237z4;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p237z4.AbstractC7673m0;
import p237z4.AbstractC7673m0.AbstractC7674a;
/* renamed from: z4.m0 */
/* loaded from: classes2.dex */
public abstract class AbstractC7673m0<MessageType extends AbstractC7673m0<MessageType, BuilderType>, BuilderType extends AbstractC7674a<MessageType, BuilderType>> extends AbstractC7618c<MessageType, BuilderType> {
    private static Map<Object, AbstractC7673m0<?, ?>> zzrs = new ConcurrentHashMap();
    public C7735y2 zzrq = C7735y2.m450h();
    private int zzrr = -1;

    /* renamed from: z4.m0$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC7674a<MessageType extends AbstractC7673m0<MessageType, BuilderType>, BuilderType extends AbstractC7674a<MessageType, BuilderType>> extends AbstractC7623d<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f37808a;

        /* renamed from: b */
        public MessageType f37809b;

        /* renamed from: d */
        public boolean f37810d = false;

        /* renamed from: n */
        public static void m652n(MessageType messagetype, MessageType messagetype2) {
            C7626d2.m870a().m868c(messagetype).mo551b(messagetype, messagetype2);
        }

        @Override // p237z4.InterfaceC7712t1
        /* renamed from: f */
        public final /* synthetic */ InterfaceC7703r1 mo590f() {
            return this.f37808a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() {
            AbstractC7674a abstractC7674a = (AbstractC7674a) this.f37808a.mo662l(C7677d.f37816e, null, null);
            abstractC7674a.mo654j((AbstractC7673m0) mo596w());
            return abstractC7674a;
        }

        /* renamed from: o */
        public final void m651o() {
            if (this.f37810d) {
                MessageType messagetype = (MessageType) this.f37809b.mo662l(C7677d.f37815d, null, null);
                m652n(messagetype, this.f37809b);
                this.f37809b = messagetype;
                this.f37810d = false;
            }
        }

        @Override // p237z4.InterfaceC7708s1
        /* renamed from: p */
        public MessageType mo596w() {
            if (this.f37810d) {
                return this.f37809b;
            }
            this.f37809b.m657q();
            this.f37810d = true;
            return this.f37809b;
        }

        public AbstractC7674a(MessageType messagetype) {
            this.f37808a = messagetype;
            this.f37809b = (MessageType) messagetype.mo662l(C7677d.f37815d, null, null);
        }

        @Override // p237z4.AbstractC7623d
        /* renamed from: l */
        public final BuilderType mo654j(MessageType messagetype) {
            m651o();
            m652n(this.f37809b, messagetype);
            return this;
        }

        @Override // p237z4.InterfaceC7708s1
        /* renamed from: t */
        public final MessageType mo597k() {
            MessageType messagetype = (MessageType) mo596w();
            if (messagetype.mo591a()) {
                return messagetype;
            }
            throw new C7725w2(messagetype);
        }
    }

    /* renamed from: z4.m0$c */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC7676c<MessageType extends AbstractC7676c<MessageType, BuilderType>, BuilderType> extends AbstractC7673m0<MessageType, BuilderType> implements InterfaceC7712t1 {
        public C7638f0<Object> zzrw = C7638f0.m791o();

        /* renamed from: t */
        public final C7638f0<Object> m648t() {
            if (this.zzrw.m804b()) {
                this.zzrw = (C7638f0) this.zzrw.clone();
            }
            return this.zzrw;
        }
    }

    /* renamed from: z4.m0$d */
    /* loaded from: classes2.dex */
    public enum C7677d {

        /* renamed from: a */
        public static final int f37812a = 1;

        /* renamed from: b */
        public static final int f37813b = 2;

        /* renamed from: c */
        public static final int f37814c = 3;

        /* renamed from: d */
        public static final int f37815d = 4;

        /* renamed from: e */
        public static final int f37816e = 5;

        /* renamed from: f */
        public static final int f37817f = 6;

        /* renamed from: g */
        public static final int f37818g = 7;

        /* renamed from: i */
        public static final int f37820i = 1;

        /* renamed from: j */
        public static final int f37821j = 2;

        /* renamed from: l */
        public static final int f37823l = 1;

        /* renamed from: m */
        public static final int f37824m = 2;

        /* renamed from: h */
        public static final /* synthetic */ int[] f37819h = {1, 2, 3, 4, 5, 6, 7};

        /* renamed from: k */
        public static final /* synthetic */ int[] f37822k = {1, 2};

        /* renamed from: n */
        public static final /* synthetic */ int[] f37825n = {1, 2};

        /* renamed from: a */
        public static int[] m647a() {
            return (int[]) f37819h.clone();
        }
    }

    /* renamed from: n */
    public static Object m660n(InterfaceC7703r1 interfaceC7703r1, String str, Object[] objArr) {
        return new C7635e2(interfaceC7703r1, str, objArr);
    }

    /* renamed from: o */
    public static <T extends AbstractC7673m0<?, ?>> void m659o(Class<T> cls, T t) {
        zzrs.put(cls, t);
    }

    @Override // p237z4.InterfaceC7712t1
    /* renamed from: a */
    public final boolean mo591a() {
        return m658p(this, true);
    }

    @Override // p237z4.AbstractC7618c
    /* renamed from: g */
    public final int mo664g() {
        return this.zzrr;
    }

    @Override // p237z4.AbstractC7618c
    /* renamed from: j */
    final void mo663j(int i) {
        this.zzrr = i;
    }

    /* renamed from: l */
    public abstract Object mo662l(int i, Object obj, Object obj2);

    /* renamed from: q */
    public final void m657q() {
        C7626d2.m870a().m868c(this).mo550c(this);
    }

    public String toString() {
        return C7716u1.m586a(this, super.toString());
    }

    /* renamed from: z4.m0$b */
    /* loaded from: classes2.dex */
    public static class C7675b<T extends AbstractC7673m0<T, ?>> extends C7632e<T> {

        /* renamed from: b */
        public final T f37811b;

        public C7675b(T t) {
            this.f37811b = t;
        }
    }

    /* renamed from: p */
    public static final <T extends AbstractC7673m0<T, ?>> boolean m658p(T t, boolean z) {
        Object obj;
        byte byteValue = ((Byte) t.mo662l(C7677d.f37812a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean mo548e = C7626d2.m870a().m868c(t).mo548e(t);
        if (z) {
            int i = C7677d.f37813b;
            if (mo548e) {
                obj = t;
            } else {
                obj = null;
            }
            t.mo662l(i, obj, null);
        }
        return mo548e;
    }

    /* renamed from: s */
    public static <T extends AbstractC7673m0<?, ?>> T m655s(Class<T> cls) {
        AbstractC7673m0<?, ?> abstractC7673m0 = zzrs.get(cls);
        if (abstractC7673m0 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC7673m0 = zzrs.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC7673m0 == null) {
            abstractC7673m0 = (T) ((AbstractC7673m0) C7627d3.m829x(cls)).mo662l(C7677d.f37817f, null, null);
            if (abstractC7673m0 != null) {
                zzrs.put(cls, abstractC7673m0);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) abstractC7673m0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((AbstractC7673m0) mo662l(C7677d.f37817f, null, null)).getClass().isInstance(obj)) {
            return false;
        }
        return C7626d2.m870a().m868c(this).equals(this, (AbstractC7673m0) obj);
    }

    @Override // p237z4.InterfaceC7712t1
    /* renamed from: f */
    public final /* synthetic */ InterfaceC7703r1 mo590f() {
        return (AbstractC7673m0) mo662l(C7677d.f37817f, null, null);
    }

    @Override // p237z4.InterfaceC7703r1
    /* renamed from: h */
    public final int mo609h() {
        if (this.zzrr == -1) {
            this.zzrr = C7626d2.m870a().m868c(this).mo552a(this);
        }
        return this.zzrr;
    }

    public int hashCode() {
        int i = this.zzne;
        if (i != 0) {
            return i;
        }
        int hashCode = C7626d2.m870a().m868c(this).hashCode(this);
        this.zzne = hashCode;
        return hashCode;
    }

    @Override // p237z4.InterfaceC7703r1
    /* renamed from: i */
    public final /* synthetic */ InterfaceC7708s1 mo608i() {
        AbstractC7674a abstractC7674a = (AbstractC7674a) mo662l(C7677d.f37816e, null, null);
        abstractC7674a.mo654j(this);
        return abstractC7674a;
    }

    /* renamed from: r */
    public final <MessageType extends AbstractC7673m0<MessageType, BuilderType>, BuilderType extends AbstractC7674a<MessageType, BuilderType>> BuilderType m656r() {
        return (BuilderType) mo662l(C7677d.f37816e, null, null);
    }

    /* renamed from: m */
    public static Object m661m(Method method, Object obj, Object... objArr) {
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

    @Override // p237z4.InterfaceC7703r1
    /* renamed from: b */
    public final void mo611b(AbstractC7726x abstractC7726x) {
        C7626d2.m870a().m869b(getClass()).mo549d(this, C7736z.m434O(abstractC7726x));
    }
}

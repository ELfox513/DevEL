package p144o7;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p144o7.AbstractC5100a;
import p144o7.AbstractC5248y;
import p144o7.AbstractC5248y.AbstractC5249a;
import p144o7.C5102a0;
import p144o7.C5226u;
import p144o7.C5230u1;
import p144o7.InterfaceC5210s0;
/* renamed from: o7.y */
/* loaded from: classes2.dex */
public abstract class AbstractC5248y<MessageType extends AbstractC5248y<MessageType, BuilderType>, BuilderType extends AbstractC5249a<MessageType, BuilderType>> extends AbstractC5100a<MessageType, BuilderType> {
    private static Map<Object, AbstractC5248y<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    public C5199p1 unknownFields = C5199p1.m14157c();
    public int memoizedSerializedSize = -1;

    /* renamed from: o7.y$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5249a<MessageType extends AbstractC5248y<MessageType, BuilderType>, BuilderType extends AbstractC5249a<MessageType, BuilderType>> extends AbstractC5100a.AbstractC5101a<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f19704a;

        /* renamed from: b */
        public MessageType f19705b;

        /* renamed from: d */
        public boolean f19706d = false;

        @Override // p144o7.InterfaceC5219t0
        /* renamed from: J */
        public MessageType mo13775c() {
            return this.f19704a;
        }

        @Override // p144o7.AbstractC5100a.AbstractC5101a
        /* renamed from: K */
        public BuilderType mo13789A(MessageType messagetype) {
            return m13781L(messagetype);
        }

        /* renamed from: P */
        public final void m13780P(MessageType messagetype, MessageType messagetype2) {
            C5122d1.m14624a().m14620e(messagetype).mo13827a(messagetype, messagetype2);
        }

        @Override // p144o7.InterfaceC5210s0.InterfaceC5211a
        /* renamed from: E */
        public MessageType mo13779s() {
            if (this.f19706d) {
                return this.f19705b;
            }
            this.f19705b.m13806I();
            this.f19706d = true;
            return this.f19705b;
        }

        /* renamed from: G */
        public final void m13785G() {
            if (this.f19706d) {
                m13784I();
                this.f19706d = false;
            }
        }

        /* renamed from: I */
        public void m13784I() {
            MessageType messagetype = (MessageType) this.f19705b.m13790z(EnumC5254f.NEW_MUTABLE_INSTANCE);
            m13780P(messagetype, this.f19705b);
            this.f19705b = messagetype;
        }

        public AbstractC5249a(MessageType messagetype) {
            this.f19704a = messagetype;
            this.f19705b = (MessageType) messagetype.m13790z(EnumC5254f.NEW_MUTABLE_INSTANCE);
        }

        @Override // p144o7.InterfaceC5210s0.InterfaceC5211a
        /* renamed from: D */
        public final MessageType build() {
            MessageType mo13779s = mo13779s();
            if (mo13779s.mo13798a()) {
                return mo13779s;
            }
            throw AbstractC5100a.AbstractC5101a.m14662C(mo13779s);
        }

        /* renamed from: F */
        public BuilderType clone() {
            BuilderType buildertype = (BuilderType) mo13775c().mo13773u();
            buildertype.m13781L(mo13779s());
            return buildertype;
        }

        /* renamed from: L */
        public BuilderType m13781L(MessageType messagetype) {
            m13785G();
            m13780P(this.f19705b, messagetype);
            return this;
        }
    }

    /* renamed from: o7.y$c */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5251c<MessageType extends AbstractC5251c<MessageType, BuilderType>, BuilderType> extends AbstractC5248y<MessageType, BuilderType> implements InterfaceC5219t0 {
        public C5226u<C5252d> extensions = C5226u.m13968h();

        @Override // p144o7.AbstractC5248y, p144o7.InterfaceC5219t0
        /* renamed from: c */
        public /* bridge */ /* synthetic */ InterfaceC5210s0 mo13775c() {
            return super.mo13775c();
        }

        @Override // p144o7.AbstractC5248y, p144o7.InterfaceC5210s0
        /* renamed from: f */
        public /* bridge */ /* synthetic */ InterfaceC5210s0.InterfaceC5211a mo13774f() {
            return super.mo13774f();
        }

        @Override // p144o7.AbstractC5248y, p144o7.InterfaceC5210s0
        /* renamed from: u */
        public /* bridge */ /* synthetic */ InterfaceC5210s0.InterfaceC5211a mo13773u() {
            return super.mo13773u();
        }

        /* renamed from: Q */
        public C5226u<C5252d> m13776Q() {
            if (this.extensions.m13961o()) {
                this.extensions = this.extensions.clone();
            }
            return this.extensions;
        }
    }

    /* renamed from: o7.y$d */
    /* loaded from: classes2.dex */
    public static final class C5252d implements C5226u.InterfaceC5228b<C5252d> {

        /* renamed from: a */
        public final C5102a0.InterfaceC5106d<?> f19708a;

        /* renamed from: b */
        public final int f19709b;

        /* renamed from: d */
        public final C5230u1.EnumC5232b f19710d;

        /* renamed from: k */
        public final boolean f19711k;

        /* renamed from: p */
        public final boolean f19712p;

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(C5252d c5252d) {
            return this.f19709b - c5252d.f19709b;
        }

        /* renamed from: d */
        public C5102a0.InterfaceC5106d<?> m13771d() {
            return this.f19708a;
        }

        @Override // p144o7.C5226u.InterfaceC5228b
        /* renamed from: e */
        public int mo13770e() {
            return this.f19709b;
        }

        @Override // p144o7.C5226u.InterfaceC5228b
        /* renamed from: i */
        public boolean mo13769i() {
            return this.f19711k;
        }

        @Override // p144o7.C5226u.InterfaceC5228b
        /* renamed from: k */
        public C5230u1.EnumC5232b mo13768k() {
            return this.f19710d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p144o7.C5226u.InterfaceC5228b
        /* renamed from: r */
        public InterfaceC5210s0.InterfaceC5211a mo13767r(InterfaceC5210s0.InterfaceC5211a interfaceC5211a, InterfaceC5210s0 interfaceC5210s0) {
            return ((AbstractC5249a) interfaceC5211a).m13781L((AbstractC5248y) interfaceC5210s0);
        }

        @Override // p144o7.C5226u.InterfaceC5228b
        /* renamed from: w */
        public C5230u1.EnumC5237c mo13766w() {
            return this.f19710d.m13941c();
        }

        @Override // p144o7.C5226u.InterfaceC5228b
        /* renamed from: y */
        public boolean mo13765y() {
            return this.f19712p;
        }
    }

    /* renamed from: o7.y$e */
    /* loaded from: classes2.dex */
    public static class C5253e<ContainingType extends InterfaceC5210s0, Type> extends AbstractC5190n<ContainingType, Type> {

        /* renamed from: a */
        public final InterfaceC5210s0 f19713a;

        /* renamed from: b */
        public final C5252d f19714b;

        /* renamed from: a */
        public C5230u1.EnumC5232b m13764a() {
            return this.f19714b.mo13768k();
        }

        /* renamed from: b */
        public InterfaceC5210s0 m13763b() {
            return this.f19713a;
        }

        /* renamed from: c */
        public int m13762c() {
            return this.f19714b.mo13770e();
        }

        /* renamed from: d */
        public boolean m13761d() {
            return this.f19714b.f19711k;
        }
    }

    /* renamed from: o7.y$f */
    /* loaded from: classes2.dex */
    public enum EnumC5254f {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* renamed from: C */
    public static C5102a0.InterfaceC5109g m13812C() {
        return C5256z.m13755k();
    }

    /* renamed from: D */
    public static <E> C5102a0.InterfaceC5111i<E> m13811D() {
        return C5130e1.m14591g();
    }

    /* renamed from: M */
    public static Object m13802M(InterfaceC5210s0 interfaceC5210s0, String str, Object[] objArr) {
        return new C5133f1(interfaceC5210s0, str, objArr);
    }

    /* renamed from: O */
    public static <T extends AbstractC5248y<?, ?>> void m13800O(Class<T> cls, T t) {
        defaultInstanceMap.put(cls, t);
    }

    /* renamed from: A */
    public Object m13814A(EnumC5254f enumC5254f, Object obj) {
        return mo13813B(enumC5254f, obj, null);
    }

    /* renamed from: B */
    public abstract Object mo13813B(EnumC5254f enumC5254f, Object obj, Object obj2);

    @Override // p144o7.InterfaceC5219t0
    /* renamed from: F */
    public final MessageType mo13775c() {
        return (MessageType) m13790z(EnumC5254f.GET_DEFAULT_INSTANCE);
    }

    /* renamed from: I */
    public void m13806I() {
        C5122d1.m14624a().m14620e(this).mo13826b(this);
    }

    @Override // p144o7.InterfaceC5210s0
    /* renamed from: L */
    public final BuilderType mo13773u() {
        return (BuilderType) m13790z(EnumC5254f.NEW_BUILDER);
    }

    @Override // p144o7.InterfaceC5219t0
    /* renamed from: a */
    public final boolean mo13798a() {
        return m13807H(this, true);
    }

    @Override // p144o7.AbstractC5100a
    /* renamed from: e */
    public int mo13797e() {
        return this.memoizedSerializedSize;
    }

    @Override // p144o7.AbstractC5100a
    /* renamed from: q */
    public void mo13794q(int i) {
        this.memoizedSerializedSize = i;
    }

    public String toString() {
        return C5229u0.m13945e(this, super.toString());
    }

    @Override // p144o7.InterfaceC5210s0
    /* renamed from: v */
    public final InterfaceC5112a1<MessageType> mo13793v() {
        return (InterfaceC5112a1) m13790z(EnumC5254f.GET_PARSER);
    }

    /* renamed from: x */
    public Object m13792x() {
        return m13790z(EnumC5254f.BUILD_MESSAGE_INFO);
    }

    /* renamed from: y */
    public final <MessageType extends AbstractC5248y<MessageType, BuilderType>, BuilderType extends AbstractC5249a<MessageType, BuilderType>> BuilderType m13791y() {
        return (BuilderType) m13790z(EnumC5254f.NEW_BUILDER);
    }

    /* renamed from: z */
    public Object m13790z(EnumC5254f enumC5254f) {
        return mo13813B(enumC5254f, null, null);
    }

    /* renamed from: o7.y$b */
    /* loaded from: classes2.dex */
    public static class C5250b<T extends AbstractC5248y<T, ?>> extends AbstractC5113b<T> {

        /* renamed from: b */
        public final T f19707b;

        @Override // p144o7.InterfaceC5112a1
        /* renamed from: g */
        public T mo13778b(AbstractC5151i abstractC5151i, C5196p c5196p) {
            return (T) AbstractC5248y.m13801N(this.f19707b, abstractC5151i, c5196p);
        }

        public C5250b(T t) {
            this.f19707b = t;
        }
    }

    /* renamed from: E */
    public static <T extends AbstractC5248y<?, ?>> T m13810E(Class<T> cls) {
        AbstractC5248y<?, ?> abstractC5248y = defaultInstanceMap.get(cls);
        if (abstractC5248y == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC5248y = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC5248y == null) {
            abstractC5248y = (T) ((AbstractC5248y) C5212s1.m14054i(cls)).mo13775c();
            if (abstractC5248y != null) {
                defaultInstanceMap.put(cls, abstractC5248y);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) abstractC5248y;
    }

    /* renamed from: H */
    public static final <T extends AbstractC5248y<T, ?>> boolean m13807H(T t, boolean z) {
        Object obj;
        byte byteValue = ((Byte) t.m13790z(EnumC5254f.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean mo13824d = C5122d1.m14624a().m14620e(t).mo13824d(t);
        if (z) {
            EnumC5254f enumC5254f = EnumC5254f.SET_MEMOIZED_IS_INITIALIZED;
            if (mo13824d) {
                obj = t;
            } else {
                obj = null;
            }
            t.m13814A(enumC5254f, obj);
        }
        return mo13824d;
    }

    /* renamed from: N */
    public static <T extends AbstractC5248y<T, ?>> T m13801N(T t, AbstractC5151i abstractC5151i, C5196p c5196p) {
        T t2 = (T) t.m13790z(EnumC5254f.NEW_MUTABLE_INSTANCE);
        try {
            InterfaceC5150h1 m14620e = C5122d1.m14624a().m14620e(t2);
            m14620e.mo13823e(t2, C5159j.m14463Q(abstractC5151i), c5196p);
            m14620e.mo13826b(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof C5117c0) {
                throw ((C5117c0) e.getCause());
            }
            throw new C5117c0(e.getMessage()).m14630i(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof C5117c0) {
                throw ((C5117c0) e2.getCause());
            }
            throw e2;
        }
    }

    @Override // p144o7.InterfaceC5210s0
    /* renamed from: P */
    public final BuilderType mo13774f() {
        BuilderType buildertype = (BuilderType) m13790z(EnumC5254f.NEW_BUILDER);
        buildertype.m13781L(this);
        return buildertype;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C5122d1.m14624a().m14620e(this).equals(this, (AbstractC5248y) obj);
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = C5122d1.m14624a().m14620e(this).hashCode(this);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // p144o7.InterfaceC5210s0
    /* renamed from: p */
    public int mo13795p() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = C5122d1.m14624a().m14620e(this).mo13822f(this);
        }
        return this.memoizedSerializedSize;
    }

    /* renamed from: G */
    public static Object m13808G(Method method, Object obj, Object... objArr) {
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

    /* JADX WARN: Type inference failed for: r1v1, types: [o7.a0$g] */
    /* renamed from: J */
    public static C5102a0.InterfaceC5109g m13805J(C5102a0.InterfaceC5109g interfaceC5109g) {
        int i;
        int size = interfaceC5109g.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size * 2;
        }
        return interfaceC5109g.mo13752n(i);
    }

    /* renamed from: K */
    public static <E> C5102a0.InterfaceC5111i<E> m13804K(C5102a0.InterfaceC5111i<E> interfaceC5111i) {
        int i;
        int size = interfaceC5111i.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size * 2;
        }
        return interfaceC5111i.mo13752n(i);
    }

    @Override // p144o7.InterfaceC5210s0
    /* renamed from: h */
    public void mo13796h(AbstractC5163k abstractC5163k) {
        C5122d1.m14624a().m14620e(this).mo13825c(this, C5180l.m14221P(abstractC5163k));
    }
}

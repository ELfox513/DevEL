package p144o7;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p144o7.AbstractC5100a;
import p144o7.AbstractC5100a.AbstractC5101a;
import p144o7.AbstractC5137h;
import p144o7.InterfaceC5210s0;
/* renamed from: o7.a */
/* loaded from: classes2.dex */
public abstract class AbstractC5100a<MessageType extends AbstractC5100a<MessageType, BuilderType>, BuilderType extends AbstractC5101a<MessageType, BuilderType>> implements InterfaceC5210s0 {
    public int memoizedHashCode = 0;

    /* renamed from: o7.a$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5101a<MessageType extends AbstractC5100a<MessageType, BuilderType>, BuilderType extends AbstractC5101a<MessageType, BuilderType>> implements InterfaceC5210s0.InterfaceC5211a {
        /* renamed from: C */
        public static C5192n1 m14662C(InterfaceC5210s0 interfaceC5210s0) {
            return new C5192n1(interfaceC5210s0);
        }

        /* renamed from: A */
        public abstract BuilderType mo13789A(MessageType messagetype);

        /* renamed from: z */
        public static <T> void m14660z(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t : iterable) {
                if (t == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t);
            }
        }

        /* renamed from: x */
        public static <T> void m14661x(Iterable<T> iterable, List<? super T> list) {
            C5102a0.m14659a(iterable);
            if (iterable instanceof InterfaceC5149h0) {
                List<?> mo14090i0 = ((InterfaceC5149h0) iterable).mo14090i0();
                InterfaceC5149h0 interfaceC5149h0 = (InterfaceC5149h0) list;
                int size = list.size();
                for (Object obj : mo14090i0) {
                    if (obj == null) {
                        String str = "Element at index " + (interfaceC5149h0.size() - size) + " is null.";
                        for (int size2 = interfaceC5149h0.size() - 1; size2 >= size; size2--) {
                            interfaceC5149h0.remove(size2);
                        }
                        throw new NullPointerException(str);
                    } else if (obj instanceof AbstractC5137h) {
                        interfaceC5149h0.mo14093X((AbstractC5137h) obj);
                    } else {
                        interfaceC5149h0.add((String) obj);
                    }
                }
            } else if (iterable instanceof InterfaceC5115b1) {
                list.addAll((Collection) iterable);
            } else {
                m14660z(iterable, list);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p144o7.InterfaceC5210s0.InterfaceC5211a
        /* renamed from: B */
        public BuilderType mo14080r(InterfaceC5210s0 interfaceC5210s0) {
            if (mo13775c().getClass().isInstance(interfaceC5210s0)) {
                return (BuilderType) mo13789A((AbstractC5100a) interfaceC5210s0);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    /* renamed from: d */
    public static <T> void m14668d(Iterable<T> iterable, List<? super T> list) {
        AbstractC5101a.m14661x(iterable, list);
    }

    /* renamed from: e */
    public int mo13797e() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: m */
    public C5192n1 m14665m() {
        return new C5192n1(this);
    }

    /* renamed from: q */
    public void mo13794q(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: k */
    public final String m14666k(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    /* renamed from: g */
    public int m14667g(InterfaceC5150h1 interfaceC5150h1) {
        int mo13797e = mo13797e();
        if (mo13797e == -1) {
            int mo13822f = interfaceC5150h1.mo13822f(this);
            mo13794q(mo13822f);
            return mo13822f;
        }
        return mo13797e;
    }

    @Override // p144o7.InterfaceC5210s0
    /* renamed from: l */
    public AbstractC5137h mo14081l() {
        try {
            AbstractC5137h.C5145h m14551s = AbstractC5137h.m14551s(mo13795p());
            mo13796h(m14551s.m14542b());
            return m14551s.m14543a();
        } catch (IOException e) {
            throw new RuntimeException(m14666k("ByteString"), e);
        }
    }

    /* renamed from: w */
    public byte[] m14664w() {
        try {
            byte[] bArr = new byte[mo13795p()];
            AbstractC5163k m14316d0 = AbstractC5163k.m14316d0(bArr);
            mo13796h(m14316d0);
            m14316d0.m14319c();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(m14666k("byte array"), e);
        }
    }
}

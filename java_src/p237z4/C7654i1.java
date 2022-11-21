package p237z4;
/* renamed from: z4.i1 */
/* loaded from: classes2.dex */
public final class C7654i1 implements InterfaceC7698q1 {

    /* renamed from: a */
    public InterfaceC7698q1[] f37761a;

    @Override // p237z4.InterfaceC7698q1
    /* renamed from: a */
    public final boolean mo617a(Class<?> cls) {
        for (InterfaceC7698q1 interfaceC7698q1 : this.f37761a) {
            if (interfaceC7698q1.mo617a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p237z4.InterfaceC7698q1
    /* renamed from: b */
    public final InterfaceC7693p1 mo616b(Class<?> cls) {
        InterfaceC7698q1[] interfaceC7698q1Arr;
        String str;
        for (InterfaceC7698q1 interfaceC7698q1 : this.f37761a) {
            if (interfaceC7698q1.mo617a(cls)) {
                return interfaceC7698q1.mo616b(cls);
            }
        }
        String name = cls.getName();
        if (name.length() != 0) {
            str = "No factory is available for message type: ".concat(name);
        } else {
            str = new String("No factory is available for message type: ");
        }
        throw new UnsupportedOperationException(str);
    }

    public C7654i1(InterfaceC7698q1... interfaceC7698q1Arr) {
        this.f37761a = interfaceC7698q1Arr;
    }
}

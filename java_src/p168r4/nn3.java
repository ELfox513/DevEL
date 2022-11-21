package p168r4;
/* renamed from: r4.nn3 */
/* loaded from: classes2.dex */
public final class nn3 implements yn3 {

    /* renamed from: a */
    public final yn3[] f28374a;

    public nn3(yn3... yn3VarArr) {
        this.f28374a = yn3VarArr;
    }

    @Override // p168r4.yn3
    /* renamed from: a */
    public final boolean mo4625a(Class<?> cls) {
        yn3[] yn3VarArr = this.f28374a;
        for (int i = 0; i < 2; i++) {
            if (yn3VarArr[i].mo4625a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.yn3
    /* renamed from: b */
    public final xn3 mo4624b(Class<?> cls) {
        String str;
        yn3[] yn3VarArr = this.f28374a;
        for (int i = 0; i < 2; i++) {
            yn3 yn3Var = yn3VarArr[i];
            if (yn3Var.mo4625a(cls)) {
                return yn3Var.mo4624b(cls);
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
}

package p168r4;
/* renamed from: r4.sn3 */
/* loaded from: classes2.dex */
public final class sn3 implements to3 {

    /* renamed from: b */
    public static final yn3 f31421b = new mn3();

    /* renamed from: a */
    public final yn3 f31422a;

    /* renamed from: a */
    public static boolean m7096a(xn3 xn3Var) {
        return xn3Var.mo5238b() == 1;
    }

    public sn3() {
        yn3 yn3Var;
        yn3[] yn3VarArr = new yn3[2];
        yn3VarArr[0] = km3.m10003c();
        try {
            yn3Var = (yn3) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            yn3Var = f31421b;
        }
        yn3VarArr[1] = yn3Var;
        nn3 nn3Var = new nn3(yn3VarArr);
        zm3.m4179b(nn3Var, "messageInfoFactory");
        this.f31422a = nn3Var;
    }

    @Override // p168r4.to3
    /* renamed from: d */
    public final <T> ro3<T> mo6767d(Class<T> cls) {
        uo3.m6459A(cls);
        xn3 mo4624b = this.f31422a.mo4624b(cls);
        if (mo4624b.zza()) {
            if (pm3.class.isAssignableFrom(cls)) {
                return eo3.m11700b(uo3.m6429c(), em3.m11708a(), mo4624b.mo5239a());
            }
            return eo3.m11700b(uo3.m6433a(), em3.m11707b(), mo4624b.mo5239a());
        } else if (pm3.class.isAssignableFrom(cls)) {
            if (m7096a(mo4624b)) {
                return do3.m12049J(cls, mo4624b, go3.m11093b(), kn3.m9996e(), uo3.m6429c(), em3.m11708a(), wn3.m5635b());
            }
            return do3.m12049J(cls, mo4624b, go3.m11093b(), kn3.m9996e(), uo3.m6429c(), null, wn3.m5635b());
        } else if (m7096a(mo4624b)) {
            return do3.m12049J(cls, mo4624b, go3.m11094a(), kn3.m9997d(), uo3.m6433a(), em3.m11707b(), wn3.m5636a());
        } else {
            return do3.m12049J(cls, mo4624b, go3.m11094a(), kn3.m9997d(), uo3.m6431b(), null, wn3.m5636a());
        }
    }
}

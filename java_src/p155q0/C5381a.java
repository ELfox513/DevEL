package p155q0;
/* renamed from: q0.a */
/* loaded from: classes.dex */
public final class C5381a implements InterfaceC5389e {

    /* renamed from: a */
    public final String f20073a;

    /* renamed from: b */
    public final Object[] f20074b;

    public C5381a(String str, Object[] objArr) {
        this.f20073a = str;
        this.f20074b = objArr;
    }

    @Override // p155q0.InterfaceC5389e
    /* renamed from: c */
    public void mo13350c(InterfaceC5388d interfaceC5388d) {
        m13363b(interfaceC5388d, this.f20074b);
    }

    @Override // p155q0.InterfaceC5389e
    /* renamed from: d */
    public String mo13349d() {
        return this.f20073a;
    }

    /* renamed from: a */
    public static void m13364a(InterfaceC5388d interfaceC5388d, int i, Object obj) {
        long j;
        if (obj == null) {
            interfaceC5388d.mo13122A0(i);
        } else if (obj instanceof byte[]) {
            interfaceC5388d.mo13118k0(i, (byte[]) obj);
        } else if (obj instanceof Float) {
            interfaceC5388d.mo13120Q(i, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            interfaceC5388d.mo13120Q(i, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            interfaceC5388d.mo13119c0(i, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            interfaceC5388d.mo13119c0(i, ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            interfaceC5388d.mo13119c0(i, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            interfaceC5388d.mo13119c0(i, ((Byte) obj).byteValue());
        } else if (obj instanceof String) {
            interfaceC5388d.mo13121E(i, (String) obj);
        } else if (obj instanceof Boolean) {
            if (((Boolean) obj).booleanValue()) {
                j = 1;
            } else {
                j = 0;
            }
            interfaceC5388d.mo13119c0(i, j);
        } else {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        }
    }

    /* renamed from: b */
    public static void m13363b(InterfaceC5388d interfaceC5388d, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            i++;
            m13364a(interfaceC5388d, i, obj);
        }
    }

    public C5381a(String str) {
        this(str, null);
    }
}

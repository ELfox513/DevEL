package p180s7;

import p189t7.C6806a;
/* renamed from: s7.f */
/* loaded from: classes.dex */
public abstract class AbstractC6635f {

    /* renamed from: s7.f$a */
    /* loaded from: classes.dex */
    public class C6636a extends AbstractC6635f {

        /* renamed from: a */
        public final /* synthetic */ int f35232a;

        /* renamed from: b */
        public final /* synthetic */ byte[] f35233b;

        /* renamed from: c */
        public final /* synthetic */ int f35234c;

        public C6636a(C6633d c6633d, int i, byte[] bArr, int i2) {
            this.f35232a = i;
            this.f35233b = bArr;
            this.f35234c = i2;
        }
    }

    /* renamed from: a */
    public static AbstractC6635f m3726a(C6633d c6633d, byte[] bArr) {
        return m3725b(c6633d, bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static AbstractC6635f m3725b(C6633d c6633d, byte[] bArr, int i, int i2) {
        if (bArr != null) {
            C6806a.m3377b(bArr.length, i, i2);
            return new C6636a(c6633d, i2, bArr, i);
        }
        throw new NullPointerException("content == null");
    }
}

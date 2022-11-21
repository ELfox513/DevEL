package p237z4;
/* renamed from: z4.u */
/* loaded from: classes2.dex */
public abstract class AbstractC7714u {

    /* renamed from: a */
    public int f37877a;

    /* renamed from: b */
    public int f37878b;

    /* renamed from: c */
    public boolean f37879c;

    public AbstractC7714u() {
        this.f37877a = 100;
        this.f37878b = Integer.MAX_VALUE;
        this.f37879c = false;
    }

    /* renamed from: b */
    public abstract int mo555b();

    /* renamed from: c */
    public abstract int mo554c(int i);

    /* renamed from: a */
    public static AbstractC7714u m588a(byte[] bArr, int i, int i2, boolean z) {
        C7722w c7722w = new C7722w(bArr, 0, i2, false);
        try {
            c7722w.mo554c(i2);
            return c7722w;
        } catch (C7702r0 e) {
            throw new IllegalArgumentException(e);
        }
    }
}

package p185t3;

import java.lang.ref.WeakReference;
/* renamed from: t3.a0 */
/* loaded from: classes.dex */
public abstract class AbstractBinderC6733a0 extends AbstractBinderC6769y {

    /* renamed from: d */
    public static final WeakReference<byte[]> f35385d = new WeakReference<>(null);

    /* renamed from: b */
    public WeakReference<byte[]> f35386b;

    public AbstractBinderC6733a0(byte[] bArr) {
        super(bArr);
        this.f35386b = f35385d;
    }

    /* renamed from: b2 */
    public abstract byte[] mo3455b2();

    @Override // p185t3.AbstractBinderC6769y
    /* renamed from: t0 */
    public final byte[] mo3453t0() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.f35386b.get();
            if (bArr == null) {
                bArr = mo3455b2();
                this.f35386b = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }
}

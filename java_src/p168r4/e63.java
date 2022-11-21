package p168r4;
/* renamed from: r4.e63 */
/* loaded from: classes2.dex */
public final class e63 {

    /* renamed from: b */
    public static final e63 f22871b = new e63(new C5715a("Failure occurred while trying to finish a future."));

    /* renamed from: a */
    public final Throwable f22872a;

    /* renamed from: r4.e63$a */
    /* loaded from: classes2.dex */
    public class C5715a extends Throwable {
        public C5715a(String str) {
            super("Failure occurred while trying to finish a future.");
        }

        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    public e63(Throwable th) {
        th.getClass();
        this.f22872a = th;
    }
}

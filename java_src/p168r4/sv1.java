package p168r4;
/* renamed from: r4.sv1 */
/* loaded from: classes2.dex */
public class sv1 extends Exception {

    /* renamed from: a */
    public final int f31526a;

    public sv1(int i) {
        this.f31526a = i;
    }

    /* renamed from: a */
    public final int m6989a() {
        return this.f31526a;
    }

    public sv1(int i, String str) {
        super(str);
        this.f31526a = i;
    }

    public sv1(int i, String str, Throwable th) {
        super(str, th);
        this.f31526a = 1;
    }
}

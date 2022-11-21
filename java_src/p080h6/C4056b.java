package p080h6;
/* renamed from: h6.b */
/* loaded from: classes2.dex */
public class C4056b implements InterfaceC4058d {

    /* renamed from: a */
    public final int f17583a;

    @Override // p080h6.InterfaceC4058d
    /* renamed from: a */
    public StackTraceElement[] mo17478a(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i = this.f17583a;
        if (length <= i) {
            return stackTraceElementArr;
        }
        int i2 = i / 2;
        int i3 = i - i2;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[i];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, i3);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - i2, stackTraceElementArr2, i3, i2);
        return stackTraceElementArr2;
    }

    public C4056b(int i) {
        this.f17583a = i;
    }
}

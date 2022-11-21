package p080h6;
/* renamed from: h6.a */
/* loaded from: classes2.dex */
public class C4055a implements InterfaceC4058d {

    /* renamed from: a */
    public final int f17580a;

    /* renamed from: b */
    public final InterfaceC4058d[] f17581b;

    /* renamed from: c */
    public final C4056b f17582c;

    @Override // p080h6.InterfaceC4058d
    /* renamed from: a */
    public StackTraceElement[] mo17478a(StackTraceElement[] stackTraceElementArr) {
        InterfaceC4058d[] interfaceC4058dArr;
        if (stackTraceElementArr.length <= this.f17580a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (InterfaceC4058d interfaceC4058d : this.f17581b) {
            if (stackTraceElementArr2.length <= this.f17580a) {
                break;
            }
            stackTraceElementArr2 = interfaceC4058d.mo17478a(stackTraceElementArr);
        }
        if (stackTraceElementArr2.length > this.f17580a) {
            return this.f17582c.mo17478a(stackTraceElementArr2);
        }
        return stackTraceElementArr2;
    }

    public C4055a(int i, InterfaceC4058d... interfaceC4058dArr) {
        this.f17580a = i;
        this.f17581b = interfaceC4058dArr;
        this.f17582c = new C4056b(i);
    }
}

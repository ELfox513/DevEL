package p110l0;

import android.content.Context;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p022c0.C1019b;
/* renamed from: l0.b */
/* loaded from: classes.dex */
public class C4542b<D> {

    /* renamed from: a */
    public int f18572a;

    /* renamed from: b */
    public InterfaceC4544b<D> f18573b;

    /* renamed from: c */
    public InterfaceC4543a<D> f18574c;

    /* renamed from: d */
    public Context f18575d;

    /* renamed from: e */
    public boolean f18576e = false;

    /* renamed from: f */
    public boolean f18577f = false;

    /* renamed from: g */
    public boolean f18578g = true;

    /* renamed from: h */
    public boolean f18579h = false;

    /* renamed from: i */
    public boolean f18580i = false;

    /* renamed from: l0.b$a */
    /* loaded from: classes.dex */
    public interface InterfaceC4543a<D> {
        /* renamed from: a */
        void m16028a(C4542b<D> c4542b);
    }

    /* renamed from: l0.b$b */
    /* loaded from: classes.dex */
    public interface InterfaceC4544b<D> {
        /* renamed from: a */
        void mo16027a(C4542b<D> c4542b, D d);
    }

    /* renamed from: a */
    public void m16049a() {
        this.f18577f = true;
        m16040j();
    }

    /* renamed from: b */
    public boolean m16048b() {
        return mo16039k();
    }

    /* renamed from: c */
    public void m16047c() {
        this.f18580i = false;
    }

    /* renamed from: h */
    public void m16042h() {
        mo16037m();
    }

    /* renamed from: i */
    public boolean m16041i() {
        return this.f18577f;
    }

    /* renamed from: j */
    public void m16040j() {
    }

    /* renamed from: k */
    public boolean mo16039k() {
        throw null;
    }

    /* renamed from: m */
    public void mo16037m() {
    }

    /* renamed from: n */
    public void m16036n() {
    }

    /* renamed from: o */
    public void mo13090o() {
        throw null;
    }

    /* renamed from: p */
    public void m16035p() {
    }

    /* renamed from: t */
    public final void m16031t() {
        this.f18576e = true;
        this.f18578g = false;
        this.f18577f = false;
        mo13090o();
    }

    /* renamed from: u */
    public void m16030u() {
        this.f18576e = false;
        m16035p();
    }

    /* renamed from: d */
    public String m16046d(D d) {
        StringBuilder sb = new StringBuilder(64);
        C1019b.m24816a(d, sb);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: e */
    public void m16045e() {
        InterfaceC4543a<D> interfaceC4543a = this.f18574c;
        if (interfaceC4543a != null) {
            interfaceC4543a.m16028a(this);
        }
    }

    /* renamed from: f */
    public void m16044f(D d) {
        InterfaceC4544b<D> interfaceC4544b = this.f18573b;
        if (interfaceC4544b != null) {
            interfaceC4544b.mo16027a(this, d);
        }
    }

    /* renamed from: l */
    public void m16038l() {
        if (this.f18576e) {
            m16042h();
        } else {
            this.f18579h = true;
        }
    }

    /* renamed from: q */
    public void m16034q(int i, InterfaceC4544b<D> interfaceC4544b) {
        if (this.f18573b == null) {
            this.f18573b = interfaceC4544b;
            this.f18572a = i;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    /* renamed from: s */
    public void m16032s() {
        if (this.f18580i) {
            m16038l();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        C1019b.m24816a(this, sb);
        sb.append(" id=");
        sb.append(this.f18572a);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: v */
    public void m16029v(InterfaceC4544b<D> interfaceC4544b) {
        InterfaceC4544b<D> interfaceC4544b2 = this.f18573b;
        if (interfaceC4544b2 != null) {
            if (interfaceC4544b2 == interfaceC4544b) {
                this.f18573b = null;
                return;
            }
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        throw new IllegalStateException("No listener register");
    }

    public C4542b(Context context) {
        this.f18575d = context.getApplicationContext();
    }

    @Deprecated
    /* renamed from: g */
    public void mo16043g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f18572a);
        printWriter.print(" mListener=");
        printWriter.println(this.f18573b);
        if (this.f18576e || this.f18579h || this.f18580i) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f18576e);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f18579h);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f18580i);
        }
        if (this.f18577f || this.f18578g) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f18577f);
            printWriter.print(" mReset=");
            printWriter.println(this.f18578g);
        }
    }

    /* renamed from: r */
    public void m16033r() {
        m16036n();
        this.f18578g = true;
        this.f18576e = false;
        this.f18577f = false;
        this.f18579h = false;
        this.f18580i = false;
    }
}

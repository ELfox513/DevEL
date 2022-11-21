package p111l1;

import com.badlogic.gdx.net.HttpStatus;
import java.io.PrintStream;
import java.io.PrintWriter;
/* renamed from: l1.d */
/* loaded from: classes.dex */
public class C4557d extends RuntimeException {

    /* renamed from: a */
    public StringBuffer f18604a;

    public C4557d(String str) {
        this(str, null);
    }

    /* renamed from: b */
    public String m16012b() {
        return this.f18604a.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        printStream.println(this.f18604a);
    }

    public C4557d(Throwable th) {
        this(null, th);
    }

    /* renamed from: d */
    public static C4557d m16010d(Throwable th, String str) {
        C4557d c4557d;
        if (th instanceof C4557d) {
            c4557d = (C4557d) th;
        } else {
            c4557d = new C4557d(th);
        }
        c4557d.m16013a(str);
        return c4557d;
    }

    /* renamed from: a */
    public void m16013a(String str) {
        if (str != null) {
            this.f18604a.append(str);
            if (!str.endsWith("\n")) {
                this.f18604a.append('\n');
                return;
            }
            return;
        }
        throw new NullPointerException("str == null");
    }

    public C4557d(String str, Throwable th) {
        super(str == null ? th != null ? th.getMessage() : null : str, th);
        if (th instanceof C4557d) {
            String stringBuffer = ((C4557d) th).f18604a.toString();
            StringBuffer stringBuffer2 = new StringBuffer(stringBuffer.length() + HttpStatus.SC_OK);
            this.f18604a = stringBuffer2;
            stringBuffer2.append(stringBuffer);
            return;
        }
        this.f18604a = new StringBuffer((int) HttpStatus.SC_OK);
    }

    /* renamed from: c */
    public void m16011c(PrintStream printStream) {
        printStream.println(getMessage());
        printStream.print(this.f18604a);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        printWriter.println(this.f18604a);
    }
}

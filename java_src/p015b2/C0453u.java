package p015b2;

import java.io.PrintWriter;
import java.io.Writer;
/* renamed from: b2.u */
/* loaded from: classes.dex */
public final class C0453u {
    /* renamed from: a */
    public static PrintWriter m26431a(Writer writer) {
        if (writer instanceof PrintWriter) {
            return (PrintWriter) writer;
        }
        return new PrintWriter(writer);
    }
}

package p168r4;

import java.io.IOException;
/* renamed from: r4.bn3 */
/* loaded from: classes2.dex */
public class bn3 extends IOException {

    /* renamed from: a */
    public ao3 f21128a;

    /* renamed from: b */
    public boolean f21129b;

    public bn3(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.f21128a = null;
    }

    /* renamed from: d */
    public static bn3 m12740d() {
        return new bn3("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: e */
    public static bn3 m12739e() {
        return new bn3("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: f */
    public static bn3 m12738f() {
        return new bn3("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: g */
    public static bn3 m12737g() {
        return new bn3("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: h */
    public static bn3 m12736h() {
        return new bn3("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: i */
    public static an3 m12735i() {
        return new an3("Protocol message tag had invalid wire type.");
    }

    /* renamed from: j */
    public static bn3 m12734j() {
        return new bn3("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* renamed from: k */
    public static bn3 m12733k() {
        return new bn3("Failed to parse the message.");
    }

    /* renamed from: l */
    public static bn3 m12732l() {
        return new bn3("Protocol message had invalid UTF-8.");
    }

    /* renamed from: a */
    public final bn3 m12743a(ao3 ao3Var) {
        this.f21128a = ao3Var;
        return this;
    }

    /* renamed from: b */
    public final void m12742b() {
        this.f21129b = true;
    }

    /* renamed from: c */
    public final boolean m12741c() {
        return this.f21129b;
    }

    public bn3(String str) {
        super(str);
        this.f21128a = null;
    }
}

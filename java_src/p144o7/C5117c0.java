package p144o7;

import java.io.IOException;
/* renamed from: o7.c0 */
/* loaded from: classes2.dex */
public class C5117c0 extends IOException {

    /* renamed from: a */
    public InterfaceC5210s0 f19370a;

    /* renamed from: o7.c0$a */
    /* loaded from: classes2.dex */
    public static class C5118a extends C5117c0 {
        public C5118a(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    public static C5117c0 m14638a() {
        return new C5117c0("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: b */
    public static C5117c0 m14637b() {
        return new C5117c0("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: c */
    public static C5117c0 m14636c() {
        return new C5117c0("Protocol message had invalid UTF-8.");
    }

    /* renamed from: d */
    public static C5118a m14635d() {
        return new C5118a("Protocol message tag had invalid wire type.");
    }

    /* renamed from: e */
    public static C5117c0 m14634e() {
        return new C5117c0("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: f */
    public static C5117c0 m14633f() {
        return new C5117c0("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: g */
    public static C5117c0 m14632g() {
        return new C5117c0("Failed to parse the message.");
    }

    /* renamed from: h */
    public static C5117c0 m14631h() {
        return new C5117c0("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: j */
    public static C5117c0 m14629j() {
        return new C5117c0("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: i */
    public C5117c0 m14630i(InterfaceC5210s0 interfaceC5210s0) {
        this.f19370a = interfaceC5210s0;
        return this;
    }

    public C5117c0(String str) {
        super(str);
        this.f19370a = null;
    }
}

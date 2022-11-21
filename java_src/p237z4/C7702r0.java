package p237z4;

import java.io.IOException;
/* renamed from: z4.r0 */
/* loaded from: classes2.dex */
public class C7702r0 extends IOException {

    /* renamed from: a */
    public InterfaceC7703r1 f37860a;

    /* renamed from: a */
    public static C7702r0 m614a() {
        return new C7702r0("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static C7702r0 m613b() {
        return new C7702r0("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static C7707s0 m612c() {
        return new C7707s0("Protocol message tag had invalid wire type.");
    }

    public C7702r0(String str) {
        super(str);
        this.f37860a = null;
    }
}

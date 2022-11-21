package p018b5;

import java.io.IOException;
/* renamed from: b5.h9 */
/* loaded from: classes2.dex */
public class C0684h9 extends IOException {
    public C0684h9(String str) {
        super(str);
    }

    /* renamed from: a */
    public static C0667g9 m25865a() {
        return new C0667g9("Protocol message tag had invalid wire type.");
    }

    /* renamed from: b */
    public static C0684h9 m25864b() {
        return new C0684h9("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: c */
    public static C0684h9 m25863c() {
        return new C0684h9("Protocol message had invalid UTF-8.");
    }

    /* renamed from: d */
    public static C0684h9 m25862d() {
        return new C0684h9("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: e */
    public static C0684h9 m25861e() {
        return new C0684h9("Failed to parse the message.");
    }

    /* renamed from: f */
    public static C0684h9 m25860f() {
        return new C0684h9("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}

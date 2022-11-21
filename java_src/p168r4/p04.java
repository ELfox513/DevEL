package p168r4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: r4.p04 */
/* loaded from: classes2.dex */
public final class p04 {

    /* renamed from: c */
    public static final Pattern f29304c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f29305a = -1;

    /* renamed from: b */
    public int f29306b = -1;

    /* renamed from: a */
    public final boolean m8522a(C5901j8 c5901j8) {
        for (int i = 0; i < c5901j8.m10388a(); i++) {
            InterfaceC5865i8 m10387h = c5901j8.m10387h(i);
            if (m10387h instanceof C5755f9) {
                C5755f9 c5755f9 = (C5755f9) m10387h;
                if ("iTunSMPB".equals(c5755f9.f23418d) && m8520c(c5755f9.f23419k)) {
                    return true;
                }
            } else if (m10387h instanceof C6088o9) {
                C6088o9 c6088o9 = (C6088o9) m10387h;
                if ("com.apple.iTunes".equals(c6088o9.f28926b) && "iTunSMPB".equals(c6088o9.f28927d) && m8520c(c6088o9.f28928k)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m8521b() {
        return (this.f29305a == -1 || this.f29306b == -1) ? false : true;
    }

    /* renamed from: c */
    public final boolean m8520c(String str) {
        Matcher matcher = f29304c.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                int i = C5979lc.f27164a;
                int parseInt = Integer.parseInt(group, 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f29305a = parseInt;
                    this.f29306b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }
}

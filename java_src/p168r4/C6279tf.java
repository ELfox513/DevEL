package p168r4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: r4.tf */
/* loaded from: classes2.dex */
public final class C6279tf {

    /* renamed from: c */
    public static final InterfaceC5689di f31822c = new C6242sf();

    /* renamed from: d */
    public static final Pattern f31823d = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f31824a = -1;

    /* renamed from: b */
    public int f31825b = -1;

    /* renamed from: a */
    public final boolean m6831a(C6466yh c6466yh) {
        for (int i = 0; i < c6466yh.m4718a(); i++) {
            InterfaceC6429xh m4717h = c6466yh.m4717h(i);
            if (m4717h instanceof C5652ci) {
                C5652ci c5652ci = (C5652ci) m4717h;
                String str = c5652ci.f21538d;
                String str2 = c5652ci.f21539k;
                if ("iTunSMPB".equals(str)) {
                    Matcher matcher = f31823d.matcher(str2);
                    if (matcher.find()) {
                        try {
                            int parseInt = Integer.parseInt(matcher.group(1), 16);
                            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                            if (parseInt > 0 || parseInt2 > 0) {
                                this.f31824a = parseInt;
                                this.f31825b = parseInt2;
                                return true;
                            }
                        } catch (NumberFormatException unused) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m6830b() {
        return (this.f31824a == -1 || this.f31825b == -1) ? false : true;
    }
}

package p168r4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* renamed from: r4.vp2 */
/* loaded from: classes2.dex */
public final class vp2 {

    /* renamed from: a */
    public final Pattern f32773a;

    /* renamed from: a */
    public final String m6040a(String str) {
        Pattern pattern = this.f32773a;
        if (pattern != null && str != null) {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher.group();
            }
        }
        return null;
    }

    public vp2() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) C5592av.m12935c().m8098c(C6225rz.f31007e5));
        } catch (PatternSyntaxException unused) {
            pattern = null;
        }
        this.f32773a = pattern;
    }
}

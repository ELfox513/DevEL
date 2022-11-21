package p168r4;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* renamed from: r4.v53 */
/* loaded from: classes2.dex */
public final class v53 implements FilenameFilter {

    /* renamed from: a */
    public final Pattern f32589a;

    public v53(Pattern pattern) {
        pattern.getClass();
        this.f32589a = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.f32589a.matcher(str).matches();
    }
}

package p168r4;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: r4.tq0 */
/* loaded from: classes2.dex */
public final class tq0 extends qq0 {

    /* renamed from: q */
    public static final Set<String> f31953q = Collections.synchronizedSet(new HashSet());

    /* renamed from: r */
    public static final DecimalFormat f31954r = new DecimalFormat("#,###");

    /* renamed from: k */
    public File f31955k;

    /* renamed from: p */
    public boolean f31956p;

    @Override // p168r4.qq0
    /* renamed from: m */
    public final void mo4105m() {
        this.f31956p = true;
    }

    /* renamed from: t */
    public final File m6759t(File file) {
        return new File(this.f31955k, String.valueOf(file.getName()).concat(".done"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x02ab, code lost:
        r15 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02ad, code lost:
        r1 = java.lang.String.valueOf(java.lang.Integer.toString(r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02bb, code lost:
        if (r1.length() == 0) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02bd, code lost:
        r11 = "File too big for full file cache. Size: ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02c8, code lost:
        r11 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02d0, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02d1, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02d4, code lost:
        r2 = r11;
        r1 = r14;
        r11 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02d9, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02dc, code lost:
        r11 = r4;
        r1 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x036e, code lost:
        r26 = r4;
        r24 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0374, code lost:
        r15 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0376, code lost:
        r0 = java.lang.Long.toString(r10);
        r2 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
        r2.append("Timeout exceeded. Limit: ");
        r2.append(r0);
        r2.append(" sec");
        r11 = r2.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x03a1, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03a2, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03a5, code lost:
        r2 = r11;
        r1 = r24;
        r11 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x03bd, code lost:
        r26 = r4;
        r24 = r14;
        r21 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x03c3, code lost:
        r26.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x03cb, code lost:
        if (p168r4.cm0.m12433j(3) == false) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x03cd, code lost:
        r1 = p168r4.tq0.f31954r.format(r13);
        r3 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 22) + java.lang.String.valueOf(r30).length());
        r3.append("Preloaded ");
        r3.append(r1);
        r3.append(" bytes from ");
        r3.append(r30);
        p168r4.cm0.m12442a(r3.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0403, code lost:
        r12.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x040c, code lost:
        if (r0.isFile() == false) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x040e, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0416, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Removed duplicated region for block: B:196:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x04c9  */
    @Override // p168r4.qq0
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4112e(final java.lang.String r30) {
        /*
            Method dump skipped, instructions count: 1257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.tq0.mo4112e(java.lang.String):boolean");
    }

    public tq0(po0 po0Var) {
        super(po0Var);
        String str;
        String str2;
        File cacheDir = this.f30286a.getCacheDir();
        if (cacheDir == null) {
            cm0.m12437f("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.f31955k = file;
        if (!file.isDirectory() && !this.f31955k.mkdirs()) {
            String valueOf = String.valueOf(this.f31955k.getAbsolutePath());
            if (valueOf.length() != 0) {
                str2 = "Could not create preload cache directory at ".concat(valueOf);
            } else {
                str2 = new String("Could not create preload cache directory at ");
            }
            cm0.m12437f(str2);
            this.f31955k = null;
        } else if (this.f31955k.setReadable(true, false) && this.f31955k.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.f31955k.getAbsolutePath());
            if (valueOf2.length() != 0) {
                str = "Could not set cache file permissions at ".concat(valueOf2);
            } else {
                str = new String("Could not set cache file permissions at ");
            }
            cm0.m12437f(str);
            this.f31955k = null;
        }
    }
}

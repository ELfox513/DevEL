package p168r4;

import java.lang.reflect.Constructor;
import java.util.List;
/* renamed from: r4.wz3 */
/* loaded from: classes2.dex */
public final class wz3 implements g04 {

    /* renamed from: a */
    public static final int[] f33386a = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};

    /* renamed from: b */
    public static final Constructor<? extends a04> f33387b;

    /* renamed from: b */
    public static final void m5534b(int i, List<a04> list) {
        switch (i) {
            case 0:
                list.add(new a54());
                return;
            case 1:
                list.add(new d54());
                return;
            case 2:
                list.add(new g54(0));
                return;
            case 3:
                list.add(new l14(0));
                return;
            case 4:
                Constructor<? extends a04> constructor = f33387b;
                if (constructor != null) {
                    try {
                        list.add(constructor.newInstance(0));
                        return;
                    } catch (Exception e) {
                        throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                    }
                }
                list.add(new r14(0));
                return;
            case 5:
                list.add(new u14());
                return;
            case 6:
                list.add(new q24(0));
                return;
            case 7:
                list.add(new y24(0));
                return;
            case 8:
                list.add(new t34(0, null));
                list.add(new y34(0));
                return;
            case 9:
                list.add(new o44());
                return;
            case 10:
                list.add(new k64());
                return;
            case 11:
                list.add(new v64(1, 0, 112800));
                return;
            case 12:
                list.add(new h74());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new z14());
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:191:0x02d0, code lost:
        if (r15 == r3) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x02d2, code lost:
        m5534b(r15, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0181 A[Catch: all -> 0x02f4, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0016, B:8:0x001d, B:105:0x0181, B:106:0x0184, B:192:0x02d2, B:193:0x02d5, B:195:0x02da, B:198:0x02e0, B:199:0x02e3, B:200:0x02e6, B:109:0x018d, B:111:0x0195, B:114:0x019f, B:117:0x01aa, B:119:0x01b2, B:122:0x01bc, B:125:0x01c7, B:128:0x01d2, B:131:0x01dd, B:133:0x01eb, B:136:0x01f5, B:139:0x0200, B:141:0x0208, B:143:0x0216, B:145:0x0224, B:148:0x0234, B:150:0x0242, B:153:0x024c, B:155:0x0254, B:157:0x025c, B:159:0x0264, B:162:0x026e, B:164:0x0276, B:167:0x0285, B:169:0x028d, B:172:0x0296, B:174:0x029e, B:177:0x02a7, B:179:0x02af, B:12:0x003b, B:13:0x0043, B:88:0x0158, B:15:0x0048, B:18:0x0054, B:21:0x0060, B:24:0x006c, B:27:0x0077, B:30:0x0082, B:33:0x008d, B:36:0x0099, B:39:0x00a5, B:42:0x00b1, B:45:0x00bd, B:48:0x00c8, B:51:0x00d3, B:54:0x00de, B:57:0x00ea, B:60:0x00f6, B:63:0x0101, B:66:0x010c, B:69:0x0117, B:72:0x0122, B:75:0x012c, B:78:0x0137, B:81:0x0142, B:84:0x014d), top: B:208:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x018d A[Catch: all -> 0x02f4, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0016, B:8:0x001d, B:105:0x0181, B:106:0x0184, B:192:0x02d2, B:193:0x02d5, B:195:0x02da, B:198:0x02e0, B:199:0x02e3, B:200:0x02e6, B:109:0x018d, B:111:0x0195, B:114:0x019f, B:117:0x01aa, B:119:0x01b2, B:122:0x01bc, B:125:0x01c7, B:128:0x01d2, B:131:0x01dd, B:133:0x01eb, B:136:0x01f5, B:139:0x0200, B:141:0x0208, B:143:0x0216, B:145:0x0224, B:148:0x0234, B:150:0x0242, B:153:0x024c, B:155:0x0254, B:157:0x025c, B:159:0x0264, B:162:0x026e, B:164:0x0276, B:167:0x0285, B:169:0x028d, B:172:0x0296, B:174:0x029e, B:177:0x02a7, B:179:0x02af, B:12:0x003b, B:13:0x0043, B:88:0x0158, B:15:0x0048, B:18:0x0054, B:21:0x0060, B:24:0x006c, B:27:0x0077, B:30:0x0082, B:33:0x008d, B:36:0x0099, B:39:0x00a5, B:42:0x00b1, B:45:0x00bd, B:48:0x00c8, B:51:0x00d3, B:54:0x00de, B:57:0x00ea, B:60:0x00f6, B:63:0x0101, B:66:0x010c, B:69:0x0117, B:72:0x0122, B:75:0x012c, B:78:0x0137, B:81:0x0142, B:84:0x014d), top: B:208:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x02da A[Catch: all -> 0x02f4, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0016, B:8:0x001d, B:105:0x0181, B:106:0x0184, B:192:0x02d2, B:193:0x02d5, B:195:0x02da, B:198:0x02e0, B:199:0x02e3, B:200:0x02e6, B:109:0x018d, B:111:0x0195, B:114:0x019f, B:117:0x01aa, B:119:0x01b2, B:122:0x01bc, B:125:0x01c7, B:128:0x01d2, B:131:0x01dd, B:133:0x01eb, B:136:0x01f5, B:139:0x0200, B:141:0x0208, B:143:0x0216, B:145:0x0224, B:148:0x0234, B:150:0x0242, B:153:0x024c, B:155:0x0254, B:157:0x025c, B:159:0x0264, B:162:0x026e, B:164:0x0276, B:167:0x0285, B:169:0x028d, B:172:0x0296, B:174:0x029e, B:177:0x02a7, B:179:0x02af, B:12:0x003b, B:13:0x0043, B:88:0x0158, B:15:0x0048, B:18:0x0054, B:21:0x0060, B:24:0x006c, B:27:0x0077, B:30:0x0082, B:33:0x008d, B:36:0x0099, B:39:0x00a5, B:42:0x00b1, B:45:0x00bd, B:48:0x00c8, B:51:0x00d3, B:54:0x00de, B:57:0x00ea, B:60:0x00f6, B:63:0x0101, B:66:0x010c, B:69:0x0117, B:72:0x0122, B:75:0x012c, B:78:0x0137, B:81:0x0142, B:84:0x014d), top: B:208:0x0001 }] */
    @Override // p168r4.g04
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized p168r4.a04[] mo4451a(android.net.Uri r19, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r20) {
        /*
            Method dump skipped, instructions count: 912
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.wz3.mo4451a(android.net.Uri, java.util.Map):r4.a04[]");
    }

    static {
        Constructor<? extends a04> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(a04.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException unused) {
        } catch (Exception e) {
            throw new RuntimeException("Error instantiating FLAC extension", e);
        }
        f33387b = constructor;
    }
}

package p168r4;

import android.net.Uri;
import java.util.Map;
/* renamed from: r4.cu3 */
/* loaded from: classes2.dex */
public final class cu3 implements fx3, us3 {

    /* renamed from: b */
    public final Uri f21686b;

    /* renamed from: c */
    public final sx3 f21687c;

    /* renamed from: d */
    public final xt3 f21688d;

    /* renamed from: e */
    public final d04 f21689e;

    /* renamed from: f */
    public final C6014ma f21690f;

    /* renamed from: h */
    public volatile boolean f21692h;

    /* renamed from: j */
    public long f21694j;

    /* renamed from: m */
    public d14 f21697m;

    /* renamed from: n */
    public boolean f21698n;

    /* renamed from: o */
    public final /* synthetic */ hu3 f21699o;

    /* renamed from: g */
    public final w04 f21691g = new w04();

    /* renamed from: i */
    public boolean f21693i = true;

    /* renamed from: l */
    public long f21696l = -1;

    /* renamed from: a */
    public final long f21685a = ws3.m5599a();

    /* renamed from: k */
    public C6350vc f21695k = m12348j(0);

    /* renamed from: b */
    public static /* synthetic */ long m12354b(cu3 cu3Var) {
        return cu3Var.f21685a;
    }

    /* renamed from: c */
    public static /* synthetic */ sx3 m12353c(cu3 cu3Var) {
        return cu3Var.f21687c;
    }

    /* renamed from: d */
    public static /* synthetic */ long m12352d(cu3 cu3Var) {
        return cu3Var.f21694j;
    }

    /* renamed from: e */
    public static /* synthetic */ C6350vc m12351e(cu3 cu3Var) {
        return cu3Var.f21695k;
    }

    /* renamed from: h */
    public static /* synthetic */ long m12350h(cu3 cu3Var) {
        return cu3Var.f21696l;
    }

    /* renamed from: i */
    public static /* synthetic */ void m12349i(cu3 cu3Var, long j, long j2) {
        cu3Var.f21691g.f33004a = j;
        cu3Var.f21694j = j2;
        cu3Var.f21693i = true;
        cu3Var.f21698n = false;
    }

    @Override // p168r4.fx3
    /* renamed from: g */
    public final void mo11332g() {
        this.f21692h = true;
    }

    public cu3(hu3 hu3Var, Uri uri, InterfaceC6087o8 interfaceC6087o8, xt3 xt3Var, d04 d04Var, C6014ma c6014ma) {
        this.f21699o = hu3Var;
        this.f21686b = uri;
        this.f21687c = new sx3(interfaceC6087o8);
        this.f21688d = xt3Var;
        this.f21689e = d04Var;
        this.f21690f = c6014ma;
    }

    @Override // p168r4.us3
    /* renamed from: a */
    public final void mo6382a(C6423xb c6423xb) {
        long m10813J;
        long max;
        if (!this.f21698n) {
            max = this.f21694j;
        } else {
            m10813J = this.f21699o.m10813J();
            max = Math.max(m10813J, this.f21694j);
        }
        int m5407l = c6423xb.m5407l();
        d14 d14Var = this.f21697m;
        d14Var.getClass();
        b14.m12888b(d14Var, c6423xb, m5407l);
        d14Var.mo4005e(max, 1, m5407l, 0, null);
        this.f21698n = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0095 A[Catch: all -> 0x020f, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00ab A[Catch: all -> 0x020f, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x00c1 A[Catch: all -> 0x020f, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x00d7 A[Catch: all -> 0x020f, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x00f3 A[Catch: all -> 0x020f, TRY_LEAVE, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0139 A[Catch: all -> 0x020f, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x014c A[Catch: all -> 0x020f, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0194 A[Catch: all -> 0x020f, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x019d A[Catch: all -> 0x020f, TRY_LEAVE, TryCatch #6 {all -> 0x020f, blocks: (B:141:0x000c, B:143:0x0022, B:144:0x0025, B:147:0x003a, B:148:0x0040, B:166:0x008a, B:168:0x0095, B:170:0x00a1, B:172:0x00ab, B:174:0x00b7, B:176:0x00c1, B:178:0x00cd, B:180:0x00d7, B:182:0x00e9, B:184:0x00f3, B:185:0x00f9, B:203:0x0139, B:204:0x013f, B:206:0x014c, B:208:0x0156, B:209:0x0174, B:211:0x0194, B:212:0x0199, B:214:0x019d, B:188:0x0101, B:190:0x010b, B:192:0x0115, B:191:0x0110, B:196:0x011d, B:198:0x0127, B:200:0x0131, B:199:0x012c, B:152:0x004a, B:154:0x0056, B:156:0x0061, B:155:0x005b, B:160:0x006a, B:162:0x0076, B:164:0x0080, B:163:0x007b), top: B:259:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x01aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x022e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x01ed A[EDGE_INSN: B:263:0x01ed->B:228:0x01ed ?: BREAK  , SYNTHETIC] */
    @Override // p168r4.fx3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo11333f() {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.cu3.mo11333f():void");
    }

    /* renamed from: j */
    public final C6350vc m12348j(long j) {
        Map<String, String> map;
        C6163qa c6163qa = new C6163qa();
        c6163qa.m7920a(this.f21686b);
        c6163qa.m7918c(j);
        c6163qa.m7917d(6);
        map = hu3.f24827W;
        c6163qa.m7919b(map);
        return c6163qa.m7916e();
    }
}

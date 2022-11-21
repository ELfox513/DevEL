package p168r4;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
/* renamed from: r4.gd */
/* loaded from: classes2.dex */
public final class C5796gd implements Handler.Callback, InterfaceC6282ti, InterfaceC6505zj, InterfaceC6356vi {

    /* renamed from: A */
    public InterfaceC6055nd[] f23968A;

    /* renamed from: B */
    public boolean f23969B;

    /* renamed from: C */
    public boolean f23970C;

    /* renamed from: D */
    public boolean f23971D;

    /* renamed from: E */
    public boolean f23972E;

    /* renamed from: H */
    public int f23975H;

    /* renamed from: I */
    public int f23976I;

    /* renamed from: J */
    public long f23977J;

    /* renamed from: K */
    public int f23978K;

    /* renamed from: L */
    public C5722ed f23979L;

    /* renamed from: M */
    public long f23980M;

    /* renamed from: N */
    public C5647cd f23981N;

    /* renamed from: O */
    public C5647cd f23982O;

    /* renamed from: P */
    public C5647cd f23983P;

    /* renamed from: Q */
    public AbstractC6277td f23984Q;

    /* renamed from: R */
    public boolean f23985R;

    /* renamed from: S */
    public volatile int f23986S;

    /* renamed from: T */
    public volatile int f23987T;

    /* renamed from: U */
    public final mp0 f23988U;

    /* renamed from: a */
    public final InterfaceC6055nd[] f23989a;

    /* renamed from: d */
    public final AbstractC5581ak f23991d;

    /* renamed from: k */
    public final C5841hl f23992k;

    /* renamed from: p */
    public final Handler f23993p;

    /* renamed from: q */
    public final HandlerThread f23994q;

    /* renamed from: r */
    public final Handler f23995r;

    /* renamed from: s */
    public final InterfaceC6461yc f23996s;

    /* renamed from: t */
    public final C6240sd f23997t;

    /* renamed from: u */
    public final C6203rd f23998u;

    /* renamed from: v */
    public C5684dd f23999v;

    /* renamed from: w */
    public C6017md f24000w;

    /* renamed from: x */
    public InterfaceC6055nd f24001x;

    /* renamed from: y */
    public InterfaceC6506zk f24002y;

    /* renamed from: z */
    public InterfaceC6393wi f24003z;

    /* renamed from: G */
    public int f23974G = 0;

    /* renamed from: F */
    public int f23973F = 1;

    /* renamed from: b */
    public final InterfaceC6092od[] f23990b = new InterfaceC6092od[2];

    /* renamed from: q */
    public static final void m11197q(C5647cd c5647cd) {
        while (c5647cd != null) {
            c5647cd.m12485e();
            c5647cd = c5647cd.f21488l;
        }
    }

    /* renamed from: A */
    public final void m11222A(int i) {
        this.f23987T = i;
    }

    /* renamed from: B */
    public final void m11221B(int i) {
        if (this.f23973F != i) {
            this.f23973F = i;
            this.f23995r.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    /* renamed from: C */
    public final void m11220C(boolean z) {
        if (this.f23972E != z) {
            this.f23972E = z;
            this.f23995r.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    /* renamed from: D */
    public final void m11219D() {
        this.f23971D = false;
        this.f23992k.m10894a();
        for (InterfaceC6055nd interfaceC6055nd : this.f23968A) {
            interfaceC6055nd.mo7541g();
        }
    }

    /* renamed from: J */
    public final void m11213J() {
        m11212K(true);
        this.f23988U.m9299c();
        m11221B(1);
    }

    /* renamed from: L */
    public final boolean m11211L(long j) {
        C5647cd c5647cd;
        return j == -9223372036854775807L || this.f23999v.f22226c < j || ((c5647cd = this.f23983P.f21488l) != null && c5647cd.f21486j);
    }

    @Override // p168r4.InterfaceC6282ti
    /* renamed from: a */
    public final void mo5305a(InterfaceC6319ui interfaceC6319ui) {
        this.f23993p.obtainMessage(8, interfaceC6319ui).sendToTarget();
    }

    @Override // p168r4.InterfaceC6356vi
    /* renamed from: f */
    public final void mo4701f(AbstractC6277td abstractC6277td, Object obj) {
        this.f23993p.obtainMessage(7, Pair.create(abstractC6277td, null)).sendToTarget();
    }

    @Override // p168r4.InterfaceC6505zj
    /* renamed from: i */
    public final void mo4198i() {
        this.f23993p.sendEmptyMessage(10);
    }

    /* renamed from: j */
    public final Pair<Integer, Long> m11204j(int i, long j) {
        return m11203k(this.f23984Q, 0, -9223372036854775807L);
    }

    /* renamed from: k */
    public final Pair<Integer, Long> m11203k(AbstractC6277td abstractC6277td, int i, long j) {
        return m11202l(abstractC6277td, 0, j, 0L);
    }

    /* renamed from: r */
    public final void m11196r() {
        this.f23985R = true;
    }

    /* renamed from: t */
    public final void m11194t(boolean z) {
        this.f23993p.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: v */
    public final void m11192v() {
        this.f23993p.sendEmptyMessage(5);
    }

    /* renamed from: x */
    public final synchronized void m11190x(C6424xc... c6424xcArr) {
        if (this.f23969B) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        int i = this.f23975H;
        this.f23975H = i + 1;
        this.f23993p.obtainMessage(11, c6424xcArr).sendToTarget();
        while (this.f23976I <= i) {
            try {
                wait();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: y */
    public final synchronized void m11189y() {
        if (this.f23969B) {
            return;
        }
        this.f23993p.sendEmptyMessage(6);
        while (!this.f23969B) {
            try {
                wait();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        this.f23994q.quit();
    }

    /* renamed from: z */
    public final void m11188z(int i) {
        this.f23986S = i;
    }

    /* renamed from: E */
    public final void m11218E() {
        this.f23992k.m10893b();
        for (InterfaceC6055nd interfaceC6055nd : this.f23968A) {
            m11198p(interfaceC6055nd);
        }
    }

    /* renamed from: F */
    public final void m11217F() {
        long mo5297m;
        C5647cd c5647cd = this.f23983P;
        if (c5647cd == null) {
            return;
        }
        long mo5296o = c5647cd.f21477a.mo5296o();
        if (mo5296o != -9223372036854775807L) {
            m11214I(mo5296o);
        } else {
            InterfaceC6055nd interfaceC6055nd = this.f24001x;
            if (interfaceC6055nd != null && !interfaceC6055nd.mo5352G()) {
                long mo4193r = this.f24002y.mo4193r();
                this.f23980M = mo4193r;
                this.f23992k.m10892c(mo4193r);
            } else {
                this.f23980M = this.f23992k.mo4193r();
            }
            C5647cd c5647cd2 = this.f23983P;
            mo5296o = this.f23980M - (c5647cd2.f21482f - c5647cd2.f21484h);
        }
        this.f23999v.f22226c = mo5296o;
        this.f23977J = SystemClock.elapsedRealtime() * 1000;
        if (this.f23968A.length == 0) {
            mo5297m = Long.MIN_VALUE;
        } else {
            mo5297m = this.f23983P.f21477a.mo5297m();
        }
        C5684dd c5684dd = this.f23999v;
        if (mo5297m == Long.MIN_VALUE) {
            mo5297m = this.f23984Q.mo6875d(this.f23983P.f21483g, this.f23998u, false).f30534c;
        }
        c5684dd.f22227d = mo5297m;
    }

    /* renamed from: G */
    public final void m11216G(long j, long j2) {
        this.f23993p.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.f23993p.sendEmptyMessage(2);
        } else {
            this.f23993p.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    /* renamed from: I */
    public final void m11214I(long j) {
        long j2;
        C5647cd c5647cd = this.f23983P;
        if (c5647cd == null) {
            j2 = j + 60000000;
        } else {
            j2 = j + (c5647cd.f21482f - c5647cd.f21484h);
        }
        this.f23980M = j2;
        this.f23992k.m10892c(j2);
        for (InterfaceC6055nd interfaceC6055nd : this.f23968A) {
            interfaceC6055nd.mo7544b(this.f23980M);
        }
    }

    /* renamed from: K */
    public final void m11212K(boolean z) {
        InterfaceC6055nd[] interfaceC6055ndArr;
        this.f23993p.removeMessages(2);
        this.f23971D = false;
        this.f23992k.m10893b();
        this.f24002y = null;
        this.f24001x = null;
        this.f23980M = 60000000L;
        for (InterfaceC6055nd interfaceC6055nd : this.f23968A) {
            try {
                m11198p(interfaceC6055nd);
                interfaceC6055nd.mo7535o();
            } catch (RuntimeException | C6276tc e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.f23968A = new InterfaceC6055nd[0];
        C5647cd c5647cd = this.f23983P;
        if (c5647cd == null) {
            c5647cd = this.f23981N;
        }
        m11197q(c5647cd);
        this.f23981N = null;
        this.f23982O = null;
        this.f23983P = null;
        m11220C(false);
        if (z) {
            InterfaceC6393wi interfaceC6393wi = this.f24003z;
            if (interfaceC6393wi != null) {
                interfaceC6393wi.mo5716e();
                this.f24003z = null;
            }
            this.f23984Q = null;
        }
    }

    /* renamed from: M */
    public final void m11210M() {
        C5647cd c5647cd = this.f23981N;
        if (c5647cd != null && !c5647cd.f21486j) {
            C5647cd c5647cd2 = this.f23982O;
            if (c5647cd2 == null || c5647cd2.f21488l == c5647cd) {
                for (InterfaceC6055nd interfaceC6055nd : this.f23968A) {
                    if (!interfaceC6055nd.mo7540h()) {
                        return;
                    }
                }
                this.f23981N.f21477a.mo5298l();
            }
        }
    }

    @Override // p168r4.InterfaceC5876ij
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5304b(InterfaceC6319ui interfaceC6319ui) {
        this.f23993p.obtainMessage(9, interfaceC6319ui).sendToTarget();
    }

    /* renamed from: c */
    public final void m11209c(Object obj, int i) {
        this.f23999v = new C5684dd(0, 0L);
        m11208d(obj, i);
        this.f23999v = new C5684dd(0, -9223372036854775807L);
        m11221B(4);
        m11212K(false);
    }

    /* renamed from: d */
    public final void m11208d(Object obj, int i) {
        this.f23995r.obtainMessage(6, new C5759fd(this.f23984Q, obj, this.f23999v, i)).sendToTarget();
    }

    /* renamed from: g */
    public final boolean m11206g(int i) {
        this.f23984Q.mo6875d(i, this.f23998u, false);
        this.f23984Q.m6872g(0, this.f23997t, false);
        if (this.f23984Q.m6871h(i, this.f23998u, this.f23997t, this.f23974G) != -1) {
            return false;
        }
        return true;
    }

    /* renamed from: h */
    public final Pair<Integer, Long> m11205h(C5722ed c5722ed) {
        AbstractC6277td abstractC6277td = c5722ed.f22944a;
        if (abstractC6277td.m6873f()) {
            abstractC6277td = this.f23984Q;
        }
        try {
            Pair<Integer, Long> m11203k = m11203k(abstractC6277td, 0, c5722ed.f22946c);
            AbstractC6277td abstractC6277td2 = this.f23984Q;
            if (abstractC6277td2 == abstractC6277td) {
                return m11203k;
            }
            if (abstractC6277td2.mo6874e(abstractC6277td.mo6875d(((Integer) m11203k.first).intValue(), this.f23998u, true).f30533b) != -1) {
                return Pair.create(0, (Long) m11203k.second);
            }
            if (m11207e(((Integer) m11203k.first).intValue(), abstractC6277td, this.f23984Q) != -1) {
                this.f23984Q.mo6875d(0, this.f23998u, false);
                return m11204j(0, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
            throw new C5943kd(this.f23984Q, 0, c5722ed.f22946c);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:196:0x0330, code lost:
        if (r2 != false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0332, code lost:
        r2 = r33.f23983P.f21483g;
        r33.f23999v = new p168r4.C5684dd(r2, m11215H(r2, r33.f23999v.f22226c));
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0346, code lost:
        r33.f23981N = r3;
        r3.f21488l = null;
        m11197q(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006a, code lost:
        m11197q(r12);
        r2.f21488l = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0798, code lost:
        if (m11211L(r1) != false) goto L372;
     */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0268 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x026c A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0271 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x04ea A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x04f1 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x050b A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0546 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0558 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0572 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, LOOP:9: B:305:0x0572->B:309:0x0582, LOOP_START, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x06c7 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x07a2 A[Catch: IOException -> 0x0872, tc -> 0x0878, RuntimeException -> 0x087e, TryCatch #6 {RuntimeException -> 0x087e, blocks: (B:3:0x0005, B:8:0x001a, B:10:0x0022, B:13:0x0028, B:17:0x002f, B:21:0x0036, B:22:0x0042, B:25:0x0048, B:27:0x004c, B:31:0x0053, B:35:0x005b, B:37:0x006a, B:38:0x006f, B:40:0x0079, B:42:0x007d, B:44:0x0081, B:45:0x0092, B:48:0x0098, B:50:0x009c, B:57:0x00ba, B:64:0x00c8, B:67:0x00cb, B:70:0x00d5, B:74:0x00d9, B:75:0x00da, B:79:0x00e1, B:82:0x00e7, B:85:0x00ef, B:89:0x00f8, B:91:0x0117, B:92:0x011e, B:94:0x0124, B:98:0x0131, B:100:0x013b, B:102:0x013f, B:104:0x0145, B:107:0x014b, B:108:0x0152, B:109:0x0156, B:110:0x015d, B:112:0x0161, B:113:0x0166, B:114:0x0169, B:121:0x019d, B:115:0x0178, B:117:0x017e, B:118:0x0184, B:120:0x018c, B:122:0x01a9, B:126:0x01b0, B:128:0x01b6, B:130:0x01be, B:132:0x01c2, B:134:0x01c6, B:136:0x01ce, B:139:0x01d3, B:141:0x01e4, B:142:0x01f2, B:144:0x01f6, B:146:0x0206, B:148:0x020a, B:150:0x0218, B:151:0x021d, B:159:0x0264, B:161:0x0268, B:163:0x026c, B:164:0x0271, B:166:0x027b, B:168:0x0285, B:169:0x028a, B:170:0x02b2, B:172:0x02b6, B:176:0x02c1, B:177:0x02c4, B:178:0x02d4, B:182:0x02e3, B:184:0x02e9, B:185:0x02fa, B:187:0x02fe, B:189:0x030c, B:191:0x031e, B:195:0x032d, B:197:0x0332, B:198:0x0346, B:199:0x034d, B:152:0x0235, B:154:0x023d, B:156:0x0243, B:157:0x0248, B:201:0x0351, B:202:0x035c, B:209:0x0367, B:210:0x0368, B:212:0x036c, B:214:0x0374, B:216:0x037e, B:215:0x0379, B:218:0x038a, B:220:0x0392, B:221:0x039b, B:223:0x03a1, B:224:0x03bf, B:228:0x03c8, B:234:0x03ea, B:235:0x03f7, B:243:0x0407, B:246:0x0417, B:247:0x0428, B:248:0x0429, B:250:0x0433, B:356:0x0677, B:358:0x067d, B:360:0x0686, B:362:0x06a1, B:364:0x06ac, B:368:0x06b5, B:370:0x06bb, B:376:0x06c7, B:381:0x06d1, B:383:0x06d8, B:384:0x06db, B:386:0x06df, B:388:0x06eb, B:389:0x06fe, B:393:0x0718, B:395:0x0720, B:397:0x0726, B:432:0x07c0, B:434:0x07c5, B:436:0x07cb, B:437:0x07d3, B:439:0x07d7, B:443:0x07e1, B:445:0x07e5, B:447:0x07eb, B:456:0x0808, B:441:0x07dc, B:448:0x07ef, B:450:0x07f4, B:452:0x07f8, B:454:0x07fe, B:455:0x0802, B:398:0x072f, B:400:0x0734, B:403:0x073b, B:405:0x0743, B:409:0x0752, B:421:0x079a, B:423:0x07a2, B:412:0x0759, B:413:0x0766, B:415:0x076a, B:416:0x0780, B:406:0x0746, B:419:0x0794, B:426:0x07a9, B:431:0x07b5, B:429:0x07af, B:251:0x043b, B:253:0x043f, B:265:0x0479, B:267:0x0481, B:292:0x0554, B:294:0x0558, B:297:0x055f, B:299:0x0563, B:301:0x0567, B:303:0x056e, B:305:0x0572, B:307:0x0578, B:309:0x0582, B:310:0x05a9, B:315:0x05b1, B:317:0x05bd, B:319:0x05c3, B:321:0x05c9, B:322:0x05cc, B:326:0x05d3, B:329:0x05e5, B:331:0x05eb, B:332:0x05ee, B:334:0x05f4, B:336:0x05f8, B:338:0x0608, B:355:0x066d, B:343:0x0622, B:344:0x0626, B:346:0x062c, B:348:0x063c, B:350:0x0642, B:352:0x064a, B:353:0x0653, B:354:0x0666, B:302:0x056b, B:268:0x0488, B:270:0x048c, B:278:0x04e6, B:280:0x04ea, B:283:0x0504, B:287:0x0510, B:289:0x0546, B:290:0x0548, B:286:0x050b, B:282:0x04f1, B:272:0x0493, B:275:0x04a4, B:277:0x04d5, B:254:0x0444, B:256:0x044a, B:258:0x0450, B:260:0x045e, B:262:0x0462, B:264:0x046d, B:458:0x080e, B:462:0x0815, B:464:0x081c, B:466:0x0824, B:468:0x0829, B:471:0x0836, B:473:0x083d, B:475:0x0854, B:476:0x0860), top: B:501:0x0005 }] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r34) {
        /*
            Method dump skipped, instructions count: 2288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5796gd.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: m */
    public final void m11201m() {
        long zza;
        C5647cd c5647cd = this.f23981N;
        if (!c5647cd.f21486j) {
            zza = 0;
        } else {
            zza = c5647cd.f21477a.zza();
        }
        if (zza == Long.MIN_VALUE) {
            m11220C(false);
            return;
        }
        C5647cd c5647cd2 = this.f23981N;
        long j = this.f23980M - (c5647cd2.f21482f - c5647cd2.f21484h);
        boolean m9296f = this.f23988U.m9296f(zza - j);
        m11220C(m9296f);
        if (m9296f) {
            this.f23981N.f21477a.mo5303d(j);
        }
    }

    /* renamed from: n */
    public final void m11200n(C5647cd c5647cd) {
        boolean z;
        if (this.f23983P == c5647cd) {
            return;
        }
        boolean[] zArr = new boolean[2];
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            InterfaceC6055nd interfaceC6055nd = this.f23989a[i2];
            if (interfaceC6055nd.mo7543c() != 0) {
                z = true;
            } else {
                z = false;
            }
            zArr[i2] = z;
            C6172qj m4681a = c5647cd.f21489m.f21084b.m4681a(i2);
            if (m4681a != null) {
                i++;
            }
            if (zArr[i2] && (m4681a == null || (interfaceC6055nd.mo7537k() && interfaceC6055nd.mo7538j() == this.f23983P.f21480d[i2]))) {
                if (interfaceC6055nd == this.f24001x) {
                    this.f23992k.m10891d(this.f24002y);
                    this.f24002y = null;
                    this.f24001x = null;
                }
                m11198p(interfaceC6055nd);
                interfaceC6055nd.mo7535o();
            }
        }
        this.f23983P = c5647cd;
        this.f23995r.obtainMessage(3, c5647cd.f21489m).sendToTarget();
        m11199o(zArr, i);
    }

    /* renamed from: o */
    public final void m11199o(boolean[] zArr, int i) {
        int i2;
        boolean z;
        boolean z2;
        this.f23968A = new InterfaceC6055nd[i];
        int i3 = 0;
        int i4 = 0;
        while (i3 < 2) {
            InterfaceC6055nd interfaceC6055nd = this.f23989a[i3];
            C6172qj m4681a = this.f23983P.f21489m.f21084b.m4681a(i3);
            if (m4681a != null) {
                int i5 = i4 + 1;
                this.f23968A[i4] = interfaceC6055nd;
                if (interfaceC6055nd.mo7543c() == 0) {
                    C6129pd c6129pd = this.f23983P.f21489m.f21086d[i3];
                    if (this.f23970C && this.f23973F == 3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!zArr[i3] && z) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    m4681a.m7813b();
                    C5870id[] c5870idArr = new C5870id[1];
                    for (int i6 = 0; i6 <= 0; i6++) {
                        c5870idArr[i6] = m4681a.m7812c(i6);
                    }
                    C5647cd c5647cd = this.f23983P;
                    i2 = i3;
                    interfaceC6055nd.mo7542d(c6129pd, c5870idArr, c5647cd.f21480d[i3], this.f23980M, z2, c5647cd.f21482f - c5647cd.f21484h);
                    InterfaceC6506zk mo5340e = interfaceC6055nd.mo5340e();
                    if (mo5340e != null) {
                        if (this.f24002y == null) {
                            this.f24002y = mo5340e;
                            this.f24001x = interfaceC6055nd;
                            mo5340e.mo4194p0(this.f24000w);
                        } else {
                            throw C6276tc.m6883c(new IllegalStateException("Multiple renderer media clocks enabled."));
                        }
                    }
                    if (z) {
                        interfaceC6055nd.mo7541g();
                    }
                } else {
                    i2 = i3;
                }
                i4 = i5;
            } else {
                i2 = i3;
            }
            i3 = i2 + 1;
        }
    }

    /* renamed from: s */
    public final void m11195s(InterfaceC6393wi interfaceC6393wi, boolean z) {
        this.f23993p.obtainMessage(0, 1, 0, interfaceC6393wi).sendToTarget();
    }

    /* renamed from: u */
    public final void m11193u(AbstractC6277td abstractC6277td, int i, long j) {
        this.f23993p.obtainMessage(3, new C5722ed(abstractC6277td, 0, j)).sendToTarget();
    }

    /* renamed from: w */
    public final void m11191w(C6424xc... c6424xcArr) {
        if (this.f23969B) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.f23975H++;
        this.f23993p.obtainMessage(11, c6424xcArr).sendToTarget();
    }

    public C5796gd(InterfaceC6055nd[] interfaceC6055ndArr, AbstractC5581ak abstractC5581ak, mp0 mp0Var, boolean z, int i, Handler handler, C5684dd c5684dd, InterfaceC6461yc interfaceC6461yc, byte[] bArr) {
        this.f23989a = interfaceC6055ndArr;
        this.f23991d = abstractC5581ak;
        this.f23988U = mp0Var;
        this.f23970C = z;
        this.f23995r = handler;
        this.f23999v = c5684dd;
        this.f23996s = interfaceC6461yc;
        for (int i2 = 0; i2 < 2; i2++) {
            interfaceC6055ndArr[i2].mo7547D(i2);
            this.f23990b[i2] = interfaceC6055ndArr[i2].mo7545a();
        }
        this.f23992k = new C5841hl();
        this.f23968A = new InterfaceC6055nd[0];
        this.f23997t = new C6240sd();
        this.f23998u = new C6203rd();
        abstractC5581ak.m13009c(this);
        this.f24000w = C6017md.f27578d;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f23994q = handlerThread;
        handlerThread.start();
        this.f23993p = new Handler(handlerThread.getLooper(), this);
    }

    /* renamed from: p */
    public static final void m11198p(InterfaceC6055nd interfaceC6055nd) {
        if (interfaceC6055nd.mo7543c() == 2) {
            interfaceC6055nd.mo7534q();
        }
    }

    /* renamed from: H */
    public final long m11215H(int i, long j) {
        C5647cd c5647cd;
        m11218E();
        this.f23971D = false;
        m11221B(2);
        C5647cd c5647cd2 = this.f23983P;
        if (c5647cd2 == null) {
            C5647cd c5647cd3 = this.f23981N;
            if (c5647cd3 != null) {
                c5647cd3.m12485e();
            }
            c5647cd = null;
        } else {
            c5647cd = null;
            while (c5647cd2 != null) {
                if (c5647cd2.f21483g == i && c5647cd2.f21486j) {
                    c5647cd = c5647cd2;
                } else {
                    c5647cd2.m12485e();
                }
                c5647cd2 = c5647cd2.f21488l;
            }
        }
        C5647cd c5647cd4 = this.f23983P;
        if (c5647cd4 != c5647cd || c5647cd4 != this.f23982O) {
            for (InterfaceC6055nd interfaceC6055nd : this.f23968A) {
                interfaceC6055nd.mo7535o();
            }
            this.f23968A = new InterfaceC6055nd[0];
            this.f24002y = null;
            this.f24001x = null;
            this.f23983P = null;
        }
        if (c5647cd != null) {
            c5647cd.f21488l = null;
            this.f23981N = c5647cd;
            this.f23982O = c5647cd;
            m11200n(c5647cd);
            C5647cd c5647cd5 = this.f23983P;
            if (c5647cd5.f21487k) {
                j = c5647cd5.f21477a.mo5300h(j);
            }
            m11214I(j);
            m11201m();
        } else {
            this.f23981N = null;
            this.f23982O = null;
            this.f23983P = null;
            m11214I(j);
        }
        this.f23993p.sendEmptyMessage(2);
        return j;
    }

    /* renamed from: e */
    public final int m11207e(int i, AbstractC6277td abstractC6277td, AbstractC6277td abstractC6277td2) {
        int mo6876c = abstractC6277td.mo6876c();
        int i2 = -1;
        for (int i3 = 0; i3 < mo6876c && i2 == -1; i3++) {
            i = abstractC6277td.m6871h(i, this.f23998u, this.f23997t, this.f23974G);
            i2 = abstractC6277td2.mo6874e(abstractC6277td.mo6875d(i, this.f23998u, true).f30533b);
        }
        return i2;
    }

    /* renamed from: l */
    public final Pair<Integer, Long> m11202l(AbstractC6277td abstractC6277td, int i, long j, long j2) {
        C6358vk.m6138c(0, 0, abstractC6277td.mo6878a());
        abstractC6277td.mo6877b(0, this.f23997t, false, j2);
        if (j == -9223372036854775807L) {
            j = 0;
        }
        long j3 = abstractC6277td.mo6875d(0, this.f23998u, false).f30534c;
        if (j3 != -9223372036854775807L) {
            int i2 = (j > j3 ? 1 : (j == j3 ? 0 : -1));
        }
        return Pair.create(0, Long.valueOf(j));
    }
}

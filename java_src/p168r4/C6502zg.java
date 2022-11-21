package p168r4;

import android.util.Log;
import com.badlogic.gdx.net.HttpResponseHeader;
/* renamed from: r4.zg */
/* loaded from: classes2.dex */
public final class C6502zg {

    /* renamed from: a */
    public static final int f34586a = C5988ll.m9642l("nam");

    /* renamed from: b */
    public static final int f34587b = C5988ll.m9642l("trk");

    /* renamed from: c */
    public static final int f34588c = C5988ll.m9642l("cmt");

    /* renamed from: d */
    public static final int f34589d = C5988ll.m9642l("day");

    /* renamed from: e */
    public static final int f34590e = C5988ll.m9642l("ART");

    /* renamed from: f */
    public static final int f34591f = C5988ll.m9642l("too");

    /* renamed from: g */
    public static final int f34592g = C5988ll.m9642l("alb");

    /* renamed from: h */
    public static final int f34593h = C5988ll.m9642l("com");

    /* renamed from: i */
    public static final int f34594i = C5988ll.m9642l("wrt");

    /* renamed from: j */
    public static final int f34595j = C5988ll.m9642l("lyr");

    /* renamed from: k */
    public static final int f34596k = C5988ll.m9642l("gen");

    /* renamed from: l */
    public static final int f34597l = C5988ll.m9642l("covr");

    /* renamed from: m */
    public static final int f34598m = C5988ll.m9642l("gnre");

    /* renamed from: n */
    public static final int f34599n = C5988ll.m9642l("grp");

    /* renamed from: o */
    public static final int f34600o = C5988ll.m9642l("disk");

    /* renamed from: p */
    public static final int f34601p = C5988ll.m9642l("trkn");

    /* renamed from: q */
    public static final int f34602q = C5988ll.m9642l("tmpo");

    /* renamed from: r */
    public static final int f34603r = C5988ll.m9642l("cpil");

    /* renamed from: s */
    public static final int f34604s = C5988ll.m9642l("aART");

    /* renamed from: t */
    public static final int f34605t = C5988ll.m9642l("sonm");

    /* renamed from: u */
    public static final int f34606u = C5988ll.m9642l("soal");

    /* renamed from: v */
    public static final int f34607v = C5988ll.m9642l("soar");

    /* renamed from: w */
    public static final int f34608w = C5988ll.m9642l("soaa");

    /* renamed from: x */
    public static final int f34609x = C5988ll.m9642l("soco");

    /* renamed from: y */
    public static final int f34610y = C5988ll.m9642l("rtng");

    /* renamed from: z */
    public static final int f34611z = C5988ll.m9642l("pgap");

    /* renamed from: A */
    public static final int f34582A = C5988ll.m9642l("sosn");

    /* renamed from: B */
    public static final int f34583B = C5988ll.m9642l("tvsh");

    /* renamed from: C */
    public static final int f34584C = C5988ll.m9642l("----");

    /* renamed from: D */
    public static final String[] f34585D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", HttpResponseHeader.Trailer, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* renamed from: e */
    public static int m4259e(C5692dl c5692dl) {
        c5692dl.m12113j(4);
        if (c5692dl.m12105r() == C6020mg.f27602F0) {
            c5692dl.m12113j(8);
            return c5692dl.m12111l();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0035 A[Catch: all -> 0x01d5, TryCatch #0 {all -> 0x01d5, blocks: (B:4:0x001c, B:6:0x0021, B:8:0x0027, B:10:0x002e, B:13:0x0035, B:14:0x003c, B:17:0x0045, B:19:0x0049, B:22:0x0053, B:24:0x0057, B:27:0x0061, B:29:0x0067, B:32:0x0071, B:34:0x0075, B:37:0x007f, B:39:0x0084, B:41:0x0090, B:48:0x00ab, B:49:0x00c2, B:50:0x00d4, B:53:0x00dd, B:55:0x00e1, B:58:0x00eb, B:60:0x00ef, B:63:0x00f9, B:65:0x00fd, B:68:0x0107, B:70:0x010b, B:73:0x0115, B:75:0x0119, B:78:0x0123, B:80:0x0127, B:83:0x0131, B:85:0x0135, B:88:0x013f, B:90:0x0143, B:93:0x014d, B:95:0x0151, B:98:0x015b, B:100:0x015f, B:103:0x0169, B:106:0x0171, B:108:0x0177, B:110:0x018a, B:111:0x0191, B:113:0x0195, B:114:0x019c, B:120:0x01a5, B:121:0x01ab, B:123:0x01b3, B:127:0x01be, B:190:0x028e, B:192:0x029a, B:194:0x02a4, B:193:0x029f, B:133:0x01dc, B:135:0x01e0, B:137:0x01ec, B:138:0x01fd, B:140:0x0209, B:142:0x0213, B:141:0x020e, B:145:0x021a, B:147:0x021e, B:150:0x0224, B:152:0x0228, B:155:0x022e, B:157:0x0232, B:160:0x023c, B:162:0x0240, B:165:0x024a, B:167:0x024e, B:170:0x0258, B:172:0x025c, B:175:0x0266, B:177:0x026a, B:180:0x0274, B:182:0x0278, B:185:0x0280, B:187:0x0284, B:197:0x02ab, B:200:0x02b5), top: B:206:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c A[Catch: all -> 0x01d5, TRY_LEAVE, TryCatch #0 {all -> 0x01d5, blocks: (B:4:0x001c, B:6:0x0021, B:8:0x0027, B:10:0x002e, B:13:0x0035, B:14:0x003c, B:17:0x0045, B:19:0x0049, B:22:0x0053, B:24:0x0057, B:27:0x0061, B:29:0x0067, B:32:0x0071, B:34:0x0075, B:37:0x007f, B:39:0x0084, B:41:0x0090, B:48:0x00ab, B:49:0x00c2, B:50:0x00d4, B:53:0x00dd, B:55:0x00e1, B:58:0x00eb, B:60:0x00ef, B:63:0x00f9, B:65:0x00fd, B:68:0x0107, B:70:0x010b, B:73:0x0115, B:75:0x0119, B:78:0x0123, B:80:0x0127, B:83:0x0131, B:85:0x0135, B:88:0x013f, B:90:0x0143, B:93:0x014d, B:95:0x0151, B:98:0x015b, B:100:0x015f, B:103:0x0169, B:106:0x0171, B:108:0x0177, B:110:0x018a, B:111:0x0191, B:113:0x0195, B:114:0x019c, B:120:0x01a5, B:121:0x01ab, B:123:0x01b3, B:127:0x01be, B:190:0x028e, B:192:0x029a, B:194:0x02a4, B:193:0x029f, B:133:0x01dc, B:135:0x01e0, B:137:0x01ec, B:138:0x01fd, B:140:0x0209, B:142:0x0213, B:141:0x020e, B:145:0x021a, B:147:0x021e, B:150:0x0224, B:152:0x0228, B:155:0x022e, B:157:0x0232, B:160:0x023c, B:162:0x0240, B:165:0x024a, B:167:0x024e, B:170:0x0258, B:172:0x025c, B:175:0x0266, B:177:0x026a, B:180:0x0274, B:182:0x0278, B:185:0x0280, B:187:0x0284, B:197:0x02ab, B:200:0x02b5), top: B:206:0x001a }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.InterfaceC6429xh m4263a(p168r4.C5692dl r13) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6502zg.m4263a(r4.dl):r4.xh");
    }

    /* renamed from: b */
    public static C5838hi m4262b(int i, String str, C5692dl c5692dl) {
        String str2;
        int m12105r = c5692dl.m12105r();
        if (c5692dl.m12105r() == C6020mg.f27602F0) {
            c5692dl.m12113j(8);
            return new C5838hi(str, null, c5692dl.m12100w(m12105r - 16));
        }
        String m9399c = C6020mg.m9399c(i);
        if (m9399c.length() != 0) {
            str2 = "Failed to parse text attribute: ".concat(m9399c);
        } else {
            str2 = new String("Failed to parse text attribute: ");
        }
        Log.w("MetadataUtil", str2);
        return null;
    }

    /* renamed from: c */
    public static AbstractC5764fi m4261c(int i, String str, C5692dl c5692dl, boolean z, boolean z2) {
        String str2;
        int m4259e = m4259e(c5692dl);
        if (z2) {
            m4259e = Math.min(1, m4259e);
        }
        if (m4259e >= 0) {
            if (z) {
                return new C5838hi(str, null, Integer.toString(m4259e));
            }
            return new C5652ci("und", str, Integer.toString(m4259e));
        }
        String m9399c = C6020mg.m9399c(i);
        if (m9399c.length() != 0) {
            str2 = "Failed to parse uint8 attribute: ".concat(m9399c);
        } else {
            str2 = new String("Failed to parse uint8 attribute: ");
        }
        Log.w("MetadataUtil", str2);
        return null;
    }

    /* renamed from: d */
    public static C5838hi m4260d(int i, String str, C5692dl c5692dl) {
        String str2;
        int m12105r = c5692dl.m12105r();
        if (c5692dl.m12105r() == C6020mg.f27602F0 && m12105r >= 22) {
            c5692dl.m12113j(10);
            int m12110m = c5692dl.m12110m();
            if (m12110m > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m12110m);
                String sb2 = sb.toString();
                int m12110m2 = c5692dl.m12110m();
                if (m12110m2 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 12);
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(m12110m2);
                    sb2 = sb3.toString();
                }
                return new C5838hi(str, null, sb2);
            }
        }
        String m9399c = C6020mg.m9399c(i);
        if (m9399c.length() != 0) {
            str2 = "Failed to parse index/count attribute: ".concat(m9399c);
        } else {
            str2 = new String("Failed to parse index/count attribute: ");
        }
        Log.w("MetadataUtil", str2);
        return null;
    }
}

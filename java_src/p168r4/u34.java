package p168r4;

import android.util.Log;
import com.badlogic.gdx.net.HttpResponseHeader;
/* renamed from: r4.u34 */
/* loaded from: classes2.dex */
public final class u34 {

    /* renamed from: a */
    public static final String[] f32163a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", HttpResponseHeader.Trailer, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* renamed from: e */
    public static int m6640e(C6423xb c6423xb) {
        c6423xb.m5400s(4);
        if (c6423xb.m5423D() == 1684108385) {
            c6423xb.m5400s(8);
            return c6423xb.m5397v();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    /* renamed from: a */
    public static InterfaceC5865i8 m6644a(C6423xb c6423xb) {
        String str;
        String str2;
        String str3;
        String str4;
        int m5404o = c6423xb.m5404o() + c6423xb.m5423D();
        int m5423D = c6423xb.m5423D();
        int i = (m5423D >> 24) & 255;
        InterfaceC5865i8 interfaceC5865i8 = null;
        try {
            if (i != 169 && i != 253) {
                if (m5423D == 1735291493) {
                    int m6640e = m6640e(c6423xb);
                    if (m6640e > 0 && m6640e <= 192) {
                        str4 = f32163a[m6640e - 1];
                    } else {
                        str4 = null;
                    }
                    if (str4 != null) {
                        interfaceC5865i8 = new C6347v9("TCON", null, str4);
                    } else {
                        Log.w("MetadataUtil", "Failed to parse standard genre code");
                    }
                    return interfaceC5865i8;
                } else if (m5423D == 1684632427) {
                    return m6641d(1684632427, "TPOS", c6423xb);
                } else {
                    if (m5423D == 1953655662) {
                        return m6641d(1953655662, "TRCK", c6423xb);
                    }
                    if (m5423D == 1953329263) {
                        return m6642c(1953329263, "TBPM", c6423xb, true, false);
                    }
                    if (m5423D == 1668311404) {
                        return m6642c(1668311404, "TCMP", c6423xb, true, true);
                    }
                    if (m5423D == 1668249202) {
                        int m5423D2 = c6423xb.m5423D();
                        if (c6423xb.m5423D() == 1684108385) {
                            int m5423D3 = c6423xb.m5423D() & 16777215;
                            if (m5423D3 == 13) {
                                str3 = "image/jpeg";
                            } else if (m5423D3 == 14) {
                                str3 = "image/png";
                                m5423D3 = 14;
                            } else {
                                str3 = null;
                            }
                            if (str3 == null) {
                                StringBuilder sb = new StringBuilder(41);
                                sb.append("Unrecognized cover art flags: ");
                                sb.append(m5423D3);
                                Log.w("MetadataUtil", sb.toString());
                            } else {
                                c6423xb.m5400s(4);
                                int i2 = m5423D2 - 16;
                                byte[] bArr = new byte[i2];
                                c6423xb.m5398u(bArr, 0, i2);
                                interfaceC5865i8 = new C6420x8(str3, null, 3, bArr);
                            }
                        } else {
                            Log.w("MetadataUtil", "Failed to parse cover art attribute");
                        }
                        return interfaceC5865i8;
                    } else if (m5423D == 1631670868) {
                        return m6643b(1631670868, "TPE2", c6423xb);
                    } else {
                        if (m5423D == 1936682605) {
                            return m6643b(1936682605, "TSOT", c6423xb);
                        }
                        if (m5423D == 1936679276) {
                            return m6643b(1936679276, "TSO2", c6423xb);
                        }
                        if (m5423D == 1936679282) {
                            return m6643b(1936679282, "TSOA", c6423xb);
                        }
                        if (m5423D == 1936679265) {
                            return m6643b(1936679265, "TSOP", c6423xb);
                        }
                        if (m5423D == 1936679791) {
                            return m6643b(1936679791, "TSOC", c6423xb);
                        }
                        if (m5423D == 1920233063) {
                            return m6642c(1920233063, "ITUNESADVISORY", c6423xb, false, false);
                        }
                        if (m5423D == 1885823344) {
                            return m6642c(1885823344, "ITUNESGAPLESS", c6423xb, false, true);
                        }
                        if (m5423D == 1936683886) {
                            return m6643b(1936683886, "TVSHOWSORT", c6423xb);
                        }
                        if (m5423D == 1953919848) {
                            return m6643b(1953919848, "TVSHOW", c6423xb);
                        }
                        if (m5423D == 757935405) {
                            String str5 = null;
                            String str6 = null;
                            int i3 = -1;
                            int i4 = -1;
                            while (c6423xb.m5404o() < m5404o) {
                                int m5404o2 = c6423xb.m5404o();
                                int m5423D4 = c6423xb.m5423D();
                                int m5423D5 = c6423xb.m5423D();
                                c6423xb.m5400s(4);
                                if (m5423D5 == 1835360622) {
                                    str5 = c6423xb.m5413f(m5423D4 - 12);
                                } else if (m5423D5 == 1851878757) {
                                    str6 = c6423xb.m5413f(m5423D4 - 12);
                                } else {
                                    if (m5423D5 == 1684108385) {
                                        i4 = m5423D4;
                                    }
                                    if (m5423D5 == 1684108385) {
                                        i3 = m5404o2;
                                    }
                                    c6423xb.m5400s(m5423D4 - 12);
                                }
                            }
                            if (str5 != null && str6 != null && i3 != -1) {
                                c6423xb.m5403p(i3);
                                c6423xb.m5400s(16);
                                interfaceC5865i8 = new C6088o9(str5, str6, c6423xb.m5413f(i4 - 16));
                            }
                            return interfaceC5865i8;
                        }
                    }
                }
            } else {
                int i5 = m5423D & 16777215;
                if (i5 == 6516084) {
                    int m5423D6 = c6423xb.m5423D();
                    if (c6423xb.m5423D() == 1684108385) {
                        c6423xb.m5400s(8);
                        String m5413f = c6423xb.m5413f(m5423D6 - 16);
                        interfaceC5865i8 = new C5755f9("und", m5413f, m5413f);
                    } else {
                        String m11641b = f34.m11641b(m5423D);
                        if (m11641b.length() != 0) {
                            str = "Failed to parse comment attribute: ".concat(m11641b);
                        } else {
                            str = new String("Failed to parse comment attribute: ");
                        }
                        Log.w("MetadataUtil", str);
                    }
                    return interfaceC5865i8;
                } else if (i5 != 7233901 && i5 != 7631467) {
                    if (i5 != 6516589 && i5 != 7828084) {
                        if (i5 == 6578553) {
                            return m6643b(m5423D, "TDRC", c6423xb);
                        }
                        if (i5 == 4280916) {
                            return m6643b(m5423D, "TPE1", c6423xb);
                        }
                        if (i5 == 7630703) {
                            return m6643b(m5423D, "TSSE", c6423xb);
                        }
                        if (i5 == 6384738) {
                            return m6643b(m5423D, "TALB", c6423xb);
                        }
                        if (i5 == 7108978) {
                            return m6643b(m5423D, "USLT", c6423xb);
                        }
                        if (i5 == 6776174) {
                            return m6643b(m5423D, "TCON", c6423xb);
                        }
                        if (i5 == 6779504) {
                            return m6643b(m5423D, "TIT1", c6423xb);
                        }
                    } else {
                        return m6643b(m5423D, "TCOM", c6423xb);
                    }
                } else {
                    return m6643b(m5423D, "TIT2", c6423xb);
                }
            }
            String m11641b2 = f34.m11641b(m5423D);
            if (m11641b2.length() != 0) {
                str2 = "Skipped unknown metadata entry: ".concat(m11641b2);
            } else {
                str2 = new String("Skipped unknown metadata entry: ");
            }
            Log.d("MetadataUtil", str2);
            return null;
        } finally {
            c6423xb.m5403p(m5404o);
        }
    }

    /* renamed from: b */
    public static C6347v9 m6643b(int i, String str, C6423xb c6423xb) {
        String str2;
        int m5423D = c6423xb.m5423D();
        if (c6423xb.m5423D() == 1684108385) {
            c6423xb.m5400s(8);
            return new C6347v9(str, null, c6423xb.m5413f(m5423D - 16));
        }
        String m11641b = f34.m11641b(i);
        if (m11641b.length() != 0) {
            str2 = "Failed to parse text attribute: ".concat(m11641b);
        } else {
            str2 = new String("Failed to parse text attribute: ");
        }
        Log.w("MetadataUtil", str2);
        return null;
    }

    /* renamed from: c */
    public static AbstractC6013m9 m6642c(int i, String str, C6423xb c6423xb, boolean z, boolean z2) {
        String str2;
        int m6640e = m6640e(c6423xb);
        if (z2) {
            m6640e = Math.min(1, m6640e);
        }
        if (m6640e >= 0) {
            if (z) {
                return new C6347v9(str, null, Integer.toString(m6640e));
            }
            return new C5755f9("und", str, Integer.toString(m6640e));
        }
        String m11641b = f34.m11641b(i);
        if (m11641b.length() != 0) {
            str2 = "Failed to parse uint8 attribute: ".concat(m11641b);
        } else {
            str2 = new String("Failed to parse uint8 attribute: ");
        }
        Log.w("MetadataUtil", str2);
        return null;
    }

    /* renamed from: d */
    public static C6347v9 m6641d(int i, String str, C6423xb c6423xb) {
        String str2;
        int m5423D = c6423xb.m5423D();
        if (c6423xb.m5423D() == 1684108385 && m5423D >= 22) {
            c6423xb.m5400s(10);
            int m5396w = c6423xb.m5396w();
            if (m5396w > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m5396w);
                String sb2 = sb.toString();
                int m5396w2 = c6423xb.m5396w();
                if (m5396w2 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 12);
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(m5396w2);
                    sb2 = sb3.toString();
                }
                return new C6347v9(str, null, sb2);
            }
        }
        String m11641b = f34.m11641b(i);
        if (m11641b.length() != 0) {
            str2 = "Failed to parse index/count attribute: ".concat(m11641b);
        } else {
            str2 = new String("Failed to parse index/count attribute: ");
        }
        Log.w("MetadataUtil", str2);
        return null;
    }
}

package p168r4;

import android.util.Log;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* renamed from: r4.f24 */
/* loaded from: classes2.dex */
public final class f24 {

    /* renamed from: a */
    public static final String[] f23264a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b */
    public static final String[] f23265b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c */
    public static final String[] f23266c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* renamed from: a */
    public static b24 m11645a(String str) {
        long j;
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new StringReader(str));
            newPullParser.next();
            if (C6016mc.m9415b(newPullParser, "x:xmpmeta")) {
                o33<a24> m8900q = o33.m8900q();
                long j2 = -9223372036854775807L;
                do {
                    newPullParser.next();
                    if (C6016mc.m9415b(newPullParser, "rdf:Description")) {
                        String[] strArr = f23264a;
                        int i = 0;
                        for (int i2 = 0; i2 < 4; i2++) {
                            String m9414c = C6016mc.m9414c(newPullParser, strArr[i2]);
                            if (m9414c != null) {
                                if (Integer.parseInt(m9414c) != 1) {
                                    return null;
                                }
                                String[] strArr2 = f23265b;
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= 4) {
                                        break;
                                    }
                                    String m9414c2 = C6016mc.m9414c(newPullParser, strArr2[i3]);
                                    if (m9414c2 != null) {
                                        j = Long.parseLong(m9414c2);
                                        if (j == -1) {
                                        }
                                    } else {
                                        i3++;
                                    }
                                }
                                j = -9223372036854775807L;
                                String[] strArr3 = f23266c;
                                while (true) {
                                    if (i < 2) {
                                        String m9414c3 = C6016mc.m9414c(newPullParser, strArr3[i]);
                                        if (m9414c3 != null) {
                                            m8900q = o33.m8898s(new a24("image/jpeg", "Primary", 0L, 0L), new a24("video/mp4", "MotionPhoto", Long.parseLong(m9414c3), 0L));
                                            break;
                                        }
                                        i++;
                                    } else {
                                        m8900q = o33.m8900q();
                                        break;
                                    }
                                }
                                j2 = j;
                            }
                        }
                        return null;
                    } else if (C6016mc.m9415b(newPullParser, "Container:Directory")) {
                        m8900q = m11644b(newPullParser, "Container", "Item");
                    } else if (C6016mc.m9415b(newPullParser, "GContainer:Directory")) {
                        m8900q = m11644b(newPullParser, "GContainer", "GContainerItem");
                    }
                } while (!C6016mc.m9416a(newPullParser, "x:xmpmeta"));
                if (m8900q.isEmpty()) {
                    return null;
                }
                return new b24(j2, m8900q);
            }
            throw C5973l6.m9787b("Couldn't find xmp metadata", null);
        } catch (NumberFormatException | XmlPullParserException | C5973l6 unused) {
            Log.w("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    /* renamed from: b */
    public static o33<a24> m11644b(XmlPullParser xmlPullParser, String str, String str2) {
        long j;
        long j2;
        l33 m8902E = o33.m8902E();
        String concat = str.concat(":Item");
        String concat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (C6016mc.m9415b(xmlPullParser, concat)) {
                String concat3 = str2.concat(":Mime");
                String concat4 = str2.concat(":Semantic");
                String concat5 = str2.concat(":Length");
                String concat6 = str2.concat(":Padding");
                String m9414c = C6016mc.m9414c(xmlPullParser, concat3);
                String m9414c2 = C6016mc.m9414c(xmlPullParser, concat4);
                String m9414c3 = C6016mc.m9414c(xmlPullParser, concat5);
                String m9414c4 = C6016mc.m9414c(xmlPullParser, concat6);
                if (m9414c != null && m9414c2 != null) {
                    if (m9414c3 != null) {
                        j = Long.parseLong(m9414c3);
                    } else {
                        j = 0;
                    }
                    if (m9414c4 != null) {
                        j2 = Long.parseLong(m9414c4);
                    } else {
                        j2 = 0;
                    }
                    m8902E.m9798f(new a24(m9414c, m9414c2, j, j2));
                } else {
                    return o33.m8900q();
                }
            }
        } while (!C6016mc.m9416a(xmlPullParser, concat2));
        return m8902E.m9797g();
    }
}

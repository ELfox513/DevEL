package p168r4;

import org.xmlpull.v1.XmlPullParser;
/* renamed from: r4.mc */
/* loaded from: classes2.dex */
public final class C6016mc {
    /* renamed from: a */
    public static boolean m9416a(XmlPullParser xmlPullParser, String str) {
        if (xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals(str)) {
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m9415b(XmlPullParser xmlPullParser, String str) {
        if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals(str)) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public static String m9414c(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}

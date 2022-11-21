package p190u;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: u.b */
/* loaded from: classes.dex */
public final class C6809b {

    /* renamed from: a */
    public final Shader f35531a;

    /* renamed from: b */
    public final ColorStateList f35532b;

    /* renamed from: c */
    public int f35533c;

    /* renamed from: b */
    public static C6809b m3356b(int i) {
        return new C6809b(null, null, i);
    }

    /* renamed from: c */
    public static C6809b m3355c(ColorStateList colorStateList) {
        return new C6809b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: d */
    public static C6809b m3354d(Shader shader) {
        return new C6809b(shader, null, 0);
    }

    /* renamed from: e */
    public int m3353e() {
        return this.f35533c;
    }

    /* renamed from: f */
    public Shader m3352f() {
        return this.f35531a;
    }

    /* renamed from: h */
    public boolean m3350h() {
        return this.f35531a != null;
    }

    /* renamed from: i */
    public boolean m3349i() {
        ColorStateList colorStateList;
        return this.f35531a == null && (colorStateList = this.f35532b) != null && colorStateList.isStateful();
    }

    /* renamed from: k */
    public void m3347k(int i) {
        this.f35533c = i;
    }

    /* renamed from: l */
    public boolean m3346l() {
        return m3350h() || this.f35533c != 0;
    }

    public C6809b(Shader shader, ColorStateList colorStateList, int i) {
        this.f35531a = shader;
        this.f35532b = colorStateList;
        this.f35533c = i;
    }

    /* renamed from: a */
    public static C6809b m3357a(Resources resources, int i, Resources.Theme theme) {
        int next;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.hashCode();
            if (!name.equals("gradient")) {
                if (name.equals("selector")) {
                    return m3355c(C6808a.m3364b(resources, xml, asAttributeSet, theme));
                }
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
            }
            return m3354d(C6816e.m3324b(resources, xml, asAttributeSet, theme));
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: g */
    public static C6809b m3351g(Resources resources, int i, Resources.Theme theme) {
        try {
            return m3357a(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: j */
    public boolean m3348j(int[] iArr) {
        if (m3349i()) {
            ColorStateList colorStateList = this.f35532b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f35533c) {
                this.f35533c = colorForState;
                return true;
            }
        }
        return false;
    }
}

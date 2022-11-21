package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class GLVersion {

    /* renamed from: a */
    public int f5008a;

    /* renamed from: b */
    public int f5009b;

    /* renamed from: c */
    public int f5010c;

    /* renamed from: d */
    public final String f5011d;

    /* renamed from: e */
    public final String f5012e;

    /* renamed from: f */
    public final Type f5013f;

    /* renamed from: g */
    public final String f5014g = "GLVersion";

    /* loaded from: classes.dex */
    public enum Type {
        OpenGL,
        GLES,
        WebGL,
        NONE
    }

    public String getDebugVersionString() {
        return "Type: " + this.f5013f + "\nVersion: " + this.f5008a + ":" + this.f5009b + ":" + this.f5010c + "\nVendor: " + this.f5011d + "\nRenderer: " + this.f5012e;
    }

    public int getMajorVersion() {
        return this.f5008a;
    }

    public int getMinorVersion() {
        return this.f5009b;
    }

    public int getReleaseVersion() {
        return this.f5010c;
    }

    public String getRendererString() {
        return this.f5012e;
    }

    public Type getType() {
        return this.f5013f;
    }

    public String getVendorString() {
        return this.f5011d;
    }

    public boolean isVersionEqualToOrHigher(int i, int i2) {
        int i3 = this.f5008a;
        return i3 > i || (i3 == i && this.f5009b >= i2);
    }

    public GLVersion(Application.ApplicationType applicationType, String str, String str2, String str3) {
        if (applicationType == Application.ApplicationType.Android) {
            this.f5013f = Type.GLES;
        } else if (applicationType == Application.ApplicationType.iOS) {
            this.f5013f = Type.GLES;
        } else if (applicationType == Application.ApplicationType.Desktop) {
            this.f5013f = Type.OpenGL;
        } else if (applicationType == Application.ApplicationType.Applet) {
            this.f5013f = Type.OpenGL;
        } else if (applicationType == Application.ApplicationType.WebGL) {
            this.f5013f = Type.WebGL;
        } else {
            this.f5013f = Type.NONE;
        }
        Type type = this.f5013f;
        if (type == Type.GLES) {
            m24021a("OpenGL ES (\\d(\\.\\d){0,2})", str);
        } else if (type == Type.WebGL) {
            m24021a("WebGL (\\d(\\.\\d){0,2})", str);
        } else if (type == Type.OpenGL) {
            m24021a("(\\d(\\.\\d){0,2})", str);
        } else {
            this.f5008a = -1;
            this.f5009b = -1;
            this.f5010c = -1;
            str2 = "";
            str3 = str2;
        }
        this.f5011d = str2;
        this.f5012e = str3;
    }

    /* renamed from: a */
    public final void m24021a(String str, String str2) {
        int m24020b;
        Matcher matcher = Pattern.compile(str).matcher(str2);
        int i = 0;
        if (matcher.find()) {
            String[] split = matcher.group(1).split("\\.");
            this.f5008a = m24020b(split[0], 2);
            if (split.length < 2) {
                m24020b = 0;
            } else {
                m24020b = m24020b(split[1], 0);
            }
            this.f5009b = m24020b;
            if (split.length >= 3) {
                i = m24020b(split[2], 0);
            }
            this.f5010c = i;
            return;
        }
        Application application = Gdx.app;
        application.log("GLVersion", "Invalid version string: " + str2);
        this.f5008a = 2;
        this.f5009b = 0;
        this.f5010c = 0;
    }

    /* renamed from: b */
    public final int m24020b(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            Application application = Gdx.app;
            application.error("libGDX GL", "Error parsing number: " + str + ", assuming: " + i);
            return i;
        }
    }
}

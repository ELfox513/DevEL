package com.badlogic.gdx.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.ObjectMap;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
/* loaded from: classes.dex */
public class I18NBundle {

    /* renamed from: e */
    public static final Locale f6444e = new Locale("", "", "");

    /* renamed from: f */
    public static boolean f6445f = false;

    /* renamed from: g */
    public static boolean f6446g = true;

    /* renamed from: a */
    public I18NBundle f6447a;

    /* renamed from: b */
    public Locale f6448b;

    /* renamed from: c */
    public ObjectMap<String, String> f6449c;

    /* renamed from: d */
    public TextFormatter f6450d;

    /* renamed from: a */
    public static boolean m23661a(FileHandle fileHandle) {
        try {
            fileHandle.read().close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0045, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
        throw new java.util.MissingResourceException("Can't find bundle for base file handle " + r9.path() + ", locale " + r10, r9 + net.bytebuddy.utility.JavaConstant.Dynamic.DEFAULT_NAME + r10, "");
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
        return r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.badlogic.gdx.utils.I18NBundle m23660b(com.badlogic.gdx.files.FileHandle r9, java.util.Locale r10, java.lang.String r11) {
        /*
            r0 = 0
            if (r9 == 0) goto L83
            if (r10 == 0) goto L83
            if (r11 == 0) goto L83
            r1 = r10
        L8:
            java.util.List r2 = m23659c(r1)
            r3 = 0
            com.badlogic.gdx.utils.I18NBundle r4 = m23655g(r9, r11, r2, r3, r0)
            if (r4 == 0) goto L3d
            java.util.Locale r5 = r4.getLocale()
            java.util.Locale r6 = com.badlogic.gdx.utils.I18NBundle.f6444e
            boolean r6 = r5.equals(r6)
            if (r6 == 0) goto L43
            boolean r7 = r5.equals(r10)
            if (r7 == 0) goto L26
            goto L43
        L26:
            int r7 = r2.size()
            r8 = 1
            if (r7 != r8) goto L38
            java.lang.Object r2 = r2.get(r3)
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto L38
            goto L43
        L38:
            if (r6 == 0) goto L3d
            if (r0 != 0) goto L3d
            r0 = r4
        L3d:
            java.util.Locale r1 = m23658d(r1)
            if (r1 != 0) goto L8
        L43:
            if (r4 != 0) goto L82
            if (r0 == 0) goto L49
            r4 = r0
            goto L82
        L49:
            java.util.MissingResourceException r11 = new java.util.MissingResourceException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Can't find bundle for base file handle "
            r0.append(r1)
            java.lang.String r1 = r9.path()
            r0.append(r1)
            java.lang.String r1 = ", locale "
            r0.append(r1)
            r0.append(r10)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r9)
            java.lang.String r9 = "_"
            r1.append(r9)
            r1.append(r10)
            java.lang.String r9 = r1.toString()
            java.lang.String r10 = ""
            r11.<init>(r0, r9, r10)
            throw r11
        L82:
            return r4
        L83:
            goto L85
        L84:
            throw r0
        L85:
            goto L84
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.I18NBundle.m23660b(com.badlogic.gdx.files.FileHandle, java.util.Locale, java.lang.String):com.badlogic.gdx.utils.I18NBundle");
    }

    public static I18NBundle createBundle(FileHandle fileHandle) {
        return m23660b(fileHandle, Locale.getDefault(), "UTF-8");
    }

    /* renamed from: f */
    public static I18NBundle m23656f(FileHandle fileHandle, String str, Locale locale) {
        I18NBundle i18NBundle;
        Reader reader = null;
        try {
            try {
                FileHandle m23653i = m23653i(fileHandle, locale);
                if (m23661a(m23653i)) {
                    i18NBundle = new I18NBundle();
                    reader = m23653i.reader(str);
                    i18NBundle.m23657e(reader);
                } else {
                    i18NBundle = null;
                }
                if (i18NBundle != null) {
                    i18NBundle.m23654h(locale);
                }
                return i18NBundle;
            } catch (IOException e) {
                throw new GdxRuntimeException(e);
            }
        } finally {
            StreamUtils.closeQuietly(reader);
        }
    }

    public static boolean getExceptionOnMissingKey() {
        return f6446g;
    }

    public static boolean getSimpleFormatter() {
        return f6445f;
    }

    public static void setExceptionOnMissingKey(boolean z) {
        f6446g = z;
    }

    public static void setSimpleFormatter(boolean z) {
        f6445f = z;
    }

    public String format(String str, Object... objArr) {
        return this.f6450d.format(get(str), objArr);
    }

    public Locale getLocale() {
        return this.f6448b;
    }

    public static I18NBundle createBundle(FileHandle fileHandle, Locale locale) {
        return m23660b(fileHandle, locale, "UTF-8");
    }

    /* renamed from: i */
    public static FileHandle m23653i(FileHandle fileHandle, Locale locale) {
        StringBuilder stringBuilder = new StringBuilder(fileHandle.name());
        if (!locale.equals(f6444e)) {
            String language = locale.getLanguage();
            String country = locale.getCountry();
            String variant = locale.getVariant();
            boolean equals = "".equals(language);
            boolean equals2 = "".equals(country);
            boolean equals3 = "".equals(variant);
            if (!equals || !equals2 || !equals3) {
                stringBuilder.append('_');
                if (!equals3) {
                    stringBuilder.append(language).append('_').append(country).append('_').append(variant);
                } else if (!equals2) {
                    stringBuilder.append(language).append('_').append(country);
                } else {
                    stringBuilder.append(language);
                }
            }
        }
        return fileHandle.sibling(stringBuilder.append(".properties").toString());
    }

    public void debug(String str) {
        ObjectMap.Keys<String> keys = this.f6449c.keys();
        if (keys == null) {
            return;
        }
        ObjectMap.Keys<String> it = keys.iterator();
        while (it.hasNext()) {
            this.f6449c.put(it.next(), str);
        }
    }

    /* renamed from: e */
    public void m23657e(Reader reader) {
        ObjectMap<String, String> objectMap = new ObjectMap<>();
        this.f6449c = objectMap;
        PropertiesUtils.load(objectMap, reader);
    }

    public String get(String str) {
        String str2 = this.f6449c.get(str);
        if (str2 == null) {
            I18NBundle i18NBundle = this.f6447a;
            if (i18NBundle != null) {
                str2 = i18NBundle.get(str);
            }
            if (str2 == null) {
                if (!f6446g) {
                    return "???" + str + "???";
                }
                throw new MissingResourceException("Can't find bundle key " + str, getClass().getName(), str);
            }
        }
        return str2;
    }

    /* renamed from: h */
    public final void m23654h(Locale locale) {
        this.f6448b = locale;
        this.f6450d = new TextFormatter(locale, !f6445f);
    }

    /* renamed from: c */
    public static List<Locale> m23659c(Locale locale) {
        Locale locale2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String variant = locale.getVariant();
        ArrayList arrayList = new ArrayList(4);
        if (variant.length() > 0) {
            arrayList.add(locale);
        }
        if (country.length() > 0) {
            if (arrayList.isEmpty()) {
                locale2 = locale;
            } else {
                locale2 = new Locale(language, country);
            }
            arrayList.add(locale2);
        }
        if (language.length() > 0) {
            if (!arrayList.isEmpty()) {
                locale = new Locale(language);
            }
            arrayList.add(locale);
        }
        arrayList.add(f6444e);
        return arrayList;
    }

    public static I18NBundle createBundle(FileHandle fileHandle, String str) {
        return m23660b(fileHandle, Locale.getDefault(), str);
    }

    /* renamed from: d */
    public static Locale m23658d(Locale locale) {
        Locale locale2 = Locale.getDefault();
        if (locale.equals(locale2)) {
            return null;
        }
        return locale2;
    }

    /* renamed from: g */
    public static I18NBundle m23655g(FileHandle fileHandle, String str, List<Locale> list, int i, I18NBundle i18NBundle) {
        I18NBundle i18NBundle2;
        Locale locale = list.get(i);
        if (i != list.size() - 1) {
            i18NBundle2 = m23655g(fileHandle, str, list, i + 1, i18NBundle);
        } else if (i18NBundle != null && locale.equals(f6444e)) {
            return i18NBundle;
        } else {
            i18NBundle2 = null;
        }
        I18NBundle m23656f = m23656f(fileHandle, str, locale);
        if (m23656f != null) {
            m23656f.f6447a = i18NBundle2;
            return m23656f;
        }
        return i18NBundle2;
    }

    public static I18NBundle createBundle(FileHandle fileHandle, Locale locale, String str) {
        return m23660b(fileHandle, locale, str);
    }
}

package com.prineside.tdi2.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.PropertiesUtils;
import com.badlogic.gdx.utils.StreamUtils;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.AssetManager;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class I18NBundle {

    /* renamed from: h */
    public static final Locale f15090h = new Locale("", "", "");

    /* renamed from: i */
    public static boolean f15091i = false;

    /* renamed from: a */
    public I18NBundle f15092a;

    /* renamed from: b */
    public Locale f15093b;

    /* renamed from: c */
    public ObjectMap<String, String> f15094c;

    /* renamed from: d */
    public I18NTextFormatter f15095d;

    /* renamed from: e */
    public final Pattern f15096e = Pattern.compile("\\[@([a-zA-Z0-9_-]+)]");

    /* renamed from: f */
    public final ObjectMap<String, String> f15097f = new ObjectMap<>();

    /* renamed from: g */
    public final ObjectMap<String, String> f15098g = new ObjectMap<>();

    /* renamed from: a */
    public static boolean m19847a(FileHandle fileHandle) {
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
    public static com.prineside.tdi2.utils.I18NBundle m19846b(com.badlogic.gdx.files.FileHandle r9, java.util.Locale r10, java.lang.String r11) {
        /*
            r0 = 0
            if (r9 == 0) goto L83
            if (r10 == 0) goto L83
            if (r11 == 0) goto L83
            r1 = r10
        L8:
            java.util.List r2 = m19845c(r1)
            r3 = 0
            com.prineside.tdi2.utils.I18NBundle r4 = m19841g(r9, r11, r2, r3, r0)
            if (r4 == 0) goto L3d
            java.util.Locale r5 = r4.getLocale()
            java.util.Locale r6 = com.prineside.tdi2.utils.I18NBundle.f15090h
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
            java.util.Locale r1 = m19844d(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.utils.I18NBundle.m19846b(com.badlogic.gdx.files.FileHandle, java.util.Locale, java.lang.String):com.prineside.tdi2.utils.I18NBundle");
    }

    public static I18NBundle createBundle(FileHandle fileHandle) {
        return m19846b(fileHandle, Locale.getDefault(), "UTF-8");
    }

    /* renamed from: f */
    public static I18NBundle m19842f(FileHandle fileHandle, String str, Locale locale) {
        I18NBundle i18NBundle;
        Reader reader = null;
        try {
            try {
                FileHandle m19838j = m19838j(fileHandle, locale);
                if (m19847a(m19838j)) {
                    i18NBundle = new I18NBundle();
                    reader = m19838j.reader(str);
                    i18NBundle.m19843e(reader);
                } else {
                    i18NBundle = null;
                }
                if (i18NBundle != null) {
                    i18NBundle.m19839i(locale);
                }
                return i18NBundle;
            } catch (IOException e) {
                throw new GdxRuntimeException(e);
            }
        } finally {
            StreamUtils.closeQuietly(reader);
        }
    }

    public static boolean getSimpleFormatter() {
        return f15091i;
    }

    public static void setSimpleFormatter(boolean z) {
        f15091i = z;
    }

    public String format(String str, Object... objArr) {
        return formatStr(get(str), objArr);
    }

    public String formatStr(String str, Object... objArr) {
        int i = 0;
        while (str.contains("{")) {
            str = m19840h(this.f15095d.format(str, objArr));
            i++;
            if (i == 3) {
                break;
            }
        }
        return str;
    }

    public Locale getLocale() {
        return this.f15093b;
    }

    public static I18NBundle createBundle(FileHandle fileHandle, Locale locale) {
        return m19846b(fileHandle, locale, "UTF-8");
    }

    /* renamed from: j */
    public static FileHandle m19838j(FileHandle fileHandle, Locale locale) {
        StringBuilder stringBuilder = new StringBuilder(fileHandle.name());
        if (!locale.equals(f15090h)) {
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
        ObjectMap.Keys<String> keys = this.f15094c.keys();
        if (keys == null) {
            return;
        }
        ObjectMap.Keys<String> it = keys.iterator();
        while (it.hasNext()) {
            this.f15094c.put(it.next(), str);
        }
    }

    /* renamed from: e */
    public void m19843e(Reader reader) {
        ObjectMap<String, String> objectMap = new ObjectMap<>();
        this.f15094c = objectMap;
        PropertiesUtils.load(objectMap, reader);
    }

    public String get(String str) {
        String str2;
        I18NBundle i18NBundle;
        if (str != null) {
            if (this.f15098g.containsKey(str)) {
                return this.f15098g.get(str);
            }
            if (this.f15097f.containsKey(str)) {
                str2 = this.f15097f.get(str);
            } else {
                str2 = this.f15094c.get(str);
                if (str2 == null && (i18NBundle = this.f15092a) != null) {
                    str2 = i18NBundle.get(str);
                }
            }
            if (str2 == null) {
                return "???" + str + "???";
            }
            String m19840h = m19840h(str2);
            this.f15098g.put(str, m19840h);
            return m19840h;
        }
        throw new IllegalArgumentException("key is null");
    }

    /* renamed from: h */
    public final String m19840h(String str) {
        Matcher matcher = this.f15096e.matcher(str);
        while (matcher.find()) {
            String trim = matcher.group(1).trim();
            str = str.replace("[@" + trim + "]", Game.f8589i.localeManager.i18n.get(trim));
        }
        AssetManager assetManager = Game.f8589i.assetManager;
        if (assetManager != null) {
            return assetManager.replaceRegionAliasesWithChars(str).toString();
        }
        return str;
    }

    /* renamed from: i */
    public final void m19839i(Locale locale) {
        this.f15093b = locale;
        this.f15095d = new I18NTextFormatter(locale, !f15091i);
    }

    public void registerCustom(String str, String str2) {
        String str3 = this.f15094c.get(str);
        if (str3 == null) {
            I18NBundle i18NBundle = this.f15092a;
            if (i18NBundle != null) {
                str3 = i18NBundle.get(str);
            }
            if (str3 == null || str3.startsWith("???")) {
                this.f15097f.put(str, str2);
                this.f15098g.remove(str);
                Logger.log("I18NBundle", "registered custom: " + str + "=" + str2);
                return;
            }
        }
        Logger.error("I18NBundle", "failed to register custom i18n value: " + str + " - default i18n can't be changed for security purposes. Default: " + str3);
    }

    /* renamed from: c */
    public static List<Locale> m19845c(Locale locale) {
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
        arrayList.add(f15090h);
        return arrayList;
    }

    /* renamed from: d */
    public static Locale m19844d(Locale locale) {
        Locale locale2 = Locale.getDefault();
        if (locale.equals(locale2)) {
            return null;
        }
        return locale2;
    }

    /* renamed from: g */
    public static I18NBundle m19841g(FileHandle fileHandle, String str, List<Locale> list, int i, I18NBundle i18NBundle) {
        I18NBundle i18NBundle2;
        Locale locale = list.get(i);
        if (i != list.size() - 1) {
            i18NBundle2 = m19841g(fileHandle, str, list, i + 1, i18NBundle);
        } else if (i18NBundle != null && locale.equals(f15090h)) {
            return i18NBundle;
        } else {
            i18NBundle2 = null;
        }
        I18NBundle m19842f = m19842f(fileHandle, str, locale);
        if (m19842f != null) {
            m19842f.f15092a = i18NBundle2;
            return m19842f;
        }
        return i18NBundle2;
    }
}

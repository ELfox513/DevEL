package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.CharArray;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.PropertiesUtils;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.managers.LocaleManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.I18NBundle;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.File;
import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import net.bytebuddy.utility.JavaConstant;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class LocaleManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public String f9885a;

    /* renamed from: b */
    public final Array<Locale> f9886b;
    public I18NBundle i18n;

    /* renamed from: d */
    public final Object f9887d = new Object();

    /* renamed from: k */
    public final DelayedRemovalArray<LocaleManagerListener> f9888k = new DelayedRemovalArray<>();

    /* loaded from: classes2.dex */
    public interface LocaleManagerListener {
        void localeChanged();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<LocaleManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public LocaleManager read() {
            return Game.f8589i.localeManager;
        }
    }

    /* renamed from: b */
    public boolean m21582b() {
        return Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS).contains("locale");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public String getLocale() {
        return this.f9885a;
    }

    /* loaded from: classes2.dex */
    public static class Locale {
        public final String alias;
        public final String localeLanguage;
        public final String name;

        public Locale(String str, String str2) {
            this.alias = str;
            this.name = str2;
            String str3 = str.split(JavaConstant.Dynamic.DEFAULT_NAME)[0];
            this.localeLanguage = str3;
            Logger.log("LocaleManager", "Registered '" + str3 + "' " + str + " " + str2);
        }
    }

    public void addListener(LocaleManagerListener localeManagerListener) {
        if (localeManagerListener != null) {
            if (!this.f9888k.contains(localeManagerListener, true)) {
                this.f9888k.add(localeManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: c */
    public final void m21581c() {
        this.f9888k.begin();
        int i = this.f9888k.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f9888k.get(i2).localeChanged();
        }
        this.f9888k.end();
    }

    public CharArray getAllLocalesChars() {
        char[] charArray;
        char[] charArray2;
        IntSet intSet = new IntSet();
        intSet.add(10);
        intSet.add(32);
        CharArray charArray3 = new CharArray();
        Array array = new Array();
        array.add("i18n/MainBundle.properties");
        for (int i = 0; i < this.f9886b.size; i++) {
            array.add("i18n/MainBundle_" + this.f9886b.get(i).alias + ".properties");
        }
        for (int i2 = 0; i2 < array.size; i2++) {
            try {
                Logger.log("LocaleManager", "getting chars from " + ((String) array.get(i2)));
                FileHandle local = Gdx.files.local((String) array.get(i2));
                ObjectMap objectMap = new ObjectMap();
                PropertiesUtils.load(objectMap, local.reader("UTF-8"));
                CharArray charArray4 = new CharArray();
                ObjectMap.Values it = objectMap.values().iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    String str = (String) it.next();
                    for (char c : str.toCharArray()) {
                        if (!intSet.contains(c)) {
                            intSet.add(c);
                            charArray3.add(c);
                            charArray4.add(c);
                            i3++;
                        }
                    }
                    for (char c2 : str.toUpperCase().toCharArray()) {
                        if (!intSet.contains(c2)) {
                            intSet.add(c2);
                            charArray3.add(c2);
                            charArray4.add(c2);
                            i3++;
                        }
                    }
                }
                Logger.log("LocaleManager", "added " + i3 + " chars (" + charArray4.toString("") + ")");
            } catch (Exception e) {
                Logger.error("LocaleManager", "failed to get all chars", e);
            }
        }
        charArray3.sort();
        return charArray3;
    }

    public Array<Locale> getAvailableLocales() {
        Array<Locale> array = new Array<>(Locale.class);
        if (Gdx.app.getType() != Application.ApplicationType.Desktop && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UNLOCK_ALL_LOCALES) == 0.0d) {
            int i = 0;
            while (true) {
                Array<Locale> array2 = this.f9886b;
                if (i >= array2.size) {
                    break;
                }
                Locale locale = array2.get(i);
                if (!locale.alias.equals("zh_CN")) {
                    array.add(locale);
                }
                i++;
            }
        } else {
            array.addAll(this.f9886b);
        }
        return array;
    }

    public void setLocale(String str, boolean z) {
        boolean z2;
        Array.ArrayIterator<Locale> it = this.f9886b.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().alias.equals(str)) {
                    z2 = true;
                    break;
                }
            } else {
                z2 = false;
                break;
            }
        }
        if (!z2) {
            Logger.error("LocaleManager", "Invalid locale: " + str);
            return;
        }
        this.f9885a = str;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        preferencesManager.set("locale", str);
        preferencesManager.flush();
        String[] split = str.split(JavaConstant.Dynamic.DEFAULT_NAME);
        this.i18n = I18NBundle.createBundle(Gdx.files.local("i18n/MainBundle"), new java.util.Locale(split[0], split[1]));
        Logger.log("LocaleManager", "Locale set to '" + str + "'");
        m21581c();
        if (z) {
            downloadFreshTranslationsAsync();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        java.util.Locale locale = new java.util.Locale("en", "US");
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (preferencesManager.contains("locale")) {
            String[] split = preferencesManager.get("locale", "en_US").split(JavaConstant.Dynamic.DEFAULT_NAME);
            if (split.length == 2 && split[0].length() == 2 && split[1].length() == 2) {
                locale = new java.util.Locale(split[0], split[1]);
            } else {
                preferencesManager.remove("locale");
                preferencesManager.flush();
            }
        }
        this.i18n = I18NBundle.createBundle(Gdx.files.local("i18n/MainBundle"), locale);
        String str = this.i18n.getLocale().getLanguage() + JavaConstant.Dynamic.DEFAULT_NAME + this.i18n.getLocale().getCountry();
        Logger.log("LocaleManager", "Locale set to: " + locale.getLanguage() + JavaConstant.Dynamic.DEFAULT_NAME + locale.getCountry());
        Logger.log("LocaleManager", "Real locale set to: " + str + " " + this.i18n.get("NAME_OF_THE_LANGUAGE"));
        this.f9885a = str;
        downloadFreshTranslationsAsync();
        m21581c();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        Array.ArrayIterator<Locale> it = this.f9886b.iterator();
        while (it.hasNext()) {
            Locale next = it.next();
            String[] split = next.alias.split(JavaConstant.Dynamic.DEFAULT_NAME);
            I18NBundle createBundle = I18NBundle.createBundle(Gdx.files.local("i18n/MainBundle"), new java.util.Locale(split[0], split[1]));
            try {
                FileInputStream fileInputStream = new FileInputStream(new File("i18n/MainBundle.properties"));
                Properties properties = new Properties();
                properties.load(fileInputStream);
                fileInputStream.close();
                Enumeration keys = properties.keys();
                while (keys.hasMoreElements()) {
                    String str = (String) keys.nextElement();
                    try {
                        createBundle.get(str);
                    } catch (Exception e) {
                        Logger.error("LocaleManager", "failed to get key '" + str + "' from locale " + next.alias + " - " + e.getMessage());
                    }
                }
            } catch (Exception e2) {
                Logger.error("LocaleManager", "failed to test locale properties", e2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LocaleManager() {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.LocaleManager.<init>():void");
    }

    public void downloadFreshTranslationsAsync() {
        if (Config.isHeadless()) {
            return;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.prineside.tdi2.managers.LocaleManager.1

            /* renamed from: com.prineside.tdi2.managers.LocaleManager$1$1 */
            /* loaded from: classes2.dex */
            public class C18201 implements Net.HttpResponseListener {

                /* renamed from: a */
                public final /* synthetic */ String f9890a;

                public C18201(String str) {
                    this.f9890a = str;
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* renamed from: b */
                public /* synthetic */ void m21579b() {
                    LocaleManager localeManager = LocaleManager.this;
                    localeManager.setLocale(localeManager.getLocale(), false);
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void cancelled() {
                    Logger.error("LocaleManager", "Failed to download fresh translations for " + this.f9890a + " - canceled");
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void failed(Throwable th) {
                    Logger.error("LocaleManager", "Failed to download fresh translations for " + this.f9890a, th);
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                    String str;
                    String resultAsString = httpResponse.getResultAsString();
                    try {
                        JsonValue parse = new JsonReader().parse(resultAsString);
                        boolean z = false;
                        if (parse.getString("status").equals("success")) {
                            Iterator<JsonValue> iterator2 = parse.get("files").iterator2();
                            boolean z2 = false;
                            while (iterator2.hasNext()) {
                                JsonValue next = iterator2.next();
                                String string = next.getString("locale");
                                String string2 = next.getString("contents");
                                if (string.equals("en_US")) {
                                    str = "i18n/MainBundle.properties";
                                } else {
                                    str = "i18n/MainBundle_" + string + ".properties";
                                }
                                synchronized (LocaleManager.this.f9887d) {
                                    Gdx.files.local(str).writeString(string2, false, "UTF-8");
                                    Logger.log("LocaleManager", "updated translations for " + string);
                                    z2 = true;
                                }
                            }
                            z = z2;
                        } else {
                            Logger.error("LocaleManager", resultAsString);
                        }
                        if (z) {
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.o
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LocaleManager.RunnableC18191.C18201.this.m21579b();
                                }
                            });
                        } else {
                            Logger.log("LocaleManager", "locales are up to date");
                        }
                    } catch (Exception e) {
                        Logger.error("LocaleManager", "Failed to download fresh translations", e);
                    }
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                String str;
                String locale = LocaleManager.this.getLocale();
                Logger.log("LocaleManager", "locale: " + locale);
                String md5Hash = StringFormatter.md5Hash(Gdx.files.local("i18n/MainBundle.properties").readString("UTF-8"));
                if (!locale.equals("en_US")) {
                    Files files = Gdx.files;
                    str = StringFormatter.md5Hash(files.local("i18n/MainBundle_" + locale + ".properties").readString("UTF-8"));
                } else {
                    str = null;
                }
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.GLOBAL_SITE_URL + "/?m=api&a=downloadTranslations" + Config.SITE_SHARED_GET_PART);
                HashMap hashMap = new HashMap();
                hashMap.put("build", String.valueOf(184));
                hashMap.put("locale", locale);
                hashMap.put("mainHash", md5Hash);
                if (str != null) {
                    hashMap.put("selectedLocaleHash", str);
                }
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                Logger.log("LocaleManager", "downloading fresh translations for " + locale);
                Gdx.f38302net.sendHttpRequest(httpRequest, new C18201(locale));
            }
        });
        thread.setDaemon(true);
        thread.start();
        Logger.handleThreadExceptionsForgiving(thread);
    }
}

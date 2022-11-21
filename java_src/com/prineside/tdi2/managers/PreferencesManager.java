package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.ByteArray;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.kryo.FixedInput;
import com.prineside.kryo.FixedOutput;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.Map;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class PreferencesManager extends Manager.ManagerAdapter {

    /* renamed from: r */
    public static final ObjectMap<String, String> f9932r = new ObjectMap<>();

    /* renamed from: s */
    public static final FixedOutput f9933s = new FixedOutput(1024, -1);

    /* renamed from: t */
    public static final FixedInput f9934t = new FixedInput();

    /* renamed from: b */
    public final byte[] f9936b;

    /* renamed from: p */
    public boolean f9939p;

    /* renamed from: a */
    public final ObjectMap<String, SafePreferences> f9935a = new ObjectMap<>();

    /* renamed from: d */
    public boolean f9937d = false;

    /* renamed from: k */
    public final DelayedRemovalArray<PreferencesManagerListener> f9938k = new DelayedRemovalArray<>(false, 1);

    /* renamed from: q */
    public final ObjectMap<String, SafePreferences> f9940q = new ObjectMap<>();

    /* renamed from: com.prineside.tdi2.managers.PreferencesManager$1 */
    /* loaded from: classes2.dex */
    public class C18321 implements Net.HttpResponseListener {

        /* renamed from: a */
        public final /* synthetic */ ObjectRetriever f9941a;

        /* renamed from: b */
        public final /* synthetic */ boolean f9942b;

        public C18321(ObjectRetriever objectRetriever, boolean z) {
            this.f9941a = objectRetriever;
            this.f9942b = z;
        }

        /* renamed from: g */
        public static /* synthetic */ void m21558g(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.FALSE);
        }

        /* renamed from: h */
        public static /* synthetic */ void m21557h(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.FALSE);
        }

        /* renamed from: i */
        public static /* synthetic */ void m21556i() {
            Game game = Game.f8589i;
            game.uiManager.notifications.add(game.localeManager.i18n.get("cant_load_from_cloud_need_update"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
        }

        /* renamed from: j */
        public static /* synthetic */ void m21555j(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.FALSE);
        }

        /* renamed from: k */
        public static /* synthetic */ void m21554k(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.TRUE);
        }

        /* renamed from: l */
        public static /* synthetic */ void m21553l(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.FALSE);
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void cancelled() {
            Logger.error("PreferencesManager", "canceled to send backup request");
            final ObjectRetriever objectRetriever = this.f9941a;
            if (objectRetriever != null) {
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreferencesManager.C18321.m21558g(ObjectRetriever.this);
                    }
                });
            }
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void failed(Throwable th) {
            Logger.error("PreferencesManager", "failed to send backup request", th);
            final ObjectRetriever objectRetriever = this.f9941a;
            if (objectRetriever != null) {
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreferencesManager.C18321.m21557h(ObjectRetriever.this);
                    }
                });
            }
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void handleHttpResponse(Net.HttpResponse httpResponse) {
            String resultAsString = httpResponse.getResultAsString();
            Logger.log("PreferencesManager", resultAsString);
            try {
                JsonValue parse = new JsonReader().parse(resultAsString);
                int i = parse.getInt("build");
                if (i > 184) {
                    Logger.error("PreferencesManager", "backup is build " + i);
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.r
                        @Override // java.lang.Runnable
                        public final void run() {
                            PreferencesManager.C18321.m21556i();
                        }
                    });
                    final ObjectRetriever objectRetriever = this.f9941a;
                    if (objectRetriever != null) {
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.s
                            @Override // java.lang.Runnable
                            public final void run() {
                                PreferencesManager.C18321.m21555j(ObjectRetriever.this);
                            }
                        });
                        return;
                    }
                    return;
                }
                PreferencesManager.this.loadFromCompactBase64(parse.getString("progress"), this.f9942b);
                final ObjectRetriever objectRetriever2 = this.f9941a;
                if (objectRetriever2 != null) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            PreferencesManager.C18321.m21554k(ObjectRetriever.this);
                        }
                    });
                }
            } catch (Exception e) {
                Logger.error("PreferencesManager", "failed to load backup", e);
                final ObjectRetriever objectRetriever3 = this.f9941a;
                if (objectRetriever3 != null) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.u
                        @Override // java.lang.Runnable
                        public final void run() {
                            PreferencesManager.C18321.m21553l(ObjectRetriever.this);
                        }
                    });
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface PreferencesManagerListener {

        /* loaded from: classes2.dex */
        public static class PreferencesManagerListenerAdapter implements PreferencesManagerListener {
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
            }

            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void temporaryModeUpdated() {
            }
        }

        void reloaded();

        void temporaryModeUpdated();
    }

    /* loaded from: classes2.dex */
    public static class SafePreferences {

        /* renamed from: a */
        public final Preferences f9944a;

        /* renamed from: b */
        public final byte[] f9945b;

        /* renamed from: c */
        public final String f9946c;

        /* renamed from: b */
        public static char m21551b(char c, int i) {
            return (char) ((((((c - 32) + i) % 94) + 94) % 94) + 32);
        }

        public ObjectMap<String, String> getAll() {
            m21550c();
            ObjectMap<String, String> objectMap = new ObjectMap<>();
            synchronized (this.f9944a) {
                for (Map.Entry<String, ?> entry : this.f9944a.get().entrySet()) {
                    if (entry.getValue() instanceof String) {
                        objectMap.put(entry.getKey(), get(entry.getKey(), ""));
                    } else {
                        Logger.log("SafePreferences", "getAll - invalid data type for key '" + entry.getKey() + "' : " + entry.getValue().getClass().getName());
                    }
                }
            }
            return objectMap;
        }

        public String getName() {
            return this.f9946c;
        }

        /* renamed from: a */
        public static String m21552a(String str, byte[] bArr) {
            if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                return str;
            }
            char[] charArray = str.toCharArray();
            int i = 0;
            for (int i2 = 0; i2 < charArray.length; i2++) {
                charArray[i2] = m21551b(charArray[i2], -(((i2 + i2) + charArray.length) - bArr[i]));
                i++;
                if (i == bArr.length) {
                    i = 0;
                }
            }
            return new String(charArray);
        }

        /* renamed from: c */
        public final void m21550c() {
            if (!Game.f8589i.preferencesManager.f9939p) {
                return;
            }
            throw new IllegalStateException("Preferences are in temporary mode - can't access real preferences");
        }

        public SafePreferences(String str, byte[] bArr) {
            this.f9946c = str;
            if (!Config.isHeadless()) {
                this.f9944a = Gdx.app.getPreferences(str);
            } else {
                this.f9944a = new Preferences() { // from class: com.prineside.tdi2.managers.PreferencesManager.SafePreferences.1
                    @Override // com.badlogic.gdx.Preferences
                    public void clear() {
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public boolean contains(String str2) {
                        return false;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public void flush() {
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public Map<String, ?> get() {
                        return null;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public boolean getBoolean(String str2) {
                        return false;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public boolean getBoolean(String str2, boolean z) {
                        return false;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public float getFloat(String str2) {
                        return 0.0f;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public float getFloat(String str2, float f) {
                        return 0.0f;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public int getInteger(String str2) {
                        return 0;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public int getInteger(String str2, int i) {
                        return 0;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public long getLong(String str2) {
                        return 0L;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public long getLong(String str2, long j) {
                        return 0L;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public String getString(String str2) {
                        return null;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public String getString(String str2, String str3) {
                        return null;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public Preferences put(Map<String, ?> map) {
                        return this;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public Preferences putBoolean(String str2, boolean z) {
                        return this;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public Preferences putFloat(String str2, float f) {
                        return this;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public Preferences putInteger(String str2, int i) {
                        return this;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public Preferences putLong(String str2, long j) {
                        return this;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public Preferences putString(String str2, String str3) {
                        return this;
                    }

                    @Override // com.badlogic.gdx.Preferences
                    public void remove(String str2) {
                    }
                };
            }
            this.f9945b = bArr;
        }

        public void clear() {
            m21550c();
            synchronized (this.f9944a) {
                this.f9944a.clear();
            }
            flush();
        }

        public boolean contains(String str) {
            boolean contains;
            m21550c();
            synchronized (this.f9944a) {
                contains = this.f9944a.contains(str);
            }
            return contains;
        }

        public void flush() {
            if (Config.isHeadless()) {
                return;
            }
            m21550c();
            synchronized (this.f9944a) {
                this.f9944a.flush();
            }
        }

        public String get(String str, String str2) {
            m21550c();
            synchronized (this.f9944a) {
                if (this.f9944a.contains(str)) {
                    if (Config.preferencesEncryptionEnabled()) {
                        String string = this.f9944a.getString(str);
                        try {
                            return StringFormatter.stringFromCompactBase64(string);
                        } catch (Exception unused) {
                            try {
                                str2 = new String(Base64Coder.decode(m21552a(string, this.f9945b)));
                            } catch (Exception e) {
                                Logger.error("SafePreferences", "Unable to decode Base64 for key '" + str + "': " + e.getMessage() + " (" + string + ")", e);
                                remove(str);
                                flush();
                            }
                            return str2;
                        }
                    }
                    return this.f9944a.getString(str);
                }
                return str2;
            }
        }

        public void remove(String str) {
            m21550c();
            synchronized (this.f9944a) {
                this.f9944a.remove(str);
            }
            flush();
        }

        public void set(String str, String str2) {
            m21550c();
            synchronized (this.f9944a) {
                if (Config.preferencesEncryptionEnabled()) {
                    this.f9944a.putString(str, StringFormatter.stringToCompactBase64(str2));
                } else {
                    this.f9944a.putString(str, str2);
                }
            }
        }

        public void getAll(ObjectMap<String, String> objectMap) {
            m21550c();
            synchronized (this.f9944a) {
                for (Map.Entry<String, ?> entry : this.f9944a.get().entrySet()) {
                    if (entry.getValue() instanceof String) {
                        objectMap.put(entry.getKey(), get(entry.getKey(), ""));
                    } else {
                        Logger.log("SafePreferences", "getAll - invalid data type for key '" + entry.getKey() + "' : " + entry.getValue().getClass().getName());
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<PreferencesManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public PreferencesManager read() {
            return Game.f8589i.preferencesManager;
        }
    }

    /* loaded from: classes2.dex */
    public class TemporarySafePreferences extends SafePreferences {

        /* renamed from: d */
        public final ObjectMap<String, String> f9948d;

        public /* synthetic */ TemporarySafePreferences(PreferencesManager preferencesManager, String str, C18321 c18321) {
            this(str);
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public void clear() {
            synchronized (this) {
                this.f9948d.clear();
            }
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public boolean contains(String str) {
            boolean containsKey;
            synchronized (this) {
                containsKey = this.f9948d.containsKey(str);
            }
            return containsKey;
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public void flush() {
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public String get(String str, String str2) {
            synchronized (this) {
                if (this.f9948d.containsKey(str)) {
                    return this.f9948d.get(str);
                }
                return str2;
            }
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public ObjectMap<String, String> getAll() {
            return this.f9948d;
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public void remove(String str) {
            synchronized (this) {
                this.f9948d.remove(str);
            }
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public void set(String str, String str2) {
            synchronized (this) {
                this.f9948d.put(str, str2);
            }
        }

        public TemporarySafePreferences(String str) {
            super(str, new byte[]{14, 1, 93, -7, -71, -29, 98, 39});
            this.f9948d = new ObjectMap<>();
        }

        @Override // com.prineside.tdi2.managers.PreferencesManager.SafePreferences
        public void getAll(ObjectMap<String, String> objectMap) {
            synchronized (this) {
                objectMap.putAll(this.f9948d);
            }
        }
    }

    /* renamed from: c */
    public static /* synthetic */ void m21565c(ObjectRetriever objectRetriever) {
        objectRetriever.retrieved(Boolean.FALSE);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public boolean isTemporarySettingsApplied() {
        return this.f9939p;
    }

    public void loadFromCompactBase64(String str, boolean z) {
        loadFromBytes(StringFormatter.fromBase64(str), z);
    }

    public void addListener(PreferencesManagerListener preferencesManagerListener) {
        if (preferencesManagerListener != null) {
            if (!this.f9938k.contains(preferencesManagerListener, true)) {
                this.f9938k.add(preferencesManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void clearTemporaryPreferences() {
        if (this.f9939p) {
            this.f9940q.clear();
            this.f9939p = false;
            reapplyAllPreferences();
            this.f9938k.begin();
            int i = this.f9938k.size;
            for (int i2 = 0; i2 < i; i2++) {
                this.f9938k.get(i2).temporaryModeUpdated();
            }
            this.f9938k.end();
        }
    }

    public void loadFromBytes(byte[] bArr, boolean z) {
        if (this.f9939p) {
            this.f9940q.clear();
            this.f9939p = false;
            this.f9938k.begin();
            int i = this.f9938k.size;
            for (int i2 = 0; i2 < i; i2++) {
                this.f9938k.get(i2).temporaryModeUpdated();
            }
            this.f9938k.end();
        }
        if (z) {
            for (String str : Config.PREFERENCES_NAMES) {
                getInstance(str).clear();
            }
        }
        ByteArrayOutputStream fromCompactBytes = StringFormatter.fromCompactBytes(bArr, 0, bArr.length);
        FixedInput fixedInput = f9934t;
        fixedInput.setBuffer(fromCompactBytes.toByteArray());
        int readInt = fixedInput.readInt();
        for (int i3 = 0; i3 < readInt; i3++) {
            FixedInput fixedInput2 = f9934t;
            String readString = fixedInput2.readString();
            Logger.log("PreferencesManager", "load from server, pref name: " + readString);
            SafePreferences preferencesManager = getInstance(readString);
            int readInt2 = fixedInput2.readInt();
            for (int i4 = 0; i4 < readInt2; i4++) {
                FixedInput fixedInput3 = f9934t;
                preferencesManager.set(fixedInput3.readString(), fixedInput3.readString());
            }
            preferencesManager.flush();
        }
    }

    public void loadFromJson(JsonValue jsonValue, boolean z) {
        boolean z2;
        if (this.f9939p) {
            this.f9940q.clear();
            this.f9939p = false;
            this.f9938k.begin();
            int i = this.f9938k.size;
            for (int i2 = 0; i2 < i; i2++) {
                this.f9938k.get(i2).temporaryModeUpdated();
            }
            this.f9938k.end();
        }
        if (z) {
            for (String str : Config.PREFERENCES_NAMES) {
                getInstance(str).clear();
            }
        }
        Iterator<JsonValue> iterator2 = jsonValue.iterator2();
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            String[] strArr = Config.PREFERENCES_NAMES;
            int length = strArr.length;
            int i3 = 0;
            while (true) {
                if (i3 < length) {
                    if (next.name.equals(strArr[i3])) {
                        z2 = true;
                        break;
                    }
                    i3++;
                } else {
                    z2 = false;
                    break;
                }
            }
            if (z2) {
                SafePreferences preferencesManager = getInstance(next.name);
                Iterator<JsonValue> iterator22 = next.iterator2();
                while (iterator22.hasNext()) {
                    JsonValue next2 = iterator22.next();
                    preferencesManager.set(next2.name, next2.asString());
                }
                preferencesManager.flush();
            } else {
                Logger.error("PreferencesManager", "skipped loading preferences name '" + next.name + "' from json because it is not valid");
            }
        }
    }

    public void loadFromUrl(String str, boolean z, final ObjectRetriever<Boolean> objectRetriever) {
        Logger.log("PreferencesManager", "loading backup from " + str);
        try {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(str);
            Gdx.f38302net.sendHttpRequest(httpRequest, new C18321(objectRetriever, z));
        } catch (Exception e) {
            Logger.error("PreferencesManager", "failed to send backup request", e);
            if (objectRetriever != null) {
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreferencesManager.m21565c(ObjectRetriever.this);
                    }
                });
            }
        }
    }

    public void reapplyAllPreferences() {
        if (!this.f9937d) {
            try {
                this.f9937d = true;
                this.f9938k.begin();
                int i = this.f9938k.size;
                for (int i2 = 0; i2 < i; i2++) {
                    this.f9938k.get(i2).reloaded();
                }
                this.f9938k.end();
                return;
            } finally {
                this.f9937d = false;
            }
        }
        throw new IllegalStateException("Calling reapplyAllPreferences from PreferencesManagerListener.reloaded");
    }

    public void removeListener(PreferencesManagerListener preferencesManagerListener) {
        if (preferencesManagerListener != null) {
            this.f9938k.removeValue(preferencesManagerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void resetEverything() {
        for (String str : Config.PREFERENCES_NAMES) {
            getInstance(str).clear();
        }
        Logger.log("PreferencesManager", "all preferences removed");
        reapplyAllPreferences();
    }

    public ByteArray saveSnapshot(Array<String> array) {
        Game.f8589i.progressManager.saveIfRequired();
        Game.f8589i.researchManager.saveIfRequired();
        FixedOutput fixedOutput = f9933s;
        fixedOutput.clear();
        fixedOutput.writeInt(array.size);
        for (int i = 0; i < array.size; i++) {
            String str = array.get(i);
            SafePreferences preferencesManager = getInstance(str);
            ObjectMap<String, String> objectMap = f9932r;
            objectMap.clear();
            preferencesManager.getAll(objectMap);
            FixedOutput fixedOutput2 = f9933s;
            fixedOutput2.writeString(str);
            fixedOutput2.writeInt(objectMap.size);
            ObjectMap.Entries<String, String> it = objectMap.iterator();
            while (it.hasNext()) {
                ObjectMap.Entry next = it.next();
                FixedOutput fixedOutput3 = f9933s;
                fixedOutput3.writeString((String) next.key);
                fixedOutput3.writeString((String) next.value);
            }
        }
        FixedOutput fixedOutput4 = f9933s;
        return StringFormatter.compactBytes(fixedOutput4.getBuffer(), 0, fixedOutput4.position());
    }

    public void setTemporaryPreferences(byte[] bArr) {
        this.f9940q.clear();
        this.f9939p = true;
        FixedInput fixedInput = f9934t;
        fixedInput.setBuffer(StringFormatter.fromCompactBytes(bArr, 0, bArr.length).toByteArray());
        int readInt = fixedInput.readInt();
        for (int i = 0; i < readInt; i++) {
            FixedInput fixedInput2 = f9934t;
            SafePreferences preferencesManager = getInstance(fixedInput2.readString());
            int readInt2 = fixedInput2.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                FixedInput fixedInput3 = f9934t;
                preferencesManager.set(fixedInput3.readString(), fixedInput3.readString());
            }
            preferencesManager.flush();
        }
        reapplyAllPreferences();
        this.f9938k.begin();
        int i3 = this.f9938k.size;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f9938k.get(i4).temporaryModeUpdated();
        }
        this.f9938k.end();
    }

    public PreferencesManager(String str) {
        if (str != null && str.length() >= 4) {
            char[] charArray = (str.length() > 64 ? str.substring(0, 64) : str).toCharArray();
            byte[] bArr = new byte[charArray.length];
            for (int i = 0; i < charArray.length; i++) {
                bArr[i] = (byte) (charArray[i] - 'n');
            }
            this.f9936b = bArr;
            return;
        }
        this.f9936b = new byte[]{14, 1, 93, -7, -71, -29, 98, 39};
    }

    public SafePreferences getInstance(String str) {
        if (Config.isModdingMode()) {
            str = str + ".mod-" + Config.getModId();
        }
        if (this.f9939p) {
            if (this.f9940q.containsKey(str)) {
                return this.f9940q.get(str);
            }
            TemporarySafePreferences temporarySafePreferences = new TemporarySafePreferences(this, str, null);
            this.f9940q.put(str, temporarySafePreferences);
            return temporarySafePreferences;
        } else if (this.f9935a.containsKey(str)) {
            return this.f9935a.get(str);
        } else {
            SafePreferences safePreferences = new SafePreferences(str, this.f9936b);
            this.f9935a.put(str, safePreferences);
            return safePreferences;
        }
    }

    public String saveSnapshotAsString(Array<String> array) {
        ByteArray saveSnapshot = saveSnapshot(array);
        return StringFormatter.toBase64(saveSnapshot.items, 0, saveSnapshot.size);
    }
}

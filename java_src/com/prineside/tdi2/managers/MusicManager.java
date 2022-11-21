package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.ibxm.Instrument;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.music.LiveMusicManager;
import com.prineside.tdi2.p036ui.shared.Notifications;
import com.prineside.tdi2.serializers.SingletonSerializer;
import java.io.ByteArrayInputStream;
import java.io.StringWriter;
import java.lang.ref.SoftReference;
import java.util.Comparator;
import java.util.Iterator;
import p218x1.C7221i;
/* loaded from: classes2.dex */
public abstract class MusicManager extends Manager.ManagerAdapter {
    public static final float DEFAULT_VOLUME_CHANGE_SPEED = 2.0f;

    /* renamed from: v */
    public static final Color f9905v = new Color(0.0f, 0.0f, 0.0f, 0.78f);

    /* renamed from: w */
    public static final Array<ModuleCacheConfig> f9906w = new Array<>(ModuleCacheConfig.class);

    /* renamed from: x */
    public static final Comparator<ModuleCacheConfig> f9907x = new Comparator<ModuleCacheConfig>() { // from class: com.prineside.tdi2.managers.MusicManager.1
        @Override // java.util.Comparator
        public int compare(ModuleCacheConfig moduleCacheConfig, ModuleCacheConfig moduleCacheConfig2) {
            return C7221i.m2085a(moduleCacheConfig2.lastUsed, moduleCacheConfig.lastUsed);
        }
    };

    /* renamed from: k */
    public boolean f9911k;

    /* renamed from: p */
    public boolean f9912p;

    /* renamed from: q */
    public float f9913q;

    /* renamed from: r */
    public boolean f9914r;

    /* renamed from: s */
    public float f9915s;

    /* renamed from: a */
    public float f9908a = 0.0f;

    /* renamed from: b */
    public float f9909b = 1.0f;

    /* renamed from: d */
    public float f9910d = 0.0f;
    public Array<MusicSource> menuThemeSources = new Array<>(false, 1, MusicSource.class);
    public IntArray thumbsUpMusicHashes = new IntArray();

    /* renamed from: t */
    public final IntMap<SoftReference<ModuleCacheConfig>> f9916t = new IntMap<>();

    /* renamed from: u */
    public final IntIntMap f9917u = new IntIntMap();

    /* loaded from: classes2.dex */
    public static class ModuleCacheConfig {
        public int hash;
        public int lastUsed;
        public Module module;
        public int size;
    }

    /* loaded from: classes2.dex */
    public static class MusicSource {
        public static final MusicSource DEFAULT = new MusicSource(MusicSourceType.DEFAULT, null);

        /* renamed from: id */
        public String f9921id;
        public int repeats = 1;
        public MusicSourceType type;

        public String toString() {
            return super.toString() + " (" + this.type + ":" + this.f9921id + ")";
        }

        public static MusicSource fromJson(JsonValue jsonValue) {
            try {
                MusicSourceType valueOf = MusicSourceType.valueOf(jsonValue.getString("type", MusicSourceType.DEFAULT.name()));
                String string = jsonValue.getString("id", null);
                int i = jsonValue.getInt("repeats", 1);
                MusicSource musicSource = new MusicSource(valueOf, string);
                musicSource.repeats = i;
                return musicSource;
            } catch (Exception e) {
                Logger.error("MusicManager", "failed MusicSource.fromJson: " + jsonValue.toString(), e);
                return DEFAULT;
            }
        }

        public String getBase64() {
            MusicSourceType musicSourceType = this.type;
            if (musicSourceType == MusicSourceType.BASIC_LEVEL) {
                return Game.f8589i.basicLevelManager.getLevel(this.f9921id).getMap().xmMusicTrackTile.getTrackBase64();
            }
            if (musicSourceType == MusicSourceType.USER_MAP) {
                return Game.f8589i.userMapManager.getUserMap(this.f9921id).map.xmMusicTrackTile.getTrackBase64();
            }
            return null;
        }

        public Module getModule() {
            MusicSourceType musicSourceType = this.type;
            if (musicSourceType == MusicSourceType.BASIC_LEVEL) {
                try {
                    return Game.f8589i.basicLevelManager.getLevel(this.f9921id).getMap().xmMusicTrackTile.getModule();
                } catch (Exception unused) {
                    return null;
                }
            }
            if (musicSourceType == MusicSourceType.USER_MAP) {
                try {
                    return Game.f8589i.userMapManager.getUserMap(this.f9921id).map.xmMusicTrackTile.getModule();
                } catch (Exception unused2) {
                }
            }
            return null;
        }

        public boolean sameAs(MusicSource musicSource) {
            String str;
            MusicSourceType musicSourceType = this.type;
            if (musicSourceType != musicSource.type) {
                return false;
            }
            if (musicSourceType != MusicSourceType.DEFAULT && (str = this.f9921id) != null && !str.equals(musicSource.f9921id)) {
                return false;
            }
            return true;
        }

        public void toJson(Json json) {
            json.writeValue("type", this.type.name());
            String str = this.f9921id;
            if (str != null) {
                json.writeValue("id", str);
            }
            int i = this.repeats;
            if (i > 1) {
                json.writeValue("repeats", Integer.valueOf(i));
            }
        }

        public MusicSource(MusicSourceType musicSourceType, String str) {
            this.type = musicSourceType;
            this.f9921id = str;
        }
    }

    /* loaded from: classes2.dex */
    public enum MusicSourceType {
        DEFAULT,
        BASIC_LEVEL,
        USER_MAP;
        
        public static final MusicSourceType[] values = values();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<MusicManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public MusicManager read() {
            return Game.f8589i.musicManager;
        }
    }

    public static MusicManager createSelfSetuppingDummy() {
        return new MusicManager() { // from class: com.prineside.tdi2.managers.MusicManager.5
            @Override // com.prineside.tdi2.managers.MusicManager
            public Module getPlayingMusic() {
                Logger.log("MusicManager", "music manager is not set up yet");
                return null;
            }

            @Override // com.prineside.tdi2.managers.MusicManager
            public void playMusic(Module module, float f) {
                Logger.log("MusicManager", "music manager is not set up yet");
            }

            @Override // com.prineside.tdi2.managers.MusicManager
            public void setBackendVolume(float f) {
                Logger.log("MusicManager", "music manager is not set up yet");
            }

            @Override // com.prineside.tdi2.managers.MusicManager
            public void stopMusic() {
                Logger.log("MusicManager", "music manager is not set up yet");
            }

            @Override // com.prineside.tdi2.managers.MusicManager, com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
            public void setup() {
                if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                    Game game = Game.f8589i;
                    game.musicManager = game.actionResolver.getCachedMusicManager();
                } else {
                    Game.f8589i.musicManager = new LiveMusicManager();
                }
                int indexOf = Game.f8589i.managers.indexOf(this, true);
                Game.f8589i.managers.removeIndex(indexOf);
                Game game2 = Game.f8589i;
                game2.managers.insert(indexOf, game2.musicManager);
                Game.f8589i.musicManager.setup();
                Logger.log("MusicManager", "music manager replaced");
            }
        };
    }

    /* renamed from: c */
    public float m21576c() {
        return (float) Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.MUSIC_VOLUME);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        saveIfRequired();
    }

    public MusicSource getCurrentlyPlayingMenuThemeSource() {
        return this.menuThemeSources.first();
    }

    public int getInterpolation() {
        return Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SMOOTH_MUSIC) == 0.0d ? 0 : 1;
    }

    public int getMenuMusicSourceRepeatCount(MusicSource musicSource) {
        int i = 0;
        while (true) {
            Array<MusicSource> array = this.menuThemeSources;
            if (i < array.size) {
                MusicSource musicSource2 = array.items[i];
                if (musicSource2.sameAs(musicSource)) {
                    return musicSource2.repeats;
                }
                i++;
            } else {
                return 1;
            }
        }
    }

    public Array<MusicSource> getMenuThemeSources() {
        return this.menuThemeSources;
    }

    public abstract Module getPlayingMusic();

    public boolean isMenuMusicSourceEnabled(MusicSource musicSource) {
        int i = 0;
        while (true) {
            Array<MusicSource> array = this.menuThemeSources;
            if (i >= array.size) {
                return false;
            }
            if (array.items[i].sameAs(musicSource)) {
                return true;
            }
            i++;
        }
    }

    public boolean isMusicThumbsUp(int i) {
        return this.thumbsUpMusicHashes.contains(i);
    }

    public abstract void playMusic(Module module, float f);

    public void removeMenuMusicSource(MusicSource musicSource) {
        int i = 0;
        while (true) {
            Array<MusicSource> array = this.menuThemeSources;
            if (i < array.size) {
                if (musicSource.sameAs(array.items[i])) {
                    this.menuThemeSources.removeIndex(i);
                    Array<MusicSource> array2 = this.menuThemeSources;
                    if (array2.size == 0) {
                        array2.add(MusicSource.DEFAULT);
                        return;
                    }
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public void requireSave() {
        this.f9914r = true;
    }

    public void save() {
        int i = 0;
        this.f9914r = false;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        int i2 = 0;
        while (true) {
            IntArray intArray = this.thumbsUpMusicHashes;
            if (i2 >= intArray.size) {
                break;
            }
            json.writeValue(Integer.valueOf(intArray.items[i2]));
            i2++;
        }
        json.writeArrayEnd();
        preferencesManager.set("thumbsUpMusicHashes", stringWriter.toString());
        Json json2 = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter2 = new StringWriter();
        json2.setWriter(stringWriter2);
        json2.writeArrayStart();
        while (true) {
            Array<MusicSource> array = this.menuThemeSources;
            if (i < array.size) {
                MusicSource musicSource = array.items[i];
                json2.writeObjectStart();
                musicSource.toJson(json2);
                json2.writeObjectEnd();
                i++;
            } else {
                json2.writeArrayEnd();
                preferencesManager.set("menuThemeSources", stringWriter2.toString());
                preferencesManager.flush();
                Logger.log("MusicManager", "saved");
                return;
            }
        }
    }

    public void saveIfRequired() {
        if (this.f9914r) {
            save();
        }
    }

    public abstract void setBackendVolume(float f);

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        this.f9912p = true;
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.MusicManager.2
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                MusicManager.this.reload();
            }
        });
        Game.f8589i.settingsManager.addListener(new SettingsManager.SettingsManagerListener.SettingsManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.MusicManager.3
            @Override // com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener.SettingsManagerListenerAdapter, com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener
            public void customValueChanged(SettingsManager.CustomValueType customValueType, double d) {
                if (customValueType == SettingsManager.CustomValueType.MUSIC_VOLUME) {
                    MusicManager musicManager = MusicManager.this;
                    musicManager.setVolume(musicManager.f9909b, 0.0f, false);
                }
            }
        });
        reload();
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.MusicManager.4
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                MusicManager.this.saveIfRequired();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }
        });
    }

    public abstract void stopMusic();

    public void voteThumbsUp(int i, boolean z) {
        if (z) {
            if (!this.thumbsUpMusicHashes.contains(i)) {
                this.thumbsUpMusicHashes.add(i);
                this.f9914r = true;
            }
        } else if (this.thumbsUpMusicHashes.removeValue(i)) {
            this.f9914r = true;
        }
    }

    public void continuePlayingMenuMusicTrack() {
        if (!Game.f8589i.settingsManager.isMusicEnabled()) {
            stopMusic();
            return;
        }
        Module module = getCurrentlyPlayingMenuThemeSource().getModule();
        if (module == null) {
            module = Game.f8589i.assetManager.getMenuXmSoundTrack();
        }
        if (module == null) {
            stopMusic();
            return;
        }
        if (getPlayingMusic() == null || !getPlayingMusic().songName.equals(module.songName)) {
            playMusic(module, 1.0f);
            Logger.log("MusicManager", "started menu music");
        }
        setVolume(1.0f, 1.0f, false);
    }

    /* renamed from: d */
    public final void m21575d() {
        f9906w.clear();
        int timestampSeconds = Game.getTimestampSeconds();
        Iterator<IntMap.Entry<SoftReference<ModuleCacheConfig>>> it = this.f9916t.iterator();
        IntArray intArray = null;
        while (it.hasNext()) {
            IntMap.Entry<SoftReference<ModuleCacheConfig>> next = it.next();
            ModuleCacheConfig moduleCacheConfig = next.value.get();
            if (moduleCacheConfig != null) {
                if (timestampSeconds - moduleCacheConfig.lastUsed > 300) {
                    if (intArray == null) {
                        intArray = new IntArray();
                    }
                    intArray.add(next.key);
                } else {
                    f9906w.add(moduleCacheConfig);
                }
            } else {
                if (intArray == null) {
                    intArray = new IntArray();
                }
                intArray.add(next.key);
            }
        }
        Array<ModuleCacheConfig> array = f9906w;
        int i = 5;
        if (array.size > 5) {
            array.sort(f9907x);
            while (true) {
                Array<ModuleCacheConfig> array2 = f9906w;
                if (i >= array2.size) {
                    break;
                }
                if (intArray == null) {
                    intArray = new IntArray();
                }
                intArray.add(array2.items[i].hash);
                i++;
            }
        }
        if (intArray != null) {
            for (int i2 = 0; i2 < intArray.size; i2++) {
                this.f9916t.remove(intArray.items[i2]);
            }
        }
        f9906w.clear();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        String str;
        if (!this.f9912p) {
            return;
        }
        float f2 = this.f9908a;
        float f3 = this.f9910d;
        if (f3 != 0.0f) {
            float f4 = this.f9909b;
            if (f2 != f4) {
                float f5 = f4 - f2;
                float abs = (f3 * f) / StrictMath.abs(f5);
                if (abs >= 1.0f) {
                    this.f9908a = this.f9909b;
                } else {
                    this.f9908a = (f5 * abs) + f2;
                }
                setBackendVolume(this.f9908a);
            } else {
                this.f9910d = 0.0f;
            }
        }
        if (this.f9911k && f2 == 0.0f) {
            stopMusic();
            this.f9911k = false;
        }
        float f6 = this.f9915s + f;
        this.f9915s = f6;
        if (f6 > 60.0f) {
            this.f9915s = 0.0f;
            m21575d();
        }
        if (this.f9914r) {
            float f7 = this.f9913q + f;
            this.f9913q = f7;
            if (f7 > 30.0f) {
                this.f9913q = 0.0f;
                saveIfRequired();
            }
        }
        StringBuilder registerValue = Game.f8589i.debugManager.registerValue("Music");
        if (registerValue != null) {
            StringBuilder append = registerValue.append("v:").append((int) (this.f9908a * 100.0f)).append("% ");
            if (getPlayingMusic() == null) {
                str = "NP";
            } else {
                str = "P";
            }
            append.append(str);
        }
    }

    public final void reload() {
        this.thumbsUpMusicHashes.clear();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        try {
            Iterator<JsonValue> iterator2 = new JsonReader().parse(preferencesManager.get("thumbsUpMusicHashes", "[]")).iterator2();
            while (iterator2.hasNext()) {
                this.thumbsUpMusicHashes.add(iterator2.next().asInt());
            }
        } catch (Exception e) {
            Logger.error("MusicManager", "failed to load thumbsUpMusicHashes", e);
        }
        try {
            addMenuMusicSource(new MusicSource(MusicSourceType.valueOf(preferencesManager.get("menuThemeSource", MusicSourceType.DEFAULT.name())), preferencesManager.get("menuThemeSourceId", null)));
            preferencesManager.remove("menuThemeSource");
            preferencesManager.remove("menuThemeSourceId");
            this.f9914r = true;
        } catch (Exception e2) {
            Logger.error("MusicManager", "failed to load menuThemeSource", e2);
        }
        String str = preferencesManager.get("menuThemeSources", null);
        if (str != null) {
            try {
                Iterator<JsonValue> iterator22 = new JsonReader().parse(str).iterator2();
                while (iterator22.hasNext()) {
                    addMenuMusicSource(MusicSource.fromJson(iterator22.next()));
                }
            } catch (Exception e3) {
                Logger.error("MusicManager", "failed to load menuThemeSources from preferences", e3);
            }
        }
        Array<MusicSource> array = this.menuThemeSources;
        if (array.size == 0) {
            array.add(MusicSource.DEFAULT);
        }
    }

    public Notifications.Notification showSongNotification(Module module) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(module.songName).append("[#8a8a8a]");
        for (Instrument instrument : module.instruments) {
            String trim = instrument.name.trim();
            if (trim.length() != 0) {
                stringBuilder.append("\n").append(trim);
            }
        }
        stringBuilder.append("[]");
        Game game = Game.f8589i;
        return game.uiManager.notifications.add(stringBuilder, game.assetManager.getDrawable("icon-note"), f9905v, null);
    }

    public void addMenuMusicSource(MusicSource musicSource) {
        if (isMenuMusicSourceEnabled(musicSource)) {
            return;
        }
        this.menuThemeSources.clear();
        this.menuThemeSources.add(musicSource);
    }

    public Module getModule(String str) {
        ModuleCacheConfig moduleCacheConfig;
        int musicB64hash = getMusicB64hash(str);
        synchronized (this.f9916t) {
            if (this.f9916t.containsKey(musicB64hash) && (moduleCacheConfig = this.f9916t.get(musicB64hash).get()) != null) {
                return moduleCacheConfig.module;
            }
            try {
                Module fromZipInputStream = Module.fromZipInputStream(new ByteArrayInputStream(Base64Coder.decode(str)));
                ModuleCacheConfig moduleCacheConfig2 = new ModuleCacheConfig();
                moduleCacheConfig2.hash = musicB64hash;
                moduleCacheConfig2.module = fromZipInputStream;
                moduleCacheConfig2.lastUsed = Game.getTimestampSeconds();
                moduleCacheConfig2.size = str.length();
                synchronized (this.f9916t) {
                    this.f9916t.put(musicB64hash, new SoftReference<>(moduleCacheConfig2));
                }
                m21575d();
                return fromZipInputStream;
            } catch (Exception e) {
                throw new IllegalStateException("failed to read module from base64", e);
            }
        }
    }

    public int getMusicB64hash(String str) {
        int i;
        int hashCode = str.hashCode();
        synchronized (this.f9917u) {
            i = this.f9917u.get(hashCode, 0);
            if (i == 0) {
                int length = str.length();
                int i2 = 1;
                for (int i3 = 0; i3 < length; i3++) {
                    i2 = (i2 * 31) + str.charAt(i3);
                }
                this.f9917u.put(hashCode, i2);
                i = i2;
            }
        }
        return i;
    }

    public void setVolume(float f, float f2, boolean z) {
        if (Config.isHeadless()) {
            return;
        }
        this.f9909b = f;
        if (f2 <= 0.0f) {
            if (f <= 0.0f) {
                if (z) {
                    this.f9911k = false;
                    stopMusic();
                    return;
                }
                this.f9908a = 0.0f;
                setBackendVolume(0.0f);
                return;
            }
            this.f9908a = f;
            setBackendVolume(f);
            return;
        }
        this.f9910d = f2;
        this.f9911k = z;
    }
}

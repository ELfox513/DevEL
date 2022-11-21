package com.prineside.tdi2.managers.music;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ibxm.IBXM;
import com.prineside.tdi2.ibxm.Instrument;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.ibxm.WavInputStream;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.ScreenManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.shared.Notifications;
import java.io.OutputStream;
import java.io.StringWriter;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p218x1.C7221i;
/* loaded from: classes2.dex */
public abstract class CachedMusicManager extends MusicManager {

    /* renamed from: I */
    public static final byte[] f10264I = new byte[WavInputStream.header.length];

    /* renamed from: A */
    public String f10265A;

    /* renamed from: B */
    public Notifications.Notification f10266B;

    /* renamed from: C */
    public Thread f10267C;

    /* renamed from: D */
    public float f10268D;

    /* renamed from: E */
    public boolean f10269E;

    /* renamed from: G */
    public float f10270G;

    /* renamed from: z */
    public Module f10273z;

    /* renamed from: y */
    public Status f10272y = Status.IDLE;

    /* renamed from: H */
    public Array<CacheStatus> f10271H = new Array<>(false, 1, CacheStatus.class);

    /* loaded from: classes2.dex */
    public static class CacheStatus {
        public int lastPlayTimestamp;
        public String songFileName;

        public CacheStatus() {
        }

        public static CacheStatus fromJson(JsonValue jsonValue) {
            CacheStatus cacheStatus = new CacheStatus();
            cacheStatus.songFileName = jsonValue.getString("sfn", "");
            cacheStatus.lastPlayTimestamp = jsonValue.getInt("lpt", 0);
            return cacheStatus;
        }

        public void toJson(Json json) {
            json.writeValue("sfn", this.songFileName);
            json.writeValue("lpt", Integer.valueOf(this.lastPlayTimestamp));
        }
    }

    /* loaded from: classes2.dex */
    public class FileCacheStatus {

        /* renamed from: a */
        public FileHandle f10281a;

        /* renamed from: b */
        public long f10282b;

        /* renamed from: c */
        public CacheStatus f10283c;

        public FileCacheStatus() {
        }
    }

    /* loaded from: classes2.dex */
    public enum Status {
        IDLE,
        WAITING_CACHE_GENERATION,
        CACHE_GENERATED,
        PLAYING;
        
        public static final Status[] values = values();
    }

    /* renamed from: p */
    public static String m21435p(Module module) {
        Instrument[] instrumentArr;
        String hexString;
        int i = 1;
        int i2 = 0;
        while (true) {
            int[] iArr = module.sequence;
            if (i2 >= iArr.length) {
                break;
            }
            i = (i * 31) + iArr[i2];
            i2++;
        }
        int length = (i * 31) + module.patterns.length;
        for (int i3 = 0; i3 < module.songName.length(); i3++) {
            length = (length * 31) + module.songName.charAt(i3);
        }
        for (Instrument instrument : module.instruments) {
            if (instrument.name.length() != 0) {
                for (int i4 = 0; i4 < instrument.name.length(); i4++) {
                    length = (length * 31) + instrument.name.charAt(i4);
                }
            }
        }
        if (length < 0) {
            hexString = "n" + Integer.toHexString(-length);
        } else {
            hexString = Integer.toHexString(length);
        }
        StringBuilder sb = new StringBuilder();
        String replaceAll = module.songName.replaceAll("[^A-Za-z0-9]", "");
        Locale locale = Locale.ENGLISH;
        sb.append(replaceAll.toLowerCase(locale));
        sb.append("-");
        sb.append(hexString.toLowerCase(locale));
        return sb.toString();
    }

    /* renamed from: q */
    public static String m21434q(Module module, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("cache/music/");
        sb.append(m21435p(module));
        sb.append(z ? "-l" : "");
        sb.append(".wav");
        return sb.toString();
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public Module getPlayingMusic() {
        return this.f10273z;
    }

    public abstract void playCachedMusic(Module module, float f);

    @Override // com.prineside.tdi2.managers.MusicManager
    public void stopMusic() {
        this.f10273z = null;
        this.f10272y = Status.IDLE;
        this.f10265A = null;
    }

    public static double getWavDuration(FileHandle fileHandle) {
        byte[] bArr = f10264I;
        fileHandle.readBytes(bArr, 0, bArr.length);
        int readInt32 = WavInputStream.readInt32(bArr, 24);
        double readInt322 = WavInputStream.readInt32(bArr, 40);
        double d = readInt32;
        Double.isNaN(readInt322);
        Double.isNaN(d);
        return (readInt322 / d) / 4.0d;
    }

    public static boolean isMusicCached(Module module) {
        if (module.restartPos != 0 && !Gdx.files.local(m21434q(module, false)).exists()) {
            return false;
        }
        return Gdx.files.local(m21434q(module, true)).exists();
    }

    /* renamed from: o */
    public final void m21436o() {
        FileHandle[] list;
        int i;
        int i2;
        if (this.f10267C != null) {
            return;
        }
        long j = 0;
        FileHandle local = Gdx.files.local("cache/music/");
        if (local.exists() && local.isDirectory()) {
            for (FileHandle fileHandle : local.list()) {
                try {
                    if (fileHandle.name().endsWith(".wav")) {
                        j += fileHandle.length();
                    }
                } catch (Exception e) {
                    Logger.error("CachedMusicManager", "cleanupCache failed to get size for " + fileHandle.name(), e);
                }
            }
            int i3 = (int) ((j / 1024) / 1024);
            int customValue = (int) Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.MUSIC_CACHE_MAX_SIZE);
            if (i3 > customValue) {
                Logger.log("CachedMusicManager", "music cache limit exceeded, cleaning up (" + i3 + "/" + customValue + " Mb)");
                Array array = new Array(FileCacheStatus.class);
                FileHandle[] list2 = local.list();
                int length = list2.length;
                int i4 = 0;
                while (i4 < length) {
                    FileHandle fileHandle2 = list2[i4];
                    try {
                        if (fileHandle2.name().endsWith(".wav")) {
                            FileCacheStatus fileCacheStatus = new FileCacheStatus();
                            fileCacheStatus.f10281a = fileHandle2;
                            i2 = customValue;
                            try {
                                fileCacheStatus.f10282b = fileHandle2.length();
                                int i5 = 0;
                                while (true) {
                                    Array<CacheStatus> array2 = this.f10271H;
                                    if (i5 >= array2.size) {
                                        break;
                                    }
                                    CacheStatus cacheStatus = array2.items[i5];
                                    if (fileHandle2.name().startsWith(cacheStatus.songFileName)) {
                                        fileCacheStatus.f10283c = cacheStatus;
                                        break;
                                    }
                                    i5++;
                                }
                                array.add(fileCacheStatus);
                            } catch (Exception e2) {
                                e = e2;
                                Logger.error("CachedMusicManager", "cleanupCache failed for " + fileHandle2.name(), e);
                                i4++;
                                customValue = i2;
                            }
                        } else {
                            i2 = customValue;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        i2 = customValue;
                    }
                    i4++;
                    customValue = i2;
                }
                int i6 = customValue;
                long j2 = j;
                for (int i7 = array.size - 1; i7 >= 0; i7--) {
                    if (((FileCacheStatus[]) array.items)[i7].f10283c == null) {
                        FileCacheStatus fileCacheStatus2 = (FileCacheStatus) array.removeIndex(i7);
                        if (this.f10265A == null || !fileCacheStatus2.f10281a.name().startsWith(this.f10265A)) {
                            try {
                                fileCacheStatus2.f10281a.delete();
                                j2 -= fileCacheStatus2.f10282b;
                            } catch (Exception e4) {
                                Logger.error("CachedMusicManager", "failed to delete file with unknown cache " + fileCacheStatus2.f10281a.name(), e4);
                            }
                        }
                    }
                }
                array.sort(new Comparator<FileCacheStatus>() { // from class: com.prineside.tdi2.managers.music.CachedMusicManager.3
                    @Override // java.util.Comparator
                    public int compare(FileCacheStatus fileCacheStatus3, FileCacheStatus fileCacheStatus4) {
                        return C7221i.m2085a(fileCacheStatus3.f10283c.lastPlayTimestamp, fileCacheStatus4.f10283c.lastPlayTimestamp);
                    }
                });
                int i8 = 0;
                while (i8 < array.size && ((int) ((j2 / 1024) / 1024)) >= (i = i6)) {
                    FileCacheStatus fileCacheStatus3 = ((FileCacheStatus[]) array.items)[i8];
                    if (!fileCacheStatus3.f10283c.songFileName.equals(this.f10265A)) {
                        this.f10271H.removeValue(fileCacheStatus3.f10283c, true);
                        try {
                            fileCacheStatus3.f10281a.delete();
                            j2 -= ((FileCacheStatus[]) array.items)[i8].f10282b;
                        } catch (Exception e5) {
                            Logger.error("CachedMusicManager", "failed to delete file " + fileCacheStatus3.f10281a.name(), e5);
                        }
                    }
                    i8++;
                    i6 = i;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public void playMusic(final Module module, final float f) {
        if (module == this.f10273z) {
            return;
        }
        if (module == null) {
            stopMusic();
        }
        this.f9911k = false;
        this.f10273z = module;
        this.f10265A = m21435p(module);
        Notifications.Notification notification = this.f10266B;
        if (notification != null) {
            notification.hide(0.0f);
            this.f10266B = null;
        }
        if (isMusicCached(module)) {
            setBackendVolume(f);
            m21433r(module, f);
            showSongNotification(module);
            return;
        }
        Notifications.Notification showSongNotification = showSongNotification(module);
        this.f10266B = showSongNotification;
        showSongNotification.showDuration = 30.0f;
        this.f10268D = 0.0f;
        this.f10272y = Status.WAITING_CACHE_GENERATION;
        m21430u();
        Thread thread = new Thread(new Runnable() { // from class: com.prineside.tdi2.managers.music.CachedMusicManager.4
            @Override // java.lang.Runnable
            public void run() {
                Logger.log("CachedMusicManager", "caching thread started");
                IBXM ibxm = new IBXM(module, 44100);
                ibxm.setInterpolation(CachedMusicManager.this.getInterpolation());
                byte[] bArr = new byte[4096];
                if (module.restartPos != 0 && !Thread.currentThread().isInterrupted()) {
                    WavInputStream wavInputStream = new WavInputStream(ibxm, 0, WavInputStream.Mode.INTRO_PART);
                    String m21434q = CachedMusicManager.m21434q(module, false);
                    OutputStream write = Gdx.files.local(m21434q).write(false);
                    int i = 0;
                    while (true) {
                        try {
                            int read = wavInputStream.read(bArr, 0, 4096);
                            if (read <= 0) {
                                break;
                            }
                            i += read;
                            write.write(bArr, 0, read);
                            CachedMusicManager.this.f10268D = (i / (wavInputStream.getRemain() + i)) * 0.5f;
                        } catch (Exception unused) {
                            Logger.error("CachedMusicManager", "failed to write" + m21434q);
                        }
                    }
                    CachedMusicManager.this.f10268D = 0.5f;
                    Logger.log("CachedMusicManager", "prepared intro cache for " + m21434q);
                }
                if (!Thread.currentThread().isInterrupted()) {
                    WavInputStream wavInputStream2 = new WavInputStream(ibxm, 0, WavInputStream.Mode.LOOPING_PART);
                    String m21434q2 = CachedMusicManager.m21434q(module, true);
                    OutputStream write2 = Gdx.files.local(m21434q2).write(false);
                    int i2 = 0;
                    while (true) {
                        try {
                            int read2 = wavInputStream2.read(bArr, 0, 4096);
                            if (read2 <= 0) {
                                break;
                            }
                            i2 += read2;
                            write2.write(bArr, 0, read2);
                            CachedMusicManager.this.f10268D = i2 / (wavInputStream2.getRemain() + i2);
                            if (module.restartPos != 0) {
                                CachedMusicManager cachedMusicManager = CachedMusicManager.this;
                                cachedMusicManager.f10268D = (cachedMusicManager.f10268D * 0.5f) + 0.5f;
                            }
                        } catch (Exception unused2) {
                            Logger.error("CachedMusicManager", "failed to write" + m21434q2);
                        }
                    }
                    CachedMusicManager.this.f10268D = 1.0f;
                    Logger.log("CachedMusicManager", "prepared looping cache for " + m21434q2);
                }
                if (!Thread.currentThread().isInterrupted() && CachedMusicManager.this.f10272y == Status.WAITING_CACHE_GENERATION) {
                    CachedMusicManager.this.f10272y = Status.CACHE_GENERATED;
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.music.CachedMusicManager.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RunnableC19134 runnableC19134 = RunnableC19134.this;
                            String str = CachedMusicManager.this.f10265A;
                            if (str != null && str.equals(CachedMusicManager.m21435p(module))) {
                                RunnableC19134 runnableC191342 = RunnableC19134.this;
                                CachedMusicManager.this.setVolume(f, 2.0f, false);
                                RunnableC19134 runnableC191343 = RunnableC19134.this;
                                CachedMusicManager.this.m21433r(module, f);
                                Notifications.Notification notification2 = CachedMusicManager.this.f10266B;
                                if (notification2 != null) {
                                    notification2.showProgress(0.0f, Color.GOLD);
                                    CachedMusicManager.this.f10266B.hide(5.0f);
                                    CachedMusicManager.this.f10266B = null;
                                }
                                CachedMusicManager.this.m21436o();
                            }
                        }
                    });
                }
                Logger.log("CachedMusicManager", "caching thread ended");
                CachedMusicManager.this.f10267C = null;
            }
        });
        this.f10267C = thread;
        thread.setDaemon(true);
        this.f10267C.start();
        Logger.handleThreadExceptionsForgiving(this.f10267C);
    }

    @Override // com.prineside.tdi2.managers.MusicManager, com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (preferencesManager.contains("cachedMusicStatus")) {
            Iterator<JsonValue> iterator2 = new JsonReader().parse(preferencesManager.get("cachedMusicStatus", "[]")).iterator2();
            while (iterator2.hasNext()) {
                try {
                    this.f10271H.add(CacheStatus.fromJson(iterator2.next()));
                } catch (Exception unused) {
                }
            }
        }
        Game.f8589i.screenManager.addListener(new ScreenManager.ScreenManagerListener() { // from class: com.prineside.tdi2.managers.music.CachedMusicManager.1
            @Override // com.prineside.tdi2.managers.ScreenManager.ScreenManagerListener
            public void screenChanged() {
                CachedMusicManager.this.m21436o();
            }
        });
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.music.CachedMusicManager.2
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                if (CachedMusicManager.this.f10269E) {
                    CachedMusicManager.this.m21431t();
                }
            }
        });
        super.setup();
    }

    /* renamed from: t */
    public final void m21431t() {
        Json json = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        for (int i = 0; i < this.f10271H.size; i++) {
            json.writeObjectStart();
            this.f10271H.items[i].toJson(json);
            json.writeObjectEnd();
        }
        json.writeArrayEnd();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        preferencesManager.set("cachedMusicStatus", stringWriter.toString());
        preferencesManager.flush();
        this.f10270G = 0.0f;
        this.f10269E = false;
    }

    /* renamed from: u */
    public final void m21430u() {
        Thread thread = this.f10267C;
        if (thread != null) {
            thread.interrupt();
            this.f10267C = null;
            Logger.log("CachedMusicManager", "interrupted caching thread");
        }
    }

    public CachedMusicManager() {
        Logger.log("CachedMusicManager", "initializing");
    }

    @Override // com.prineside.tdi2.managers.MusicManager, com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        super.preRender(f);
        if (this.f9912p) {
            Notifications.Notification notification = this.f10266B;
            if (notification != null) {
                notification.showProgress(this.f10268D, Color.GREEN);
            }
            if (this.f10269E) {
                float f2 = this.f10270G + f;
                this.f10270G = f2;
                if (f2 > 30.0f) {
                    m21431t();
                }
            }
            StringBuilder registerValue = Game.f8589i.debugManager.registerValue("XM cached music status");
            if (registerValue != null) {
                registerValue.append(this.f10272y.name());
            }
        }
    }

    /* renamed from: r */
    public final void m21433r(Module module, float f) {
        stopMusic();
        this.f10272y = Status.PLAYING;
        this.f10273z = module;
        this.f10265A = m21435p(module);
        m21432s(module);
        playCachedMusic(module, f);
    }

    /* renamed from: s */
    public final void m21432s(Module module) {
        String m21435p = m21435p(module);
        int i = 0;
        while (true) {
            Array<CacheStatus> array = this.f10271H;
            if (i < array.size) {
                if (array.items[i].songFileName.equals(m21435p)) {
                    this.f10271H.items[i].lastPlayTimestamp = Game.getTimestampSeconds();
                    return;
                }
                i++;
            } else {
                CacheStatus cacheStatus = new CacheStatus();
                cacheStatus.songFileName = m21435p;
                cacheStatus.lastPlayTimestamp = Game.getTimestampSeconds();
                this.f10271H.add(cacheStatus);
                this.f10269E = true;
                return;
            }
        }
    }
}

package com.prineside.tdi2.managers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Pool;
import com.prineside.StaticSound;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class SoundManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public Thread f10143a;
    public final Array<SoundCfg> soundsToPlay = new Array<>(SoundCfg.class);

    /* renamed from: b */
    public final Array<SoundCfg> f10144b = new Array<>(SoundCfg.class);

    /* renamed from: d */
    public final Array<SoundCfg> f10145d = new Array<>(SoundCfg.class);
    public final DelayedRemovalArray<PlayingSoundStat> playingSoundStats = new DelayedRemovalArray<>(false, 64, PlayingSoundStat.class);

    /* renamed from: com.prineside.tdi2.managers.SoundManager$2 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18822 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10150a;

        static {
            int[] iArr = new int[RarityType.values().length];
            f10150a = iArr;
            try {
                iArr[RarityType.COMMON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10150a[RarityType.RARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10150a[RarityType.VERY_RARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10150a[RarityType.EPIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10150a[RarityType.LEGENDARY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class PlayingSoundStat {
        public int durationLeft;
        public StaticSoundType type;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<SoundManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public SoundManager read() {
            return Game.f8589i.soundManager;
        }
    }

    /* loaded from: classes2.dex */
    public static class SoundCfg implements Pool.Poolable {

        /* renamed from: a */
        public StaticSound f10151a;

        /* renamed from: b */
        public float f10152b;

        /* renamed from: d */
        public float f10153d;

        /* renamed from: k */
        public float f10154k;

        public SoundCfg() {
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f10151a = null;
        }
    }

    public void playRarity(RarityType rarityType) {
        playStatic(getRarity(rarityType));
    }

    public void playStatic(StaticSoundType staticSoundType) {
        playStatic(staticSoundType, 1.0f, 1.0f, 0.0f, false);
    }

    public SoundManager() {
        m21473d();
    }

    /* renamed from: c */
    public final void m21474c(StaticSound staticSound, float f, float f2, float f3, boolean z) {
        SoundCfg soundCfg;
        if (staticSound != null) {
            if (Game.f8589i.settingsManager.isSoundEnabled()) {
                float customValue = f * ((float) Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SOUND_VOLUME));
                if (z) {
                    staticSound.sound.loop(customValue, f2, f3);
                    return;
                }
                synchronized (this.soundsToPlay) {
                    int i = 0;
                    while (true) {
                        Array<SoundCfg> array = this.soundsToPlay;
                        if (i < array.size) {
                            SoundCfg soundCfg2 = array.items[i];
                            if (soundCfg2.f10151a == staticSound) {
                                soundCfg2.f10152b = StrictMath.max(soundCfg2.f10152b, customValue);
                                soundCfg2.f10154k = (soundCfg2.f10154k + f3) * 0.5f;
                                return;
                            }
                            i++;
                        } else {
                            synchronized (this.f10145d) {
                                Array<SoundCfg> array2 = this.f10145d;
                                if (array2.size > 0) {
                                    soundCfg = array2.pop();
                                } else {
                                    soundCfg = null;
                                }
                            }
                            if (soundCfg == null) {
                                soundCfg = new SoundCfg();
                            }
                            soundCfg.f10151a = staticSound;
                            soundCfg.f10152b = customValue;
                            soundCfg.f10154k = f3;
                            soundCfg.f10153d = f2;
                            this.soundsToPlay.add(soundCfg);
                            return;
                        }
                    }
                }
            }
        } else {
            throw new IllegalArgumentException("sound is nul");
        }
    }

    /* renamed from: d */
    public final void m21473d() {
        Thread thread = new Thread(new Runnable() { // from class: com.prineside.tdi2.managers.SoundManager.1

            /* renamed from: a */
            public final Pool<PlayingSoundStat> f10146a = new Pool<PlayingSoundStat>() { // from class: com.prineside.tdi2.managers.SoundManager.1.1
                @Override // com.badlogic.gdx.utils.Pool
                /* renamed from: c */
                public PlayingSoundStat newObject() {
                    return new PlayingSoundStat();
                }
            };

            /* renamed from: b */
            public long f10147b = -1;

            @Override // java.lang.Runnable
            public void run() {
                DelayedRemovalArray<PlayingSoundStat> delayedRemovalArray;
                while (true) {
                    long timestampMillis = Game.getTimestampMillis();
                    long j = this.f10147b;
                    long j2 = timestampMillis - j;
                    if (j == -1) {
                        j2 = 0;
                    }
                    this.f10147b = timestampMillis;
                    SoundManager.this.playingSoundStats.begin();
                    int i = 0;
                    while (true) {
                        delayedRemovalArray = SoundManager.this.playingSoundStats;
                        if (i >= delayedRemovalArray.size) {
                            break;
                        }
                        PlayingSoundStat playingSoundStat = delayedRemovalArray.items[i];
                        int i2 = (int) (playingSoundStat.durationLeft - j2);
                        playingSoundStat.durationLeft = i2;
                        if (i2 <= 0) {
                            delayedRemovalArray.removeIndex(i);
                            this.f10146a.free(playingSoundStat);
                        }
                        i++;
                    }
                    delayedRemovalArray.end();
                    SoundManager soundManager = SoundManager.this;
                    if (soundManager.soundsToPlay.size == 0) {
                        try {
                            Game game = Game.f8589i;
                            if (game != null && game.isDisposed()) {
                                Logger.log("SoundManager", "game is disposed - stopping Sound thread (1)");
                                return;
                            }
                            Thread.sleep(16L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            return;
                        }
                    } else {
                        soundManager.f10144b.clear();
                        synchronized (SoundManager.this.soundsToPlay) {
                            SoundManager.this.f10144b.addAll(SoundManager.this.soundsToPlay);
                            SoundManager.this.soundsToPlay.clear();
                        }
                        for (int i3 = 0; i3 < SoundManager.this.f10144b.size; i3++) {
                            SoundCfg soundCfg = ((SoundCfg[]) SoundManager.this.f10144b.items)[i3];
                            PlayingSoundStat obtain = this.f10146a.obtain();
                            StaticSound staticSound = soundCfg.f10151a;
                            obtain.type = staticSound.type;
                            obtain.durationLeft = (int) (staticSound.durationMs / soundCfg.f10153d);
                            SoundManager.this.playingSoundStats.add(obtain);
                            try {
                                soundCfg.f10151a.sound.play(soundCfg.f10152b, soundCfg.f10153d, soundCfg.f10154k);
                                soundCfg.reset();
                            } catch (Exception unused) {
                                soundCfg.reset();
                            } catch (Throwable th) {
                                soundCfg.reset();
                                throw th;
                            }
                        }
                        synchronized (SoundManager.this.f10145d) {
                            SoundManager.this.f10145d.addAll(SoundManager.this.f10144b);
                        }
                        SoundManager.this.f10144b.clear();
                        Game game2 = Game.f8589i;
                        if (game2 != null && game2.isDisposed()) {
                            Logger.log("SoundManager", "game is disposed - stopping Sound thread (2)");
                            return;
                        }
                        try {
                            Thread.sleep(10L);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                }
            }
        }, "Sounds");
        this.f10143a = thread;
        thread.setDaemon(true);
        this.f10143a.start();
        Logger.handleThreadExceptionsForgiving(this.f10143a);
    }

    public StaticSoundType getRarity(RarityType rarityType) {
        int i = C18822.f10150a[rarityType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return null;
                        }
                        return StaticSoundType.LOOT_LEGENDARY;
                    }
                    return StaticSoundType.LOOT_EPIC;
                }
                return StaticSoundType.LOOT_VERY_RARE;
            }
            return StaticSoundType.LOOT_RARE;
        }
        return StaticSoundType.LOOT_COMMON;
    }

    public void playStatic(StaticSoundType staticSoundType, float f, float f2, float f3, boolean z) {
        StaticSound sound;
        if (Game.f8589i.settingsManager.isSoundEnabled() && (sound = Game.f8589i.assetManager.getSound(staticSoundType)) != null) {
            m21474c(sound, f, f2, f3, z);
        }
    }
}

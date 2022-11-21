package com.prineside.tdi2.systems;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.SoundManager;
import com.prineside.tdi2.systems.AbilitySystem;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.systems.ModifierSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.tiles.XmMusicTrackTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
import java.util.Arrays;
@NAGS
/* loaded from: classes2.dex */
public class SoundSystem extends GameSystem {

    /* renamed from: A */
    public static final Vector2 f11770A = new Vector2();

    /* renamed from: a */
    public int f11771a;

    /* renamed from: b */
    public final Array<QueuedSound> f11772b = new Array<>(QueuedSound.class);

    /* renamed from: d */
    public boolean f11773d;

    /* renamed from: k */
    public final boolean[] f11774k;

    /* renamed from: p */
    public final float[] f11775p;

    /* renamed from: q */
    public final float[] f11776q;

    /* renamed from: r */
    public final _GameStateSystemListener f11777r;

    /* renamed from: s */
    public final _WaveSystemListener f11778s;

    /* renamed from: t */
    public final _AbilitySystemListener f11779t;

    /* renamed from: u */
    public final _EnemySystemListener f11780u;

    /* renamed from: v */
    public final _MinerSystemListener f11781v;

    /* renamed from: w */
    public final _ModifierSystemListener f11782w;

    /* renamed from: x */
    public final _TowerSystemListener f11783x;

    /* renamed from: y */
    public final _MapSystemListener f11784y;

    /* renamed from: z */
    public final Pool<QueuedSound> f11785z;

    /* renamed from: com.prineside.tdi2.systems.SoundSystem$2 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23312 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11787a;

        static {
            int[] iArr = new int[AbilityType.values().length];
            f11787a = iArr;
            try {
                iArr[AbilityType.NUKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11787a[AbilityType.BLIZZARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11787a[AbilityType.FIREBALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11787a[AbilityType.WINDSTORM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11787a[AbilityType.THUNDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11787a[AbilityType.SMOKE_BOMB.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11787a[AbilityType.FIRESTORM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11787a[AbilityType.MAGNET.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11787a[AbilityType.BULLET_WALL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f11787a[AbilityType.BALL_LIGHTNING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f11787a[AbilityType.LOIC.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f11787a[AbilityType.OVERLOAD.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class QueuedSound implements Pool.Poolable {

        /* renamed from: a */
        public StaticSoundType f11788a;

        /* renamed from: b */
        public float f11789b;

        /* renamed from: d */
        public float f11790d;

        /* renamed from: k */
        public float f11791k;

        public QueuedSound() {
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _AbilitySystemListener extends AbilitySystem.AbilitySystemListener.AbilitySystemListenerAdapter {
        public _AbilitySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener.AbilitySystemListenerAdapter, com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener
        public void abilityApplied(Ability ability, int i, int i2) {
            switch (C23312.f11787a[ability.type.ordinal()]) {
                case 1:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_NUKE);
                    return;
                case 2:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_BLIZZARD);
                    return;
                case 3:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_FIREBALL);
                    return;
                case 4:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_WINDSTORM);
                    return;
                case 5:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_THUNDER);
                    return;
                case 6:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_SMOKE_BOMB);
                    return;
                case 7:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_FIRESTORM);
                    return;
                case 8:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_MAGNET);
                    return;
                case 9:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_BULLET_WALL);
                    return;
                case 10:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_BALL_LIGHTNING);
                    return;
                case 11:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_LOIC);
                    return;
                case 12:
                    SoundSystem.this.playStatic(StaticSoundType.ABILITY_OVERLOAD);
                    return;
                default:
                    return;
            }
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter {
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
            if (targetTile != null) {
                SoundSystem.this.playStatic(StaticSoundType.ENEMY_REACHED);
                return false;
            }
            return false;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            float m20888c = SoundSystem.this.m20888c(enemy.getPosition().f5527x);
            double m20887d = SoundSystem.this.m20887d(m20888c);
            double customValue = Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SHOOTING_SOUNDS_VOLUME);
            Double.isNaN(m20887d);
            float f = (float) (m20887d * customValue);
            if (f > 0.01f) {
                float f2 = 1.0f;
                float f3 = FastRandom.getFloat();
                if (f3 < 0.25f) {
                    f2 = 1.12246f;
                } else if (f3 < 0.5f) {
                    f2 = 1.059465f;
                } else if (f3 < 0.75f) {
                    f2 = 0.943876f;
                }
                SoundSystem.this.playStatic(StaticSoundType.ENEMY_DIE, f * 0.7f, f2, m20888c);
            }
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _GameStateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _GameStateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gamePaused() {
            SoundSystem.this.updateMusicPlayback();
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gameResumed() {
            SoundSystem.this.updateMusicPlayback();
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void coreTileUpgradeInstalled(int i, int i2) {
            SoundSystem.this.playStatic(StaticSoundType.UPGRADE);
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _MinerSystemListener extends MinerSystem.MinerSystemListener.MinerSystemListenerAdapter {
        public _MinerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerBuilt(Miner miner, int i) {
            SoundSystem.this.playStatic(StaticSoundType.BUILDING_BUILT);
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerUpgraded(Miner miner, int i) {
            SoundSystem.this.playStatic(StaticSoundType.UPGRADE);
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _ModifierSystemListener extends ModifierSystem.ModifierSystemListener.ModifierSystemListenerAdapter {
        public _ModifierSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener.ModifierSystemListenerAdapter, com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener
        public void modifierBuilt(Modifier modifier, int i) {
            SoundSystem.this.playStatic(StaticSoundType.BUILDING_BUILT);
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _TowerSystemListener extends TowerSystem.TowerSystemListener.TowerSystemListenerAdapter {
        public _TowerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerAbilityChanged(Tower tower, int i, boolean z) {
            if (z) {
                SoundSystem.this.playStatic(StaticSoundType.UPGRADE);
            }
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerBuilt(Tower tower, int i) {
            SoundSystem.this.playStatic(StaticSoundType.BUILDING_BUILT);
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerUpgraded(Tower tower, int i) {
            SoundSystem.this.playStatic(StaticSoundType.UPGRADE);
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter {
        public _WaveSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void statusChanged(WaveSystem.Status status) {
            if (status == WaveSystem.Status.NOT_STARTED) {
                SoundSystem.this.updateMusicPlayback();
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    /* renamed from: d */
    public final float m20887d(float f) {
        float f2 = 1.0f - (((float) (this.f8844S._input.cameraController.zoom - 0.5d)) * 0.25f);
        return f < -0.5f ? f2 * (((f + 0.5f) * 2.0f) + 1.0f) : f > 0.5f ? f2 * (1.0f - ((f - 0.5f) * 2.0f)) : f2;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Sound";
    }

    public void playStatic(StaticSoundType staticSoundType) {
        playStatic(staticSoundType, 1.0f, 1.0f, 0.0f);
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    /* renamed from: c */
    public final float m20888c(float f) {
        Vector2 vector2 = f11770A;
        vector2.set(f, 0.0f);
        this.f8844S._input.cameraController.mapToViewport(vector2);
        return ((vector2.f5527x / this.f8844S._input.cameraController.camera.viewportWidth) * 1.0f) - 0.5f;
    }

    public void draw(float f) {
        int i = this.f11772b.size;
        if (i != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                QueuedSound queuedSound = this.f11772b.items[i2];
                Game.f8589i.soundManager.playStatic(queuedSound.f11788a, queuedSound.f11790d, queuedSound.f11789b, queuedSound.f11791k, false);
                this.f11785z.free(queuedSound);
            }
            this.f11772b.clear();
        }
        int i3 = 0;
        while (true) {
            float[] fArr = this.f11776q;
            if (i3 < fArr.length) {
                float f2 = fArr[i3] - f;
                fArr[i3] = f2;
                if (f2 < 0.0f) {
                    fArr[i3] = 0.0f;
                }
                i3++;
            } else {
                return;
            }
        }
    }

    public void playStatic(StaticSoundType staticSoundType, float f, float f2, float f3) {
        float f4;
        GameSystemProvider gameSystemProvider = this.f8844S;
        if (gameSystemProvider.CFG.headless || gameSystemProvider.gameState.isFastForwarding() || this.f11776q[staticSoundType.ordinal()] != 0.0f) {
            return;
        }
        SoundManager soundManager = Game.f8589i.soundManager;
        if (soundManager.playingSoundStats.size + soundManager.soundsToPlay.size >= this.f11771a && !this.f11774k[staticSoundType.ordinal()]) {
            return;
        }
        int i = 0;
        while (true) {
            Array<QueuedSound> array = this.f11772b;
            if (i < array.size) {
                if (array.items[i].f11788a == staticSoundType) {
                    return;
                }
                i++;
            } else {
                QueuedSound obtain = this.f11785z.obtain();
                obtain.f11788a = staticSoundType;
                obtain.f11791k = f3;
                obtain.f11790d = f;
                obtain.f11789b = f2;
                this.f11772b.add(obtain);
                float f5 = this.f11775p[staticSoundType.ordinal()];
                SoundManager soundManager2 = Game.f8589i.soundManager;
                float f6 = soundManager2.playingSoundStats.size + soundManager2.soundsToPlay.size;
                int i2 = this.f11771a;
                if (f6 >= i2 * 0.9f) {
                    f4 = 2.0f;
                } else if (f6 < i2 * 0.75f) {
                    if (f6 >= i2 * 0.5f) {
                        f4 = 1.25f;
                    }
                    this.f11776q[staticSoundType.ordinal()] = f5;
                    return;
                } else {
                    f4 = 1.5f;
                }
                f5 *= f4;
                this.f11776q[staticSoundType.ordinal()] = f5;
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        this.f8844S.gameState.listeners.add(this.f11777r);
        this.f8844S.wave.listeners.add(this.f11778s);
        this.f8844S.ability.listeners.add(this.f11779t);
        this.f8844S.enemy.listeners.add(this.f11780u);
        this.f8844S.miner.listeners.add(this.f11781v);
        this.f8844S.modifier.listeners.add(this.f11782w);
        this.f8844S.tower.listeners.add(this.f11783x);
        this.f8844S.map.listeners.add(this.f11784y);
    }

    public void updateMusicPlayback() {
        XmMusicTrackTile xmMusicTrackTile;
        WaveSystem.Status status = this.f8844S.wave.status;
        if (status != null && status != WaveSystem.Status.NOT_STARTED && Game.f8589i.settingsManager.isMusicEnabled()) {
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.IGNORE_MAP_MUSIC) == 1.0d) {
                Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
                this.f11773d = false;
                return;
            }
            Map map = null;
            GameStateSystem gameStateSystem = this.f8844S.gameState;
            String str = gameStateSystem.basicLevelName;
            if (str != null) {
                map = Game.f8589i.basicLevelManager.getLevel(str).getMap();
            } else {
                String str2 = gameStateSystem.userMapId;
                if (str2 != null) {
                    map = Game.f8589i.userMapManager.getUserMap(str2).map;
                }
            }
            if (map != null && (xmMusicTrackTile = map.xmMusicTrackTile) != null && xmMusicTrackTile.getModule() != null) {
                if (!this.f11773d) {
                    if (map.xmMusicTrackTile.getModule() != Game.f8589i.musicManager.getPlayingMusic()) {
                        Game.f8589i.musicManager.playMusic(map.xmMusicTrackTile.getModule(), 1.0f);
                    } else {
                        Game.f8589i.musicManager.setVolume(1.0f, 2.0f, false);
                    }
                    this.f11773d = true;
                }
            } else {
                Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
                this.f11773d = false;
            }
            if (this.f8844S.gameState.isPaused()) {
                Game.f8589i.musicManager.setVolume(0.25f, 2.0f, false);
                return;
            } else {
                Game.f8589i.musicManager.setVolume(1.0f, 2.0f, false);
                return;
            }
        }
        Game.f8589i.musicManager.stopMusic();
        this.f11773d = false;
    }

    public SoundSystem() {
        this.f11771a = 44;
        StaticSoundType[] staticSoundTypeArr = StaticSoundType.values;
        boolean[] zArr = new boolean[staticSoundTypeArr.length];
        this.f11774k = zArr;
        zArr[StaticSoundType.SHOT_GAUSS.ordinal()] = true;
        zArr[StaticSoundType.BUTTON.ordinal()] = true;
        zArr[StaticSoundType.UPGRADE.ordinal()] = true;
        zArr[StaticSoundType.ENEMY_REACHED.ordinal()] = true;
        zArr[StaticSoundType.FAIL.ordinal()] = true;
        zArr[StaticSoundType.GAME_OVER.ordinal()] = true;
        zArr[StaticSoundType.NOTIFICATION.ordinal()] = true;
        zArr[StaticSoundType.SUCCESS.ordinal()] = true;
        StaticSoundType staticSoundType = StaticSoundType.LOOT_EPIC;
        zArr[staticSoundType.ordinal()] = true;
        StaticSoundType staticSoundType2 = StaticSoundType.LOOT_LEGENDARY;
        zArr[staticSoundType2.ordinal()] = true;
        zArr[StaticSoundType.BUILDING_BUILT.ordinal()] = true;
        zArr[StaticSoundType.AUTO_FORCE_WAVE.ordinal()] = true;
        zArr[StaticSoundType.WARNING.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_NUKE.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_BLIZZARD.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_FIREBALL.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_WINDSTORM.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_THUNDER.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_SMOKE_BOMB.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_FIRESTORM.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_MAGNET.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_BULLET_WALL.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_BALL_LIGHTNING.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_LOIC.ordinal()] = true;
        zArr[StaticSoundType.ABILITY_OVERLOAD.ordinal()] = true;
        float[] fArr = new float[staticSoundTypeArr.length];
        this.f11775p = fArr;
        Arrays.fill(fArr, 0.08f);
        fArr[StaticSoundType.EXPLOSION.ordinal()] = 0.16f;
        fArr[StaticSoundType.LOOT_COMMON.ordinal()] = 0.3f;
        fArr[StaticSoundType.LOOT_RARE.ordinal()] = 0.25f;
        fArr[StaticSoundType.LOOT_VERY_RARE.ordinal()] = 0.2f;
        fArr[staticSoundType.ordinal()] = 0.15f;
        fArr[staticSoundType2.ordinal()] = 0.12f;
        fArr[StaticSoundType.SHOT_BLAST.ordinal()] = 0.15f;
        this.f11776q = new float[staticSoundTypeArr.length];
        this.f11777r = new _GameStateSystemListener();
        this.f11778s = new _WaveSystemListener();
        this.f11779t = new _AbilitySystemListener();
        this.f11780u = new _EnemySystemListener();
        this.f11781v = new _MinerSystemListener();
        this.f11782w = new _ModifierSystemListener();
        this.f11783x = new _TowerSystemListener();
        this.f11784y = new _MapSystemListener();
        this.f11785z = new Pool<QueuedSound>() { // from class: com.prineside.tdi2.systems.SoundSystem.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public QueuedSound newObject() {
                return new QueuedSound();
            }
        };
        if (Gdx.app.getType() == Application.ApplicationType.Android) {
            this.f11771a = 29;
            int i = 0;
            while (true) {
                float[] fArr2 = this.f11775p;
                if (i < fArr2.length) {
                    fArr2[i] = fArr2[i] * 1.7f;
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public void playExplosionSound(float f) {
        float m20888c = m20888c(f);
        double m20887d = m20887d(m20888c);
        double customValue = Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SHOOTING_SOUNDS_VOLUME);
        Double.isNaN(m20887d);
        float f2 = (float) (m20887d * customValue);
        if (f2 > 0.05f) {
            playStatic(StaticSoundType.EXPLOSION, f2 * 0.6f, (FastRandom.getFloat() * 0.2f) + 0.9f, m20888c);
        }
    }

    public void playShotSound(StaticSoundType staticSoundType, Tower tower) {
        float m20888c = m20888c(tower.getTile().center.f5527x);
        double m20887d = m20887d(m20888c);
        double customValue = Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SHOOTING_SOUNDS_VOLUME);
        Double.isNaN(m20887d);
        float f = (float) (m20887d * customValue);
        if (f > 0.05f) {
            playStatic(staticSoundType, f * 0.6f, (FastRandom.getFloat() * 0.2f) + 0.9f, m20888c);
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        super.postSetup();
        updateMusicPlayback();
    }
}

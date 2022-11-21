package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.systems.AbilitySystem;
import com.prineside.tdi2.systems.AchievementSystem;
import com.prineside.tdi2.systems.BuffSystem;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.ExplosionSystem;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.GameValueSystem;
import com.prineside.tdi2.systems.GraphicsSystem;
import com.prineside.tdi2.systems.InputSystem;
import com.prineside.tdi2.systems.InventorySystem;
import com.prineside.tdi2.systems.LootSystem;
import com.prineside.tdi2.systems.MapEditorSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.systems.ModifierSystem;
import com.prineside.tdi2.systems.ParticleSystem;
import com.prineside.tdi2.systems.PathRenderingSystem;
import com.prineside.tdi2.systems.ProjectileSystem;
import com.prineside.tdi2.systems.ProjectileTrailSystem;
import com.prineside.tdi2.systems.QuestSystem;
import com.prineside.tdi2.systems.ScriptSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.systems.StatisticsSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.systems.UnitSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Comparator;
import p218x1.C7221i;
@REGS
/* loaded from: classes2.dex */
public class GameSystemProvider implements KryoSerializable {
    @NAGS
    public static boolean DEBUG = false;
    public SystemsConfig CFG;
    @NAGS
    public GraphicsSystem _graphics;
    @NAGS
    public InputSystem _input;
    @NAGS
    public InventorySystem _inventory;
    @NAGS
    public MapEditorSystem _mapEditor;
    @NAGS
    public MapRenderingSystem _mapRendering;
    @NAGS
    public ParticleSystem _particle;
    @NAGS
    public PathRenderingSystem _pathRendering;
    @NAGS
    public ProjectileTrailSystem _projectileTrail;
    @NAGS
    public QuestSystem _quest;
    @NAGS
    public SoundSystem _sound;

    /* renamed from: a */
    public final Array<GameSystem> f8651a;
    @NAGS
    public AbilitySystem ability;
    @NAGS
    public AchievementSystem achievement;
    @NAGS

    /* renamed from: b */
    public final ObjectMap<Class, GameSystem> f8652b;
    @NAGS
    public BuffSystem buff;
    @NAGS

    /* renamed from: d */
    public final long[] f8653d;
    @NAGS
    public EnemySystem enemy;
    @NAGS
    public ExplosionSystem explosion;
    @NAGS
    public GameStateSystem gameState;
    @NAGS
    public GameValueSystem gameValue;
    @NAGS
    public LootSystem loot;
    @NAGS
    public MapSystem map;
    @NAGS
    public MinerSystem miner;
    @NAGS
    public ModifierSystem modifier;
    @NAGS
    public ProjectileSystem projectile;
    @NAGS
    public ScriptSystem script;
    @NAGS
    public StateSystem state;
    @NAGS
    public StatisticsSystem statistics;
    @NAGS
    public TowerSystem tower;
    @NAGS
    public UnitSystem unit;
    @NAGS
    public WaveSystem wave;

    /* renamed from: k */
    public static final Class[] f8647k = {SoundSystem.class, AchievementSystem.class, InputSystem.class, GraphicsSystem.class, GameValueSystem.class, GameStateSystem.class, QuestSystem.class, BuffSystem.class, LootSystem.class, EnemySystem.class, UnitSystem.class, AbilitySystem.class, MapSystem.class, MapRenderingSystem.class, PathRenderingSystem.class, ProjectileSystem.class, ExplosionSystem.class, TowerSystem.class, MinerSystem.class, ModifierSystem.class, ProjectileTrailSystem.class, ParticleSystem.class, WaveSystem.class, StatisticsSystem.class, ScriptSystem.class};

    /* renamed from: p */
    public static final Array<String> f8648p = new Array<>(true, 8, String.class);

    /* renamed from: q */
    public static final IntIntMap f8649q = new IntIntMap();
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<GameSystemProvider>() { // from class: com.prineside.tdi2.GameSystemProvider.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(GameSystemProvider gameSystemProvider, GameSystemProvider gameSystemProvider2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(gameSystemProvider, gameSystemProvider2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<GameSystemProvider> forClass() {
            return GameSystemProvider.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(GameSystemProvider gameSystemProvider, GameSystemProvider gameSystemProvider2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            int i2 = 0;
            for (int i3 = 0; i3 < gameSystemProvider.f8651a.size; i3++) {
                if (((GameSystem[]) gameSystemProvider.f8651a.items)[i3].affectsGameState()) {
                    i2++;
                }
            }
            int i4 = 0;
            for (int i5 = 0; i5 < gameSystemProvider2.f8651a.size; i5++) {
                if (((GameSystem[]) gameSystemProvider2.f8651a.items)[i5].affectsGameState()) {
                    i4++;
                }
            }
            if (i2 != i4) {
                for (int i6 = 0; i6 < array.size; i6++) {
                    stringBuilder.append(array.items[i6]);
                }
                stringBuilder.append(": system count differ (").append(PMath.toString(i2)).append(", ").append(String.valueOf(i4)).append(")\n");
            }
            for (int i7 = 0; i7 < gameSystemProvider.f8651a.size; i7++) {
                GameSystem gameSystem = ((GameSystem[]) gameSystemProvider.f8651a.items)[i7];
                if (gameSystem.affectsGameState()) {
                    GameSystem m22007d = gameSystemProvider2.m22007d(gameSystem.getClass());
                    array.add("[");
                    array.add(PMath.toString(i7));
                    array.add(" ");
                    array.add(m22007d.getClass().getName());
                    array.add("]");
                    PMath.compareObjects(gameSystem, m22007d, stringBuilder, array, i - 1, intIntMap, z);
                    for (int i8 = 0; i8 < 5; i8++) {
                        array.pop();
                    }
                }
            }
        }
    };

    /* renamed from: r */
    public static final StringBuilder f8650r = new StringBuilder();

    @REGS
    /* loaded from: classes2.dex */
    public static class SystemsConfig implements KryoSerializable {
        public boolean headless;
        public Setup setup;

        @REGS
        /* loaded from: classes2.dex */
        public enum Setup {
            GAME,
            MAP_EDITOR
        }

        public SystemsConfig() {
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeBoolean(this.headless);
            kryo.writeObject(output, this.setup);
        }

        public SystemsConfig(Setup setup, boolean z) {
            this.setup = setup;
            this.headless = z;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.headless = input.readBoolean();
            this.setup = (Setup) kryo.readObject(input, Setup.class);
        }
    }

    public GameSystemProvider() {
        this.f8651a = new Array<>(true, 1, GameSystem.class);
        this.f8652b = new ObjectMap<>();
        this.f8653d = new long[64];
    }

    public static GameSystemProvider unserialize(Input input) {
        return (GameSystemProvider) Game.f8589i.networkManager.fullKryo.readObject(input, GameSystemProvider.class);
    }

    public GameSystemProvider deepCopy() {
        return (GameSystemProvider) Game.f8589i.networkManager.fullKryo.copy(this);
    }

    /* renamed from: e */
    public final void m22006e() {
        this.f8651a.sort(new Comparator<GameSystem>() { // from class: com.prineside.tdi2.GameSystemProvider.2
            @Override // java.util.Comparator
            public int compare(GameSystem gameSystem, GameSystem gameSystem2) {
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < GameSystemProvider.f8647k.length; i3++) {
                    if (GameSystemProvider.f8647k[i3] == gameSystem.getClass()) {
                        i = i3;
                    } else if (GameSystemProvider.f8647k[i3] == gameSystem2.getClass()) {
                        i2 = i3;
                    }
                }
                return C7221i.m2085a(i, i2);
            }
        });
    }

    public Array<GameSystem> getSystemsOrdered() {
        return this.f8651a;
    }

    public void resetSystemsFrameProfiling() {
        for (int i = 0; i < this.f8651a.size; i++) {
            this.f8653d[i] = 0;
        }
    }

    public void serialize(Output output) {
        Game.f8589i.networkManager.fullKryo.writeObject(output, this);
    }

    public void addSystem(GameSystem gameSystem) {
        if (gameSystem != null) {
            this.f8652b.put(gameSystem.getClass(), gameSystem);
            this.f8651a.add(gameSystem);
            if (gameSystem instanceof InventorySystem) {
                this._inventory = (InventorySystem) gameSystem;
            }
            if (gameSystem instanceof MapEditorSystem) {
                this._mapEditor = (MapEditorSystem) gameSystem;
            }
            if (gameSystem instanceof StateSystem) {
                this.state = (StateSystem) gameSystem;
            }
            if (gameSystem instanceof GameStateSystem) {
                this.gameState = (GameStateSystem) gameSystem;
            }
            if (gameSystem instanceof SoundSystem) {
                this._sound = (SoundSystem) gameSystem;
            }
            if (gameSystem instanceof AchievementSystem) {
                this.achievement = (AchievementSystem) gameSystem;
            }
            if (gameSystem instanceof InputSystem) {
                this._input = (InputSystem) gameSystem;
            }
            if (gameSystem instanceof GraphicsSystem) {
                this._graphics = (GraphicsSystem) gameSystem;
            }
            if (gameSystem instanceof MapRenderingSystem) {
                this._mapRendering = (MapRenderingSystem) gameSystem;
            }
            if (gameSystem instanceof PathRenderingSystem) {
                this._pathRendering = (PathRenderingSystem) gameSystem;
            }
            if (gameSystem instanceof ProjectileTrailSystem) {
                this._projectileTrail = (ProjectileTrailSystem) gameSystem;
            }
            if (gameSystem instanceof ParticleSystem) {
                this._particle = (ParticleSystem) gameSystem;
            }
            if (gameSystem instanceof GameValueSystem) {
                this.gameValue = (GameValueSystem) gameSystem;
            }
            if (gameSystem instanceof QuestSystem) {
                this._quest = (QuestSystem) gameSystem;
            }
            if (gameSystem instanceof BuffSystem) {
                this.buff = (BuffSystem) gameSystem;
            }
            if (gameSystem instanceof LootSystem) {
                this.loot = (LootSystem) gameSystem;
            }
            if (gameSystem instanceof EnemySystem) {
                this.enemy = (EnemySystem) gameSystem;
            }
            if (gameSystem instanceof UnitSystem) {
                this.unit = (UnitSystem) gameSystem;
            }
            if (gameSystem instanceof AbilitySystem) {
                this.ability = (AbilitySystem) gameSystem;
            }
            if (gameSystem instanceof MapSystem) {
                this.map = (MapSystem) gameSystem;
            }
            if (gameSystem instanceof ProjectileSystem) {
                this.projectile = (ProjectileSystem) gameSystem;
            }
            if (gameSystem instanceof ExplosionSystem) {
                this.explosion = (ExplosionSystem) gameSystem;
            }
            if (gameSystem instanceof TowerSystem) {
                this.tower = (TowerSystem) gameSystem;
            }
            if (gameSystem instanceof MinerSystem) {
                this.miner = (MinerSystem) gameSystem;
            }
            if (gameSystem instanceof ModifierSystem) {
                this.modifier = (ModifierSystem) gameSystem;
            }
            if (gameSystem instanceof WaveSystem) {
                this.wave = (WaveSystem) gameSystem;
            }
            if (gameSystem instanceof StatisticsSystem) {
                this.statistics = (StatisticsSystem) gameSystem;
            }
            if (gameSystem instanceof ScriptSystem) {
                this.script = (ScriptSystem) gameSystem;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("System is null");
    }

    public void compareSync(GameSystemProvider gameSystemProvider, StringBuilder stringBuilder, boolean z) {
        Array<String> array = f8648p;
        array.clear();
        IntIntMap intIntMap = f8649q;
        intIntMap.clear();
        array.add("S");
        PMath.compareObjects(this, gameSystemProvider, stringBuilder, array, 12, intIntMap, z);
        intIntMap.clear();
    }

    public void createAndSetupNonStateAffectingSystemsAfterDeserialization() {
        Array array = new Array(GameSystem.class);
        array.add(new SoundSystem());
        array.add(new InputSystem());
        array.add(new GraphicsSystem(true));
        array.add(new MapRenderingSystem());
        array.add(new PathRenderingSystem());
        array.add(new ProjectileTrailSystem());
        array.add(new ParticleSystem());
        array.add(new QuestSystem());
        Array.ArrayIterator it = array.iterator();
        while (it.hasNext()) {
            addSystem((GameSystem) it.next());
        }
        m22006e();
        Array.ArrayIterator it2 = array.iterator();
        while (it2.hasNext()) {
            ((GameSystem) it2.next()).setRegistered(this);
        }
        Array.ArrayIterator it3 = array.iterator();
        while (it3.hasNext()) {
            ((GameSystem) it3.next()).setup();
        }
        Array.ArrayIterator it4 = array.iterator();
        while (it4.hasNext()) {
            ((GameSystem) it4.next()).postSetup();
        }
        Array.ArrayIterator<GameSystem> it5 = this.f8651a.iterator();
        while (it5.hasNext()) {
            it5.next().postStateRestore();
        }
    }

    public void createSystems() {
        Logger.log("GameSystemProvider", "createSystems");
        SystemsConfig systemsConfig = this.CFG;
        SystemsConfig.Setup setup = systemsConfig.setup;
        if (setup == SystemsConfig.Setup.GAME) {
            if (!systemsConfig.headless) {
                addSystem(new SoundSystem());
            }
            addSystem(new AchievementSystem());
            if (!this.CFG.headless) {
                addSystem(new InputSystem());
            }
            if (!this.CFG.headless) {
                addSystem(new GraphicsSystem(true));
            }
            addSystem(new GameValueSystem());
            addSystem(new GameStateSystem());
            if (!this.CFG.headless) {
                addSystem(new QuestSystem());
            }
            addSystem(new BuffSystem());
            addSystem(new LootSystem());
            addSystem(new EnemySystem());
            addSystem(new UnitSystem());
            addSystem(new AbilitySystem());
            addSystem(new MapSystem());
            if (!this.CFG.headless) {
                addSystem(new MapRenderingSystem());
            }
            if (!this.CFG.headless) {
                addSystem(new PathRenderingSystem());
            }
            addSystem(new ProjectileSystem());
            addSystem(new ExplosionSystem());
            addSystem(new TowerSystem());
            addSystem(new MinerSystem());
            addSystem(new ModifierSystem());
            if (!this.CFG.headless) {
                addSystem(new ProjectileTrailSystem());
            }
            if (!this.CFG.headless) {
                addSystem(new ParticleSystem());
            }
            addSystem(new WaveSystem());
            addSystem(new StatisticsSystem());
            addSystem(new ScriptSystem(true));
        } else if (setup == SystemsConfig.Setup.MAP_EDITOR) {
            addSystem(new StateSystem());
            addSystem(new InventorySystem());
            addSystem(new MapEditorSystem());
            addSystem(new MapSystem());
            addSystem(new MapRenderingSystem());
            addSystem(new PathRenderingSystem());
            addSystem(new ParticleSystem());
        }
        m22006e();
        int i = this.f8651a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f8651a.items[i2].setRegistered(this);
        }
    }

    /* renamed from: d */
    public final <T extends GameSystem> T m22007d(Class<T> cls) {
        T t = (T) this.f8652b.get(cls, null);
        if (t == null) {
            int i = 0;
            while (true) {
                Array<GameSystem> array = this.f8651a;
                if (i < array.size) {
                    if (cls.isInstance(array.items[i])) {
                        return (T) this.f8651a.items[i];
                    }
                    i++;
                } else {
                    throw new IllegalArgumentException("System " + cls.getName() + " is not registered");
                }
            }
        } else {
            return t;
        }
    }

    public void dispose() {
        int i = this.f8651a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f8651a.get(i2).dispose();
            this.f8651a.get(i2).setUnregistered();
        }
        this.f8651a.clear();
        this.f8652b.clear();
        this._inventory = null;
        this._mapEditor = null;
        this._sound = null;
        this._input = null;
        this._graphics = null;
        this._mapRendering = null;
        this._pathRendering = null;
        this._projectileTrail = null;
        this._particle = null;
        this.gameValue = null;
        this.state = null;
        this.gameState = null;
        this._quest = null;
        this.buff = null;
        this.loot = null;
        this.enemy = null;
        this.unit = null;
        this.ability = null;
        this.map = null;
        this.projectile = null;
        this.explosion = null;
        this.tower = null;
        this.miner = null;
        this.modifier = null;
        this.wave = null;
        this.statistics = null;
        this.script = null;
    }

    public void flushSystemsFrameProfiling() {
        int i = this.f8651a.size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = this.f8653d[i2];
            if (this.f8651a.items[i2].profileUpdate()) {
                Game.f8589i.debugManager.registerFrameJob(this.f8651a.items[i2].getSystemName(), j);
            }
        }
    }

    public void postSetupSystems() {
        int i = this.f8651a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f8651a.items[i2].postSetup();
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.CFG = (SystemsConfig) kryo.readObject(input, SystemsConfig.class);
        int readVarInt = input.readVarInt(true);
        for (int i = 0; i < readVarInt; i++) {
            addSystem((GameSystem) kryo.readClassAndObject(input));
        }
    }

    public void setupSystems() {
        int i = this.f8651a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f8651a.items[i2].setup();
        }
    }

    public void updateSystems() {
        float tickRateDeltaTime;
        GameStateSystem gameStateSystem;
        GameStateSystem gameStateSystem2 = this.gameState;
        if (gameStateSystem2 != null) {
            gameStateSystem2.updateNumber++;
            gameStateSystem2.inUpdateStage = true;
            if (Config.isHeadless()) {
                GameStateSystem gameStateSystem3 = this.gameState;
                if (gameStateSystem3.updateNumber % 10000 == 0 && gameStateSystem3.headlessValidatedReplayRecord != null) {
                    long timestampMillis = Game.getTimestampMillis();
                    float f = this.gameState.updateNumber;
                    ((HeadlessReplayValidationGame) Game.f8589i).writeServerStatus("validating|" + this.gameState.headlessValidatedReplayRecord.f10052id + "|" + this.gameState.updateNumber + "|" + this.gameState.validationLastUpdateNumber + "|" + ((int) (f / (((float) (timestampMillis - gameStateSystem.validationStartTimestamp)) * 0.001f))));
                    if (this.gameState.updateNumber % 20000 == 0) {
                        Logger.log("GameSystemProvider", (this.gameState.updateNumber / CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + "k");
                    }
                }
            }
        }
        int i = this.f8651a.size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            long realTickCount = Game.getRealTickCount();
            GameSystem gameSystem = this.f8651a.items[i3];
            GameValueSystem gameValueSystem = this.gameValue;
            if (gameValueSystem == null) {
                tickRateDeltaTime = Config.UPDATE_DELTA_TIME;
            } else {
                tickRateDeltaTime = gameValueSystem.getTickRateDeltaTime();
            }
            gameSystem.update(tickRateDeltaTime);
            long[] jArr = this.f8653d;
            jArr[i2] = jArr[i2] + (Game.getRealTickCount() - realTickCount);
            i2++;
        }
        GameStateSystem gameStateSystem4 = this.gameState;
        if (gameStateSystem4 != null) {
            gameStateSystem4.inUpdateStage = false;
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.CFG);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Array<GameSystem> array = this.f8651a;
            if (i2 >= array.size) {
                break;
            }
            if (array.items[i2].affectsGameState()) {
                i3++;
            }
            i2++;
        }
        output.writeVarInt(i3, true);
        while (true) {
            Array<GameSystem> array2 = this.f8651a;
            if (i < array2.size) {
                if (array2.items[i].affectsGameState()) {
                    kryo.writeClassAndObject(output, this.f8651a.items[i]);
                }
                i++;
            } else {
                return;
            }
        }
    }

    public GameSystemProvider(SystemsConfig systemsConfig) {
        this.f8651a = new Array<>(true, 1, GameSystem.class);
        this.f8652b = new ObjectMap<>();
        this.f8653d = new long[64];
        this.CFG = systemsConfig;
    }
}

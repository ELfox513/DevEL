package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.ObjectMap;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaBoolean;
import com.prineside.luaj.LuaInteger;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.jse.CoerceJavaToLua;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.actions.BuildMinerAction;
import com.prineside.tdi2.actions.GlobalUpgradeMinerAction;
import com.prineside.tdi2.actions.SellMinerAction;
import com.prineside.tdi2.actions.UpgradeMinerAction;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ScriptManager;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.ScriptProxyCreator;
@REGS
/* loaded from: classes2.dex */
public class MinerSystem extends GameSystem {

    /* renamed from: p */
    public static final GameValueType[] f11637p = {GameValueType.MINER_COUNT_SCALAR, GameValueType.MINER_COUNT_VECTOR, GameValueType.MINER_COUNT_MATRIX, GameValueType.MINER_COUNT_TENSOR, GameValueType.MINER_COUNT_INFIAR};

    /* renamed from: q */
    public static final float[] f11638q = {1.0f, 1.2f, 1.5f, 1.9f, 2.4f, 3.0f, 3.6f, 4.2f, 4.9f, 5.6f, 6.5f};
    @NAGS

    /* renamed from: d */
    public final float[][] f11641d;
    @NAGS

    /* renamed from: k */
    public final Array<Sprite>[] f11642k;

    /* renamed from: a */
    public int f11639a = 1;
    public DelayedRemovalArray<Miner> miners = new DelayedRemovalArray<>(false, 8, Miner.class);

    /* renamed from: b */
    public int[] f11640b = new int[MinerType.values.length];
    public ListenerGroup<MinerSystemListener> listeners = new ListenerGroup<>(MinerSystemListener.class);

    /* renamed from: com.prineside.tdi2.systems.MinerSystem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23201 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11643a;

        static {
            int[] iArr = new int[MinerType.values().length];
            f11643a = iArr;
            try {
                iArr[MinerType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11643a[MinerType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11643a[MinerType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11643a[MinerType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11643a[MinerType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface MinerSystemListener extends GameListener {

        @REGS
        /* loaded from: classes2.dex */
        public static class ListenerScriptProxy implements MinerSystemListener, KryoSerializable {

            /* renamed from: a */
            public LuaValue f11644a;

            static {
                ObjectMap<String, ScriptProxyCreator> objectMap = ScriptManager.SCRIPT_PROXIES;
                objectMap.put(MinerSystem.class.getName() + "$MinerSystemListener", new ScriptProxyCreator() { // from class: com.prineside.tdi2.systems.k
                    @Override // com.prineside.tdi2.utils.ScriptProxyCreator
                    public final Object get(LuaValue luaValue) {
                        Object m20938b;
                        m20938b = MinerSystem.MinerSystemListener.ListenerScriptProxy.m20938b(luaValue);
                        return m20938b;
                    }
                });
            }

            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return true;
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 100;
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void read(Kryo kryo, Input input) {
                this.f11644a = (LuaValue) kryo.readClassAndObject(input);
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void write(Kryo kryo, Output output) {
                kryo.writeClassAndObject(output, this.f11644a);
            }

            /* renamed from: b */
            public static /* synthetic */ Object m20938b(LuaValue luaValue) {
                ListenerScriptProxy listenerScriptProxy = new ListenerScriptProxy();
                listenerScriptProxy.f11644a = luaValue;
                return listenerScriptProxy;
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerBuilt(Miner miner, int i) {
                LuaValue luaValue = this.f11644a.get("minerBuilt");
                if (!luaValue.isnil()) {
                    luaValue.invoke(LuaValue.cachedVarargsOf(CoerceJavaToLua.coerce(miner), LuaValue.cachedInt(i)));
                }
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerResourcesChanged(Miner miner, ResourceType resourceType, int i, boolean z) {
                LuaBoolean luaBoolean;
                LuaValue luaValue = this.f11644a.get("minerResourcesChanged");
                if (!luaValue.isnil()) {
                    LuaValue coerce = CoerceJavaToLua.coerce(miner);
                    LuaValue coerce2 = CoerceJavaToLua.coerce(resourceType);
                    LuaInteger cachedInt = LuaValue.cachedInt(i);
                    if (z) {
                        luaBoolean = LuaValue.TRUE;
                    } else {
                        luaBoolean = LuaValue.FALSE;
                    }
                    luaValue.invoke(LuaValue.cachedVarargsOf(coerce, coerce2, cachedInt, luaBoolean));
                }
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerSold(Miner miner, int i) {
                LuaValue luaValue = this.f11644a.get("minerSold");
                if (!luaValue.isnil()) {
                    luaValue.invoke(LuaValue.cachedVarargsOf(CoerceJavaToLua.coerce(miner), LuaValue.cachedInt(i)));
                }
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerUpgraded(Miner miner, int i) {
                LuaValue luaValue = this.f11644a.get("minerUpgraded");
                if (!luaValue.isnil()) {
                    luaValue.invoke(LuaValue.cachedVarargsOf(CoerceJavaToLua.coerce(miner), LuaValue.cachedInt(i)));
                }
            }
        }

        /* loaded from: classes2.dex */
        public static abstract class MinerSystemListenerAdapter implements MinerSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerBuilt(Miner miner, int i) {
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerResourcesChanged(Miner miner, ResourceType resourceType, int i, boolean z) {
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerSold(Miner miner, int i) {
            }

            @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
            public void minerUpgraded(Miner miner, int i) {
            }
        }

        void minerBuilt(Miner miner, int i);

        void minerResourcesChanged(Miner miner, ResourceType resourceType, int i, boolean z);

        void minerSold(Miner miner, int i);

        void minerUpgraded(Miner miner, int i);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11645a;

        public /* synthetic */ _MapSystemListener(GameSystemProvider gameSystemProvider, C23201 c23201) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 3238044;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerPlacedOnMap(Miner miner) {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerRemovedFromMap(Miner miner, SourceTile sourceTile) {
            this.f11645a.miner.unregister(miner);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11645a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11645a, GameSystemProvider.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        public _MapSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11645a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11646a;

        public /* synthetic */ _WaveSystemListener(GameSystemProvider gameSystemProvider, C23201 c23201) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 9239094;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void nextWaveForced(int i, int i2, float f) {
            ParticleSystem particleSystem;
            if (f > 0.0f) {
                int i3 = 0;
                while (true) {
                    DelayedRemovalArray<Miner> delayedRemovalArray = this.f11646a.miner.miners;
                    if (i3 < delayedRemovalArray.size) {
                        Miner miner = delayedRemovalArray.items[i3];
                        miner.doubleSpeedTimeLeft += f;
                        if (miner.doubleSpeedParticle == null && Game.f8589i.settingsManager.isParticlesDrawing() && (particleSystem = this.f11646a._particle) != null && !particleSystem.willParticleBeSkipped()) {
                            ParticleEffectPool.PooledEffect obtain = Game.f8589i.minerManager.doubleSpeedParticleEffectPool.obtain();
                            miner.doubleSpeedParticle = obtain;
                            obtain.setPosition(miner.getTile().center.f5527x, miner.getTile().center.f5528y);
                            this.f11646a._particle.addParticle(miner.doubleSpeedParticle, true);
                        }
                        i3++;
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11646a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11646a, GameSystemProvider.class);
        }

        @Deprecated
        public _WaveSystemListener() {
        }

        public _WaveSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11646a = gameSystemProvider;
        }
    }

    /* renamed from: a */
    public final int m20942a(MinerType minerType) {
        return this.f11640b[minerType.ordinal()];
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public void buildMinerAction(MinerType minerType) {
        Tile selectedTile = this.f8844S.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.SOURCE && ((SourceTile) selectedTile).miner == null) {
            buildMinerAction(minerType, selectedTile.getX(), selectedTile.getY());
        }
    }

    public int getBuildPrice(MinerType minerType) {
        double baseBuildPrice = Game.f8589i.minerManager.getFactory(minerType).getBaseBuildPrice(this.f8844S.gameValue);
        double pow = StrictMath.pow(1.600000023841858d, m20942a(minerType));
        Double.isNaN(baseBuildPrice);
        return (int) (baseBuildPrice * pow);
    }

    public int getBuildableMinersCount(MinerType minerType) {
        return getMaxMinersCount(minerType) - this.f11640b[minerType.ordinal()];
    }

    public int getGlobalUpgradePrice(MinerType minerType) {
        int i = 0;
        int i2 = 0;
        while (true) {
            DelayedRemovalArray<Miner> delayedRemovalArray = this.miners;
            if (i < delayedRemovalArray.size) {
                Miner miner = delayedRemovalArray.items[i];
                if (miner.type == minerType && miner.getUpgradeLevel() < getMaxUpgradeLevel(miner.type)) {
                    int upgradeLevel = miner.getUpgradeLevel() + 1;
                    float f = 1.0f;
                    int i3 = 0;
                    while (true) {
                        DelayedRemovalArray<Miner> delayedRemovalArray2 = this.miners;
                        if (i3 >= delayedRemovalArray2.size) {
                            break;
                        }
                        Miner miner2 = delayedRemovalArray2.items[i3];
                        if (miner2.type == minerType) {
                            int upgradeLevel2 = miner2.getUpgradeLevel();
                            if (i3 < i && upgradeLevel2 < getMaxUpgradeLevel(miner2.type)) {
                                upgradeLevel2++;
                            }
                            if (upgradeLevel2 >= upgradeLevel) {
                                f *= 1.25f;
                            }
                        }
                        i3++;
                    }
                    i2 += (int) (miner.getBaseUpgradePrice(upgradeLevel) * f);
                }
                i++;
            } else {
                return i2;
            }
        }
    }

    public int getMaxMinersCount(MinerType minerType) {
        return this.f8844S.gameValue.getIntValue(f11637p[minerType.ordinal()]);
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Miner";
    }

    public void globalUpgradeMinerAction(MinerType minerType) {
        this.f8844S.gameState.pushAction(new GlobalUpgradeMinerAction(minerType));
    }

    public boolean isRegistered(Tower tower) {
        return tower.isRegistered();
    }

    public void sellMinerAction(Miner miner) {
        sellMinerAction(miner.getTile().getX(), miner.getTile().getY());
    }

    public void upgradeMiner(Miner miner) {
        upgradeMiner(miner.getTile().getX(), miner.getTile().getY());
    }

    public void upgradeMinerAction(Miner miner) {
        upgradeMinerAction(miner.getTile().getX(), miner.getTile().getY());
    }

    public void addResources(Miner miner, ResourceType resourceType, int i, boolean z) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        int resourcesCount = miner.getTile().getResourcesCount(resourceType);
        int i2 = Integer.MAX_VALUE - miner.minedResources[resourceType.ordinal()].get();
        if (this.f8844S.gameState.gameMode == GameStateSystem.GameMode.USER_MAPS) {
            i2 = resourcesCount - miner.getTile().minedResources[resourceType.ordinal()];
        }
        miner.minedResources[resourceType.ordinal()].add(i);
        int[] iArr = miner.getTile().minedResources;
        int ordinal = resourceType.ordinal();
        iArr[ordinal] = iArr[ordinal] + i;
        if (i2 > 0) {
            this.f8844S.gameState.addResources(resourceType, Math.min(i2, i));
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).minerResourcesChanged(miner, resourceType, i, z);
        }
        this.listeners.end();
    }

    /* renamed from: b */
    public final void m20941b(Miner miner) {
        Array<Sprite> array;
        ResourceType resourceType = miner.nextMinedResourceType;
        if (resourceType != null) {
            float f = 1.0f;
            float miningSpeed = 1.0f / getMiningSpeed(miner, resourceType, miner.getUpgradeLevel());
            float f2 = miner.miningTime;
            int i = (int) (f2 / miningSpeed);
            miner.miningTime = f2 - (i * miningSpeed);
            addResources(miner, resourceType, i, true);
            if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                ParticleEffectPool.PooledEffect obtain = Game.f8589i.minerManager.minedResourceParticleEffectPool.obtain();
                if (this.f11642k[resourceType.ordinal()] == null) {
                    array = new Array<>(new Sprite[]{new Sprite(Game.f8589i.assetManager.getTextureRegion(Resource.TEXTURE_REGION_NAMES[resourceType.ordinal()]))});
                    this.f11642k[resourceType.ordinal()] = array;
                } else {
                    array = this.f11642k[resourceType.ordinal()];
                }
                obtain.getEmitters().get(1).setSprites(array);
                Array<ParticleEmitter> emitters = obtain.getEmitters();
                if (this.f8844S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
                    f = 0.28f;
                }
                for (int i2 = 0; i2 < emitters.size; i2++) {
                    Color color = Game.f8589i.resourceManager.getColor(resourceType);
                    float[] fArr = this.f11641d[resourceType.ordinal()];
                    fArr[0] = color.f3892r * f;
                    fArr[1] = color.f3891g * f;
                    fArr[2] = color.f3890b * f;
                    emitters.get(i2).getTint().setColors(fArr);
                }
                obtain.setPosition(miner.getTile().center.f5527x, miner.getTile().center.f5528y);
                this.f8844S._particle.addParticle(obtain, LimitedParticleType.RESOURCE_MINED, miner.getTile().center.f5527x, miner.getTile().center.f5528y);
            }
        }
        m20940c(miner);
    }

    public void buildMiner(MinerType minerType, int i, int i2) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (this.f11640b[minerType.ordinal()] + 1 > getMaxMinersCount(minerType)) {
            Logger.error("MinerSystem", "No more miners of type " + minerType.name() + " can be built");
            return;
        }
        Tile tile = this.f8844S.map.getMap().getTile(i, i2);
        if (tile != null) {
            if (tile.type == TileType.SOURCE) {
                if (((SourceTile) tile).miner == null) {
                    Miner create = Game.f8589i.minerManager.getFactory(minerType).create();
                    int buildPrice = getBuildPrice(minerType);
                    if (this.f8844S.gameState.removeMoney(buildPrice)) {
                        register(create);
                        create.setInstallTime(create.getInstallDuration());
                        create.moneySpentOn.set(buildPrice);
                        this.f8844S.map.setMiner(tile.getX(), tile.getY(), create);
                        this.listeners.begin();
                        int size = this.listeners.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            this.listeners.get(i3).minerBuilt(create, buildPrice);
                        }
                        this.listeners.end();
                        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                            ParticleEffectPool.PooledEffect obtain = Game.f8589i.minerManager.highlightParticles[create.type.ordinal()].obtain();
                            obtain.setPosition(create.getTile().center.f5527x, create.getTile().center.f5528y);
                            this.f8844S._particle.addParticle(obtain, true);
                            return;
                        }
                        return;
                    }
                    Logger.error("MinerSystem", "not enough money to build a miner");
                    return;
                }
                Logger.error("MinerSystem", "trying to build miner on tile which already has a miner");
                return;
            }
            Logger.error("MinerSystem", "buildMiner - tile type is " + tile.type.name());
            return;
        }
        Logger.error("MinerSystem", "buildMiner - tile is null");
    }

    /* renamed from: c */
    public final void m20940c(Miner miner) {
        ResourceType[] resourceTypeArr;
        ResourceType[] resourceTypeArr2;
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        SourceTile tile = miner.getTile();
        int i = 0;
        for (ResourceType resourceType : ResourceType.values) {
            if (Game.f8589i.minerManager.getFactory(miner.type).canMineResource(resourceType)) {
                i += tile.getResourcesCount(resourceType);
            }
        }
        if (i > 0) {
            int randomInt = this.f8844S.gameState.randomInt(i);
            int i2 = 0;
            for (ResourceType resourceType2 : ResourceType.values) {
                if (Game.f8589i.minerManager.getFactory(miner.type).canMineResource(resourceType2)) {
                    int resourcesCount = tile.getResourcesCount(resourceType2);
                    if (randomInt >= i2 && randomInt < i2 + resourcesCount) {
                        miner.nextMinedResourceType = resourceType2;
                        return;
                    }
                    i2 += resourcesCount;
                }
            }
            return;
        }
        miner.nextMinedResourceType = null;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.listeners.clear();
        this.miners.clear();
    }

    public void drawBatch(SpriteBatch spriteBatch, float f) {
        this.miners.begin();
        MapRenderingSystem.DrawMode drawMode = this.f8844S._mapRendering.getDrawMode();
        int i = this.miners.size;
        for (int i2 = 0; i2 < i; i2++) {
            Miner miner = this.miners.items[i2];
            SourceTile tile = miner.getTile();
            if (tile.visibleOnScreen) {
                miner.drawBatch(spriteBatch, tile.getX() * 128, tile.getY() * 128, 128.0f, f, drawMode);
            }
        }
        this.miners.end();
    }

    public int getMaxUpgradeLevel(MinerType minerType) {
        int intValue;
        int intValue2 = this.f8844S.gameValue.getIntValue(GameValueType.MINERS_MAX_UPGRADE_LEVEL);
        int i = C23201.f11643a[minerType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_INFIAR_MAX_UPGRADE_LEVEL);
                        }
                        return Math.min(intValue2, 10);
                    }
                    intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_TENSOR_MAX_UPGRADE_LEVEL);
                } else {
                    intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_MATRIX_MAX_UPGRADE_LEVEL);
                }
            } else {
                intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_VECTOR_MAX_UPGRADE_LEVEL);
            }
        } else {
            intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINER_SCALAR_MAX_UPGRADE_LEVEL);
        }
        intValue2 += intValue;
        return Math.min(intValue2, 10);
    }

    public float getMiningSpeed(Miner miner, ResourceType resourceType, int i) {
        float baseMiningSpeed = (Game.f8589i.minerManager.getFactory(miner.type).getBaseMiningSpeed(resourceType, this.f8844S.gameValue) * f11638q[i]) / 60.0f;
        if (baseMiningSpeed > 0.0f && baseMiningSpeed <= 50000.0f) {
            float f = 1.0f;
            float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.MODIFIER_MINING_SPEED_VALUE);
            int i2 = 0;
            while (true) {
                DelayedRemovalArray<Modifier.ModifierSidePair> delayedRemovalArray = miner.nearbyModifiers;
                if (i2 >= delayedRemovalArray.size) {
                    break;
                }
                if (delayedRemovalArray.get(i2).modifierType == ModifierType.MINING_SPEED) {
                    f += percentValueAsMultiplier;
                }
                i2++;
            }
            float f2 = baseMiningSpeed * f;
            SourceTile tile = miner.getTile();
            if (tile != null) {
                f2 *= tile.getResourceDensity();
            }
            if (f2 > 0.0f && f2 <= 50000.0f) {
                if (this.f8844S.gameState.difficultyMode == DifficultyMode.EASY) {
                    return f2 * 0.75f;
                }
                return f2;
            }
            throw new IllegalStateException("Base mining speed for " + miner.type.name() + " L" + i + " and " + resourceType.name() + " is " + f2);
        }
        throw new IllegalStateException("Base mining speed for " + miner.type.name() + " L" + i + " and " + resourceType.name() + " is " + baseMiningSpeed);
    }

    public void register(Miner miner) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (!miner.isRegistered()) {
            int[] iArr = this.f11640b;
            int ordinal = miner.type.ordinal();
            iArr[ordinal] = iArr[ordinal] + 1;
            int i = this.f11639a;
            this.f11639a = i + 1;
            miner.f8765id = i;
            miner.setRegistered(this.f8844S);
            this.miners.add(miner);
            return;
        }
        throw new IllegalStateException("Miner is already registered");
    }

    public boolean removeResources(Miner miner, ResourceType resourceType, int i) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (miner.minedResources[resourceType.ordinal()].get() < i) {
            return false;
        }
        int i2 = i - ((this.f8844S.gameState.gameMode != GameStateSystem.GameMode.USER_MAPS || (r2 = miner.getTile().minedResources[resourceType.ordinal()] - miner.getTile().getResourcesCount(resourceType)) < 0) ? 0 : 0);
        if (i2 > 0) {
            this.f8844S.gameState.removeResources(resourceType, i2);
        }
        miner.minedResources[resourceType.ordinal()].sub(i);
        int[] iArr = miner.getTile().minedResources;
        int ordinal = resourceType.ordinal();
        iArr[ordinal] = iArr[ordinal] - i;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).minerResourcesChanged(miner, resourceType, -i, false);
        }
        this.listeners.end();
        return true;
    }

    public void sellMiner(int i, int i2) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Tile tile = this.f8844S.map.getMap().getTile(i, i2);
        if (tile != null) {
            if (tile.type == TileType.SOURCE) {
                Miner miner = ((SourceTile) tile).miner;
                if (miner != null) {
                    int sellPrice = miner.getSellPrice();
                    this.f8844S.gameState.addMoney(sellPrice, false);
                    this.f8844S.map.removeMiner(miner);
                    this.listeners.begin();
                    int size = this.listeners.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        this.listeners.get(i3).minerSold(miner, sellPrice);
                    }
                    this.listeners.end();
                    return;
                }
                Logger.error("MinerSystem", "sellMiner - miner is not on tile");
                return;
            }
            Logger.error("MinerSystem", "sellMiner - tile is " + tile.type.name());
            return;
        }
        Logger.error("MinerSystem", "sellMiner - tile is null");
    }

    public void sellMinerAction(int i, int i2) {
        this.f8844S.gameState.pushAction(new SellMinerAction(i, i2));
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        GameSystemProvider gameSystemProvider = this.f8844S;
        gameSystemProvider.map.listeners.add(new _MapSystemListener(gameSystemProvider, null));
        GameSystemProvider gameSystemProvider2 = this.f8844S;
        gameSystemProvider2.wave.listeners.add(new _WaveSystemListener(gameSystemProvider2, null));
    }

    public void unregister(Miner miner) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (miner.isRegistered()) {
            ParticleEffectPool.PooledEffect pooledEffect = miner.doubleSpeedParticle;
            if (pooledEffect != null) {
                pooledEffect.allowCompletion();
                miner.doubleSpeedParticle = null;
            }
            int[] iArr = this.f11640b;
            int ordinal = miner.type.ordinal();
            iArr[ordinal] = iArr[ordinal] - 1;
            miner.setUnregistered();
            this.miners.removeValue(miner, true);
            return;
        }
        throw new IllegalArgumentException("Miner is not registered");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        StateSystem.ActionsArray currentUpdateActions = this.f8844S.gameState.getCurrentUpdateActions();
        if (currentUpdateActions != null) {
            for (int i = 0; i < currentUpdateActions.size; i++) {
                Action action = currentUpdateActions.actions[i];
                if (action.getType() == ActionType.BM) {
                    BuildMinerAction buildMinerAction = (BuildMinerAction) action;
                    buildMiner(buildMinerAction.minerType, buildMinerAction.f9069x, buildMinerAction.f9070y);
                    this.f8844S.gameState.registerPlayerActivity();
                } else if (action.getType() == ActionType.UM) {
                    UpgradeMinerAction upgradeMinerAction = (UpgradeMinerAction) action;
                    upgradeMiner(upgradeMinerAction.f9100x, upgradeMinerAction.f9101y);
                    this.f8844S.gameState.registerPlayerActivity();
                } else if (action.getType() == ActionType.GUM) {
                    GlobalUpgradeMinerAction globalUpgradeMinerAction = (GlobalUpgradeMinerAction) action;
                    int i2 = 0;
                    while (true) {
                        DelayedRemovalArray<Miner> delayedRemovalArray = this.miners;
                        if (i2 >= delayedRemovalArray.size) {
                            break;
                        }
                        Miner miner = delayedRemovalArray.items[i2];
                        if (miner.type == globalUpgradeMinerAction.minerType) {
                            upgradeMiner(miner);
                        }
                        i2++;
                    }
                    this.f8844S.gameState.registerPlayerActivity();
                } else if (action.getType() == ActionType.SM) {
                    SellMinerAction sellMinerAction = (SellMinerAction) action;
                    sellMiner(sellMinerAction.f9094x, sellMinerAction.f9095y);
                    this.f8844S.gameState.registerPlayerActivity();
                }
            }
        }
        if (!this.f8844S.gameState.isGameRealTimePasses()) {
            return;
        }
        int i3 = this.miners.size;
        for (int i4 = 0; i4 < i3; i4++) {
            Miner miner2 = this.miners.items[i4];
            float tickRateDeltaTime = this.f8844S.gameValue.getTickRateDeltaTime();
            if (miner2.doubleSpeedTimeLeft != 0.0f) {
                tickRateDeltaTime = this.f8844S.gameValue.getTickRateDeltaTime() * 2.0f;
                float tickRateDeltaTime2 = miner2.doubleSpeedTimeLeft - this.f8844S.gameValue.getTickRateDeltaTime();
                miner2.doubleSpeedTimeLeft = tickRateDeltaTime2;
                if (tickRateDeltaTime2 <= 0.0f) {
                    miner2.doubleSpeedTimeLeft = 0.0f;
                    ParticleEffectPool.PooledEffect pooledEffect = miner2.doubleSpeedParticle;
                    if (pooledEffect != null) {
                        pooledEffect.allowCompletion();
                        miner2.doubleSpeedParticle = null;
                    }
                }
            }
            if (!miner2.isPrepared()) {
                try {
                    miner2.reduceInstallTime(tickRateDeltaTime);
                    if (miner2.isPrepared()) {
                        m20940c(miner2);
                    }
                } catch (Exception e) {
                    throw new IllegalStateException("failed to reduce install time, miner idx " + i4 + " of " + i3, e);
                }
            } else {
                float f2 = miner2.miningTime + tickRateDeltaTime;
                miner2.miningTime = f2;
                ResourceType resourceType = miner2.nextMinedResourceType;
                if (resourceType == null) {
                    if (f2 > 1.0f) {
                        miner2.miningTime = 0.0f;
                        m20940c(miner2);
                    }
                } else {
                    if (miner2.miningTime >= 1.0f / getMiningSpeed(miner2, resourceType, miner2.getUpgradeLevel())) {
                        m20941b(miner2);
                    }
                }
            }
        }
    }

    public void upgradeMiner(int i, int i2) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Tile tile = this.f8844S.map.getMap().getTile(i, i2);
        if (tile != null) {
            if (tile.type == TileType.SOURCE) {
                Miner miner = ((SourceTile) tile).miner;
                if (miner != null) {
                    if (miner.getUpgradeLevel() >= getMaxUpgradeLevel(miner.type)) {
                        Logger.error("MinerSystem", "can't upgrade miner, it is already fully upgraded");
                        return;
                    }
                    int upgradePrice = getUpgradePrice(miner);
                    if (this.f8844S.gameState.removeMoney(upgradePrice)) {
                        miner.moneySpentOn.add(upgradePrice);
                        miner.setUpgradeLevel(miner.getUpgradeLevel() + 1);
                        ResourceType resourceType = miner.nextMinedResourceType;
                        if (resourceType != null) {
                            miner.miningTime *= getMiningSpeed(miner, resourceType, miner.getUpgradeLevel() - 1) / getMiningSpeed(miner, miner.nextMinedResourceType, miner.getUpgradeLevel());
                        }
                        this.listeners.begin();
                        int size = this.listeners.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            this.listeners.get(i3).minerUpgraded(miner, upgradePrice);
                        }
                        this.listeners.end();
                        return;
                    }
                    Logger.error("MinerSystem", "not enough money to upgrade the miner");
                    return;
                }
                Logger.error("MinerSystem", "upgradeMiner - no miner on tile");
                return;
            }
            Logger.error("MinerSystem", "upgradeMiner - tile is " + tile.type.name());
            return;
        }
        Logger.error("MinerSystem", "upgradeMiner - tile is null");
    }

    public void upgradeMinerAction(int i, int i2) {
        Miner miner;
        Tile tile = this.f8844S.map.getMap().getTile(i, i2);
        if (tile == null || tile.type != TileType.SOURCE || (miner = ((SourceTile) tile).miner) == null || miner.getUpgradeLevel() >= getMaxUpgradeLevel(miner.type)) {
            return;
        }
        if (this.f8844S.gameState.getMoney() >= getUpgradePrice(miner)) {
            this.f8844S.gameState.pushAction(new UpgradeMinerAction(i, i2));
        }
    }

    public MinerSystem() {
        ResourceType[] resourceTypeArr = ResourceType.values;
        this.f11641d = (float[][]) java.lang.reflect.Array.newInstance(Float.TYPE, resourceTypeArr.length, 3);
        this.f11642k = new Array[resourceTypeArr.length];
    }

    public int getUpgradePrice(Miner miner) {
        int upgradeLevel = miner.getUpgradeLevel() + 1;
        int i = 0;
        if (upgradeLevel > getMaxUpgradeLevel(miner.type)) {
            return 0;
        }
        float f = 1.0f;
        while (true) {
            DelayedRemovalArray<Miner> delayedRemovalArray = this.miners;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.get(i).type == miner.type && this.miners.get(i).getUpgradeLevel() >= upgradeLevel) {
                    f *= 1.25f;
                }
                i++;
            } else {
                return (int) (miner.getBaseUpgradePrice(upgradeLevel) * f);
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11639a = input.readVarInt(true);
        this.miners = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f11640b = (int[]) kryo.readObject(input, int[].class);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f11639a, true);
        kryo.writeObject(output, this.miners);
        kryo.writeObject(output, this.f11640b);
        kryo.writeObject(output, this.listeners);
    }

    public void buildMinerAction(MinerType minerType, int i, int i2) {
        Tile tile;
        if (this.f11640b[minerType.ordinal()] + 1 <= getMaxMinersCount(minerType) && (tile = this.f8844S.map.getMap().getTile(i, i2)) != null && tile.type == TileType.SOURCE && ((SourceTile) tile).miner == null) {
            if (this.f8844S.gameState.getMoney() >= getBuildPrice(minerType)) {
                this.f8844S.gameState.pushAction(new BuildMinerAction(minerType, i, i2));
            }
        }
    }
}

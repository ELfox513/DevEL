package com.prineside.tdi2.systems;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.BossTile;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.tiles.GameValueTile;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class GameValueSystem extends GameSystem implements GameValueProvider {

    /* renamed from: q */
    public static double[] f11502q = new double[GameValueType.values.length];

    /* renamed from: a */
    public GameValueManager.GameValuesSnapshot f11503a;

    /* renamed from: b */
    public GameValueManager.GameValuesSnapshot f11504b;

    /* renamed from: d */
    public int f11505d;

    /* renamed from: k */
    public float f11506k;
    public ListenerGroup<GameValueSystemListener> listeners = new ListenerGroup<>(GameValueSystemListener.class);

    /* renamed from: p */
    public Array<GameValueConfig> f11507p;

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface GameValueSystemListener extends GameListener {
        void recalculated(double[] dArr);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11508a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 127001012;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11508a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11508a, GameSystemProvider.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void tileChanged(int i, int i2, Tile tile, Tile tile2) {
            if ((tile instanceof CoreTile) || (tile instanceof TargetTile) || (tile instanceof GameValueTile) || (tile2 instanceof CoreTile) || (tile2 instanceof TargetTile) || (tile2 instanceof GameValueTile)) {
                this.f11508a.gameValue.recalculate();
            }
        }

        public _MapSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11508a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public boolean getBooleanValue(GameValueType gameValueType) {
        return this.f11504b.getBooleanValue(gameValueType);
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public float getFloatValue(GameValueType gameValueType) {
        return this.f11504b.getFloatValue(gameValueType);
    }

    public GameValueManager.GameValuesSnapshot getGlobalSnapshot() {
        return this.f11503a;
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public int getIntValue(GameValueType gameValueType) {
        return this.f11504b.getIntValue(gameValueType);
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public double getPercentValueAsMultiplier(GameValueType gameValueType) {
        return this.f11504b.getPercentValueAsMultiplier(gameValueType);
    }

    public GameValueManager.GameValuesSnapshot getSnapshot() {
        return this.f11504b;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "GameValue";
    }

    public int getTickRate() {
        return this.f11505d;
    }

    public float getTickRateDeltaTime() {
        return this.f11506k;
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public double getValue(GameValueType gameValueType) {
        return this.f11504b.getValue(gameValueType);
    }

    public void removeCustomGameValue(GameValueConfig gameValueConfig) {
        this.f11507p.removeValue(gameValueConfig, true);
    }

    public void addCustomGameValue(GameValueConfig gameValueConfig) {
        if (!this.f11507p.contains(gameValueConfig, true)) {
            this.f11507p.add(gameValueConfig);
        }
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public float getFloatValue(GameValueType gameValueType, GameValueType gameValueType2) {
        return this.f11504b.getFloatValue(gameValueType, gameValueType2);
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public int getIntValue(GameValueType gameValueType, GameValueType gameValueType2) {
        return this.f11504b.getIntValue(gameValueType, gameValueType2);
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public double getPercentValueAsMultiplier(GameValueType gameValueType, GameValueType gameValueType2) {
        return this.f11504b.getPercentValueAsMultiplier(gameValueType, gameValueType2);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
        this.f11503a = (GameValueManager.GameValuesSnapshot) kryo.readObject(input, GameValueManager.GameValuesSnapshot.class);
        this.f11504b = (GameValueManager.GameValuesSnapshot) kryo.readObject(input, GameValueManager.GameValuesSnapshot.class);
        this.f11505d = input.readVarInt(true);
        this.f11506k = input.readFloat();
        this.f11507p = (Array) kryo.readObject(input, Array.class);
    }

    public void recalculate() {
        DelayedRemovalArray<GameValueManager.GameValueEffect> delayedRemovalArray;
        DelayedRemovalArray<GameValueManager.GameValueEffect> delayedRemovalArray2;
        DelayedRemovalArray<GameValueManager.GameValueEffect> delayedRemovalArray3;
        DelayedRemovalArray<GameValueManager.GameValueEffect> delayedRemovalArray4;
        DelayedRemovalArray<GameValueManager.GameValueEffect> delayedRemovalArray5;
        if (this.f11503a != null) {
            double[] dArr = this.f11504b.values;
            System.arraycopy(dArr, 0, f11502q, 0, dArr.length);
            int i = 0;
            while (true) {
                delayedRemovalArray = this.f11504b.effects;
                if (i >= delayedRemovalArray.size) {
                    break;
                }
                GameValueManager.gameValueEffectPool.free(delayedRemovalArray.items[i]);
                i++;
            }
            delayedRemovalArray.clear();
            double[] dArr2 = this.f11503a.values;
            double[] dArr3 = this.f11504b.values;
            System.arraycopy(dArr2, 0, dArr3, 0, dArr3.length);
            for (int i2 = 0; i2 < this.f11503a.effects.size; i2++) {
                GameValueManager.GameValueEffect obtain = GameValueManager.gameValueEffectPool.obtain();
                obtain.from(this.f11503a.effects.items[i2]);
                this.f11504b.effects.add(obtain);
            }
            TargetTile targetTile = this.f8844S.map.getMap().targetTile;
            if (targetTile != null) {
                Array<GameValueConfig> gameValues = targetTile.getGameValues();
                for (int i3 = 0; i3 < gameValues.size; i3++) {
                    GameValueConfig gameValueConfig = gameValues.items[i3];
                    if (!gameValueConfig.allowBonuses) {
                        this.f11504b.effects.begin();
                        int i4 = 0;
                        while (true) {
                            delayedRemovalArray5 = this.f11504b.effects;
                            if (i4 >= delayedRemovalArray5.size) {
                                break;
                            }
                            GameValueManager.GameValueEffect gameValueEffect = delayedRemovalArray5.get(i4);
                            if (gameValueEffect.type == gameValueConfig.type && gameValueEffect.source != GameValueManager.GameValueEffect.Source.STOCK) {
                                this.f11504b.effects.removeIndex(i4);
                                GameValueManager.gameValueEffectPool.free(gameValueEffect);
                            }
                            i4++;
                        }
                        delayedRemovalArray5.end();
                        this.f11504b.values[gameValueConfig.type.ordinal()] = Game.f8589i.gameValueManager.getStockValueConfig(gameValueConfig.type).stockValue;
                    }
                    if (!gameValueConfig.overwrite) {
                        double[] dArr4 = this.f11504b.values;
                        int ordinal = gameValueConfig.type.ordinal();
                        dArr4[ordinal] = dArr4[ordinal] + gameValueConfig.value;
                        GameValueManager.GameValueEffect obtain2 = GameValueManager.gameValueEffectPool.obtain();
                        obtain2.delta = gameValueConfig.value;
                        obtain2.type = gameValueConfig.type;
                        obtain2.source = GameValueManager.GameValueEffect.Source.BASE_TILE;
                        this.f11504b.effects.add(obtain2);
                    } else {
                        this.f11504b.effects.begin();
                        int i5 = 0;
                        while (true) {
                            delayedRemovalArray4 = this.f11504b.effects;
                            if (i5 >= delayedRemovalArray4.size) {
                                break;
                            }
                            GameValueManager.GameValueEffect gameValueEffect2 = delayedRemovalArray4.get(i5);
                            if (gameValueEffect2.type == gameValueConfig.type) {
                                this.f11504b.effects.removeIndex(i5);
                                GameValueManager.gameValueEffectPool.free(gameValueEffect2);
                            }
                            i5++;
                        }
                        delayedRemovalArray4.end();
                        GameValueManager.GameValueEffect obtain3 = GameValueManager.gameValueEffectPool.obtain();
                        obtain3.delta = (-this.f11504b.values[gameValueConfig.type.ordinal()]) + gameValueConfig.value;
                        obtain3.type = gameValueConfig.type;
                        obtain3.source = GameValueManager.GameValueEffect.Source.BASE_TILE;
                        this.f11504b.effects.add(obtain3);
                        this.f11504b.values[gameValueConfig.type.ordinal()] = gameValueConfig.value;
                    }
                }
            }
            BossTile bossTile = this.f8844S.map.getMap().bossTile;
            if (bossTile != null) {
                Array<GameValueConfig> gameValues2 = bossTile.getGameValues();
                for (int i6 = 0; i6 < gameValues2.size; i6++) {
                    GameValueConfig gameValueConfig2 = gameValues2.items[i6];
                    double[] dArr5 = this.f11504b.values;
                    int ordinal2 = gameValueConfig2.type.ordinal();
                    dArr5[ordinal2] = dArr5[ordinal2] + gameValueConfig2.value;
                    GameValueManager.GameValueEffect obtain4 = GameValueManager.gameValueEffectPool.obtain();
                    obtain4.delta = gameValueConfig2.value;
                    obtain4.type = gameValueConfig2.type;
                    obtain4.source = GameValueManager.GameValueEffect.Source.BOSS_TILE;
                    this.f11504b.effects.add(obtain4);
                }
            }
            DelayedRemovalArray<Tile> delayedRemovalArray6 = this.f8844S.map.getMap().tilesArray;
            for (int i7 = 0; i7 < delayedRemovalArray6.size; i7++) {
                Tile tile = delayedRemovalArray6.items[i7];
                if (tile instanceof GameValueTile) {
                    GameValueTile gameValueTile = (GameValueTile) tile;
                    if (!gameValueTile.isOverwrite()) {
                        double[] dArr6 = this.f11504b.values;
                        int ordinal3 = gameValueTile.getGameValueType().ordinal();
                        dArr6[ordinal3] = dArr6[ordinal3] + gameValueTile.getDelta();
                        GameValueManager.GameValueEffect obtain5 = GameValueManager.gameValueEffectPool.obtain();
                        obtain5.delta = gameValueTile.getDelta();
                        obtain5.type = gameValueTile.getGameValueType();
                        obtain5.source = GameValueManager.GameValueEffect.Source.GV_TILE;
                        this.f11504b.effects.add(obtain5);
                    } else {
                        this.f11504b.effects.begin();
                        int i8 = 0;
                        while (true) {
                            delayedRemovalArray3 = this.f11504b.effects;
                            if (i8 >= delayedRemovalArray3.size) {
                                break;
                            }
                            GameValueManager.GameValueEffect gameValueEffect3 = delayedRemovalArray3.get(i8);
                            if (gameValueEffect3.type == gameValueTile.getGameValueType()) {
                                this.f11504b.effects.removeIndex(i8);
                                GameValueManager.gameValueEffectPool.free(gameValueEffect3);
                            }
                            i8++;
                        }
                        delayedRemovalArray3.end();
                        GameValueManager.GameValueEffect obtain6 = GameValueManager.gameValueEffectPool.obtain();
                        obtain6.delta = (-this.f11504b.values[gameValueTile.getGameValueType().ordinal()]) + gameValueTile.getDelta();
                        obtain6.type = gameValueTile.getGameValueType();
                        obtain6.source = GameValueManager.GameValueEffect.Source.GV_TILE;
                        this.f11504b.effects.add(obtain6);
                        this.f11504b.values[gameValueTile.getGameValueType().ordinal()] = gameValueTile.getDelta();
                    }
                }
            }
            Array<CoreTile> array = this.f8844S.map.getMap().coreTiles;
            for (int i9 = 0; i9 < array.size; i9++) {
                CoreTile coreTile = array.items[i9];
                Array<CoreTile.Upgrade> upgrades = coreTile.getUpgrades();
                for (int i10 = 0; i10 < upgrades.size; i10++) {
                    CoreTile.Upgrade upgrade = upgrades.items[i10];
                    int upgradeInstallLevel = coreTile.getUpgradeInstallLevel(i10);
                    if (upgrade != null && !upgrade.isAction && upgradeInstallLevel != 0) {
                        CoreTile.Upgrade.UpgradeLevel upgradeLevel = upgrade.upgradeLevels.items[upgradeInstallLevel - 1];
                        double[] dArr7 = this.f11504b.values;
                        int ordinal4 = upgrade.getGameValueType().ordinal();
                        double d = dArr7[ordinal4];
                        double d2 = upgradeLevel.delta;
                        Double.isNaN(d2);
                        dArr7[ordinal4] = d + d2;
                        GameValueManager.GameValueEffect obtain7 = GameValueManager.gameValueEffectPool.obtain();
                        obtain7.delta = upgradeLevel.delta;
                        obtain7.type = upgrade.getGameValueType();
                        obtain7.source = GameValueManager.GameValueEffect.Source.CORE_TILE;
                        this.f11504b.effects.add(obtain7);
                    }
                }
            }
            int i11 = 0;
            while (true) {
                Array<GameValueConfig> array2 = this.f11507p;
                if (i11 >= array2.size) {
                    break;
                }
                GameValueConfig gameValueConfig3 = array2.items[i11];
                if (!gameValueConfig3.overwrite) {
                    double[] dArr8 = this.f11504b.values;
                    int ordinal5 = gameValueConfig3.type.ordinal();
                    dArr8[ordinal5] = dArr8[ordinal5] + gameValueConfig3.value;
                    GameValueManager.GameValueEffect obtain8 = GameValueManager.gameValueEffectPool.obtain();
                    obtain8.delta = gameValueConfig3.value;
                    obtain8.type = gameValueConfig3.type;
                    obtain8.source = GameValueManager.GameValueEffect.Source.CUSTOM;
                    this.f11504b.effects.add(obtain8);
                } else {
                    this.f11504b.effects.begin();
                    int i12 = 0;
                    while (true) {
                        delayedRemovalArray2 = this.f11504b.effects;
                        if (i12 >= delayedRemovalArray2.size) {
                            break;
                        }
                        GameValueManager.GameValueEffect gameValueEffect4 = delayedRemovalArray2.get(i12);
                        if (gameValueEffect4.type == gameValueConfig3.type) {
                            this.f11504b.effects.removeIndex(i12);
                            GameValueManager.gameValueEffectPool.free(gameValueEffect4);
                        }
                        i12++;
                    }
                    delayedRemovalArray2.end();
                    GameValueManager.GameValueEffect obtain9 = GameValueManager.gameValueEffectPool.obtain();
                    obtain9.delta = (-this.f11504b.values[gameValueConfig3.type.ordinal()]) + gameValueConfig3.value;
                    obtain9.type = gameValueConfig3.type;
                    obtain9.source = GameValueManager.GameValueEffect.Source.CUSTOM;
                    this.f11504b.effects.add(obtain9);
                    this.f11504b.values[gameValueConfig3.type.ordinal()] = gameValueConfig3.value;
                }
                i11++;
            }
            int i13 = 1;
            for (double d3 : this.f11504b.values) {
                i13 = (i13 * 31) + ((int) (d3 * 10000.0d));
            }
            GameValueManager.GameValuesSnapshot gameValuesSnapshot = this.f11504b;
            if (gameValuesSnapshot.hash != i13) {
                gameValuesSnapshot.hash = i13;
                int round = MathUtils.round(getFloatValue(GameValueType.GAME_TICK_RATE));
                this.f11505d = round;
                if (round < 15) {
                    this.f11505d = 15;
                }
                if (this.f11505d > 120) {
                    this.f11505d = 120;
                }
                this.f11506k = 1.0f / this.f11505d;
                this.listeners.begin();
                for (int i14 = 0; i14 < this.listeners.size(); i14++) {
                    this.listeners.get(i14).recalculated(f11502q);
                }
                this.listeners.end();
                return;
            }
            return;
        }
        throw new IllegalStateException("System can be used only when all systems are set up");
    }

    public void setGlobalSnapshot(GameValueManager.GameValuesSnapshot gameValuesSnapshot) {
        Logger.log("GameValueSystem", "setGlobalSnapshot (Starting money: " + gameValuesSnapshot.getIntValue(GameValueType.STARTING_MONEY) + ")");
        this.f11503a = gameValuesSnapshot;
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        GameSystemProvider gameSystemProvider = this.f8844S;
        gameSystemProvider.map.listeners.add(new _MapSystemListener(gameSystemProvider));
        if (this.f11503a != null) {
            this.f11504b = new GameValueManager.GameValuesSnapshot();
            recalculate();
            return;
        }
        throw new IllegalStateException("globalSnapshot not specified before system setup");
    }

    public GameValueSystem() {
        int i = Config.GAME_STATE_UPDATE_RATE;
        this.f11505d = i;
        this.f11506k = 1.0f / i;
        this.f11507p = new Array<>(true, 1, GameValueConfig.class);
    }

    @Override // com.prineside.tdi2.GameValueProvider
    public double getPercentValueAsMultiplier(GameValueType[] gameValueTypeArr) {
        return this.f11504b.getPercentValueAsMultiplier(gameValueTypeArr);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.listeners);
        kryo.writeObject(output, this.f11503a);
        kryo.writeObject(output, this.f11504b);
        output.writeVarInt(this.f11505d, true);
        output.writeFloat(this.f11506k);
        kryo.writeObject(output, this.f11507p);
    }
}

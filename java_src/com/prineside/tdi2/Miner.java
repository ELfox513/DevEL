package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.shapes.PieChart;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.CheatSafeInt;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Miner extends Registrable {
    public static final int MAX_UPGRADE_LEVEL = 10;

    /* renamed from: r */
    public static final Color f8760r = new Color(0.56f, 0.56f, 0.56f, 1.0f);

    /* renamed from: s */
    public static final StringBuilder f8761s = new StringBuilder();

    /* renamed from: a */
    public SourceTile f8762a;

    /* renamed from: b */
    public int f8763b;

    /* renamed from: d */
    public float f8764d;
    @NAGS
    public ParticleEffectPool.PooledEffect doubleSpeedParticle;
    public float doubleSpeedTimeLeft;

    /* renamed from: id */
    public int f8765id;

    /* renamed from: k */
    public float f8766k;
    public Array<ItemStack> minedItems;
    public CheatSafeInt[] minedResources;
    public float miningTime;
    public CheatSafeInt moneySpentOn;
    public DelayedRemovalArray<Modifier.ModifierSidePair> nearbyModifiers;
    public ResourceType nextMinedResourceType;
    @NAGS

    /* renamed from: p */
    public PieChart f8767p;
    @NAGS

    /* renamed from: q */
    public final Array<PieChart.ChartEntryConfig> f8768q;
    public MinerType type;

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Miner> implements Disposable {

        /* renamed from: a */
        public String f8769a;

        /* renamed from: b */
        public MinerType f8770b;

        public abstract boolean canMineResource(ResourceType resourceType);

        public abstract T create();

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        public abstract int getBaseBuildPrice(GameValueProvider gameValueProvider);

        public abstract float getBaseMiningSpeed(ResourceType resourceType, GameValueProvider gameValueProvider);

        public String getDescription() {
            return Game.f8589i.localeManager.i18n.get("digs_resources_from_sources");
        }

        public abstract TextureRegion getTexture();

        public String getTitle() {
            return Game.f8589i.minerManager.getTitle(this.f8770b);
        }

        public void setupAssets() {
        }

        public Actor createIconActor(float f) {
            Image image = new Image(Game.f8589i.assetManager.getDrawable(this.f8769a));
            image.setSize(f, f);
            return image;
        }

        public void setup() {
            if (Game.f8589i.assetManager != null) {
                setupAssets();
            }
        }

        public Factory(MinerType minerType, String str) {
            this.f8770b = minerType;
            this.f8769a = str;
        }
    }

    public Miner() {
        this.moneySpentOn = new CheatSafeInt(0, 0);
        this.minedResources = new CheatSafeInt[ResourceType.values.length];
        this.minedItems = new Array<>(ItemStack.class);
        this.nearbyModifiers = new DelayedRemovalArray<>(Modifier.ModifierSidePair.class);
        this.f8764d = 0.0f;
        this.f8766k = 0.0f;
        this.doubleSpeedTimeLeft = 0.0f;
        this.f8768q = new Array<>();
    }

    /* renamed from: a */
    public void m21931a(SpriteBatch spriteBatch, float f, float f2, float f3, MapRenderingSystem.DrawMode drawMode) {
        boolean z;
        boolean z2;
        float f4 = f3 / 128.0f;
        if (drawMode == MapRenderingSystem.DrawMode.DETAILED || drawMode == MapRenderingSystem.DrawMode.MAP_EDITOR) {
            spriteBatch.setColor(f8760r);
        }
        spriteBatch.draw(Game.f8589i.minerManager.getFactory(this.type).getTexture(), f, f2, 128.0f, 128.0f);
        spriteBatch.setColor(Color.WHITE);
        GameSystemProvider gameSystemProvider = this.f8844S;
        if (gameSystemProvider != null && gameSystemProvider.gameState.gameMode == GameStateSystem.GameMode.USER_MAPS && getTile() != null) {
            int i = 0;
            while (true) {
                ResourceType[] resourceTypeArr = ResourceType.values;
                if (i < resourceTypeArr.length) {
                    int resourcesCount = getTile().getResourcesCount(resourceTypeArr[i]);
                    if (resourcesCount > 0 && getTile().minedResources[i] < resourcesCount) {
                        z2 = true;
                        break;
                    }
                    i++;
                } else {
                    z2 = false;
                    break;
                }
            }
            z = !z2;
        } else {
            z = false;
        }
        if (z) {
            spriteBatch.setColor(Color.BLACK);
            float f5 = f4 * 24.0f;
            spriteBatch.draw(Game.f8589i.assetManager.f9555TR.smallCircle, ((f + 64.0f) - 12.0f) * f4, ((f2 + 64.0f) - 12.0f) * f4, f5, f5);
            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        }
        if (drawMode == MapRenderingSystem.DrawMode.DETAILED || drawMode == MapRenderingSystem.DrawMode.MAP_EDITOR) {
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
            StringBuilder stringBuilder = f8761s;
            stringBuilder.setLength(0);
            stringBuilder.append(this.f8763b);
            font.setColor(0.0f, 0.0f, 0.0f, 0.56f);
            float f6 = f4 * 128.0f;
            try {
                font.draw(spriteBatch, stringBuilder, f + (3.0f * f4), f2 + (71.0f * f4), f6, 1, false);
                font.setColor(Color.WHITE);
                font.draw(spriteBatch, stringBuilder, f, f2 + (f4 * 74.0f), f6, 1, false);
            } catch (Exception e) {
                throw new RuntimeException("Failed to draw font, content: '" + f8761s.toString() + "'", e);
            }
        }
    }

    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
    }

    public abstract int getBaseUpgradePrice(int i);

    public float getCurrentMiningSpeedFromSystem() {
        GameSystemProvider gameSystemProvider;
        ResourceType resourceType = this.nextMinedResourceType;
        if (resourceType == null || (gameSystemProvider = this.f8844S) == null) {
            return 0.0f;
        }
        return gameSystemProvider.miner.getMiningSpeed(this, resourceType, getUpgradeLevel());
    }

    public int getInstallDuration() {
        int intValue = this.f8844S.gameValue.getIntValue(GameValueType.MINERS_INSTALL_DURATION, Game.f8589i.minerManager.getInstallDurationGameValueType(this.type));
        if (intValue < 1) {
            return 1;
        }
        return intValue;
    }

    public float getInstallTimeLeft() {
        return this.f8766k;
    }

    public int getSellPrice() {
        return (int) (this.moneySpentOn.get() * 0.5f);
    }

    public SourceTile getTile() {
        return this.f8762a;
    }

    public int getUpgradeLevel() {
        return this.f8763b;
    }

    public boolean isPrepared() {
        return this.f8766k <= 0.0f;
    }

    public void placedOnMap() {
        updatePieChart(getTile().center.f5527x, getTile().center.f5528y, 1.0f);
    }

    public void reduceInstallTime(float f) {
        if (f > 0.0f && f <= 1000.0f) {
            float f2 = this.f8766k - f;
            this.f8766k = f2;
            if (f2 < 0.0f) {
                this.f8766k = 0.0f;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("time is " + f);
    }

    public void registerNearbyModifier(Modifier.ModifierSidePair modifierSidePair) {
        int i = 0;
        while (true) {
            DelayedRemovalArray<Modifier.ModifierSidePair> delayedRemovalArray = this.nearbyModifiers;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.items[i].modifierId != modifierSidePair.modifierId) {
                    i++;
                } else {
                    throw new IllegalStateException("modifier is already registered " + modifierSidePair.modifierId);
                }
            } else {
                delayedRemovalArray.add(modifierSidePair);
                return;
            }
        }
    }

    public void removedFromMap() {
    }

    public void setInstallTime(float f) {
        if (f > 0.0f && f <= 1000.0f) {
            this.f8764d = f;
            this.f8766k = f;
            return;
        }
        throw new IllegalArgumentException("time is " + f);
    }

    public void setTile(SourceTile sourceTile) {
        this.f8762a = sourceTile;
    }

    public void setUpgradeLevel(int i) {
        this.f8763b = i;
    }

    /* renamed from: b */
    public void m21930b(SpriteBatch spriteBatch, float f, float f2, float f3, MapRenderingSystem.DrawMode drawMode) {
        if (drawMode == MapRenderingSystem.DrawMode.DEFAULT) {
            PieChart pieChart = this.f8767p;
            if (pieChart == null || pieChart.getX() != f || this.f8767p.getY() != f2) {
                this.f8767p = (PieChart) Game.f8589i.shapeManager.getFactory(ShapeType.PIE_CHART).obtain();
                updatePieChart(f, f2, f3);
            }
            this.f8767p.draw(spriteBatch);
            return;
        }
        spriteBatch.setColor(Config.BACKGROUND_COLOR);
        float f4 = 22.0f * f3;
        float f5 = f3 * 44.0f;
        spriteBatch.draw(Game.f8589i.assetManager.getBlankWhiteTextureRegion(), f - f4, f2 - f4, f5, f5);
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public Miner cloneMiner() {
        Miner create = Game.f8589i.minerManager.getFactory(this.type).create();
        create.f8763b = this.f8763b;
        return create;
    }

    public float getPreparationProgress() {
        float f = this.f8766k;
        if (f <= 0.0f) {
            return 1.0f;
        }
        return 1.0f - (f / this.f8764d);
    }

    public void loadFromJson(JsonValue jsonValue) {
        try {
            this.f8763b = jsonValue.getInt("ul", 0);
        } catch (Exception e) {
            Logger.error("Miner", "failed to load miner from json", e);
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8765id = input.readVarInt(true);
        this.type = (MinerType) kryo.readObjectOrNull(input, MinerType.class);
        this.f8762a = (SourceTile) kryo.readObjectOrNull(input, SourceTile.class);
        this.moneySpentOn = (CheatSafeInt) kryo.readObject(input, CheatSafeInt.class);
        this.f8762a = (SourceTile) kryo.readObjectOrNull(input, SourceTile.class);
        this.minedResources = (CheatSafeInt[]) kryo.readObject(input, CheatSafeInt[].class);
        this.minedItems = (Array) kryo.readObject(input, Array.class);
        this.f8763b = input.readVarInt(true);
        this.nearbyModifiers = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f8764d = input.readFloat();
        this.f8766k = input.readFloat();
        this.nextMinedResourceType = (ResourceType) kryo.readObjectOrNull(input, ResourceType.class);
        this.miningTime = input.readFloat();
        this.doubleSpeedTimeLeft = input.readFloat();
    }

    public void toJson(Json json) {
        json.writeValue("type", this.type.name());
        json.writeValue("ul", Integer.valueOf(this.f8763b));
    }

    public void unregisterNearbyModifier(Modifier modifier) {
        Modifier.ModifierSidePair modifierSidePair;
        this.nearbyModifiers.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Modifier.ModifierSidePair> delayedRemovalArray = this.nearbyModifiers;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.items[i].modifierId == modifier.f8773id) {
                    modifierSidePair = delayedRemovalArray.get(i);
                    this.nearbyModifiers.removeIndex(i);
                    break;
                }
                i++;
            } else {
                modifierSidePair = null;
                break;
            }
        }
        this.nearbyModifiers.end();
        if (modifierSidePair != null) {
            return;
        }
        throw new IllegalStateException("modifier is not registered " + modifier);
    }

    public void updatePieChart(float f, float f2, float f3) {
        PieChart.ChartEntryConfig chartEntryConfig;
        PieChart.ChartEntryConfig chartEntryConfig2;
        PieChart.ChartEntryConfig chartEntryConfig3;
        if (this.f8767p == null) {
            return;
        }
        this.f8768q.clear();
        SourceTile tile = getTile();
        int i = 0;
        int i2 = 0;
        if (tile != null) {
            int i3 = 0;
            while (true) {
                ResourceType[] resourceTypeArr = ResourceType.values;
                if (i >= resourceTypeArr.length) {
                    break;
                }
                ResourceType resourceType = resourceTypeArr[i];
                int resourcesCount = tile.getResourcesCount(resourceType);
                if (resourcesCount > 0) {
                    i3 += resourcesCount;
                    Array<PieChart.ChartEntryConfig> array = this.f8768q;
                    int i4 = i2 + 1;
                    if (array.size < i4) {
                        chartEntryConfig3 = new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 0.0f), 0.0f, 0.0f);
                        this.f8768q.add(chartEntryConfig3);
                    } else {
                        chartEntryConfig3 = array.get(i2);
                    }
                    chartEntryConfig3.value = resourcesCount;
                    chartEntryConfig3.color = Game.f8589i.resourceManager.getColor(resourceType);
                    i2 = i4;
                }
                i++;
            }
            if (tile.getResourceDensity() < 1.0f) {
                Array<PieChart.ChartEntryConfig> array2 = this.f8768q;
                int i5 = i2 + 1;
                if (array2.size < i5) {
                    chartEntryConfig2 = new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 0.0f), 0.0f, 0.0f);
                    this.f8768q.add(chartEntryConfig2);
                } else {
                    chartEntryConfig2 = array2.get(i2);
                }
                chartEntryConfig2.value = (i3 / tile.getResourceDensity()) * (1.0f - tile.getResourceDensity());
                chartEntryConfig2.color = MaterialColor.GREY.P700;
                i = i3;
                i2 = i5;
            } else {
                i = i3;
            }
        }
        if (i == 0) {
            Array<PieChart.ChartEntryConfig> array3 = this.f8768q;
            int i6 = i2 + 1;
            if (array3.size < i6) {
                chartEntryConfig = new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 0.0f), 0.0f, 0.0f);
                this.f8768q.add(chartEntryConfig);
            } else {
                chartEntryConfig = array3.get(i2);
            }
            chartEntryConfig.value = 1.0f;
            chartEntryConfig.color = MaterialColor.GREY.P700;
            i2 = i6;
        }
        Array<PieChart.ChartEntryConfig> array4 = this.f8768q;
        array4.size = i2;
        this.f8767p.setup(f, f2, f3 * 22.0f, 20, array4);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f8765id, true);
        kryo.writeObjectOrNull(output, this.type, MinerType.class);
        kryo.writeObjectOrNull(output, this.f8762a, SourceTile.class);
        kryo.writeObject(output, this.moneySpentOn);
        kryo.writeObjectOrNull(output, this.f8762a, SourceTile.class);
        kryo.writeObject(output, this.minedResources);
        kryo.writeObject(output, this.minedItems);
        output.writeVarInt(this.f8763b, true);
        kryo.writeObject(output, this.nearbyModifiers);
        output.writeFloat(this.f8764d);
        output.writeFloat(this.f8766k);
        kryo.writeObjectOrNull(output, this.nextMinedResourceType, ResourceType.class);
        output.writeFloat(this.miningTime);
        output.writeFloat(this.doubleSpeedTimeLeft);
    }

    public float getVisualMiningProgress() {
        if (!isPrepared()) {
            return 0.0f;
        }
        float currentMiningSpeedFromSystem = getCurrentMiningSpeedFromSystem();
        if (currentMiningSpeedFromSystem == 0.0f) {
            return 0.0f;
        }
        return MathUtils.clamp(this.miningTime / (1.0f / currentMiningSpeedFromSystem), 0.0f, 1.0f);
    }

    public Miner(MinerType minerType) {
        this.moneySpentOn = new CheatSafeInt(0, 0);
        this.minedResources = new CheatSafeInt[ResourceType.values.length];
        this.minedItems = new Array<>(ItemStack.class);
        this.nearbyModifiers = new DelayedRemovalArray<>(Modifier.ModifierSidePair.class);
        this.f8764d = 0.0f;
        this.f8766k = 0.0f;
        this.doubleSpeedTimeLeft = 0.0f;
        this.f8768q = new Array<>();
        this.type = minerType;
        for (int i = 0; i < ResourceType.values.length; i++) {
            this.minedResources[i] = new CheatSafeInt(0, 0);
        }
    }
}

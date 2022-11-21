package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ImageWithParentColor;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.CheatSafeInt;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Modifier extends Building implements Disposable, ScheduledUpdater.Updatable {
    public static final float PENALTY_SELL_PRICE = 0.75f;
    public static final float[][] WIRES_TEXTURES_CONFIG = {new float[]{-31.0f, -72.0f, 62.0f, 54.0f}, new float[]{-72.0f, -31.0f, 54.0f, 62.0f}, new float[]{-31.0f, 18.0f, 62.0f, 54.0f}, new float[]{18.0f, -31.0f, 54.0f, 62.0f}, new float[]{-72.0f, -72.0f, 54.0f, 54.0f}, new float[]{-72.0f, 18.0f, 54.0f, 54.0f}, new float[]{18.0f, 18.0f, 54.0f, 54.0f}, new float[]{18.0f, -72.0f, 54.0f, 54.0f}};

    /* renamed from: b */
    public DelayedRemovalArray<Tower> f8771b;
    public boolean[] connectedSides;

    /* renamed from: d */
    public DelayedRemovalArray<Miner> f8772d;

    /* renamed from: id */
    public int f8773id;

    /* renamed from: k */
    public int f8774k;
    public CheatSafeInt moneySpentOn;
    public float timeSinceBuilt;
    public ModifierType type;

    @REGS
    /* loaded from: classes2.dex */
    public enum ConnectionSide {
        BOTTOM,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM_LEFT,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_RIGHT;
        
        public static final ConnectionSide[] values = values();
    }

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Modifier> {

        /* renamed from: a */
        public TextureRegion f8776a;

        /* renamed from: b */
        public TextureRegion f8777b;
        public final Color color;
        public final String iconName;
        public final ModifierType modifierType;
        public TextureRegion[] wires = new TextureRegion[ConnectionSide.values.length];

        public boolean canBePlacedNear(ModifierType modifierType) {
            return true;
        }

        public abstract T create();

        public ModifierProcessor createProcessor() {
            return null;
        }

        public abstract TextureRegion getBaseTexture();

        public abstract int getBuildPrice(GameSystemProvider gameSystemProvider, int i);

        public boolean isAvailable(GameValueProvider gameValueProvider) {
            return gameValueProvider.getIntValue(Game.f8589i.modifierManager.getCountGameValue(this.modifierType)) != 0;
        }

        public void setupAssets() {
        }

        /* renamed from: a */
        public int m21923a(int i) {
            if (i < 500) {
                return MathUtils.round(i / 5.0f) * 5;
            }
            if (i < 5000) {
                return MathUtils.round(i / 10.0f) * 10;
            }
            return MathUtils.round(i / 50.0f) * 50;
        }

        public Actor createIconActor(float f) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            ImageWithParentColor imageWithParentColor = new ImageWithParentColor(Game.f8589i.assetManager.getDrawable("modifier-icon-wires"));
            imageWithParentColor.setColor(this.color);
            imageWithParentColor.setSize(f, f);
            group.addActor(imageWithParentColor);
            ImageWithParentColor imageWithParentColor2 = new ImageWithParentColor(getBaseTexture());
            imageWithParentColor2.setSize(f, f);
            group.addActor(imageWithParentColor2);
            Image image = new Image(Game.f8589i.assetManager.getDrawable(this.iconName));
            float f2 = 0.33f * f;
            image.setSize(f2, f2);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image.setPosition(0.31f * f, f * 0.35f);
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable(this.iconName));
            image2.setSize(f2, f2);
            image2.setPosition(f2, f2);
            group.addActor(image2);
            return group;
        }

        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.get(Game.f8589i.modifierManager.getDescriptionAlias(this.modifierType));
        }

        public CharSequence getTitle() {
            return Game.f8589i.localeManager.i18n.get(Game.f8589i.modifierManager.getTitleAlias(this.modifierType));
        }

        public void setup() {
            if (Game.f8589i.assetManager != null) {
                setupAssets();
            }
        }

        public Factory(ModifierType modifierType, Color color, String str) {
            this.color = color;
            this.iconName = str;
            this.modifierType = modifierType;
            AssetManager assetManager = Game.f8589i.assetManager;
            if (assetManager != null) {
                this.f8776a = assetManager.getTextureRegion(str);
                this.f8777b = Game.f8589i.assetManager.getTextureRegion("icon-dollar");
                this.wires[ConnectionSide.LEFT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-left");
                this.wires[ConnectionSide.RIGHT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-right");
                this.wires[ConnectionSide.TOP.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-top");
                this.wires[ConnectionSide.BOTTOM.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-bottom");
                this.wires[ConnectionSide.TOP_LEFT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-top-left");
                this.wires[ConnectionSide.TOP_RIGHT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-top-right");
                this.wires[ConnectionSide.BOTTOM_LEFT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-bottom-left");
                this.wires[ConnectionSide.BOTTOM_RIGHT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("modifier-wires-bottom-right");
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class ModifierSidePair implements KryoSerializable {
        public int modifierId;
        public ModifierType modifierType;
        public ConnectionSide side;

        public ModifierSidePair() {
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.modifierId = input.readVarInt(true);
            this.side = (ConnectionSide) kryo.readObjectOrNull(input, ConnectionSide.class);
            this.modifierType = (ModifierType) kryo.readObject(input, ModifierType.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeVarInt(this.modifierId, true);
            kryo.writeObjectOrNull(output, this.side, ConnectionSide.class);
            kryo.writeObject(output, this.modifierType);
        }

        public ModifierSidePair(int i, ModifierType modifierType, ConnectionSide connectionSide) {
            this.modifierId = i;
            this.side = connectionSide;
            this.modifierType = modifierType;
        }
    }

    /* renamed from: c */
    public void m21927c() {
        DelayedRemovalArray<Tower> delayedRemovalArray;
        DelayedRemovalArray<Miner> delayedRemovalArray2;
        int i = 0;
        while (true) {
            delayedRemovalArray = this.f8771b;
            if (i >= delayedRemovalArray.size) {
                break;
            }
            delayedRemovalArray.get(i).unregisterNearbyModifier(this);
            i++;
        }
        delayedRemovalArray.clear();
        int i2 = 0;
        while (true) {
            delayedRemovalArray2 = this.f8772d;
            if (i2 >= delayedRemovalArray2.size) {
                break;
            }
            delayedRemovalArray2.get(i2).unregisterNearbyModifier(this);
            i2++;
        }
        delayedRemovalArray2.clear();
        int i3 = 0;
        while (true) {
            boolean[] zArr = this.connectedSides;
            if (i3 < zArr.length) {
                zArr[i3] = false;
                i3++;
            } else {
                return;
            }
        }
    }

    public void customButtonAction(int i, int i2) {
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public void drawBatchAdditive(SpriteBatch spriteBatch, float f, MapRenderingSystem.DrawMode drawMode) {
    }

    public void fillModifierMenu(Group group, ObjectMap<String, Object> objectMap) {
    }

    public float getSellDelay() {
        return 300.0f;
    }

    public int getSellPrice() {
        return this.moneySpentOn.get();
    }

    public float getTimeTillSellAvailable() {
        return StrictMath.max(0.0f, getSellDelay() - this.timeSinceBuilt);
    }

    public boolean hasCustomButton() {
        return false;
    }

    public boolean isCustomButtonNeedMapPoint() {
        return false;
    }

    public boolean isSellAvailable() {
        return getTimeTillSellAvailable() == 0.0f;
    }

    public void loadFromJson(JsonValue jsonValue) {
    }

    @Override // com.prineside.tdi2.Building
    public void removedFromMap() {
        m21927c();
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final int scheduledUpdatableGetId() {
        return this.f8774k;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final void scheduledUpdatableSetId(int i) {
        this.f8774k = i;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
    }

    public void setSideConnected(ConnectionSide connectionSide, boolean z) {
        this.connectedSides[connectionSide.ordinal()] = z;
    }

    public void update(float f) {
        if (this.f8844S.gameState.isGameRealTimePasses()) {
            this.timeSinceBuilt += f;
        }
    }

    public void updateCustomButton(ComplexButton complexButton, boolean z) {
    }

    public Modifier(ModifierType modifierType) {
        super(BuildingType.MODIFIER);
        this.connectedSides = new boolean[ConnectionSide.values.length];
        this.moneySpentOn = new CheatSafeInt(0, 0);
        this.f8771b = new DelayedRemovalArray<>(false, 1, Tower.class);
        this.f8772d = new DelayedRemovalArray<>(false, 1, Miner.class);
        this.f8774k = -1;
        this.type = modifierType;
    }

    /* renamed from: a */
    public void m21929a(Miner miner) {
        this.f8772d.add(miner);
        ConnectionSide m21925e = m21925e(miner.getTile().getX(), miner.getTile().getY());
        if (m21925e != null) {
            setSideConnected(m21925e, true);
            miner.registerNearbyModifier(new ModifierSidePair(this.f8773id, this.type, m21925e));
            return;
        }
        throw new IllegalArgumentException("Miner is not nearby");
    }

    /* renamed from: b */
    public void m21928b(Tower tower) {
        if (tower != null) {
            this.f8771b.add(tower);
            ConnectionSide m21925e = m21925e(tower.getTile().getX(), tower.getTile().getY());
            if (m21925e != null) {
                setSideConnected(m21925e, true);
                tower.registerNearbyModifier(new ModifierSidePair(this.f8773id, this.type, m21925e));
                return;
            }
            throw new IllegalArgumentException("Tower is not nearby");
        }
        throw new IllegalArgumentException("Tower is null");
    }

    @Override // com.prineside.tdi2.Building
    public Modifier cloneBuilding() {
        return Game.f8589i.modifierManager.getFactory(this.type).create();
    }

    /* renamed from: d */
    public void m21926d(SpriteBatch spriteBatch) {
        ConnectionSide[] connectionSideArr;
        for (ConnectionSide connectionSide : ConnectionSide.values) {
            if (this.connectedSides[connectionSide.ordinal()]) {
                float[] fArr = WIRES_TEXTURES_CONFIG[connectionSide.ordinal()];
                spriteBatch.draw(Game.f8589i.modifierManager.getFactory(this.type).wires[connectionSide.ordinal()], getTile().center.f5527x + fArr[0], getTile().center.f5528y + fArr[1], fArr[2], fArr[3]);
            }
        }
    }

    public void drawBatch(SpriteBatch spriteBatch, float f, MapRenderingSystem.DrawMode drawMode) {
        if (getTile().visibleOnScreen) {
            Factory<? extends Modifier> factory = Game.f8589i.modifierManager.getFactory(this.type);
            spriteBatch.setColor(factory.color);
            m21926d(spriteBatch);
            MapRenderingSystem.DrawMode drawMode2 = MapRenderingSystem.DrawMode.DETAILED;
            if (drawMode == drawMode2) {
                spriteBatch.setColor(0.8f, 0.8f, 0.8f, 1.0f);
            } else {
                spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            }
            spriteBatch.draw(factory.getBaseTexture(), getTile().center.f5527x - 64.0f, getTile().center.f5528y - 64.0f, 128.0f, 128.0f);
            if (drawMode == drawMode2) {
                spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                spriteBatch.draw(factory.f8776a, (getTile().getX() * 128) + 42.24f, (getTile().getY() * 128) + 42.24f, 42.24f, 42.24f);
            } else {
                spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                spriteBatch.draw(factory.f8776a, 39.68f + (getTile().getX() * 128), 44.8f + (getTile().getY() * 128), 42.24f, 42.24f);
                spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                spriteBatch.draw(factory.f8776a, (getTile().getX() * 128) + 42.24f, (getTile().getY() * 128) + 42.24f, 42.24f, 42.24f);
            }
            if (!isSellAvailable()) {
                spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                spriteBatch.draw(factory.f8777b, (getTile().center.f5527x - 64.0f) + 10.0f + 2.0f, ((getTile().center.f5528y - 64.0f) + 10.0f) - 2.0f, 18.285715f, 18.285715f);
                spriteBatch.setColor(MaterialColor.ORANGE.P500);
                spriteBatch.draw(factory.f8777b, (getTile().center.f5527x - 64.0f) + 10.0f, (getTile().center.f5528y - 64.0f) + 10.0f, 18.285715f, 18.285715f);
                spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            }
        }
    }

    /* renamed from: e */
    public final ConnectionSide m21925e(int i, int i2) {
        if (i == getTile().getX()) {
            if (i2 + 1 == getTile().getY()) {
                return ConnectionSide.BOTTOM;
            }
            if (i2 - 1 == getTile().getY()) {
                return ConnectionSide.TOP;
            }
            return null;
        } else if (i2 == getTile().getY()) {
            if (i + 1 == getTile().getX()) {
                return ConnectionSide.LEFT;
            }
            if (i - 1 == getTile().getX()) {
                return ConnectionSide.RIGHT;
            }
            return null;
        } else if (i + 1 == getTile().getX()) {
            if (i2 + 1 == getTile().getY()) {
                return ConnectionSide.BOTTOM_LEFT;
            }
            if (i2 - 1 == getTile().getY()) {
                return ConnectionSide.TOP_LEFT;
            }
            return null;
        } else if (i2 + 1 == getTile().getY()) {
            return ConnectionSide.BOTTOM_RIGHT;
        } else {
            if (i2 - 1 == getTile().getY()) {
                return ConnectionSide.TOP_RIGHT;
            }
            return null;
        }
    }

    public void nearbyBuildingsChanged() {
        Building building;
        m21927c();
        Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
        for (int i = 0; i < neighbourTiles.size; i++) {
            Tile tile = neighbourTiles.items[i];
            if (tile.type == TileType.PLATFORM && (building = ((PlatformTile) tile).building) != null && building.buildingType == BuildingType.TOWER) {
                m21928b((Tower) building);
            }
        }
    }

    @Override // com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8773id = input.readVarInt(true);
        this.type = (ModifierType) kryo.readObjectOrNull(input, ModifierType.class);
        this.timeSinceBuilt = input.readFloat();
        this.connectedSides = (boolean[]) kryo.readObject(input, boolean[].class);
        this.moneySpentOn = (CheatSafeInt) kryo.readObject(input, CheatSafeInt.class);
        this.f8771b = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f8772d = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f8774k = input.readInt();
    }

    @Override // com.prineside.tdi2.Building
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("type", this.type.name());
    }

    @Override // com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f8773id, true);
        kryo.writeObjectOrNull(output, this.type, ModifierType.class);
        output.writeFloat(this.timeSinceBuilt);
        kryo.writeObject(output, this.connectedSides);
        kryo.writeObject(output, this.moneySpentOn);
        kryo.writeObject(output, this.f8771b);
        kryo.writeObject(output, this.f8772d);
        output.writeInt(this.f8774k);
    }
}

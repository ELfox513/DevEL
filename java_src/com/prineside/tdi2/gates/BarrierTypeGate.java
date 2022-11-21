package com.prineside.tdi2.gates;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.GateBarrier;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.REGS;
import java.util.Iterator;
@REGS
/* loaded from: classes2.dex */
public class BarrierTypeGate extends GateBarrier {

    /* renamed from: p */
    public static final Color f9356p = new Color();
    public ObjectSet<EnemyType> blockedEnemies;

    /* loaded from: classes2.dex */
    public static class BarrierTypeGateFactory extends Gate.Factory.AbstractFactory<BarrierTypeGate> {

        /* renamed from: d */
        public TextureRegion f9357d;

        /* renamed from: k */
        public TextureRegion f9358k;

        public BarrierTypeGateFactory() {
            super(GateType.BARRIER_TYPE);
        }

        @Override // com.prineside.tdi2.Gate.Factory
        public BarrierTypeGate create() {
            return new BarrierTypeGate();
        }

        @Override // com.prineside.tdi2.Gate.Factory
        public BarrierTypeGate createRandom(float f, RandomXS128 randomXS128) {
            BarrierTypeGate create = create();
            if (f <= 0.0f) {
                f = 0.001f;
            }
            while (f > 0.0f) {
                EnemyType[] enemyTypeArr = EnemyType.mainEnemyTypes;
                create.blockedEnemies.add(enemyTypeArr[randomXS128.nextInt(enemyTypeArr.length)]);
                f -= 0.25f;
            }
            return create;
        }

        @Override // com.prineside.tdi2.Gate.Factory.AbstractFactory, com.prineside.tdi2.Gate.Factory
        public BarrierTypeGate fromJson(JsonValue jsonValue) {
            BarrierTypeGate barrierTypeGate = (BarrierTypeGate) super.fromJson(jsonValue);
            if (jsonValue.has("blockedEnemies")) {
                Iterator<JsonValue> iterator2 = jsonValue.get("blockedEnemies").iterator2();
                while (iterator2.hasNext()) {
                    barrierTypeGate.blockedEnemies.add(EnemyType.valueOf(iterator2.next().asString()));
                }
            }
            return barrierTypeGate;
        }

        @Override // com.prineside.tdi2.Gate.Factory.AbstractFactory
        public void setupAssets() {
            this.f9357d = Game.f8589i.assetManager.getTextureRegion("gate-barrier-type-vertical");
            this.f9358k = Game.f8589i.assetManager.getTextureRegion("gate-barrier-type-horizontal");
        }
    }

    @Override // com.prineside.tdi2.Gate
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, (this.blockedEnemies.size * 100) + 100));
    }

    @Override // com.prineside.tdi2.GateBarrier
    public boolean canEnemyPass(Enemy enemy) {
        return !this.blockedEnemies.contains(enemy.type);
    }

    @Override // com.prineside.tdi2.Gate
    public double getPrestigeScore() {
        double d = this.blockedEnemies.size;
        Double.isNaN(d);
        return (d * 0.02d) + 0.05d;
    }

    @Override // com.prineside.tdi2.Gate
    public RarityType getRarity() {
        return RarityType.RARE;
    }

    public BarrierTypeGate() {
        super(GateType.BARRIER_TYPE);
        this.blockedEnemies = new ObjectSet<>();
    }

    @Override // com.prineside.tdi2.Gate
    public Gate cloneGate() {
        BarrierTypeGate create = Game.f8589i.gateManager.f9810F.BARRIER_TYPE.create();
        create.setPosition(getX(), getY(), getSide());
        create.blockedEnemies.addAll(this.blockedEnemies);
        return create;
    }

    @Override // com.prineside.tdi2.Gate
    public void drawStatic(SpriteCache spriteCache, int i, int i2) {
        float f = i * 128;
        float f2 = i2 * 128;
        float f3 = 94.0f / this.blockedEnemies.size;
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        if (getSide() == Gate.Side.LEFT) {
            ObjectSet.ObjectSetIterator<EnemyType> it = this.blockedEnemies.iterator();
            float f4 = 17.0f;
            while (it.hasNext()) {
                Color color = f9356p;
                color.set(Game.f8589i.enemyManager.getFactory(it.next()).getColor());
                color.f3889a = 0.4f;
                spriteCache.setColor(color);
                spriteCache.add(blankWhiteTextureRegion, f - 4.0f, f2 + f4, 8.0f, f3);
                f4 += f3;
            }
            spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            spriteCache.add(Game.f8589i.gateManager.f9810F.BARRIER_TYPE.f9357d, f - 14.0f, f2, 28.0f, 128.0f);
            return;
        }
        ObjectSet.ObjectSetIterator<EnemyType> it2 = this.blockedEnemies.iterator();
        float f5 = 17.0f;
        while (it2.hasNext()) {
            Color color2 = f9356p;
            color2.set(Game.f8589i.enemyManager.getFactory(it2.next()).getColor());
            color2.f3889a = 0.4f;
            spriteCache.setColor(color2);
            spriteCache.add(blankWhiteTextureRegion, f + f5, f2 - 4.0f, f3, 8.0f);
            f5 += f3;
        }
        spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        spriteCache.add(Game.f8589i.gateManager.f9810F.BARRIER_TYPE.f9358k, f, f2 - 14.0f, 128.0f, 28.0f);
    }

    @Override // com.prineside.tdi2.Gate
    public Actor generateIcon(float f, boolean z) {
        float f2 = f / 128.0f;
        Group group = new Group();
        int i = 0;
        group.setTransform(false);
        group.setSize(f, f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("item-gate-barrier-type-icon"));
        image.setSize(f, f);
        group.addActor(image);
        ObjectSet.ObjectSetIterator<EnemyType> it = this.blockedEnemies.iterator();
        float f3 = 0.0f;
        float f4 = 0.0f;
        while (it.hasNext()) {
            Image image2 = new Image(Game.f8589i.enemyManager.getFactory(it.next()).getTexture());
            float f5 = 26.0f * f2;
            image2.setSize(f5, f5);
            image2.setPosition(f3, f4);
            group.addActor(image2);
            float f6 = 32.0f * f2;
            f3 += f6;
            i++;
            if (i % 3 == 0) {
                f4 += f6;
                f3 = 0.0f;
            }
        }
        return group;
    }

    @Override // com.prineside.tdi2.Gate
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.KIND) {
            return 2000;
        }
        return (getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + this.blockedEnemies.size;
    }

    @Override // com.prineside.tdi2.Gate, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.blockedEnemies = (ObjectSet) kryo.readObject(input, ObjectSet.class);
    }

    @Override // com.prineside.tdi2.Gate
    public boolean sameAs(Gate gate) {
        if (!super.sameAs(gate)) {
            return false;
        }
        BarrierTypeGate barrierTypeGate = (BarrierTypeGate) gate;
        ObjectSet<EnemyType> objectSet = this.blockedEnemies;
        if (objectSet.size != barrierTypeGate.blockedEnemies.size) {
            return false;
        }
        ObjectSet.ObjectSetIterator<EnemyType> it = objectSet.iterator();
        while (it.hasNext()) {
            if (!barrierTypeGate.blockedEnemies.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.prineside.tdi2.Gate
    public void toJson(Json json) {
        super.toJson(json);
        json.writeArrayStart("blockedEnemies");
        ObjectSet.ObjectSetIterator<EnemyType> it = this.blockedEnemies.iterator();
        while (it.hasNext()) {
            json.writeValue(it.next().name());
        }
        json.writeArrayEnd();
    }

    @Override // com.prineside.tdi2.Gate, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.blockedEnemies);
    }
}

package com.prineside.tdi2.gates;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class TeleportGate extends Gate {
    public static final Color[] INDEX_COLORS;
    public static final String[] INDEX_NAMES;
    public static final int MAX_INDEX;
    public static final int MAX_INDEX_FOR_LOOT = 16;
    public static final String TAG = "TeleportGate";
    public int index;
    @NAGS

    /* renamed from: p */
    public ParticleEffectPool.PooledEffect f9359p;

    /* loaded from: classes2.dex */
    public static class TeleportGateFactory extends Gate.Factory.AbstractFactory<TeleportGate> {

        /* renamed from: d */
        public TextureRegion f9360d;

        /* renamed from: k */
        public TextureRegion f9361k;

        /* renamed from: p */
        public ParticleEffectPool f9362p;

        /* renamed from: q */
        public ParticleEffectPool f9363q;

        public TeleportGateFactory() {
            super(GateType.TELEPORT);
        }

        @Override // com.prineside.tdi2.Gate.Factory
        public TeleportGate create() {
            return new TeleportGate();
        }

        @Override // com.prineside.tdi2.Gate.Factory
        public TeleportGate createRandom(float f, RandomXS128 randomXS128) {
            TeleportGate create = create();
            create.index = randomXS128.nextInt(17);
            return create;
        }

        @Override // com.prineside.tdi2.Gate.Factory.AbstractFactory, com.prineside.tdi2.Gate.Factory
        public TeleportGate fromJson(JsonValue jsonValue) {
            TeleportGate teleportGate = (TeleportGate) super.fromJson(jsonValue);
            teleportGate.index = jsonValue.getInt("index");
            return teleportGate;
        }

        @Override // com.prineside.tdi2.Gate.Factory.AbstractFactory
        public void setupAssets() {
            this.f9360d = Game.f8589i.assetManager.getTextureRegion("gate-teleport-vertical");
            this.f9361k = Game.f8589i.assetManager.getTextureRegion("gate-teleport-horizontal");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/teleport-horizontal.prt"), Game.f8589i.assetManager.getTextureRegion("particle-pentagon").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9362p = new ParticleEffectPool(particleEffect, 1, 128);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.external("particles/teleport-vertical.prt"), Game.f8589i.assetManager.getTextureRegion("particle-pentagon").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.f9363q = new ParticleEffectPool(particleEffect2, 1, 128);
        }
    }

    @Override // com.prineside.tdi2.Gate
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, 100));
    }

    @Override // com.prineside.tdi2.Gate
    public double getPrestigeScore() {
        return 0.3d;
    }

    @Override // com.prineside.tdi2.Gate
    public RarityType getRarity() {
        return RarityType.VERY_RARE;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.index + ")";
    }

    static {
        Color[] colorArr = {MaterialColor.RED.P500, MaterialColor.PINK.P500, MaterialColor.PURPLE.P500, MaterialColor.DEEP_PURPLE.P500, MaterialColor.INDIGO.P500, MaterialColor.BLUE.P500, MaterialColor.LIGHT_BLUE.P500, MaterialColor.CYAN.P500, MaterialColor.TEAL.P500, MaterialColor.GREEN.P500, MaterialColor.LIGHT_GREEN.P500, MaterialColor.LIME.P500, MaterialColor.YELLOW.P500, MaterialColor.AMBER.P500, MaterialColor.ORANGE.P500, MaterialColor.DEEP_ORANGE.P500, MaterialColor.BROWN.P500, MaterialColor.GREY.P500, MaterialColor.BLUE_GREY.P500, MaterialColor.RED.P800, MaterialColor.PINK.P800, MaterialColor.PURPLE.P800, MaterialColor.DEEP_PURPLE.P800, MaterialColor.INDIGO.P800, MaterialColor.BLUE.P800, MaterialColor.LIGHT_BLUE.P800, MaterialColor.CYAN.P800, MaterialColor.TEAL.P800, MaterialColor.GREEN.P800, MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIME.P800, MaterialColor.YELLOW.P800, MaterialColor.AMBER.P800, MaterialColor.ORANGE.P800, MaterialColor.DEEP_ORANGE.P800, MaterialColor.BROWN.P800, MaterialColor.GREY.P800, MaterialColor.BLUE_GREY.P800, MaterialColor.RED.P300, MaterialColor.PINK.P300, MaterialColor.PURPLE.P300, MaterialColor.DEEP_PURPLE.P300, MaterialColor.INDIGO.P300, MaterialColor.BLUE.P300, MaterialColor.LIGHT_BLUE.P300, MaterialColor.CYAN.P300, MaterialColor.TEAL.P300, MaterialColor.GREEN.P300, MaterialColor.LIGHT_GREEN.P300, MaterialColor.LIME.P300, MaterialColor.YELLOW.P300, MaterialColor.AMBER.P300, MaterialColor.ORANGE.P300, MaterialColor.DEEP_ORANGE.P300, MaterialColor.BROWN.P300, MaterialColor.GREY.P300, MaterialColor.BLUE_GREY.P300};
        INDEX_COLORS = colorArr;
        INDEX_NAMES = new String[]{"RED", "PINK", "PURPLE", "DEEP_PURPLE", "INDIGO", "BLUE", "LIGHT_BLUE", "CYAN", "TEAL", "GREEN", "LIGHT_GREEN", "LIME", "YELLOW", "AMBER", "ORANGE", "DEEP_ORANGE", "BROWN", "GRAY", "BLUE_GRAY", "Dark RED", "Dark PINK", "Dark PURPLE", "Dark DEEP_PURPLE", "Dark INDIGO", "Dark BLUE", "Dark LIGHT_BLUE", "Dark CYAN", "Dark TEAL", "Dark GREEN", "Dark LIGHT_GREEN", "Dark LIME", "Dark YELLOW", "Dark AMBER", "Dark ORANGE", "Dark DEEP_ORANGE", "Dark BROWN", "Dark GRAY", "Dark BLUE_GRAY", "Bright RED", "Bright PINK", "Bright PURPLE", "Bright DEEP_PURPLE", "Bright INDIGO", "Bright BLUE", "Bright LIGHT_BLUE", "Bright CYAN", "Bright TEAL", "Bright GREEN", "Bright LIGHT_GREEN", "Bright LIME", "Bright YELLOW", "Bright AMBER", "Bright ORANGE", "Bright DEEP_ORANGE", "Bright BROWN", "Bright GRAY", "Bright BLUE_GRAY"};
        MAX_INDEX = colorArr.length - 1;
    }

    public TeleportGate() {
        super(GateType.TELEPORT);
    }

    @Override // com.prineside.tdi2.Gate
    public Gate cloneGate() {
        TeleportGate create = Game.f8589i.gateManager.f9810F.TELEPORT.create();
        create.setPosition(getX(), getY(), getSide());
        create.index = this.index;
        return create;
    }

    @Override // com.prineside.tdi2.Gate
    public void drawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
        if (this.f8844S != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            if (this.f9359p == null) {
                if (getSide() == Gate.Side.BOTTOM) {
                    ParticleEffectPool.PooledEffect obtain = Game.f8589i.gateManager.f9810F.TELEPORT.f9362p.obtain();
                    this.f9359p = obtain;
                    obtain.setPosition((i * 128) + 64, i2 * 128);
                } else {
                    ParticleEffectPool.PooledEffect obtain2 = Game.f8589i.gateManager.f9810F.TELEPORT.f9363q.obtain();
                    this.f9359p = obtain2;
                    obtain2.setPosition(i * 128, (i2 * 128) + 64);
                }
                Array.ArrayIterator<ParticleEmitter> it = this.f9359p.getEmitters().iterator();
                while (it.hasNext()) {
                    ParticleEmitter.GradientColorValue tint = it.next().getTint();
                    Color color = INDEX_COLORS[this.index];
                    tint.setColors(new float[]{color.f3892r, color.f3891g, color.f3890b});
                }
                this.f8844S._particle.addParticle(this.f9359p, false);
                return;
            }
            return;
        }
        ParticleEffectPool.PooledEffect pooledEffect = this.f9359p;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f9359p = null;
        }
    }

    @Override // com.prineside.tdi2.Gate
    public void drawStatic(SpriteCache spriteCache, int i, int i2) {
        spriteCache.setColor(INDEX_COLORS[this.index]);
        if (getSide() == Gate.Side.LEFT) {
            spriteCache.add(Game.f8589i.gateManager.f9810F.TELEPORT.f9360d, (i * 128) - 14.0f, i2 * 128, 28.0f, 128.0f);
        } else {
            spriteCache.add(Game.f8589i.gateManager.f9810F.TELEPORT.f9361k, i * 128, (i2 * 128) - 14.0f, 128.0f, 28.0f);
        }
        spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    @Override // com.prineside.tdi2.Gate
    public Actor generateIcon(float f, boolean z) {
        Image image = new Image(Game.f8589i.assetManager.getDrawable("item-gate-teleport-icon"));
        image.setSize(f, f);
        image.setColor(INDEX_COLORS[this.index]);
        return image;
    }

    @Override // com.prineside.tdi2.Gate
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.KIND) {
            return this.index + 3000;
        }
        return (getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + this.index;
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        ParticleEffectPool.PooledEffect pooledEffect = this.f9359p;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f9359p = null;
        }
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.Gate, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.index = input.readVarInt(true);
    }

    @Override // com.prineside.tdi2.Gate
    public boolean sameAs(Gate gate) {
        if (!super.sameAs(gate) || ((TeleportGate) gate).index != this.index) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Gate
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("index", Integer.valueOf(this.index));
    }

    @Override // com.prineside.tdi2.Gate, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.index, true);
    }
}

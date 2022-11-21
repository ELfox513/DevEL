package com.prineside.tdi2.gates;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.GateBarrier;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BarrierHealthGate extends GateBarrier {
    public boolean moreThanHalf;

    /* loaded from: classes2.dex */
    public static class BarrierHealthGateFactory extends Gate.Factory.AbstractFactory<BarrierHealthGate> {

        /* renamed from: d */
        public TextureRegion f9352d;

        /* renamed from: k */
        public TextureRegion f9353k;

        /* renamed from: p */
        public TextureRegion f9354p;

        /* renamed from: q */
        public TextureRegion f9355q;

        public BarrierHealthGateFactory() {
            super(GateType.BARRIER_HEALTH);
        }

        @Override // com.prineside.tdi2.Gate.Factory
        public BarrierHealthGate create() {
            return new BarrierHealthGate();
        }

        @Override // com.prineside.tdi2.Gate.Factory
        public BarrierHealthGate createRandom(float f, RandomXS128 randomXS128) {
            if (randomXS128 == null) {
                randomXS128 = FastRandom.random;
            }
            BarrierHealthGate create = create();
            create.moreThanHalf = randomXS128.nextFloat() < 0.5f;
            return create;
        }

        @Override // com.prineside.tdi2.Gate.Factory.AbstractFactory, com.prineside.tdi2.Gate.Factory
        public BarrierHealthGate fromJson(JsonValue jsonValue) {
            BarrierHealthGate barrierHealthGate = (BarrierHealthGate) super.fromJson(jsonValue);
            barrierHealthGate.moreThanHalf = jsonValue.getBoolean("moreThanHalf", false);
            return barrierHealthGate;
        }

        @Override // com.prineside.tdi2.Gate.Factory.AbstractFactory
        public void setupAssets() {
            this.f9352d = Game.f8589i.assetManager.getTextureRegion("gate-barrier-health-high-vertical");
            this.f9353k = Game.f8589i.assetManager.getTextureRegion("gate-barrier-health-high-horizontal");
            this.f9354p = Game.f8589i.assetManager.getTextureRegion("gate-barrier-health-low-vertical");
            this.f9355q = Game.f8589i.assetManager.getTextureRegion("gate-barrier-health-low-horizontal");
        }
    }

    @Override // com.prineside.tdi2.Gate
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, HttpStatus.SC_OK));
    }

    @Override // com.prineside.tdi2.GateBarrier
    public boolean canEnemyPass(Enemy enemy) {
        return true;
    }

    @Override // com.prineside.tdi2.Gate
    public void drawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
    }

    @Override // com.prineside.tdi2.Gate
    public double getPrestigeScore() {
        return 0.05d;
    }

    @Override // com.prineside.tdi2.Gate
    public RarityType getRarity() {
        return RarityType.COMMON;
    }

    @Override // com.prineside.tdi2.Gate
    public int getSortingScore(ItemSortingType itemSortingType) {
        return 1;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.moreThanHalf + ")";
    }

    public BarrierHealthGate() {
        super(GateType.BARRIER_HEALTH);
    }

    @Override // com.prineside.tdi2.Gate
    public Gate cloneGate() {
        BarrierHealthGate create = Game.f8589i.gateManager.f9810F.BARRIER_HEALTH.create();
        create.setPosition(getX(), getY(), getSide());
        create.moreThanHalf = this.moreThanHalf;
        return create;
    }

    @Override // com.prineside.tdi2.Gate
    public Actor generateIcon(float f, boolean z) {
        Image image;
        if (this.moreThanHalf) {
            image = new Image(Game.f8589i.assetManager.getDrawable("icon-gate-health-high"));
        } else {
            image = new Image(Game.f8589i.assetManager.getDrawable("icon-gate-health-low"));
        }
        image.setSize(f, f);
        return image;
    }

    @Override // com.prineside.tdi2.Gate
    public void drawStatic(SpriteCache spriteCache, int i, int i2) {
        if (getSide() == Gate.Side.LEFT) {
            if (this.moreThanHalf) {
                spriteCache.add(Game.f8589i.gateManager.f9810F.BARRIER_HEALTH.f9352d, (getX() * 128) - 16.0f, getY() * 128, 32.0f, 128.0f);
            } else {
                spriteCache.add(Game.f8589i.gateManager.f9810F.BARRIER_HEALTH.f9354p, (getX() * 128) - 16.0f, getY() * 128, 32.0f, 128.0f);
            }
        } else if (this.moreThanHalf) {
            spriteCache.add(Game.f8589i.gateManager.f9810F.BARRIER_HEALTH.f9353k, getX() * 128, (getY() * 128) - 16.0f, 128.0f, 32.0f);
        } else {
            spriteCache.add(Game.f8589i.gateManager.f9810F.BARRIER_HEALTH.f9355q, getX() * 128, (getY() * 128) - 16.0f, 128.0f, 32.0f);
        }
    }

    @Override // com.prineside.tdi2.Gate
    public boolean sameAs(Gate gate) {
        if (!super.sameAs(gate) || ((BarrierHealthGate) gate).moreThanHalf != this.moreThanHalf) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Gate
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("moreThanHalf", Boolean.valueOf(this.moreThanHalf));
    }
}

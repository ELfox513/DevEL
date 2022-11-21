package com.prineside.tdi2.units;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class DisorientedUnit extends Unit {

    /* renamed from: a */
    public Tower f15037a;

    /* renamed from: b */
    public float f15038b;
    public float coinsPerTilePassed;

    /* renamed from: d */
    public float f15039d;

    /* renamed from: k */
    public int f15040k;
    public int maxSumCoins;

    /* renamed from: p */
    public float f15041p;

    /* renamed from: q */
    public float f15042q;

    /* renamed from: r */
    public float f15043r;

    /* renamed from: s */
    public EnemyType f15044s;
    @NAGS

    /* renamed from: t */
    public TextureRegion f15045t;

    /* loaded from: classes2.dex */
    public static class DisorientedUnitFactory extends Unit.Factory.BasicAbstractFactory<DisorientedUnit> {
        @Override // com.prineside.tdi2.Unit.Factory
        public Color getColor() {
            return Color.WHITE;
        }

        @Override // com.prineside.tdi2.Unit.Factory.BasicAbstractFactory
        public void setupAssets() {
        }

        @Override // com.prineside.tdi2.Unit.Factory
        public DisorientedUnit create() {
            return new DisorientedUnit();
        }
    }

    public void setup(Tower tower, EnemyType enemyType, float f, float f2) {
        if (f > 0.0f) {
            if (f2 > 0.0f) {
                this.f15037a = tower;
                this.f15044s = enemyType;
                this.f15038b = f;
                this.f15039d = f2;
                return;
            }
            throw new IllegalArgumentException("maxHealth is " + f2);
        }
        throw new IllegalArgumentException("health is " + f);
    }

    public DisorientedUnit() {
        super(2);
        this.f15040k = -1;
    }

    @Override // com.prineside.tdi2.Unit
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        if (this.f15045t == null) {
            this.f15045t = Game.f8589i.enemyManager.getFactory(this.f15044s).getTexture();
        }
        float regionWidth = this.f15045t.getRegionWidth();
        spriteBatch.setColor(MaterialColor.PURPLE.P100);
        TextureRegion textureRegion = this.f15045t;
        Vector2 vector2 = this.drawPosition;
        float f2 = regionWidth * 0.5f;
        spriteBatch.draw(textureRegion, vector2.f5527x - f2, vector2.f5528y - f2, f2, f2, regionWidth, regionWidth, 1.0f, 1.0f, this.drawAngle);
        drawHealth(spriteBatch);
    }

    public final void drawHealth(SpriteBatch spriteBatch) {
        Color color = Config.WHITE_COLOR_CACHED_FLOAT_BITS;
        spriteBatch.setColor(color);
        float f = this.f15038b / this.f15039d;
        spriteBatch.setColor(MaterialColor.PURPLE.P900);
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        Vector2 vector2 = this.drawPosition;
        spriteBatch.draw(blankWhiteTextureRegion, vector2.f5527x - 28.0f, vector2.f5528y + 52.0f, 56.0f, 8.0f);
        spriteBatch.setColor(MaterialColor.PURPLE.P300);
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion2 = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        Vector2 vector22 = this.drawPosition;
        spriteBatch.draw(blankWhiteTextureRegion2, vector22.f5527x - 26.0f, vector22.f5528y + 54.0f, (int) (f * 52.0f), 4.0f);
        spriteBatch.setColor(color);
    }

    public void setCoinsPerTilePassed(float f, int i) {
        this.coinsPerTilePassed = f;
        this.maxSumCoins = i;
        int lengthInTiles = this.graphPath.getLengthInTiles();
        this.f15041p = 0.5f;
        for (float f2 = 0.5f; f2 < 0.98f; f2 += 0.01f) {
            int i2 = 0;
            for (int i3 = 0; i3 < lengthInTiles; i3++) {
                int pow = (int) (((float) Math.pow(this.f15041p, i3)) * f);
                if (pow < 1) {
                    pow = 1;
                }
                i2 += pow;
            }
            if (i2 <= i) {
                this.f15041p = f2;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0149, code lost:
        r5 = r5 + 1;
     */
    @Override // com.prineside.tdi2.Unit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(float r18) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.units.DisorientedUnit.update(float):void");
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f15037a = (Tower) kryo.readClassAndObject(input);
        this.f15038b = input.readFloat();
        this.f15039d = input.readFloat();
        this.coinsPerTilePassed = input.readFloat();
        this.maxSumCoins = input.readVarInt(true);
        this.f15040k = input.readVarInt(false);
        this.f15041p = input.readFloat();
        this.f15042q = input.readFloat();
        this.f15043r = input.readFloat();
        this.f15044s = (EnemyType) kryo.readObject(input, EnemyType.class);
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f15037a);
        output.writeFloat(this.f15038b);
        output.writeFloat(this.f15039d);
        output.writeFloat(this.coinsPerTilePassed);
        output.writeVarInt(this.maxSumCoins, true);
        output.writeVarInt(this.f15040k, false);
        output.writeFloat(this.f15041p);
        output.writeFloat(this.f15042q);
        output.writeFloat(this.f15043r);
        kryo.writeObject(output, this.f15044s);
    }
}

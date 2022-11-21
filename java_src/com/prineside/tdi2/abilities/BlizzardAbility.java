package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.buffs.BlizzardBuff;
import com.prineside.tdi2.buffs.FreezingBuff;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.p036ui.actors.ImageWithParentColor;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BlizzardAbility extends Ability {

    /* renamed from: r */
    public static final int[] f8972r = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 750, 875, CoreTile.FIXED_LEVEL_XP_REQUIREMENT};

    /* renamed from: s */
    public static final int[][] f8973s = {new int[]{5, 10, 25, 0, 0, 0, 0, 0, 0, 0, 300}, new int[]{0, 0, 5, 10, 30, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 10, 20, 50, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 10, 25, 45, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 25, 75, 100}};

    /* renamed from: b */
    public _MapSystemListener f8974b;

    /* renamed from: d */
    public float f8975d;
    @NAGS

    /* renamed from: k */
    public Group f8976k;
    @NAGS

    /* renamed from: p */
    public ParticleEffectPool.PooledEffect f8977p;
    @NAGS

    /* renamed from: q */
    public ParticleEffectPool.PooledEffect f8978q;

    /* loaded from: classes2.dex */
    public static class BlizzardAbilityFactory extends Ability.Factory<BlizzardAbility> {

        /* renamed from: c */
        public ParticleEffectPool f8980c;

        public BlizzardAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.CYAN.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.CYAN.P700;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-blizzard");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return BlizzardAbility.f8972r[StrictMath.min(i, BlizzardAbility.f8972r.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return BlizzardAbility.f8973s[resourceType.ordinal()][StrictMath.min(i, BlizzardAbility.f8973s[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public BlizzardAbility create() {
            return new BlizzardAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            float floatValue = gameValueProvider.getFloatValue(GameValueType.ABILITY_BLIZZARD_DURATION);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_BLIZZARD_BONUS_DAMAGE) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_BLIZZARD", Float.valueOf(floatValue));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_damage_bonus", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f8980c;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            super.setupAssets();
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/blizzard.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f8980c = new ParticleEffectPool(particleEffect, 1, 8);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f8981a;

        /* renamed from: b */
        public BlizzardAbility f8982b;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 607071;
        }

        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            FreezingBuff obtain = Game.f8589i.buffManager.f9699F.FREEZING.obtain();
            obtain.setup(null, 10.0f, 100.0f, this.f8982b.f8975d, this.f8982b.f8975d * 10.0f, 0.0f, 0.0f);
            this.f8981a.buff.P_FREEZING.addBuff(enemy, obtain);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8981a = (GameSystemProvider) kryo.readObject(input, GameSystemProvider.class);
            this.f8982b = (BlizzardAbility) kryo.readObject(input, BlizzardAbility.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8981a);
            kryo.writeObject(output, this.f8982b);
        }

        public _MapSystemListener(GameSystemProvider gameSystemProvider, BlizzardAbility blizzardAbility) {
            this.f8981a = gameSystemProvider;
            this.f8982b = blizzardAbility;
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f8975d <= 0.0f;
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        this.f8975d -= f;
    }

    public BlizzardAbility() {
        super(AbilityType.BLIZZARD);
    }

    @Override // com.prineside.tdi2.Ability
    public void onDone() {
        Group group = this.f8976k;
        if (group != null) {
            group.clearActions();
            this.f8976k.addAction(Actions.sequence(Actions.fadeOut(0.3f), Actions.removeActor()));
        }
        ParticleEffectPool.PooledEffect pooledEffect = this.f8977p;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f8977p = null;
            this.f8978q.allowCompletion();
            this.f8978q = null;
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray;
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_BLIZZARD_DURATION);
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_BLIZZARD_BONUS_DAMAGE);
        this.f8975d = floatValue;
        this.f8844S.map.spawnedEnemies.begin();
        int i3 = 0;
        while (true) {
            delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i3 >= delayedRemovalArray.size) {
                break;
            }
            Enemy enemy = delayedRemovalArray.items[i3].enemy;
            if (enemy != null) {
                BlizzardBuff obtain = Game.f8589i.buffManager.f9699F.BLIZZARD.obtain();
                obtain.setup(floatValue, 10.0f * floatValue, percentValueAsMultiplier);
                this.f8844S.buff.P_BLIZZARD.addBuff(enemy, obtain);
            }
            i3++;
        }
        delayedRemovalArray.end();
        _MapSystemListener _mapsystemlistener = new _MapSystemListener(this.f8844S, this);
        this.f8974b = _mapsystemlistener;
        this.f8844S.map.listeners.add(_mapsystemlistener);
        if (this.f8844S._graphics != null) {
            Group group = new Group() { // from class: com.prineside.tdi2.abilities.BlizzardAbility.1
                @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
                public void draw(Batch batch, float f) {
                    batch.end();
                    batch.begin();
                    batch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
                    super.draw(batch, f);
                    batch.end();
                    batch.begin();
                    batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                }
            };
            this.f8976k = group;
            group.setTransform(false);
            this.f8976k.setTouchable(Touchable.disabled);
            this.f8976k.setSize(Game.f8589i.uiManager.viewport.getWorldWidth(), Game.f8589i.uiManager.viewport.getWorldHeight());
            this.f8844S._graphics.mainUi.customElementsContainer.addActor(this.f8976k);
            ImageWithParentColor imageWithParentColor = new ImageWithParentColor(Game.f8589i.assetManager.getDrawable("blizzard-screen-border@flip-x"));
            imageWithParentColor.setSize(195.0f, 453.0f);
            Color color = MaterialColor.LIGHT_BLUE.P100;
            imageWithParentColor.setColor(color);
            this.f8976k.addActor(imageWithParentColor);
            ImageWithParentColor imageWithParentColor2 = new ImageWithParentColor(Game.f8589i.assetManager.getDrawable("blizzard-screen-border"));
            imageWithParentColor2.setSize(195.0f, 453.0f);
            imageWithParentColor2.setColor(color);
            imageWithParentColor2.setPosition(Game.f8589i.uiManager.viewport.getWorldWidth() - 195.0f, 0.0f);
            this.f8976k.addActor(imageWithParentColor2);
            this.f8976k.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.fadeIn(0.1f)));
        }
        if (Game.f8589i.settingsManager.isParticlesDrawing()) {
            GameSystemProvider gameSystemProvider = this.f8844S;
            if (gameSystemProvider._particle != null && gameSystemProvider._graphics != null) {
                this.f8977p = Game.f8589i.abilityManager.f9538F.BLIZZARD.f8980c.obtain();
                this.f8978q = Game.f8589i.abilityManager.f9538F.BLIZZARD.f8980c.obtain();
                this.f8844S._graphics.mainUi.particlesCanvas.addParticle(this.f8977p, 0.0f, 0.0f);
                this.f8844S._graphics.mainUi.particlesCanvas.addParticle(this.f8978q, Game.f8589i.uiManager.viewport.getWorldWidth(), 0.0f);
            }
        }
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8974b = (_MapSystemListener) kryo.readObject(input, _MapSystemListener.class);
        this.f8975d = input.readFloat();
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f8974b);
        output.writeFloat(this.f8975d);
    }
}

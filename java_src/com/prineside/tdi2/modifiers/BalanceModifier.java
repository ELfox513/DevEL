package com.prineside.tdi2.modifiers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ExpLine;
import com.prineside.tdi2.systems.GraphicsSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.Comparator;
@REGS
/* loaded from: classes2.dex */
public class BalanceModifier extends Modifier {
    public static final int MAX_LEVEL = 5;
    public Mode mode;

    /* renamed from: p */
    public int f10358p;

    /* renamed from: q */
    public float f10359q;

    /* renamed from: r */
    public float f10360r;
    public static int[] XP_FOR_LEVEL = {0, 150, 600, 2000, 5000};
    public static float[] SPEED_BY_LEVEL = {3.0f, 7.0f, 15.0f, 35.0f, 100.0f};

    /* renamed from: s */
    public static final StringBuilder f10355s = new StringBuilder();

    /* renamed from: t */
    public static Array<NeighbourXpConfig> f10356t = new Array<>(true, 8, NeighbourXpConfig.class);

    /* renamed from: u */
    public static Comparator<NeighbourXpConfig> f10357u = new Comparator<NeighbourXpConfig>() { // from class: com.prineside.tdi2.modifiers.BalanceModifier.1
        @Override // java.util.Comparator
        public int compare(NeighbourXpConfig neighbourXpConfig, NeighbourXpConfig neighbourXpConfig2) {
            return Float.compare(neighbourXpConfig2.f10365d, neighbourXpConfig.f10365d);
        }
    };

    /* loaded from: classes2.dex */
    public static class BalanceModifierFactory extends Modifier.Factory<BalanceModifier> {

        /* renamed from: c */
        public TextureRegion f10361c;
        public TextureRegion orbTexture;

        public BalanceModifierFactory() {
            super(ModifierType.BALANCE, MaterialColor.LIME.P500, "icon-experience-balance");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10361c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            return m21923a((int) (((float) StrictMath.pow(1.399999976158142d, i)) * 25.0f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public BalanceModifier create() {
            return new BalanceModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            this.f10361c = Game.f8589i.assetManager.getTextureRegion("modifier-base-balance");
            this.orbTexture = Game.f8589i.assetManager.getTextureRegion("xp-orb");
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum Mode {
        BALANCE,
        EVOLVE;
        
        public static final Mode[] values = values();
    }

    /* loaded from: classes2.dex */
    public static class NeighbourXpConfig implements Pool.Poolable {

        /* renamed from: a */
        public Tower f10363a;

        /* renamed from: b */
        public float f10364b;

        /* renamed from: d */
        public float f10365d;

        /* renamed from: c */
        public static /* synthetic */ float m21399c(NeighbourXpConfig neighbourXpConfig, float f) {
            float f2 = neighbourXpConfig.f10365d + f;
            neighbourXpConfig.f10365d = f2;
            return f2;
        }

        /* renamed from: d */
        public static /* synthetic */ float m21398d(NeighbourXpConfig neighbourXpConfig, float f) {
            float f2 = neighbourXpConfig.f10365d - f;
            neighbourXpConfig.f10365d = f2;
            return f2;
        }

        /* renamed from: i */
        public static /* synthetic */ float m21393i(NeighbourXpConfig neighbourXpConfig, float f) {
            float f2 = neighbourXpConfig.f10364b - f;
            neighbourXpConfig.f10364b = f2;
            return f2;
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f10363a = null;
            this.f10364b = 0.0f;
            this.f10365d = 0.0f;
        }
    }

    public int getLevel() {
        return this.f10358p;
    }

    public float getSpeed() {
        return SPEED_BY_LEVEL[this.f10358p - 1];
    }

    public int getXpEvolveRequirement() {
        double d = XP_FOR_LEVEL[this.f10358p];
        double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.MODIFIER_BALANCE_UPGRADE_PRICE);
        Double.isNaN(d);
        return (int) (d * percentValueAsMultiplier);
    }

    @Override // com.prineside.tdi2.Modifier
    public boolean hasCustomButton() {
        return this.mode == Mode.BALANCE && this.f10358p < 5;
    }

    @Override // com.prineside.tdi2.Modifier
    public boolean isCustomButtonNeedMapPoint() {
        return false;
    }

    public void setLevel(int i) {
        if (i <= 5 && i >= 1) {
            this.f10358p = i;
            return;
        }
        throw new IllegalArgumentException("level invalid " + i);
    }

    public BalanceModifier() {
        super(ModifierType.BALANCE);
        this.mode = Mode.BALANCE;
        this.f10358p = 1;
    }

    @Override // com.prineside.tdi2.Modifier
    public void customButtonAction(int i, int i2) {
        if (this.f10358p < 5) {
            this.mode = Mode.EVOLVE;
        }
    }

    @Override // com.prineside.tdi2.Modifier
    public void fillModifierMenu(Group group, ObjectMap<String, Object> objectMap) {
        int i;
        String str;
        String str2;
        int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        if (objectMap.size != 0 && objectMap.get("state", -1).equals(1)) {
            i = scaledViewportHeight;
            str = "xpLine";
        } else {
            Logger.log("BalanceModifier", "recreate custom menu");
            group.clear();
            Group group2 = new Group();
            group2.setTransform(false);
            float f = scaledViewportHeight;
            group2.setPosition(40.0f, 606.0f + f);
            group2.setSize(520.0f, 66.0f);
            group.addActor(group2);
            i = scaledViewportHeight;
            Label label = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), Color.WHITE));
            label.setSize(40.0f, 26.0f);
            label.setPosition(480.0f, 40.0f);
            label.setAlignment(16);
            group2.addActor(label);
            Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
            label2.setPosition(0.0f, 0.0f);
            label2.setSize(520.0f, 24.0f);
            label2.setAlignment(16);
            group2.addActor(label2);
            Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
            label3.setPosition(0.0f, 40.0f);
            label3.setSize(520.0f, 26.0f);
            label3.setAlignment(8);
            group2.addActor(label3);
            ExpLine expLine = new ExpLine();
            expLine.setPosition(0.0f, 0.0f);
            Color color = MaterialColor.LIME.P500;
            expLine.setColor(color);
            group2.addActor(expLine);
            Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            image.setPosition(0.0f, 478.0f + f);
            image.setSize(600.0f, 96.0f);
            group.addActor(image);
            Label label4 = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
            label4.setPosition(0.0f, f + 527.0f);
            label4.setSize(600.0f, 28.0f);
            label4.setAlignment(1);
            label4.setColor(color);
            group.addActor(label4);
            Label label5 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
            label5.setPosition(0.0f, f + 498.0f);
            label5.setSize(600.0f, 17.0f);
            label5.setAlignment(1);
            label5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            group.addActor(label5);
            objectMap.put("statusLabel", label3);
            objectMap.put("levelLabel", label);
            objectMap.put("speedLabel", label4);
            objectMap.put("upgradeSpeedLabel", label5);
            objectMap.put("xpLabel", label2);
            str = "xpLine";
            objectMap.put(str, expLine);
            objectMap.put("state", 1);
        }
        ExpLine expLine2 = (ExpLine) objectMap.get(str);
        Label label6 = (Label) objectMap.get("xpLabel");
        Label label7 = (Label) objectMap.get("statusLabel");
        Label label8 = (Label) objectMap.get("speedLabel");
        Label label9 = (Label) objectMap.get("upgradeSpeedLabel");
        ((Label) objectMap.get("levelLabel")).setText("L" + this.f10358p);
        if (this.f10358p >= 5) {
            expLine2.setCoeff(1.0f);
            label6.setText("MAX");
        } else {
            expLine2.setCoeff(this.f10359q / getXpEvolveRequirement());
            label6.setText(((int) this.f10359q) + " / " + getXpEvolveRequirement());
        }
        if (this.mode == Mode.EVOLVE) {
            str2 = Game.f8589i.localeManager.i18n.get("state_upgrading");
            label7.setColor(MaterialColor.LIGHT_BLUE.P500);
        } else {
            str2 = Game.f8589i.localeManager.i18n.get("state_balancing");
            label7.setColor(MaterialColor.LIME.P500);
        }
        label7.setText(str2);
        StringBuilder stringBuilder = f10355s;
        stringBuilder.setLength(0);
        stringBuilder.append(StringFormatter.compactNumber(getSpeed(), 1, true));
        stringBuilder.append(" xp/").append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
        label8.setText(stringBuilder);
        if (this.f10358p >= 5) {
            label8.setPosition(0.0f, i + 512.0f);
            label9.setVisible(false);
            return;
        }
        label8.setPosition(0.0f, i + 527.0f);
        stringBuilder.setLength(0);
        stringBuilder.append("L").append(this.f10358p + 1).append(": ");
        stringBuilder.append(StringFormatter.compactNumber(SPEED_BY_LEVEL[this.f10358p], 1, true));
        stringBuilder.append(" xp/").append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
        label9.setText(stringBuilder);
        label9.setVisible(true);
    }

    @Override // com.prineside.tdi2.Modifier
    public void update(float f) {
        Building building;
        super.update(f);
        float f2 = this.f10360r + f;
        this.f10360r = f2;
        if (f2 > 0.265f) {
            this.f10360r = 0.0f;
            f10356t.clear();
            Pool pool = Pools.get(NeighbourXpConfig.class);
            Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
            int i = 0;
            for (int i2 = 0; i2 < neighbourTiles.size; i2++) {
                Tile tile = neighbourTiles.items[i2];
                if (tile.type == TileType.PLATFORM && (building = ((PlatformTile) tile).building) != null && building.buildingType == BuildingType.TOWER) {
                    Tower tower = (Tower) building;
                    NeighbourXpConfig neighbourXpConfig = (NeighbourXpConfig) pool.obtain();
                    neighbourXpConfig.f10363a = tower;
                    neighbourXpConfig.f10365d = tower.experience;
                    neighbourXpConfig.f10364b = tower.experience - Tower.LEVEL_EXPERIENCE_MILESTONES[tower.getLevel()];
                    f10356t.add(neighbourXpConfig);
                }
            }
            Array<NeighbourXpConfig> array = f10356t;
            if (array.size != 0) {
                array.sort(f10357u);
                Mode mode = this.mode;
                if (mode == Mode.EVOLVE) {
                    float speed = getSpeed() * f2;
                    float xpEvolveRequirement = getXpEvolveRequirement() - this.f10359q;
                    if (speed > xpEvolveRequirement) {
                        speed = xpEvolveRequirement;
                    }
                    if (speed > 0.0f) {
                        int i3 = 0;
                        while (true) {
                            Array<NeighbourXpConfig> array2 = f10356t;
                            if (i3 >= array2.size) {
                                break;
                            }
                            NeighbourXpConfig neighbourXpConfig2 = array2.items[i3];
                            float min = StrictMath.min(speed, neighbourXpConfig2.f10364b);
                            if (min > 0.0f) {
                                float removeExperienceRaw = this.f8844S.tower.removeExperienceRaw(neighbourXpConfig2.f10363a, min);
                                this.f10359q += removeExperienceRaw;
                                speed -= removeExperienceRaw;
                                if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
                                    this.f8844S._particle.addXpOrbParticle(removeExperienceRaw, neighbourXpConfig2.f10363a.getTile().getX(), neighbourXpConfig2.f10363a.getTile().getY(), getTile().getX(), getTile().getY());
                                }
                                if (speed <= 0.0f) {
                                    break;
                                }
                            }
                            i3++;
                        }
                    }
                    if (this.f10358p >= 5) {
                        this.mode = Mode.BALANCE;
                    } else if (this.f10359q >= getXpEvolveRequirement()) {
                        this.f10358p++;
                        this.f10359q = 0.0f;
                        this.mode = Mode.BALANCE;
                        SoundSystem soundSystem = this.f8844S._sound;
                        if (soundSystem != null) {
                            soundSystem.playStatic(StaticSoundType.UPGRADE);
                        }
                        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                            ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.upgradeParticles.obtain();
                            obtain.setPosition(getTile().center.f5527x, getTile().center.f5528y);
                            this.f8844S._particle.addParticle(obtain, true);
                        }
                        GraphicsSystem graphicsSystem = this.f8844S._graphics;
                        if (graphicsSystem != null) {
                            graphicsSystem.modifierMenu.updateCustomButton();
                        }
                    }
                } else if (mode == Mode.BALANCE && f10356t.size > 1) {
                    float speed2 = getSpeed() * f2;
                    int i4 = 0;
                    while (true) {
                        Array<NeighbourXpConfig> array3 = f10356t;
                        if (i4 < array3.size) {
                            NeighbourXpConfig neighbourXpConfig3 = array3.items[i4];
                            if (neighbourXpConfig3.f10364b >= 1.0f) {
                                for (int i5 = f10356t.size - 1; i5 > i4; i5--) {
                                    NeighbourXpConfig neighbourXpConfig4 = f10356t.items[i5];
                                    float f3 = (neighbourXpConfig3.f10365d - neighbourXpConfig4.f10365d) * 0.5f;
                                    if (f3 >= 1.0f) {
                                        float min2 = StrictMath.min(speed2, StrictMath.min(neighbourXpConfig3.f10364b, f3));
                                        if (min2 != 0.0f) {
                                            float removeExperienceRaw2 = this.f8844S.tower.removeExperienceRaw(neighbourXpConfig3.f10363a, min2);
                                            this.f8844S.tower.addExperienceRaw(neighbourXpConfig4.f10363a, removeExperienceRaw2);
                                            speed2 -= removeExperienceRaw2;
                                            NeighbourXpConfig.m21393i(neighbourXpConfig3, removeExperienceRaw2);
                                            NeighbourXpConfig.m21398d(neighbourXpConfig3, removeExperienceRaw2);
                                            NeighbourXpConfig.m21399c(neighbourXpConfig4, removeExperienceRaw2);
                                            if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
                                                this.f8844S._particle.addXpOrbParticle(removeExperienceRaw2, neighbourXpConfig3.f10363a.getTile().getX(), neighbourXpConfig3.f10363a.getTile().getY(), neighbourXpConfig4.f10363a.getTile().getX(), neighbourXpConfig4.f10363a.getTile().getY());
                                            }
                                            if (speed2 != 0.0f) {
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                                continue;
                            }
                            i4++;
                        }
                    }
                }
                while (true) {
                    Array<NeighbourXpConfig> array4 = f10356t;
                    if (i < array4.size) {
                        pool.free(array4.items[i]);
                        i++;
                    } else {
                        array4.clear();
                        return;
                    }
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Modifier
    public void updateCustomButton(ComplexButton complexButton, boolean z) {
        complexButton.setText(Game.f8589i.localeManager.i18n.get("do_upgrade"));
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-double-arrow-up"));
    }

    @Override // com.prineside.tdi2.Modifier
    public void drawBatch(SpriteBatch spriteBatch, float f, MapRenderingSystem.DrawMode drawMode) {
        super.drawBatch(spriteBatch, f, drawMode);
        if (drawMode == MapRenderingSystem.DrawMode.DETAILED) {
            ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
            StringBuilder stringBuilder = f10355s;
            stringBuilder.setLength(0);
            stringBuilder.append(this.f10358p);
            float x = getTile().getX() * 128;
            font.setColor(0.0f, 0.0f, 0.0f, 0.56f);
            float y = (getTile().getY() * 128) + 74.0f;
            font.draw(spriteBatch, stringBuilder, x + 3.0f, y - 3.0f, 128.0f, 1, false);
            font.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            font.draw(spriteBatch, stringBuilder, x, y, 128.0f, 1, false);
            Mode mode = Mode.BALANCE;
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d) {
            Game.f8589i.assetManager.getFont(21).draw(spriteBatch, "B:" + (((int) (this.f10359q * 10.0f)) / 10.0f) + "xp", getTile().center.f5527x - 32.0f, (getTile().center.f5528y - 64.0f) + 40.0f);
        }
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.mode = (Mode) kryo.readObject(input, Mode.class);
        this.f10358p = input.readVarInt(true);
        this.f10359q = input.readFloat();
        this.f10360r = input.readFloat();
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.mode);
        output.writeVarInt(this.f10358p, true);
        output.writeFloat(this.f10359q);
        output.writeFloat(this.f10360r);
    }
}

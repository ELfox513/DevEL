package com.prineside.tdi2.modifiers;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.Locale;
@REGS
/* loaded from: classes2.dex */
public class ExperienceModifier extends Modifier {

    /* renamed from: r */
    public static final StringBuilder f10369r = new StringBuilder();
    public boolean[] minerActive;

    /* renamed from: p */
    public float f10370p;

    /* renamed from: q */
    public _MinerSystemListener f10371q;

    /* loaded from: classes2.dex */
    public static class ExperienceModifierFactory extends Modifier.Factory<ExperienceModifier> {

        /* renamed from: c */
        public TextureRegion f10372c;

        /* renamed from: d */
        public TextureRegion f10373d;

        /* renamed from: e */
        public TextureRegion[] f10374e;

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10372c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            return m21923a((int) (((float) StrictMath.pow(1.5d, i)) * 100.0f));
        }

        public ExperienceModifierFactory() {
            super(ModifierType.EXPERIENCE, MaterialColor.CYAN.P500, "icon-experience-generation-lite");
            this.f10374e = new TextureRegion[ResourceType.values.length];
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public ExperienceModifier create() {
            return new ExperienceModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.format("modifier_description_EXPERIENCE", Integer.valueOf(gameValueProvider.getIntValue(GameValueType.MODIFIER_EXPERIENCE_VALUE)), 10);
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            ResourceType[] resourceTypeArr;
            this.f10372c = Game.f8589i.assetManager.getTextureRegion("modifier-base-experience");
            this.f10373d = Game.f8589i.assetManager.getTextureRegion("xp-orb");
            for (ResourceType resourceType : ResourceType.values) {
                this.f10374e[resourceType.ordinal()] = Game.f8589i.assetManager.getTextureRegion("resource-orb-" + resourceType.name().toLowerCase(Locale.ENGLISH));
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MinerSystemListener extends MinerSystem.MinerSystemListener.MinerSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public ExperienceModifier f10375a;

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 56561723;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f10375a = (ExperienceModifier) kryo.readObjectOrNull(input, ExperienceModifier.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f10375a, ExperienceModifier.class);
        }

        @Deprecated
        public _MinerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerResourcesChanged(Miner miner, ResourceType resourceType, int i, boolean z) {
            if (!z) {
                return;
            }
            for (int i2 = 0; i2 < this.f10375a.f8772d.size; i2++) {
                if (((Miner[]) this.f10375a.f8772d.items)[i2] == miner) {
                    this.f10375a.m21389i(i2, resourceType);
                    return;
                }
            }
        }

        public _MinerSystemListener(ExperienceModifier experienceModifier) {
            this.f10375a = experienceModifier;
        }
    }

    public ExperienceModifier() {
        super(ModifierType.EXPERIENCE);
        this.minerActive = new boolean[8];
    }

    @Override // com.prineside.tdi2.Modifier
    public void fillModifierMenu(Group group, ObjectMap<String, Object> objectMap) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        int i;
        Modifier.ConnectionSide[] connectionSideArr;
        int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            DelayedRemovalArray<Miner> delayedRemovalArray = this.f8772d;
            if (i2 >= delayedRemovalArray.size) {
                break;
            }
            i3 = (i3 * 31) + delayedRemovalArray.items[i2].f8765id;
            i2++;
        }
        int i4 = 0;
        while (true) {
            DelayedRemovalArray<Tower> delayedRemovalArray2 = this.f8771b;
            if (i4 >= delayedRemovalArray2.size) {
                break;
            }
            i3 = (i3 * 31) + delayedRemovalArray2.items[i4].f8924id;
            i4++;
        }
        String str6 = "modifierCooldown";
        String str7 = "minerLabels";
        String str8 = "minerIcons";
        if (objectMap.size != 0 && objectMap.get("state", -1).equals(Integer.valueOf(i3))) {
            str5 = "modifierCooldown";
            str4 = "minerLabels";
            str3 = "minerIcons";
        } else {
            group.clear();
            Group group2 = new Group();
            group2.setTransform(false);
            group2.setSize(288.0f, 288.0f);
            group2.setPosition(156.0f, scaledViewportHeight + 150);
            group.addActor(group2);
            Group group3 = new Group();
            group3.setTransform(false);
            group3.setPosition(96.0f, 96.0f);
            group3.setSize(96.0f, 96.0f);
            group2.addActor(group3);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("tile-type-platform"));
            image.setSize(96.0f, 96.0f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group3.addActor(image);
            Modifier.ConnectionSide[] connectionSideArr2 = Modifier.ConnectionSide.values;
            int length = connectionSideArr2.length;
            int i5 = 0;
            while (i5 < length) {
                Modifier.ConnectionSide connectionSide = connectionSideArr2[i5];
                if (this.connectedSides[connectionSide.ordinal()]) {
                    float[] fArr = Modifier.WIRES_TEXTURES_CONFIG[connectionSide.ordinal()];
                    i = length;
                    connectionSideArr = connectionSideArr2;
                    Image image2 = new Image(new TextureRegionDrawable(Game.f8589i.modifierManager.getFactory(this.type).wires[connectionSide.ordinal()]));
                    image2.setPosition((fArr[0] * 0.75f) + 48.0f, 48.0f + (fArr[1] * 0.75f));
                    image2.setSize(fArr[2] * 0.75f, fArr[3] * 0.75f);
                    group3.addActor(image2);
                } else {
                    i = length;
                    connectionSideArr = connectionSideArr2;
                }
                i5++;
                length = i;
                connectionSideArr2 = connectionSideArr;
            }
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("modifier-base-experience"));
            image3.setSize(96.0f, 96.0f);
            group3.addActor(image3);
            Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
            label.setPosition(0.0f, 32.0f);
            label.setSize(96.0f, 32.0f);
            label.setAlignment(1);
            group3.addActor(label);
            Image[] imageArr = new Image[8];
            Label[] labelArr = new Label[8];
            int x = getTile().getX();
            int y = getTile().getY();
            int i6 = 0;
            while (true) {
                DelayedRemovalArray<Miner> delayedRemovalArray3 = this.f8772d;
                str = str6;
                str2 = str7;
                if (i6 >= delayedRemovalArray3.size) {
                    break;
                }
                Miner miner = delayedRemovalArray3.items[i6];
                Group group4 = new Group();
                group4.setTransform(false);
                group4.setSize(96.0f, 96.0f);
                group4.setPosition(96.0f - ((x - miner.getTile().getX()) * 96.0f), 96.0f - ((y - miner.getTile().getY()) * 96.0f));
                group2.addActor(group4);
                Image image4 = new Image(Game.f8589i.assetManager.getDrawable("tile-type-platform"));
                image4.setSize(96.0f, 96.0f);
                image4.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                group4.addActor(image4);
                Image image5 = new Image(Game.f8589i.assetManager.getDrawable("icon-miner-top"));
                image5.setSize(48.0f, 48.0f);
                image5.setPosition(24.0f, 34.0f);
                group4.addActor(image5);
                imageArr[i6] = image5;
                Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
                label2.setPosition(0.0f, 12.0f);
                label2.setSize(96.0f, 18.0f);
                label2.setAlignment(1);
                group4.addActor(label2);
                labelArr[i6] = label2;
                i6++;
                str6 = str;
                str7 = str2;
                str8 = str8;
            }
            String str9 = str8;
            int i7 = 0;
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray4 = this.f8771b;
                if (i7 >= delayedRemovalArray4.size) {
                    break;
                }
                Tower tower = delayedRemovalArray4.items[i7];
                Group group5 = new Group();
                group5.setTransform(false);
                group5.setSize(96.0f, 96.0f);
                group5.setPosition(96.0f - ((x - tower.getTile().getX()) * 96.0f), 96.0f - ((y - tower.getTile().getY()) * 96.0f));
                group2.addActor(group5);
                Image image6 = new Image(Game.f8589i.assetManager.getDrawable("tile-type-platform"));
                image6.setSize(96.0f, 96.0f);
                image6.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                group5.addActor(image6);
                Image image7 = new Image(Game.f8589i.assetManager.getDrawable("icon-tower-top"));
                image7.setSize(48.0f, 48.0f);
                image7.setPosition(24.0f, 24.0f);
                image7.setColor(MaterialColor.LIGHT_BLUE.P500);
                group5.addActor(image7);
                i7++;
            }
            objectMap.put("state", Integer.valueOf(i3));
            str3 = str9;
            objectMap.put(str3, imageArr);
            str4 = str2;
            objectMap.put(str4, labelArr);
            str5 = str;
            objectMap.put(str5, label);
        }
        Image[] imageArr2 = (Image[]) objectMap.get(str3);
        Label[] labelArr2 = (Label[]) objectMap.get(str4);
        Label label3 = (Label) objectMap.get(str5);
        int i8 = this.f8771b.size;
        int i9 = 0;
        while (true) {
            DelayedRemovalArray<Miner> delayedRemovalArray5 = this.f8772d;
            if (i9 < delayedRemovalArray5.size) {
                Miner miner2 = delayedRemovalArray5.items[i9];
                if (this.minerActive[i9]) {
                    imageArr2[i9].setColor(MaterialColor.LIGHT_GREEN.P500);
                } else {
                    imageArr2[i9].setColor(MaterialColor.ORANGE.P500);
                }
                f10369r.setLength(0);
                int i10 = 0;
                for (ResourceType resourceType : ResourceType.values) {
                    i10 += miner2.minedResources[resourceType.ordinal()].get();
                }
                if (i10 >= i8) {
                    f10369r.append("[#8BC34A]");
                } else {
                    f10369r.append("[#FF9800]");
                }
                StringBuilder stringBuilder = f10369r;
                stringBuilder.append(StringFormatter.compactNumber(i10, false));
                stringBuilder.append("[] / [#808080]").append(i8).append("[]");
                labelArr2[i9].setText(stringBuilder);
                i9++;
            } else {
                label3.setText(StringFormatter.compactNumber(this.f10370p, 1));
                return;
            }
        }
    }

    /* renamed from: i */
    public final void m21389i(int i, ResourceType resourceType) {
        if (this.minerActive[i] && this.f8771b.size != 0) {
            float intValue = this.f8844S.gameValue.getIntValue(GameValueType.MODIFIER_EXPERIENCE_VALUE) / this.f8771b.size;
            int i2 = 0;
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray = this.f8771b;
                if (i2 < delayedRemovalArray.size) {
                    Tower tower = delayedRemovalArray.items[i2];
                    this.f8844S.tower.addExperienceRaw(tower, intValue);
                    this.f8844S.statistics.addStatistic(StatisticsType.XPG_EM, intValue);
                    if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
                        this.f8844S._particle.addXpOrbParticle(intValue, getTile().getX(), getTile().getY(), tower.getTile().getX(), tower.getTile().getY());
                    }
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8844S.miner.listeners.remove(this.f10371q);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.Modifier
    public void update(float f) {
        ResourceType[] resourceTypeArr;
        super.update(f);
        float f2 = this.f10370p - f;
        this.f10370p = f2;
        if (f2 <= 0.0f) {
            this.f10370p = f2 + 10.0f;
            int i = this.f8771b.size;
            int i2 = 0;
            while (true) {
                DelayedRemovalArray<Miner> delayedRemovalArray = this.f8772d;
                if (i2 < delayedRemovalArray.size) {
                    Miner miner = delayedRemovalArray.items[i2];
                    int i3 = 0;
                    for (ResourceType resourceType : ResourceType.values) {
                        i3 += miner.minedResources[resourceType.ordinal()].get();
                    }
                    if (i3 < i) {
                        this.minerActive[i2] = false;
                    } else {
                        this.minerActive[i2] = true;
                        int i4 = i;
                        for (ResourceType resourceType2 : ResourceType.values) {
                            int i5 = miner.minedResources[resourceType2.ordinal()].get();
                            if (i5 > 0) {
                                int min = StrictMath.min(i5, i4);
                                this.f8844S.miner.removeResources(miner, resourceType2, min);
                                if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                                    for (int i6 = 0; i6 < min; i6++) {
                                        this.f8844S._particle.addOrbParticle(Game.f8589i.modifierManager.f9900F.EXPERIENCE.f10374e[resourceType2.ordinal()], 18.0f, miner.getTile().getX(), miner.getTile().getY(), getTile().getX(), getTile().getY());
                                    }
                                }
                                i4 -= min;
                                if (i4 == 0) {
                                    break;
                                }
                            }
                        }
                    }
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Modifier
    public void nearbyBuildingsChanged() {
        Miner miner;
        super.nearbyBuildingsChanged();
        Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
        for (int i = 0; i < neighbourTiles.size; i++) {
            Tile tile = neighbourTiles.items[i];
            if (tile.type == TileType.SOURCE && (miner = ((SourceTile) tile).miner) != null) {
                m21929a(miner);
            }
        }
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10370p = input.readFloat();
        this.minerActive = (boolean[]) kryo.readObject(input, boolean[].class);
        this.f10371q = (_MinerSystemListener) kryo.readObjectOrNull(input, _MinerSystemListener.class);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        if (this.f10371q == null) {
            this.f10371q = new _MinerSystemListener();
        }
        this.f8844S.miner.listeners.add(this.f10371q);
    }

    @Override // com.prineside.tdi2.Modifier, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f10370p);
        kryo.writeObject(output, this.minerActive);
        kryo.writeObjectOrNull(output, this.f10371q, _MinerSystemListener.class);
    }
}

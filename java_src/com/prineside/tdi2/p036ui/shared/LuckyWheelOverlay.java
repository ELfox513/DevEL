package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ParticlesCanvas;
import com.prineside.tdi2.p036ui.actors.PieChartActor;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.TrailMultilineActor;
import com.prineside.tdi2.shapes.BulletSmokeMultiLine;
import com.prineside.tdi2.shapes.Circle;
import com.prineside.tdi2.shapes.PieChart;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.LuckyWheelOverlay */
/* loaded from: classes2.dex */
public class LuckyWheelOverlay {

    /* renamed from: G */
    public static final Interpolation f14667G = Interpolation.sine;

    /* renamed from: H */
    public static Color[] f14668H = ProgressManager.RARITY_COLORS;

    /* renamed from: I */
    public static Color f14669I = MaterialColor.YELLOW.P600;

    /* renamed from: J */
    public static Color[] f14670J;

    /* renamed from: K */
    public static Color f14671K;

    /* renamed from: L */
    public static Color[] f14672L;

    /* renamed from: M */
    public static Color f14673M;

    /* renamed from: N */
    public static Color[] f14674N;

    /* renamed from: O */
    public static Color f14675O;

    /* renamed from: P */
    public static final Vector2 f14676P;

    /* renamed from: A */
    public TrailMultilineActor[] f14677A;

    /* renamed from: B */
    public Image[] f14678B;

    /* renamed from: C */
    public float f14679C;

    /* renamed from: D */
    public ParticleEffectPool f14680D;

    /* renamed from: E */
    public float f14681E;

    /* renamed from: F */
    public boolean f14682F;

    /* renamed from: a */
    public final UiManager.UiLayer f14683a;

    /* renamed from: b */
    public final UiManager.UiLayer f14684b;

    /* renamed from: c */
    public Group f14685c;

    /* renamed from: d */
    public Group f14686d;

    /* renamed from: e */
    public ParticlesCanvas f14687e;

    /* renamed from: f */
    public Group f14688f;

    /* renamed from: g */
    public Group f14689g;

    /* renamed from: h */
    public PieChartActor f14690h;

    /* renamed from: i */
    public PieChartActor f14691i;

    /* renamed from: j */
    public Group f14692j;

    /* renamed from: k */
    public Image f14693k;

    /* renamed from: l */
    public int f14694l;

    /* renamed from: m */
    public Array<WheelOptionConfig> f14695m;

    /* renamed from: n */
    public float f14696n;

    /* renamed from: o */
    public boolean f14697o;

    /* renamed from: p */
    public float f14698p;

    /* renamed from: q */
    public float f14699q;

    /* renamed from: r */
    public float f14700r;

    /* renamed from: s */
    public float f14701s;

    /* renamed from: t */
    public float f14702t;

    /* renamed from: u */
    public float f14703u;

    /* renamed from: v */
    public boolean f14704v;

    /* renamed from: w */
    public boolean f14705w;

    /* renamed from: x */
    public float f14706x;

    /* renamed from: y */
    public float f14707y;

    /* renamed from: z */
    public Group f14708z;

    /* renamed from: com.prineside.tdi2.ui.shared.LuckyWheelOverlay$WheelOption */
    /* loaded from: classes2.dex */
    public static class WheelOption {
        public float chance;
        public ItemStack item;
        public int wheelMultiplier;

        public WheelOption(ItemStack itemStack, float f) {
            this.item = itemStack;
            this.chance = f;
        }

        public static WheelOption fromJson(JsonValue jsonValue) {
            ItemStack itemStack;
            if (jsonValue.get("item") != null) {
                itemStack = ItemStack.fromJson(jsonValue.get("item"));
            } else {
                itemStack = null;
            }
            return new WheelOption(itemStack, jsonValue.getFloat("chance"), jsonValue.getInt("wheelMultiplier", 0));
        }

        public void toJson(Json json) {
            if (this.item != null) {
                json.writeObjectStart("item");
                this.item.toJson(json);
                json.writeObjectEnd();
            }
            json.writeValue("chance", Float.valueOf(this.chance));
            int i = this.wheelMultiplier;
            if (i != 0) {
                json.writeValue("wheelMultiplier", Integer.valueOf(i));
            }
        }

        public WheelOption(ItemStack itemStack, float f, int i) {
            this.item = itemStack;
            this.chance = f;
            this.wheelMultiplier = i;
        }
    }

    /* renamed from: o */
    public final float m19976o() {
        return this.f14697o ? this.f14696n : Game.f8589i.progressManager.luckyWheelLastRotation;
    }

    /* renamed from: p */
    public final float m19975p() {
        return this.f14697o ? this.f14707y : Game.f8589i.progressManager.luckyWheelLastWeaponAngle;
    }

    /* renamed from: v */
    public final void m19969v() {
        int i = 0;
        float f = 0.0f;
        int i2 = 0;
        float f2 = 0.0f;
        while (true) {
            Array<WheelOptionConfig> array = this.f14695m;
            if (i2 >= array.size) {
                break;
            }
            f2 += array.items[i2].f14726a.chance;
            i2++;
        }
        float f3 = 360.0f / f2;
        while (true) {
            Array<WheelOptionConfig> array2 = this.f14695m;
            int i3 = array2.size;
            if (i < i3) {
                WheelOptionConfig wheelOptionConfig = array2.items[i];
                float f4 = (wheelOptionConfig.f14726a.chance * f3) + f;
                wheelOptionConfig.f14727b = f;
                wheelOptionConfig.f14728c = f4;
                wheelOptionConfig.f14729d = (f + f4) * 0.5f;
                i++;
                f = f4;
            } else {
                array2.items[i3 - 1].f14728c = 360.0f;
                return;
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.LuckyWheelOverlay$WheelOptionConfig */
    /* loaded from: classes2.dex */
    public static class WheelOptionConfig {
        public static Vector3 helperVector3 = new Vector3();

        /* renamed from: a */
        public WheelOption f14726a;

        /* renamed from: b */
        public float f14727b;

        /* renamed from: c */
        public float f14728c;

        /* renamed from: d */
        public float f14729d;

        /* renamed from: e */
        public Group f14730e;

        /* renamed from: f */
        public Label f14731f;

        /* renamed from: g */
        public Label f14732g;

        /* renamed from: h */
        public PieChart.ChartEntryConfig f14733h;

        /* renamed from: i */
        public PieChart.ChartEntryConfig f14734i;
        public float respinPrepareFromAngle;
        public boolean wasHit;

        public static Vector3 getPosRotForAngle(float f) {
            LuckyWheelOverlay.f14676P.set(0.0f, 1.0f).rotateDeg(f).scl(230.0f);
            Vector3 vector3 = helperVector3;
            vector3.f5533x = (LuckyWheelOverlay.f14676P.f5527x + 240.0f) - 40.0f;
            vector3.f5534y = (LuckyWheelOverlay.f14676P.f5528y + 240.0f) - 40.0f;
            vector3.f5535z = f;
            return vector3;
        }

        public void setItemContainerAngle(float f) {
            Vector3 posRotForAngle = getPosRotForAngle(f);
            this.f14730e.setPosition(posRotForAngle.f5533x, posRotForAngle.f5534y);
            this.f14730e.setRotation(posRotForAngle.f5535z);
        }
    }

    static {
        RarityType[] rarityTypeArr = RarityType.values;
        f14670J = new Color[rarityTypeArr.length];
        f14671K = f14669I.cpy().mul(1.0f, 1.0f, 1.0f, 0.28f);
        f14672L = ProgressManager.RARITY_BRIGHT_COLORS;
        Color color = MaterialColor.YELLOW.P300;
        f14673M = color;
        f14674N = new Color[rarityTypeArr.length];
        f14675O = color.cpy().mul(1.0f, 1.0f, 1.0f, 0.56f);
        for (int i = 0; i < RarityType.values.length; i++) {
            f14670J[i] = f14668H[i].cpy().mul(1.0f, 1.0f, 1.0f, 0.28f);
            f14674N[i] = f14672L[i].cpy().mul(1.0f, 1.0f, 1.0f, 0.56f);
        }
        f14676P = new Vector2();
    }

    public LuckyWheelOverlay() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SHARED_COMPONENTS;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 90, "LuckyWheelOverlay tint");
        this.f14683a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 91, "LuckyWheelOverlay main");
        this.f14684b = addLayer2;
        this.f14694l = -1;
        this.f14695m = new Array<>(WheelOptionConfig.class);
        this.f14707y = 0.0f;
        this.f14677A = new TrailMultilineActor[5];
        this.f14678B = new Image[5];
        this.f14679C = 0.0f;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        Color color = Config.BACKGROUND_COLOR;
        image.setColor(color);
        image.getColor().f3889a = 0.78f;
        addLayer.getTable().add((Table) image).expand().fill();
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (!LuckyWheelOverlay.this.f14697o && !LuckyWheelOverlay.this.f14704v) {
                    LuckyWheelOverlay.this.setVisible(false);
                }
            }
        });
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(240.0f, 240.0f);
        addLayer2.getTable().add((Table) group).size(480.0f, 480.0f);
        Group group2 = new Group();
        this.f14685c = group2;
        group2.setTransform(true);
        this.f14685c.setOrigin(240.0f, 240.0f);
        this.f14685c.setSize(480.0f, 480.0f);
        group.addActor(this.f14685c);
        Group group3 = new Group();
        this.f14686d = group3;
        group3.setOrigin(240.0f, 240.0f);
        this.f14686d.setSize(480.0f, 480.0f);
        this.f14685c.addActor(this.f14686d);
        ParticleEffect particleEffect = new ParticleEffect();
        particleEffect.load(Gdx.files.internal("particles/lucky-wheel-hit.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
        particleEffect.setEmittersCleanUpBlendFunction(false);
        this.f14680D = new ParticleEffectPool(particleEffect, 1, 8);
        PieChartActor pieChartActor = new PieChartActor();
        this.f14690h = pieChartActor;
        pieChartActor.setSegmentCount(360);
        this.f14690h.chart.setShadowSegments(-1);
        this.f14690h.chart.setFadeToOut(true);
        this.f14690h.setSize(640.0f, 640.0f);
        this.f14690h.setPosition(-80.0f, -80.0f);
        this.f14686d.addActor(this.f14690h);
        ParticlesCanvas particlesCanvas = new ParticlesCanvas();
        this.f14687e = particlesCanvas;
        particlesCanvas.setSize(480.0f, 480.0f);
        this.f14686d.addActor(this.f14687e);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("circle"));
        image2.setSize(292.0f, 292.0f);
        image2.setPosition(94.0f, 94.0f);
        image2.setColor(color);
        this.f14686d.addActor(image2);
        PieChartActor pieChartActor2 = new PieChartActor();
        this.f14691i = pieChartActor2;
        pieChartActor2.setSegmentCount(360);
        this.f14691i.setSize(280.0f, 280.0f);
        this.f14691i.setPosition(100.0f, 100.0f);
        this.f14691i.chart.setShadowSegments(-1);
        this.f14686d.addActor(this.f14691i);
        final Circle circle = (Circle) Game.f8589i.shapeManager.getFactory(ShapeType.CIRCLE).obtain();
        circle.setup(240.0f, 240.0f, 0.0f, 128.0f, 360, color.toFloatBits(), color.toFloatBits());
        Actor actor = new Actor() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.2
            @Override // com.badlogic.gdx.scenes.scene2d.Actor
            public void draw(Batch batch, float f) {
                circle.draw(batch);
            }
        };
        actor.setSize(256.0f, 256.0f);
        this.f14686d.addActor(actor);
        Group group4 = new Group();
        this.f14688f = group4;
        group4.setTransform(false);
        this.f14688f.setSize(480.0f, 480.0f);
        this.f14686d.addActor(this.f14688f);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("tower-gauss-base"));
        image3.setSize(128.0f, 128.0f);
        image3.setPosition(176.0f, 176.0f);
        this.f14685c.addActor(image3);
        int i = 0;
        while (true) {
            TrailMultilineActor[] trailMultilineActorArr = this.f14677A;
            if (i >= trailMultilineActorArr.length) {
                break;
            }
            trailMultilineActorArr[i] = new TrailMultilineActor();
            this.f14677A[i].trail.setAlpha(0.0f);
            this.f14677A[i].setup(MaterialColor.ORANGE.P500, 24, 0.016f, 16.0f);
            this.f14677A[i].setPosition(240.0f, (i * 12.0f) + 267.0f);
            this.f14685c.addActor(this.f14677A[i]);
            i++;
        }
        Group group5 = new Group();
        this.f14708z = group5;
        group5.setTransform(true);
        this.f14708z.setSize(28.0f, 105.0f);
        this.f14708z.setOrigin(14.0f, 21.0f);
        this.f14708z.setPosition(226.0f, 219.0f);
        this.f14685c.addActor(this.f14708z);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("tower-gauss-weapon"));
        image4.setSize(28.0f, 105.0f);
        this.f14708z.addActor(image4);
        int i2 = 0;
        while (true) {
            Image[] imageArr = this.f14678B;
            if (i2 < imageArr.length) {
                imageArr[i2] = new Image(Game.f8589i.assetManager.getDrawable("tower-gauss-weapon-glow"));
                this.f14678B[i2].setPosition(-4.0f, (i2 * 12.0f) + 36.0f);
                this.f14678B[i2].setColor(1.0f, 1.0f, 1.0f, 0.0f);
                this.f14708z.addActor(this.f14678B[i2]);
                i2++;
            } else {
                Group group6 = new Group();
                Touchable touchable = Touchable.enabled;
                group6.setTouchable(touchable);
                group6.setTransform(false);
                group6.setSize(100.0f, 480.0f);
                group6.setPosition(580.0f, 0.0f);
                this.f14685c.addActor(group6);
                Color color2 = Color.WHITE;
                QuadActor quadActor = new QuadActor(color2, new float[]{2.0f, 4.0f, 0.0f, 442.0f, 22.0f, 448.0f, 24.0f, 0.0f});
                quadActor.setSize(24.0f, 448.0f);
                quadActor.setPosition(38.0f, 16.0f);
                quadActor.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                group6.addActor(quadActor);
                QuadActor quadActor2 = new QuadActor(color2, new float[]{2.0f, 4.0f, 0.0f, 442.0f, 10.0f, 446.0f, 9.0f, 3.0f});
                quadActor2.setSize(10.0f, 446.0f);
                quadActor2.setPosition(38.0f, 16.0f);
                quadActor2.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                group6.addActor(quadActor2);
                Group group7 = new Group();
                this.f14692j = group7;
                group7.setTransform(false);
                this.f14692j.setSize(100.0f, 64.0f);
                this.f14692j.setPosition(0.0f, 416.0f);
                this.f14692j.setPosition(0.0f, 416.0f);
                this.f14692j.setTouchable(touchable);
                this.f14692j.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.3

                    /* renamed from: b */
                    public float f14716b = 416.0f;

                    /* renamed from: c */
                    public float f14717c;

                    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                    public void touchDragged(InputEvent inputEvent, float f, float f2, int i3) {
                        m19966b(inputEvent.getStageY());
                    }

                    /* renamed from: a */
                    public final float m19967a(float f) {
                        float f2 = this.f14717c - f;
                        if (f2 < 0.0f) {
                            return 0.0f;
                        }
                        float f3 = this.f14716b;
                        if (f2 > f3) {
                            return f3;
                        }
                        return f2;
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i3, int i4) {
                        if (LuckyWheelOverlay.this.f14697o || !Game.f8589i.progressManager.isLuckyWheelSpinAvailable()) {
                            return false;
                        }
                        inputEvent.cancel();
                        LuckyWheelOverlay.this.f14697o = false;
                        this.f14717c = inputEvent.getStageY();
                        return true;
                    }

                    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                    public void touchUp(InputEvent inputEvent, float f, float f2, int i3, int i4) {
                        if (!LuckyWheelOverlay.this.f14682F) {
                            return;
                        }
                        float m19967a = m19967a(inputEvent.getStageY()) / this.f14716b;
                        if (m19967a > 0.2f) {
                            LuckyWheelOverlay.this.m19968w(m19967a);
                        }
                        LuckyWheelOverlay.this.f14692j.clearActions();
                        LuckyWheelOverlay.this.f14692j.addAction(Actions.moveTo(0.0f, 416.0f, 0.2f, Interpolation.pow3In));
                    }

                    /* renamed from: b */
                    public final void m19966b(float f) {
                        LuckyWheelOverlay.this.f14692j.setPosition(0.0f, this.f14716b - m19967a(f));
                    }
                });
                group6.addActor(this.f14692j);
                Actor actor2 = new Actor();
                actor2.setSize(164.0f, 128.0f);
                actor2.setPosition(-32.0f, -32.0f);
                actor2.setTouchable(touchable);
                this.f14692j.addActor(actor2);
                Image image5 = new Image(Game.f8589i.assetManager.getDrawable("ui-lucky-wheel-handle"));
                this.f14693k = image5;
                image5.setColor(MaterialColor.LIGHT_BLUE.P500);
                this.f14693k.setSize(100.0f, 64.0f);
                this.f14693k.setTouchable(Touchable.disabled);
                this.f14692j.addActor(this.f14693k);
                Group group8 = new Group();
                this.f14689g = group8;
                group8.setTransform(false);
                this.f14689g.setSize(640.0f, 128.0f);
                this.f14689g.setPosition(-80.0f, -224.0f);
                this.f14685c.addActor(this.f14689g);
                this.f14683a.getTable().setVisible(false);
                this.f14684b.getTable().setVisible(false);
                return;
            }
        }
    }

    /* renamed from: n */
    public final int m19977n(float f, float f2) {
        float f3 = ((((f - f2) + 90.0f) % 360.0f) + 360.0f) % 360.0f;
        int i = 0;
        while (true) {
            Array<WheelOptionConfig> array = this.f14695m;
            if (i < array.size) {
                WheelOptionConfig wheelOptionConfig = array.items[i];
                float min = StrictMath.min(wheelOptionConfig.f14727b, wheelOptionConfig.f14728c);
                float max = StrictMath.max(wheelOptionConfig.f14727b, wheelOptionConfig.f14728c);
                if (f3 >= min && f3 <= max) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i != -1) {
            return i;
        }
        throw new IllegalStateException("Invalid weapon rotation " + f);
    }

    public void postRender(float f) {
        if (this.f14682F) {
            this.f14681E += f;
            while (this.f14681E > 0.01666f) {
                m19974q();
                this.f14681E -= 0.01666f;
            }
        }
    }

    /* renamed from: q */
    public final void m19974q() {
        TrailMultilineActor[] trailMultilineActorArr;
        float f;
        boolean z;
        Color add;
        Color add2;
        Color color;
        Color color2;
        Color color3;
        Color color4;
        Color color5;
        int i = 0;
        if (this.f14704v) {
            float f2 = this.f14706x + 0.03332f;
            this.f14706x = f2;
            if (f2 >= 1.0f) {
                this.f14704v = false;
                rebuild();
            } else {
                float apply = f14667G.apply(f2);
                int i2 = 0;
                while (true) {
                    Array<WheelOptionConfig> array = this.f14695m;
                    if (i2 >= array.size) {
                        break;
                    }
                    WheelOptionConfig wheelOptionConfig = array.items[i2];
                    if (wheelOptionConfig.wasHit) {
                        float f3 = wheelOptionConfig.f14726a.chance * (1.0f - apply);
                        wheelOptionConfig.f14733h.value = f3;
                        wheelOptionConfig.f14734i.value = f3;
                    }
                    i2++;
                }
                this.f14691i.chart.requestVerticesRebuild();
                this.f14690h.chart.requestVerticesRebuild();
                int i3 = 0;
                while (true) {
                    Array<WheelOptionConfig> array2 = this.f14695m;
                    if (i3 >= array2.size) {
                        break;
                    }
                    WheelOptionConfig wheelOptionConfig2 = array2.items[i3];
                    if (!wheelOptionConfig2.wasHit) {
                        Vector3 posRotForAngle = WheelOptionConfig.getPosRotForAngle((wheelOptionConfig2.respinPrepareFromAngle + (PMath.getDistanceBetweenAngles(wheelOptionConfig2.respinPrepareFromAngle, wheelOptionConfig2.f14729d) * apply)) - 90.0f);
                        wheelOptionConfig2.f14730e.setPosition(posRotForAngle.f5533x, posRotForAngle.f5534y);
                        wheelOptionConfig2.f14730e.setRotation(posRotForAngle.f5535z);
                    }
                    i3++;
                }
            }
        }
        if (this.f14697o) {
            this.f14703u += 0.01666f;
            int m19977n = m19977n(this.f14707y, this.f14696n);
            if (m19977n != this.f14694l) {
                Game.f8589i.soundManager.playStatic(StaticSoundType.TICK);
                int i4 = this.f14694l;
                if (i4 != -1) {
                    WheelOptionConfig wheelOptionConfig3 = this.f14695m.items[i4];
                    PieChart.ChartEntryConfig chartEntryConfig = this.f14691i.getConfigs().items[this.f14694l];
                    if (wheelOptionConfig3.f14726a.wheelMultiplier == 0) {
                        color4 = f14668H[wheelOptionConfig3.f14726a.item.getItem().getRarity().ordinal()];
                    } else {
                        color4 = f14669I;
                    }
                    chartEntryConfig.color = color4;
                    PieChart.ChartEntryConfig chartEntryConfig2 = this.f14690h.getConfigs().items[this.f14694l];
                    if (wheelOptionConfig3.f14726a.wheelMultiplier == 0) {
                        color5 = f14670J[wheelOptionConfig3.f14726a.item.getItem().getRarity().ordinal()];
                    } else {
                        color5 = f14671K;
                    }
                    chartEntryConfig2.color = color5;
                }
                this.f14694l = m19977n;
                WheelOptionConfig wheelOptionConfig4 = this.f14695m.items[m19977n];
                PieChart.ChartEntryConfig chartEntryConfig3 = this.f14691i.getConfigs().items[m19977n];
                if (wheelOptionConfig4.f14726a.wheelMultiplier == 0) {
                    color2 = f14672L[wheelOptionConfig4.f14726a.item.getItem().getRarity().ordinal()];
                } else {
                    color2 = f14673M;
                }
                chartEntryConfig3.color = color2;
                PieChart.ChartEntryConfig chartEntryConfig4 = this.f14690h.getConfigs().items[m19977n];
                if (wheelOptionConfig4.f14726a.wheelMultiplier == 0) {
                    color3 = f14674N[wheelOptionConfig4.f14726a.item.getItem().getRarity().ordinal()];
                } else {
                    color3 = f14675O;
                }
                chartEntryConfig4.color = color3;
                this.f14691i.chart.requestVerticesRebuild();
                this.f14690h.chart.requestVerticesRebuild();
            }
            float f4 = this.f14703u / this.f14702t;
            if (f4 >= 1.0f) {
                this.f14679C = 1.0f;
                this.f14697o = false;
                final BulletSmokeMultiLine bulletSmokeMultiLine = (BulletSmokeMultiLine) Game.f8589i.shapeManager.getFactory(ShapeType.BULLET_SMOKE_MULTI_LINE).obtain();
                ResourcePack.AtlasTextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion("bullet-trace-smoke");
                if (FastRandom.getFloat() < 0.5f) {
                    z = true;
                } else {
                    z = false;
                }
                bulletSmokeMultiLine.setTexture(textureRegion, false, z);
                bulletSmokeMultiLine.maxSegmentWidth = 25.6f;
                bulletSmokeMultiLine.nodesDisperseTime = 3.0f;
                bulletSmokeMultiLine.maxAlpha = 0.56f;
                Vector2 pointByAngleFromPoint = PMath.getPointByAngleFromPoint(240.0f, 240.0f, this.f14707y, 24.0f);
                float f5 = pointByAngleFromPoint.f5527x;
                float f6 = pointByAngleFromPoint.f5528y;
                Vector2 pointByAngleFromPoint2 = PMath.getPointByAngleFromPoint(240.0f, 240.0f, this.f14707y, 960.0f);
                bulletSmokeMultiLine.setup(f5, f6, pointByAngleFromPoint2.f5527x, pointByAngleFromPoint2.f5528y);
                Actor actor = new Actor() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.11
                    @Override // com.badlogic.gdx.scenes.scene2d.Actor
                    public void draw(Batch batch, float f7) {
                        bulletSmokeMultiLine.update(r3);
                        if (bulletSmokeMultiLine.isFinished()) {
                            bulletSmokeMultiLine.free();
                            remove();
                            return;
                        }
                        batch.end();
                        batch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
                        batch.begin();
                        bulletSmokeMultiLine.draw(batch);
                        batch.end();
                        batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                        batch.begin();
                    }
                };
                actor.setSize(1.0f, 1.0f);
                this.f14685c.addActor(actor);
                WheelOptionConfig wheelOptionConfig5 = this.f14695m.items[this.f14694l];
                if (wheelOptionConfig5.f14726a.wheelMultiplier == 0) {
                    add = f14672L[wheelOptionConfig5.f14726a.item.getItem().getRarity().ordinal()].cpy().add(0.14f, 0.14f, 0.14f, 1.0f);
                    add2 = f14674N[wheelOptionConfig5.f14726a.item.getItem().getRarity().ordinal()].cpy().add(0.0f, 0.0f, 0.0f, 1.0f);
                } else {
                    add = f14673M.cpy().add(0.14f, 0.14f, 0.14f, 1.0f);
                    add2 = f14675O.cpy().add(0.0f, 0.0f, 0.0f, 1.0f);
                }
                this.f14691i.getConfigs().items[this.f14694l].color = add;
                this.f14690h.getConfigs().items[this.f14694l].color = add2;
                this.f14691i.chart.requestVerticesRebuild();
                this.f14690h.chart.requestVerticesRebuild();
                if (wheelOptionConfig5.f14726a.wheelMultiplier == 0) {
                    Game.f8589i.soundManager.playRarity(wheelOptionConfig5.f14726a.item.getItem().getRarity());
                } else {
                    Game.f8589i.soundManager.playStatic(StaticSoundType.SUCCESS);
                }
                int i5 = 0;
                while (true) {
                    Array<WheelOptionConfig> array3 = this.f14695m;
                    if (i5 >= array3.size) {
                        break;
                    }
                    WheelOptionConfig wheelOptionConfig6 = array3.items[i5];
                    wheelOptionConfig6.f14730e.clearActions();
                    wheelOptionConfig6.f14731f.clearActions();
                    wheelOptionConfig6.f14731f.addAction(Actions.alpha(0.0f, 0.2f));
                    if (wheelOptionConfig5 == wheelOptionConfig6) {
                        wheelOptionConfig6.f14730e.addAction(Actions.parallel(Actions.scaleTo(1.1f, 1.1f, 0.2f)));
                    } else {
                        wheelOptionConfig6.f14730e.addAction(Actions.parallel(Actions.scaleTo(0.9f, 0.9f, 0.2f), Actions.alpha(0.56f, 0.2f)));
                    }
                    i5++;
                }
                if (wheelOptionConfig5.f14726a.wheelMultiplier == 0) {
                    color = Game.f8589i.progressManager.getRarityBrightColor(wheelOptionConfig5.f14726a.item.getItem().getRarity());
                } else {
                    color = f14673M;
                }
                ParticleEffectPool.PooledEffect obtain = this.f14680D.obtain();
                obtain.getEmitters().first().getTint().setColors(new float[]{color.f3892r, color.f3891g, color.f3890b});
                obtain.getEmitters().first().getAngle().setHighMin(wheelOptionConfig5.f14727b);
                obtain.getEmitters().first().getAngle().setHighMax(wheelOptionConfig5.f14728c);
                obtain.getEmitters().first().getEmission().setHigh((StrictMath.abs(PMath.getDistanceBetweenAngles(wheelOptionConfig5.f14728c, wheelOptionConfig5.f14727b)) / 30.0f) * 300.0f);
                this.f14687e.addParticle(obtain, 240.0f, 240.0f);
                wheelOptionConfig5.wasHit = true;
                m19973r(wheelOptionConfig5);
            } else {
                this.f14696n = this.f14699q + (Interpolation.exp10Out.apply(f4) * (this.f14698p - this.f14699q));
                this.f14679C = 1.25f * f4;
                this.f14707y = this.f14701s + (Interpolation.smoother.apply(f4) * (this.f14700r - this.f14701s));
            }
        } else {
            this.f14679C *= 0.98334f;
        }
        if (this.f14679C > 1.0f) {
            this.f14679C = 1.0f;
        }
        this.f14696n = ((this.f14696n % 360.0f) + 360.0f) % 360.0f;
        this.f14686d.setRotation(m19976o());
        this.f14708z.setRotation(m19975p());
        float f7 = (this.f14679C - 0.25f) / 0.75f;
        while (true) {
            if (i < this.f14677A.length) {
                float f8 = i;
                float length = (1.0f / trailMultilineActorArr.length) * f8;
                if (f7 > length) {
                    f = (f7 - length) * trailMultilineActorArr.length;
                    if (f >= 0.0f) {
                        if (f > 1.0f) {
                            f = 1.0f;
                        }
                        Vector2 vector2 = f14676P;
                        vector2.set(0.0f, 1.0f).rotateDeg(m19975p()).scl((f8 * 12.0f) + 27.0f);
                        this.f14677A[i].trail.setAlpha(f);
                        this.f14677A[i].setPosition(vector2.f5527x + 240.0f, vector2.f5528y + 240.0f);
                        this.f14678B[i].setColor(1.0f, 1.0f, 1.0f, f);
                        i++;
                    }
                }
                f = 0.0f;
                Vector2 vector22 = f14676P;
                vector22.set(0.0f, 1.0f).rotateDeg(m19975p()).scl((f8 * 12.0f) + 27.0f);
                this.f14677A[i].trail.setAlpha(f);
                this.f14677A[i].setPosition(vector22.f5527x + 240.0f, vector22.f5528y + 240.0f);
                this.f14678B[i].setColor(1.0f, 1.0f, 1.0f, f);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: r */
    public final void m19973r(WheelOptionConfig wheelOptionConfig) {
        Logger.log("LuckyWheelOverlay", "onSpinFinished");
        ProgressManager progressManager = Game.f8589i.progressManager;
        int i = 0;
        progressManager.luckyWheelSpinInProgress = false;
        Array<WheelOption> luckyWheelOptions = progressManager.getLuckyWheelOptions();
        if (luckyWheelOptions.removeValue(wheelOptionConfig.f14726a, true)) {
            int i2 = luckyWheelOptions.size;
            if (i2 < 5) {
                for (int i3 = i2 - 1; i3 >= 0; i3--) {
                    if (luckyWheelOptions.items[i3].wheelMultiplier != 0) {
                        WheelOption removeIndex = luckyWheelOptions.removeIndex(i3);
                        int i4 = 0;
                        while (true) {
                            Array<WheelOptionConfig> array = this.f14695m;
                            if (i4 < array.size) {
                                if (array.items[i4].f14726a == removeIndex) {
                                    this.f14695m.items[i4].wasHit = true;
                                }
                                i4++;
                            }
                        }
                    }
                }
            }
            if (wheelOptionConfig.f14726a.wheelMultiplier == 0) {
                IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.LUCKY_SHOT, Game.getTimestampSeconds());
                issuedItems.items.add(wheelOptionConfig.f14726a.item);
                Game.f8589i.progressManager.addIssuedPrizes(issuedItems, false);
                Game.f8589i.progressManager.addItems(wheelOptionConfig.f14726a.item);
            } else {
                for (int i5 = 0; i5 < luckyWheelOptions.size; i5++) {
                    WheelOption[] wheelOptionArr = luckyWheelOptions.items;
                    if (wheelOptionArr[i5].item != null && wheelOptionArr[i5].item.getItem().affectedByLuckyWheelMultiplier()) {
                        WheelOption[] wheelOptionArr2 = luckyWheelOptions.items;
                        wheelOptionArr2[i5].item.setCount(PMath.multiplyWithoutOverflow(wheelOptionArr2[i5].item.getCount(), wheelOptionConfig.f14726a.wheelMultiplier));
                    }
                }
                while (true) {
                    Array<WheelOptionConfig> array2 = this.f14695m;
                    if (i >= array2.size) {
                        break;
                    }
                    if (array2.items[i].f14726a.item != null && this.f14695m.items[i].f14732g != null) {
                        this.f14695m.items[i].f14732g.setText("x" + this.f14695m.items[i].f14726a.item.getCount());
                        this.f14695m.items[i].f14732g.clearActions();
                        this.f14695m.items[i].f14732g.addAction(Actions.sequence(Actions.scaleTo(1.5f, 1.5f, 0.3f), Actions.scaleTo(1.0f, 1.0f, 0.3f)));
                    }
                    i++;
                }
                m19971t();
            }
            m19970u();
            return;
        }
        throw new IllegalStateException("can't remove last hit option from manager");
    }

    public void rebuild() {
        Color color;
        Color color2;
        Array<WheelOption> luckyWheelOptions = Game.f8589i.progressManager.getLuckyWheelOptions();
        this.f14695m.clear();
        int i = 0;
        for (int i2 = 0; i2 < luckyWheelOptions.size; i2++) {
            WheelOptionConfig wheelOptionConfig = new WheelOptionConfig();
            wheelOptionConfig.f14726a = luckyWheelOptions.items[i2];
            this.f14695m.add(wheelOptionConfig);
        }
        m19969v();
        Array<PieChart.ChartEntryConfig> array = new Array<>(PieChart.ChartEntryConfig.class);
        int i3 = 0;
        float f = 0.0f;
        while (true) {
            Array<WheelOptionConfig> array2 = this.f14695m;
            if (i3 >= array2.size) {
                break;
            }
            if (array2.items[i3].f14726a.wheelMultiplier == 0) {
                color2 = f14670J[this.f14695m.items[i3].f14726a.item.getItem().getRarity().ordinal()];
            } else {
                color2 = f14671K;
            }
            PieChart.ChartEntryConfig chartEntryConfig = new PieChart.ChartEntryConfig(color2, this.f14695m.items[i3].f14726a.chance, 0.0f);
            chartEntryConfig.userObject = this.f14695m.items[i3];
            array.add(chartEntryConfig);
            this.f14695m.items[i3].f14734i = chartEntryConfig;
            f += this.f14695m.items[i3].f14726a.chance;
            i3++;
        }
        this.f14690h.setConfigs(array);
        this.f14690h.chart.requestVerticesRebuild();
        Array<PieChart.ChartEntryConfig> array3 = new Array<>(PieChart.ChartEntryConfig.class);
        int i4 = 0;
        while (true) {
            Array<WheelOptionConfig> array4 = this.f14695m;
            if (i4 >= array4.size) {
                break;
            }
            if (array4.items[i4].f14726a.wheelMultiplier == 0) {
                color = f14668H[this.f14695m.items[i4].f14726a.item.getItem().getRarity().ordinal()];
            } else {
                color = f14669I;
            }
            PieChart.ChartEntryConfig chartEntryConfig2 = new PieChart.ChartEntryConfig(color, this.f14695m.items[i4].f14726a.chance, 0.0f);
            chartEntryConfig2.userObject = this.f14695m.items[i4];
            array3.add(chartEntryConfig2);
            this.f14695m.items[i4].f14733h = chartEntryConfig2;
            i4++;
        }
        this.f14691i.setConfigs(array3);
        this.f14691i.chart.requestVerticesRebuild();
        this.f14688f.clear();
        while (true) {
            Array<WheelOptionConfig> array5 = this.f14695m;
            if (i < array5.size) {
                final WheelOptionConfig wheelOptionConfig2 = array5.items[i];
                float f2 = wheelOptionConfig2.f14729d - 90.0f;
                Group group = new Group();
                group.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.9
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f3, float f4) {
                        if (wheelOptionConfig2.f14726a.item != null) {
                            Game.f8589i.uiManager.itemDescriptionDialog.show(wheelOptionConfig2.f14726a.item.getItem(), wheelOptionConfig2.f14726a.item.getCount());
                        }
                    }
                });
                group.setTransform(true);
                group.setSize(80.0f, 80.0f);
                group.setOrigin(40.0f, 40.0f);
                this.f14688f.addActor(group);
                wheelOptionConfig2.f14730e = group;
                if (wheelOptionConfig2.f14726a.wheelMultiplier == 0) {
                    group.addActor(wheelOptionConfig2.f14726a.item.getItem().generateIcon(80.0f, true));
                    wheelOptionConfig2.f14732g = new Label("x" + wheelOptionConfig2.f14726a.item.getCount(), Game.f8589i.assetManager.getLabelStyle(24));
                    wheelOptionConfig2.f14732g.setAlignment(1);
                    wheelOptionConfig2.f14732g.setSize(80.0f, 32.0f);
                    wheelOptionConfig2.f14732g.setPosition(0.0f, -32.0f);
                    group.addActor(wheelOptionConfig2.f14732g);
                } else if (wheelOptionConfig2.f14726a.wheelMultiplier == 2) {
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("lucky-wheel-x2"));
                    image.setSize(80.0f, 80.0f);
                    group.addActor(image);
                } else {
                    Image image2 = new Image(Game.f8589i.assetManager.getDrawable("lucky-wheel-x3"));
                    image2.setSize(80.0f, 80.0f);
                    group.addActor(image2);
                }
                int round = StrictMath.round((wheelOptionConfig2.f14726a.chance / f) * 100.0f);
                Label label = new Label(round + "%", Game.f8589i.assetManager.getLabelStyle(21));
                label.setAlignment(1);
                label.setSize(80.0f, 24.0f);
                label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                label.setPosition(0.0f, -94.0f);
                group.addActor(label);
                if (wheelOptionConfig2.f14726a.wheelMultiplier == 0) {
                    label.setColor(Game.f8589i.progressManager.getRarityBrightColor(wheelOptionConfig2.f14726a.item.getItem().getRarity()));
                } else {
                    label.setColor(f14673M);
                }
                wheelOptionConfig2.f14731f = label;
                label.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.alpha(1.0f, 0.2f), Actions.delay(1.5f), Actions.alpha(0.0f, 1.0f)));
                wheelOptionConfig2.setItemContainerAngle(f2);
                i++;
            } else {
                this.f14694l = -1;
                m19970u();
                return;
            }
        }
    }

    /* renamed from: s */
    public final void m19972s() {
        Logger.log("LuckyWheelOverlay", "prepareNextWheel");
        this.f14705w = true;
        m19970u();
        this.f14686d.clearActions();
        this.f14686d.addAction(Actions.sequence(Actions.scaleTo(0.0f, 0.0f, 0.3f, Interpolation.pow2In), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.4
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.progressManager.generateNewLuckyWheel();
                Game.f8589i.progressManager.luckyWheelSpinAvailable = true;
                LuckyWheelOverlay.this.f14687e.clearParticles();
                LuckyWheelOverlay.this.rebuild();
            }
        }), Actions.scaleTo(1.0f, 1.0f, 0.3f, Interpolation.pow2Out), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.5
            @Override // java.lang.Runnable
            public void run() {
                LuckyWheelOverlay.this.f14705w = false;
                LuckyWheelOverlay.this.m19970u();
            }
        })));
    }

    public void setVisible(boolean z) {
        if (!z && (this.f14697o || this.f14704v || this.f14705w)) {
            Logger.error("LuckyWheelOverlay", "can't hide while spinning / preparing");
            return;
        }
        if (z) {
            rebuild();
            UiUtils.bouncyShowOverlay(this.f14683a.getTable(), this.f14684b.getTable(), this.f14685c, new Runnable() { // from class: com.prineside.tdi2.ui.shared.LuckyWheelOverlay.10
                @Override // java.lang.Runnable
                public void run() {
                    LuckyWheelOverlay.this.f14685c.setTransform(true);
                }
            });
            if (!this.f14682F && Game.f8589i.progressManager.luckyWheelSpinInProgress) {
                Logger.error("LuckyWheelOverlay", "showing lucky wheel while spin in progress");
                Game.f8589i.progressManager.removeItems(Item.C1543D.LUCKY_SHOT_TOKEN, 1);
                Game.f8589i.progressManager.luckyWheelSpinAvailable = true;
                m19968w((((float) Math.random()) * 0.6f) + 0.3f);
            }
        } else {
            UiUtils.bouncyHideOverlay(this.f14683a.getTable(), this.f14684b.getTable(), this.f14685c);
        }
        this.f14682F = z;
    }

    /* renamed from: t */
    public final void m19971t() {
        Logger.log("LuckyWheelOverlay", "prepareRespin");
        Game.f8589i.progressManager.luckyWheelSpinAvailable = true;
        Array array = new Array(WheelOptionConfig.class);
        int i = 0;
        while (true) {
            Array<WheelOptionConfig> array2 = this.f14695m;
            if (i >= array2.size) {
                break;
            }
            WheelOptionConfig[] wheelOptionConfigArr = array2.items;
            if (wheelOptionConfigArr[i].wasHit) {
                array.add(wheelOptionConfigArr[i]);
            }
            i++;
        }
        if (array.size == 0) {
            rebuild();
            return;
        }
        int i2 = 0;
        while (true) {
            Array<WheelOptionConfig> array3 = this.f14695m;
            if (i2 >= array3.size) {
                break;
            }
            WheelOptionConfig wheelOptionConfig = array3.items[i2];
            wheelOptionConfig.f14730e.clearActions();
            if (array.contains(wheelOptionConfig, true)) {
                wheelOptionConfig.f14730e.addAction(Actions.scaleTo(0.0f, 0.0f, 0.5f, f14667G));
            } else {
                wheelOptionConfig.respinPrepareFromAngle = wheelOptionConfig.f14729d;
                Group group = wheelOptionConfig.f14730e;
                Interpolation interpolation = f14667G;
                group.addAction(Actions.parallel(Actions.alpha(1.0f, 0.5f, interpolation), Actions.scaleTo(1.0f, 1.0f, 0.5f, interpolation)));
            }
            i2++;
        }
        FloatArray floatArray = new FloatArray();
        for (int i3 = 0; i3 < array.size; i3++) {
            floatArray.add(((WheelOptionConfig[]) array.items)[i3].f14726a.chance);
            ((WheelOptionConfig[]) array.items)[i3].f14726a.chance = 0.0f;
        }
        m19969v();
        for (int i4 = 0; i4 < array.size; i4++) {
            ((WheelOptionConfig[]) array.items)[i4].f14726a.chance = floatArray.items[i4];
        }
        this.f14704v = true;
        this.f14706x = 0.0f;
        m19970u();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x03aa  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19970u() {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.shared.LuckyWheelOverlay.m19970u():void");
    }

    /* renamed from: w */
    public final void m19968w(float f) {
        if (!Game.f8589i.progressManager.isLuckyWheelSpinAvailable()) {
            Logger.error("LuckyWheelOverlay", "spin not available");
            return;
        }
        Logger.log("LuckyWheelOverlay", "spin");
        ProgressManager progressManager = Game.f8589i.progressManager;
        progressManager.luckyWheelSpinInProgress = true;
        progressManager.luckyWheelSpinAvailable = false;
        this.f14697o = true;
        float f2 = progressManager.luckyWheelLastRotation;
        this.f14699q = f2;
        this.f14698p = f2 + ((((int) (5.0f * f)) + 3) * 360.0f) + (progressManager.luckyWheelSpinRandom.nextFloat() * 360.0f);
        ProgressManager progressManager2 = Game.f8589i.progressManager;
        float f3 = progressManager2.luckyWheelLastWeaponAngle;
        this.f14701s = f3;
        float f4 = f * 3.0f;
        this.f14700r = (f3 - ((((int) f4) + 1) * 360.0f)) - (progressManager2.luckyWheelSpinRandom.nextFloat() * 360.0f);
        this.f14703u = 0.0f;
        this.f14702t = (((float) StrictMath.random()) * 0.5f) + 2.5f + f4;
        ProgressManager progressManager3 = Game.f8589i.progressManager;
        progressManager3.luckyWheelLastRotation = this.f14698p;
        progressManager3.luckyWheelLastWeaponAngle = this.f14700r;
        m19970u();
    }
}

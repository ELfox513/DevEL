package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.AlphaAction;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.MoveByAction;
import com.badlogic.gdx.scenes.scene2d.actions.ParallelAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Align;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pool;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PooledCustomEffect;
/* renamed from: com.prineside.tdi2.ui.components.FlyingItemsOverlay */
/* loaded from: classes2.dex */
public class FlyingItemsOverlay implements Disposable {

    /* renamed from: v */
    public static final Vector2 f12963v = new Vector2();

    /* renamed from: a */
    public final UiManager.UiLayer f12964a;

    /* renamed from: b */
    public final UiManager.UiLayer f12965b;

    /* renamed from: d */
    public Group f12966d;

    /* renamed from: k */
    public Group f12967k;

    /* renamed from: p */
    public int f12968p;

    /* renamed from: q */
    public GameSystemProvider f12969q;

    /* renamed from: r */
    public final Pool<Paper> f12970r;

    /* renamed from: s */
    public DelayedRemovalArray<Paper> f12971s;

    /* renamed from: t */
    public Game.ScreenResizeListener f12972t;

    /* renamed from: u */
    public final _GameStateSystemListener f12973u;

    /* renamed from: com.prineside.tdi2.ui.components.FlyingItemsOverlay$Paper */
    /* loaded from: classes2.dex */
    public static class Paper extends ParticleEffect implements PooledCustomEffect {

        /* renamed from: C */
        public float f12978C;

        /* renamed from: D */
        public float f12979D;
        public Pool<Paper> pool;

        /* renamed from: t */
        public float f12982t;

        /* renamed from: u */
        public float f12983u;

        /* renamed from: v */
        public float f12984v;

        /* renamed from: w */
        public float f12985w;

        /* renamed from: x */
        public float f12986x;

        /* renamed from: y */
        public float f12987y;

        /* renamed from: r */
        public Vector2 f12980r = new Vector2();

        /* renamed from: s */
        public Vector2 f12981s = new Vector2();

        /* renamed from: z */
        public int f12988z = -1;

        /* renamed from: A */
        public TextureRegion f12976A = Game.f8589i.assetManager.f9555TR.flyingPaper1_1;

        /* renamed from: B */
        public TextureRegion[] f12977B = new TextureRegion[4];

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public void allowCompletion() {
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public void draw(Batch batch) {
            TextureRegion textureRegion = this.f12976A;
            Vector2 vector2 = this.f12980r;
            Vector2 vector22 = this.f12981s;
            batch.draw(textureRegion, (vector2.f5527x - 32.0f) + vector22.f5527x, vector22.f5528y + (vector2.f5528y - 16.0f), 32.0f, 16.0f, 64.0f, 32.0f, this.f12985w, this.f12986x, this.f12987y);
        }

        @Override // com.prineside.tdi2.utils.PooledCustomEffect
        public void free() {
            this.pool.free(this);
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public boolean isComplete() {
            return this.f12978C <= 0.0f;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public void setPosition(float f, float f2) {
            this.f12980r.set(f, f2);
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public void start() {
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public void draw(Batch batch, float f) {
            update(f);
            draw(batch);
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public void reset() {
            this.f12980r.setZero();
            this.f12981s.setZero();
            this.f12982t = 0.0f;
            this.f12984v = 0.0f;
            this.f12985w = 0.0f;
            this.f12986x = 0.0f;
            this.f12987y = 0.0f;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEffect
        public void update(float f) {
            float f2 = this.f12979D;
            float f3 = f2 * 2.0f;
            float f4 = f2 * 3.0f;
            if (f3 > 1.0f) {
                f3 = 1.0f;
            }
            if (f4 > 1.0f) {
                f4 = 1.0f;
            }
            Interpolation.SwingOut swingOut = Interpolation.swingOut;
            this.f12985w = swingOut.apply(f3);
            this.f12986x = swingOut.apply(f4);
            float f5 = this.f12984v - (180.0f * f);
            this.f12984v = f5;
            if (f5 < -180.0f) {
                this.f12984v = -180.0f;
            }
            float sin = (float) Math.sin((this.f12978C * 2.0f) + (this.f12983u * 3.1415927f));
            float f6 = this.f12979D;
            float f7 = 1.0f + f6;
            if (f7 > 1.5f) {
                f7 = 1.5f;
            }
            float f8 = this.f12983u;
            float f9 = f7 + (f8 * 0.1f);
            float f10 = 60.0f * sin * f9;
            this.f12982t = f10;
            Vector2 vector2 = this.f12981s;
            vector2.f5527x = vector2.f5527x + (f10 * f) + (f8 * f * 50.0f);
            vector2.f5528y += this.f12984v * f;
            this.f12987y = sin * 12.0f * f9;
            float f11 = this.f12978C;
            if (f11 > 0.15f) {
                this.f12976A = this.f12977B[0];
            } else if (f11 > 0.1f) {
                this.f12976A = this.f12977B[1];
            } else if (f11 > 0.05f) {
                this.f12976A = this.f12977B[2];
            } else {
                this.f12976A = this.f12977B[3];
            }
            this.f12978C = f11 - f;
            this.f12979D = f6 + f;
        }

        public void setup(int i) {
            float f = (FastRandom.getFloat() * 0.8f) + 2.0f;
            this.f12978C = f;
            if (i != this.f12988z) {
                if (i != 5) {
                    if (i != 20) {
                        if (i != 100) {
                            TextureRegion[] textureRegionArr = this.f12977B;
                            AssetManager.TextureRegions textureRegions = Game.f8589i.assetManager.f9555TR;
                            textureRegionArr[0] = textureRegions.flyingPaper1_1;
                            textureRegionArr[1] = textureRegions.flyingPaper1_2;
                            textureRegionArr[2] = textureRegions.flyingPaper1_3;
                            textureRegionArr[3] = textureRegions.flyingPaper1_4;
                            this.f12978C = f * 0.5f;
                        } else {
                            TextureRegion[] textureRegionArr2 = this.f12977B;
                            AssetManager.TextureRegions textureRegions2 = Game.f8589i.assetManager.f9555TR;
                            textureRegionArr2[0] = textureRegions2.flyingPaper100_1;
                            textureRegionArr2[1] = textureRegions2.flyingPaper1_2;
                            textureRegionArr2[2] = textureRegions2.flyingPaper1_3;
                            textureRegionArr2[3] = textureRegions2.flyingPaper1_4;
                        }
                    } else {
                        TextureRegion[] textureRegionArr3 = this.f12977B;
                        AssetManager.TextureRegions textureRegions3 = Game.f8589i.assetManager.f9555TR;
                        textureRegionArr3[0] = textureRegions3.flyingPaper20_1;
                        textureRegionArr3[1] = textureRegions3.flyingPaper1_2;
                        textureRegionArr3[2] = textureRegions3.flyingPaper1_3;
                        textureRegionArr3[3] = textureRegions3.flyingPaper1_4;
                        this.f12978C = f * 0.85f;
                    }
                } else {
                    TextureRegion[] textureRegionArr4 = this.f12977B;
                    AssetManager.TextureRegions textureRegions4 = Game.f8589i.assetManager.f9555TR;
                    textureRegionArr4[0] = textureRegions4.flyingPaper5_1;
                    textureRegionArr4[1] = textureRegions4.flyingPaper1_2;
                    textureRegionArr4[2] = textureRegions4.flyingPaper1_3;
                    textureRegionArr4[3] = textureRegions4.flyingPaper1_4;
                    this.f12978C = f * 0.6f;
                }
                this.f12988z = i;
            }
            this.f12979D = 0.0f;
            this.f12983u = (FastRandom.getFloat() * 2.0f) - 1.0f;
            this.f12984v = (FastRandom.getFloat() * 150.0f) + 110.0f;
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.FlyingItemsOverlay$_GameStateSystemListener */
    /* loaded from: classes2.dex */
    public class _GameStateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _GameStateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void issuedItemsAdded(IssuedItems issuedItems, ItemStack itemStack, float f, float f2, int i) {
            if (!FlyingItemsOverlay.this.f12969q.gameState.isFastForwarding() && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.LOOT_ICONS_ENABLED) != 0.0d) {
                if (itemStack.getItem().getType() == ItemType.GREEN_PAPER) {
                    FlyingItemsOverlay.this.addPapers(f, f2, itemStack.getCount());
                    return;
                }
                ItemCell itemCell = new ItemCell();
                itemCell.setSize(96.0f, 105.0f);
                itemCell.setItem(itemStack);
                itemCell.setColRow(FlyingItemsOverlay.m20589d(FlyingItemsOverlay.this), 0);
                itemCell.setCovered(itemStack.covered);
                itemCell.shine(true, true);
                FlyingItemsOverlay.this.f12969q._sound.playStatic(Game.f8589i.soundManager.getRarity(itemStack.getItem().getRarity()), 0.75f, 1.0f, 0.0f);
                FlyingItemsOverlay.this.add(f, f2, itemCell, itemStack.getCount(), i, 0.8f, (itemStack.getItem().getRarity().ordinal() * itemStack.getItem().getRarity().ordinal() * 0.05f) + 1.0f);
            }
        }
    }

    /* renamed from: d */
    public static /* synthetic */ int m20589d(FlyingItemsOverlay flyingItemsOverlay) {
        int i = flyingItemsOverlay.f12968p;
        flyingItemsOverlay.f12968p = i + 1;
        return i;
    }

    public void add(float f, float f2, Actor actor, int i, int i2, float f3, float f4) {
        float f5;
        if (f > 0.0f && f < this.f12966d.getWidth()) {
            actor.setPosition(f - (actor.getWidth() * 0.5f), f2 - (actor.getHeight() * 0.5f));
            actor.setOrigin(actor.getWidth() * 0.5f, actor.getHeight() * 0.5f);
            this.f12966d.addActor(actor);
            if (actor instanceof Group) {
                ((Group) actor).setTransform(true);
            }
            float f6 = -1.0f;
            if (Align.isLeft(i2)) {
                f5 = -1.0f;
            } else if (Align.isRight(i2)) {
                f5 = 1.0f;
            } else {
                f5 = 0.0f;
            }
            if (!Align.isBottom(i2)) {
                if (Align.isTop(i2)) {
                    f6 = 1.0f;
                } else {
                    f6 = 0.0f;
                }
            }
            float f7 = f3 * 0.5f;
            ScaleToAction scaleTo = Actions.scaleTo(f7, f7);
            DelayAction delay = Actions.delay(0.1f);
            Interpolation.SwingOut swingOut = Interpolation.swingOut;
            ParallelAction parallel = Actions.parallel(Actions.sequence(delay, Actions.scaleBy(f7, 0.0f, 0.3f, swingOut)), Actions.scaleBy(0.0f, f7, 0.3f, swingOut));
            DelayAction delay2 = Actions.delay(f4 * 1.0f);
            Interpolation.ExpIn expIn = Interpolation.exp5In;
            AlphaAction alpha = Actions.alpha(0.0f, 0.5f, expIn);
            MoveByAction moveBy = Actions.moveBy(0.0f, 384.0f, 0.6f, expIn);
            DelayAction delay3 = Actions.delay(0.1f);
            Interpolation.ExpOut expOut = Interpolation.exp5Out;
            actor.addAction(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(parallel, delay2, Actions.parallel(alpha, moveBy, Actions.sequence(delay3, Actions.parallel(Actions.scaleBy(-f3, 0.0f, 0.5f, expOut), Actions.sequence(Actions.delay(0.1f), Actions.scaleBy(0.0f, f3, 0.5f, expOut))))), Actions.removeActor()), Actions.moveBy(f5 * 128.0f, f6 * 128.0f, 1.5f, Interpolation.circleOut))));
        }
    }

    public void addPapers(float f, float f2, int i) {
        if (i > 1000) {
            i = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        }
        int i2 = 0;
        while (i != 0) {
            int i3 = 5;
            if (i >= 100) {
                i3 = 100;
            } else if (i >= 20) {
                i3 = 20;
            } else if (i < 5) {
                i3 = 1;
            }
            i -= i3;
            Paper obtain = this.f12970r.obtain();
            obtain.setup(i3);
            float f3 = i2;
            this.f12969q._graphics.mainUi.particlesCanvas.addParticle(obtain, f, f2 + f3);
            i2 = (int) (f3 + 3.0f);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.removeScreenResizeListener(this.f12972t);
        Game.f8589i.uiManager.removeLayer(this.f12965b);
        Game.f8589i.uiManager.removeLayer(this.f12964a);
    }

    public FlyingItemsOverlay(GameSystemProvider gameSystemProvider) {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 90, "FlyingItemsOverlay papers", true);
        this.f12964a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 91, "FlyingItemsOverlay elements", true);
        this.f12965b = addLayer2;
        this.f12968p = 0;
        this.f12970r = new Pool<Paper>() { // from class: com.prineside.tdi2.ui.components.FlyingItemsOverlay.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public Paper newObject() {
                Paper paper = new Paper();
                paper.pool = this;
                paper.start();
                return paper;
            }
        };
        this.f12971s = new DelayedRemovalArray<>(true, 8, Paper.class);
        _GameStateSystemListener _gamestatesystemlistener = new _GameStateSystemListener();
        this.f12973u = _gamestatesystemlistener;
        this.f12969q = gameSystemProvider;
        gameSystemProvider.gameState.listeners.add(_gamestatesystemlistener);
        Table table = addLayer.getTable();
        Touchable touchable = Touchable.disabled;
        table.setTouchable(touchable);
        addLayer2.getTable().setTouchable(touchable);
        Group group = new Group();
        this.f12967k = group;
        group.setTransform(false);
        this.f12967k.setTouchable(touchable);
        addLayer.getTable().add((Table) this.f12967k).expand().fill();
        Group group2 = new Group();
        this.f12966d = group2;
        group2.setTransform(false);
        this.f12966d.setTouchable(touchable);
        addLayer2.getTable().add((Table) this.f12966d).expand().fill();
        Game.ScreenResizeListener.ScreenResizeListenerAdapter screenResizeListenerAdapter = new Game.ScreenResizeListener.ScreenResizeListenerAdapter() { // from class: com.prineside.tdi2.ui.components.FlyingItemsOverlay.2
            @Override // com.prineside.tdi2.Game.ScreenResizeListener.ScreenResizeListenerAdapter, com.prineside.tdi2.Game.ScreenResizeListener
            public void resize(int i, int i2) {
                if (i > 0 && i2 > 0) {
                    FlyingItemsOverlay.this.f12966d.setSize(Game.f8589i.uiManager.viewport.getWorldWidth(), Game.f8589i.uiManager.viewport.getWorldHeight());
                    FlyingItemsOverlay.this.f12967k.setSize(Game.f8589i.uiManager.viewport.getWorldWidth(), Game.f8589i.uiManager.viewport.getWorldHeight());
                }
            }
        };
        this.f12972t = screenResizeListenerAdapter;
        Game.f8589i.addScreenResizeListener(screenResizeListenerAdapter);
    }
}

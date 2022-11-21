package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.PolygonSpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Research;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.ResearchManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.components.ResearchMenu;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.IntRectangle;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.TextureRegionConfig;
/* loaded from: classes2.dex */
public class ResearchesScreen extends Screen {

    /* renamed from: A */
    public static final Color f11020A;

    /* renamed from: B */
    public static final Color f11021B;

    /* renamed from: C */
    public static final Color f11022C;

    /* renamed from: D */
    public static final Color f11023D;

    /* renamed from: E */
    public static final Color f11024E;

    /* renamed from: F */
    public static final float[] f11025F;

    /* renamed from: G */
    public static final StringBuilder f11026G;

    /* renamed from: H */
    public static final IntRectangle f11027H;

    /* renamed from: I */
    public static final Color f11028I;

    /* renamed from: v */
    public static final Color f11029v;

    /* renamed from: w */
    public static final Color f11030w;

    /* renamed from: x */
    public static final Color f11031x;

    /* renamed from: y */
    public static final Color f11032y;

    /* renamed from: z */
    public static final Color f11033z;

    /* renamed from: a */
    public final UiManager.UiLayer f11034a;

    /* renamed from: b */
    public final InputMultiplexer f11035b;

    /* renamed from: c */
    public OrthographicCamera f11036c;
    public CameraController cameraController;

    /* renamed from: d */
    public TextureRegion f11037d;

    /* renamed from: e */
    public TextureRegion f11038e;

    /* renamed from: f */
    public TextureRegion f11039f;

    /* renamed from: g */
    public TextureRegion f11040g;

    /* renamed from: h */
    public TextureRegion f11041h;
    public Research hoveredResearch;

    /* renamed from: i */
    public TextureRegion f11042i;

    /* renamed from: j */
    public BitmapFont f11043j;

    /* renamed from: k */
    public BitmapFont f11044k;

    /* renamed from: l */
    public SideMenu f11045l;

    /* renamed from: m */
    public ResearchMenu f11046m;

    /* renamed from: n */
    public Label f11047n;

    /* renamed from: o */
    public ParticleEffect f11048o;

    /* renamed from: p */
    public ParticleEffectPool f11049p;

    /* renamed from: q */
    public DelayedRemovalArray<ParticleEffectPool.PooledEffect> f11050q;

    /* renamed from: r */
    public float f11051r;

    /* renamed from: s */
    public PolygonSpriteBatch f11052s;
    public Research selectedResearch;

    /* renamed from: t */
    public final _ResearchManagerListener f11053t;

    /* renamed from: u */
    public final DelayedRemovalArray<ResearchesScreenListener> f11054u;

    /* loaded from: classes2.dex */
    public interface ResearchesScreenListener {

        /* loaded from: classes2.dex */
        public static abstract class ResearchesScreenListenerAdapter implements ResearchesScreenListener {
            @Override // com.prineside.tdi2.screens.ResearchesScreen.ResearchesScreenListener
            public void hoveredResearchChanged() {
            }

            @Override // com.prineside.tdi2.screens.ResearchesScreen.ResearchesScreenListener
            public void selectedResearchChanged() {
            }
        }

        void hoveredResearchChanged();

        void selectedResearchChanged();
    }

    /* loaded from: classes2.dex */
    public class _ResearchManagerListener extends ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter {
        public _ResearchManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter, com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
        public void researchCompleted(Research research) {
            ResearchesScreen.this.updateStarsCount();
            int mapMinX = Game.f8589i.researchManager.getMapMinX();
            int mapMinY = Game.f8589i.researchManager.getMapMinY();
            ParticleEffectPool.PooledEffect obtain = ResearchesScreen.this.f11049p.obtain();
            obtain.setPosition(research.f8856x - mapMinX, research.f8857y - mapMinY);
            obtain.start();
            ResearchesScreen.this.f11050q.add(obtain);
        }

        @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter, com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
        public void researchStarted(Research research, long j) {
            Logger.log("ResearchesScreen", "research started: " + research.type.name() + ", ends in " + j + "ms");
            ResearchesScreen.this.updateStarsCount();
        }
    }

    public ResearchesScreen() {
        this(null);
    }

    /* renamed from: n */
    public static /* synthetic */ void m21143n() {
        Game.f8589i.researchManager.reload();
    }

    /* renamed from: m */
    public final boolean m21144m(Research research, Vector2 vector2) {
        float f = vector2.f5527x;
        int i = research.f8856x;
        if (f > i - 55 && f < i + 55) {
            float f2 = vector2.f5528y;
            int i2 = research.f8857y;
            if (f2 > i2 - 55 && f2 < i2 + 55) {
                return true;
            }
        }
        return false;
    }

    static {
        Color color = MaterialColor.LIGHT_GREEN.P500;
        f11029v = color;
        f11030w = new Color(1.0f, 1.0f, 1.0f, 0.21f);
        f11031x = MaterialColor.RED.P800;
        f11032y = color;
        f11033z = MaterialColor.AMBER.P500;
        f11020A = MaterialColor.GREY.P700;
        f11021B = MaterialColor.PURPLE.P300;
        f11022C = MaterialColor.PURPLE.P600;
        f11023D = new Color(1.0f, 1.0f, 1.0f, 0.14f);
        f11024E = MaterialColor.LIGHT_BLUE.P500;
        f11025F = new float[9];
        f11026G = new StringBuilder();
        f11027H = new IntRectangle();
        f11028I = new Color();
    }

    public ResearchesScreen(ResearchType researchType) {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 106, "ResearchesScreen");
        this.f11034a = addLayer;
        InputMultiplexer inputMultiplexer = new InputMultiplexer();
        this.f11035b = inputMultiplexer;
        this.f11050q = new DelayedRemovalArray<>(false, 1, ParticleEffectPool.PooledEffect.class);
        this.hoveredResearch = null;
        this.selectedResearch = null;
        this.f11051r = 0.0f;
        _ResearchManagerListener _researchmanagerlistener = new _ResearchManagerListener();
        this.f11053t = _researchmanagerlistener;
        this.f11054u = new DelayedRemovalArray<>(false, 1);
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game.f8589i.uiManager.screenTitle.setVisible(true).setText(Game.f8589i.localeManager.i18n.get("researches")).setIcon(Game.f8589i.assetManager.getDrawable("icon-research"));
        Game.f8589i.uiManager.profileSummary.setVisible(false);
        Game.f8589i.uiManager.backButton.setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.ResearchesScreen.1
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.screenManager.goToMainMenu();
            }
        }).setText(null).setVisible(true);
        Game.f8589i.uiManager.inventoryOverlay.hide(true);
        Game.f8589i.researchManager.updateAndValidateStarBranch();
        this.f11037d = Game.f8589i.assetManager.getTextureRegion("global-upgrades-icon-background");
        this.f11038e = Game.f8589i.assetManager.getTextureRegion("global-upgrades-icon-selection");
        this.f11039f = Game.f8589i.assetManager.getTextureRegion("blank");
        this.f11040g = Game.f8589i.assetManager.getTextureRegion("particle-triangle");
        this.f11042i = Game.f8589i.assetManager.getTextureRegion("icon-star");
        this.f11041h = Game.f8589i.assetManager.getTextureRegion("global-upgrades-icon-level-overlay");
        this.f11043j = Game.f8589i.assetManager.getFont(21);
        this.f11044k = Game.f8589i.assetManager.getFont(24);
        this.f11036c = new OrthographicCamera(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        CameraController cameraController = new CameraController(this.f11036c, Game.f8589i.researchManager.getMapWidth(), Game.f8589i.researchManager.getMapHeight());
        this.cameraController = cameraController;
        cameraController.setScreenSize(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        this.cameraController.setZoomBoundaries(2.0f, 1.75f);
        CameraController cameraController2 = this.cameraController;
        cameraController2.zoom = 4.0d;
        cameraController2.lookAt(Game.f8589i.researchManager.getMapWidth() / 2, Game.f8589i.researchManager.getMapHeight() / 2);
        this.f11036c.update();
        inputMultiplexer.addProcessor(Game.f8589i.uiManager.stage);
        inputMultiplexer.addProcessor(this.cameraController.getInputProcessor());
        inputMultiplexer.addProcessor(new InputAdapter() { // from class: com.prineside.tdi2.screens.ResearchesScreen.2

            /* renamed from: a */
            public final Vector2 f11056a = new Vector2();

            @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
            public boolean mouseMoved(int i, int i2) {
                this.f11056a.set(i, i2);
                ResearchesScreen.this.cameraController.screenToMap(this.f11056a);
                this.f11056a.f5527x += Game.f8589i.researchManager.getMapMinX();
                this.f11056a.f5528y += Game.f8589i.researchManager.getMapMinY();
                Array.ArrayIterator<Research> it = Game.f8589i.researchManager.getInstances().iterator();
                while (it.hasNext()) {
                    Research next = it.next();
                    if (ResearchesScreen.this.m21144m(next, this.f11056a) && Game.f8589i.researchManager.isVisible(next)) {
                        ResearchesScreen.this.m21139r(next);
                        return false;
                    }
                }
                ResearchesScreen.this.m21139r(null);
                return false;
            }

            @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
            public boolean touchUp(int i, int i2, int i3, int i4) {
                this.f11056a.set(i, i2);
                ResearchesScreen.this.cameraController.screenToMap(this.f11056a);
                this.f11056a.f5527x += Game.f8589i.researchManager.getMapMinX();
                this.f11056a.f5528y += Game.f8589i.researchManager.getMapMinY();
                Array.ArrayIterator<Research> it = Game.f8589i.researchManager.getInstances().iterator();
                while (it.hasNext()) {
                    Research next = it.next();
                    if (ResearchesScreen.this.m21144m(next, this.f11056a) && Game.f8589i.researchManager.isVisible(next)) {
                        ResearchesScreen.this.m21138s(next);
                        return false;
                    }
                }
                ResearchesScreen.this.m21138s(null);
                return false;
            }
        });
        SideMenu sideMenu = new SideMenu();
        this.f11045l = sideMenu;
        sideMenu.sideShadow.setVisible(false);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-research-menu-top"));
        image.setSize(600.0f, 15.0f);
        image.setColor(new Color(724249599));
        image.setPosition(0.0f, 978.0f);
        Touchable touchable = Touchable.disabled;
        image.setTouchable(touchable);
        this.f11045l.getBackgroundContainer().addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setSize(600.0f, 978.0f);
        image2.setColor(new Color(724249599));
        image2.setTouchable(touchable);
        this.f11045l.getBackgroundContainer().addActor(image2);
        this.f11046m = new ResearchMenu(this.f11045l, this);
        Group group = new Group();
        group.setTransform(false);
        group.setTouchable(Touchable.enabled);
        group.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.ResearchesScreen.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showAlert(game.localeManager.i18n.get("research_tip_stars"));
            }
        });
        addLayer.getTable().add((Table) group).size(200.0f, 32.0f).expand().top().left().padTop(109.0f).padLeft(136.0f);
        if (Config.isModdingMode()) {
            TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-restart");
            Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.screens.i0
                @Override // java.lang.Runnable
                public final void run() {
                    ResearchesScreen.m21143n();
                }
            };
            Color color = MaterialColor.LIGHT_BLUE.P500;
            Color color2 = MaterialColor.LIGHT_BLUE.P300;
            Color color3 = MaterialColor.LIGHT_BLUE.P700;
            PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnable, color, color2, color3);
            paddedImageButton.setPosition(0.0f, -64.0f);
            paddedImageButton.setSize(64.0f, 64.0f);
            paddedImageButton.setIconSize(48.0f, 48.0f);
            paddedImageButton.setIconPosition(8.0f, 8.0f);
            group.addActor(paddedImageButton);
            PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-density-low"), new Runnable() { // from class: com.prineside.tdi2.screens.j0
                @Override // java.lang.Runnable
                public final void run() {
                    ResearchesScreen.this.m21142o();
                }
            }, color, color2, color3);
            paddedImageButton2.setPosition(64.0f, -64.0f);
            paddedImageButton2.setSize(64.0f, 64.0f);
            paddedImageButton2.setIconSize(48.0f, 48.0f);
            paddedImageButton2.setIconPosition(8.0f, 8.0f);
            group.addActor(paddedImageButton2);
            PaddedImageButton paddedImageButton3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-density-medium"), new Runnable() { // from class: com.prineside.tdi2.screens.k0
                @Override // java.lang.Runnable
                public final void run() {
                    ResearchesScreen.this.m21141p();
                }
            }, color, color2, color3);
            paddedImageButton3.setPosition(128.0f, -64.0f);
            paddedImageButton3.setSize(64.0f, 64.0f);
            paddedImageButton3.setIconSize(48.0f, 48.0f);
            paddedImageButton3.setIconPosition(8.0f, 8.0f);
            group.addActor(paddedImageButton3);
            PaddedImageButton paddedImageButton4 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-density-high"), new Runnable() { // from class: com.prineside.tdi2.screens.l0
                @Override // java.lang.Runnable
                public final void run() {
                    ResearchesScreen.this.m21140q();
                }
            }, color, color2, color3);
            paddedImageButton4.setPosition(192.0f, -64.0f);
            paddedImageButton4.setSize(64.0f, 64.0f);
            paddedImageButton4.setIconSize(48.0f, 48.0f);
            paddedImageButton4.setIconPosition(8.0f, 8.0f);
            group.addActor(paddedImageButton4);
        }
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
        image3.setPosition(0.0f, 0.0f);
        image3.setSize(32.0f, 32.0f);
        Color color4 = MaterialColor.AMBER.P500;
        image3.setColor(color4);
        group.addActor(image3);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f11047n = label;
        label.setPosition(42.0f, 0.0f);
        this.f11047n.setSize(100.0f, 32.0f);
        this.f11047n.setColor(color4);
        group.addActor(this.f11047n);
        updateStarsCount();
        ParticleEffect particleEffect = new ParticleEffect();
        this.f11048o = particleEffect;
        particleEffect.load(Gdx.files.external("particles/research.prt"), Game.f8589i.assetManager.getTextureRegion("icon-research").getAtlas());
        this.f11048o.setEmittersCleanUpBlendFunction(false);
        ParticleEffect particleEffect2 = new ParticleEffect();
        particleEffect2.load(Gdx.files.external("particles/research-completed.prt"), Game.f8589i.assetManager.f9555TR.blank.getAtlas());
        particleEffect2.setEmittersCleanUpBlendFunction(false);
        this.f11049p = new ParticleEffectPool(particleEffect2, 8, 256);
        Game.f8589i.researchManager.addListener(_researchmanagerlistener);
        if (researchType != null) {
            Research researchInstance = Game.f8589i.researchManager.getResearchInstance(researchType);
            CameraController cameraController3 = this.cameraController;
            cameraController3.setZoom(cameraController3.getMinZoom());
            this.cameraController.lookAt(researchInstance.f8856x - Game.f8589i.researchManager.getMapMinX(), researchInstance.f8857y - Game.f8589i.researchManager.getMapMinY());
            m21138s(researchInstance);
        }
        this.f11052s = new PolygonSpriteBatch();
    }

    public void addListener(ResearchesScreenListener researchesScreenListener) {
        if (researchesScreenListener != null) {
            if (!this.f11054u.contains(researchesScreenListener, true)) {
                this.f11054u.add(researchesScreenListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.researchManager.removeListener(this.f11053t);
        this.f11045l.dispose();
        this.f11052s.dispose();
        this.f11046m.dispose();
        Game.f8589i.uiManager.removeLayer(this.f11034a);
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        boolean z;
        Research currentResearching;
        float f2;
        int i;
        DelayedRemovalArray<ParticleEffectPool.PooledEffect> delayedRemovalArray;
        float f3;
        float f4;
        Color color;
        Array<Research> array;
        float f5;
        float f6;
        float f7;
        Color color2;
        Research.ResearchLink researchLink;
        int i2;
        int i3;
        Array<Research> array2;
        float f8;
        float f9;
        float f10;
        float angleBetweenPoints;
        float f11;
        float f12;
        float f13;
        Color color3 = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            Game.f8589i.screenManager.goToMainMenu();
            return;
        }
        SpriteBatch spriteBatch = Game.f8589i.renderingManager.batch;
        char c = 0;
        char c2 = 1;
        if (this.cameraController.zoom < 2.0d) {
            z = true;
        } else {
            z = false;
        }
        this.f11036c.update();
        this.cameraController.realUpdate(f);
        int mapMinX = Game.f8589i.researchManager.getMapMinX();
        int mapMinY = Game.f8589i.researchManager.getMapMinY();
        this.f11052s.begin();
        this.f11052s.setProjectionMatrix(this.f11036c.combined);
        this.f11052s.enableBlending();
        Array<ResearchManager.PolygonConfig> polygonSprites = Game.f8589i.researchManager.getPolygonSprites();
        Array<Research.ResearchLink> links = Game.f8589i.researchManager.getLinks();
        Array<Research> instances = Game.f8589i.researchManager.getInstances();
        for (int i4 = 0; i4 < polygonSprites.size; i4++) {
            ResearchManager.PolygonConfig[] polygonConfigArr = polygonSprites.items;
            if (polygonConfigArr[i4].visibleWith == null || polygonConfigArr[i4].visibleWith.installedLevel > 0) {
                polygonConfigArr[i4].sprite.draw(this.f11052s);
            }
        }
        this.f11052s.end();
        spriteBatch.setProjectionMatrix(this.f11036c.combined);
        spriteBatch.begin();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        this.f11051r = (this.f11051r + (0.25f * f)) % 1.0f;
        Array.ArrayIterator<Research.ResearchLink> it = links.iterator();
        while (true) {
            float f14 = 2.0f;
            if (!it.hasNext()) {
                break;
            }
            Research.ResearchLink next = it.next();
            if (Game.f8589i.researchManager.isVisible(next.parent)) {
                if (Game.f8589i.researchManager.isVisible(next.child)) {
                    IntRectangle intRectangle = f11027H;
                    intRectangle.minX = StrictMath.min(next.child.f8856x - mapMinX, next.parent.f8856x - mapMinX);
                    intRectangle.minY = StrictMath.min(next.child.f8857y - mapMinY, next.parent.f8857y - mapMinY);
                    intRectangle.maxX = StrictMath.max(next.child.f8856x - mapMinX, next.parent.f8856x - mapMinX);
                    intRectangle.maxY = StrictMath.max(next.child.f8857y - mapMinY, next.parent.f8857y - mapMinY);
                    if (this.cameraController.isRectVisible(intRectangle)) {
                        Research research = next.parent;
                        if ((research.priceInStars > 0 && next.child.installedLevel > 0) || (next.child.priceInStars > 0 && research.installedLevel > 0)) {
                            color2 = f11029v;
                        } else if (next.isVisible()) {
                            color2 = f11029v;
                        } else if (next.parent.installedLevel != 0) {
                            color2 = f11031x;
                        } else {
                            color2 = f11030w;
                        }
                        Color color4 = color2;
                        float[] fArr = f11025F;
                        Research research2 = next.parent;
                        fArr[c] = research2.f8856x - mapMinX;
                        fArr[c2] = research2.f8857y - mapMinY;
                        float floatBits = color4.toFloatBits();
                        fArr[2] = floatBits;
                        Array<Research> array3 = instances;
                        int i5 = 3;
                        fArr[3] = next.pivotX - mapMinX;
                        fArr[4] = next.pivotY - mapMinY;
                        fArr[5] = floatBits;
                        Research research3 = next.child;
                        fArr[6] = research3.f8856x - mapMinX;
                        fArr[7] = research3.f8857y - mapMinY;
                        fArr[8] = floatBits;
                        DrawUtils.texturedMultiLine(spriteBatch, 6.0f, this.f11039f, fArr);
                        if (z && next.child.priceInStars == 0) {
                            int i6 = 0;
                            while (i6 < i5) {
                                float f15 = (this.f11051r + (i6 * 0.333f)) % 1.0f;
                                float[] fArr2 = f11025F;
                                float f16 = fArr2[c];
                                float f17 = fArr2[i5];
                                if (f16 == f17) {
                                    float f18 = fArr2[c2];
                                    float f19 = fArr2[4];
                                    if (f18 == f19) {
                                        float f20 = fArr2[6];
                                        float f21 = fArr2[7];
                                        float f22 = ((f21 - f19) * f15) + f19;
                                        f12 = PMath.getAngleBetweenPoints(f17, f19, f20, f21);
                                        f13 = ((f20 - f17) * f15) + f17;
                                        f11 = f22;
                                        Vector2 pointByAngleFromPoint = PMath.getPointByAngleFromPoint(f13, f11, f12 - 180.0f, f14);
                                        spriteBatch.setColor(Config.BACKGROUND_COLOR);
                                        Color color5 = color4;
                                        float f23 = f11;
                                        float f24 = f13;
                                        int i7 = mapMinX;
                                        spriteBatch.draw(this.f11040g, pointByAngleFromPoint.f5527x - 8.0f, pointByAngleFromPoint.f5528y - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f12);
                                        Vector2 pointByAngleFromPoint2 = PMath.getPointByAngleFromPoint(f24, f23, f12, 3.0f);
                                        float f25 = f12;
                                        spriteBatch.draw(this.f11040g, pointByAngleFromPoint2.f5527x - 8.0f, pointByAngleFromPoint2.f5528y - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f25);
                                        spriteBatch.setColor(color5);
                                        spriteBatch.draw(this.f11040g, f24 - 8.0f, f23 - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f25);
                                        i6++;
                                        mapMinX = i7;
                                        color4 = color5;
                                        next = next;
                                        array3 = array3;
                                        mapMinY = mapMinY;
                                        f14 = 2.0f;
                                        i5 = 3;
                                        c = 0;
                                        c2 = 1;
                                    }
                                }
                                float f26 = fArr2[6];
                                if (f26 == f17) {
                                    float f27 = fArr2[7];
                                    float f28 = fArr2[4];
                                    if (f27 == f28) {
                                        f9 = ((f17 - f16) * f15) + f16;
                                        float f29 = fArr2[c2];
                                        f10 = ((f28 - f29) * f15) + f29;
                                        angleBetweenPoints = PMath.getAngleBetweenPoints(f16, f29, f17, f28);
                                        f11 = f10;
                                        f12 = angleBetweenPoints;
                                        f13 = f9;
                                        Vector2 pointByAngleFromPoint3 = PMath.getPointByAngleFromPoint(f13, f11, f12 - 180.0f, f14);
                                        spriteBatch.setColor(Config.BACKGROUND_COLOR);
                                        Color color52 = color4;
                                        float f232 = f11;
                                        float f242 = f13;
                                        int i72 = mapMinX;
                                        spriteBatch.draw(this.f11040g, pointByAngleFromPoint3.f5527x - 8.0f, pointByAngleFromPoint3.f5528y - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f12);
                                        Vector2 pointByAngleFromPoint22 = PMath.getPointByAngleFromPoint(f242, f232, f12, 3.0f);
                                        float f252 = f12;
                                        spriteBatch.draw(this.f11040g, pointByAngleFromPoint22.f5527x - 8.0f, pointByAngleFromPoint22.f5528y - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f252);
                                        spriteBatch.setColor(color52);
                                        spriteBatch.draw(this.f11040g, f242 - 8.0f, f232 - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f252);
                                        i6++;
                                        mapMinX = i72;
                                        color4 = color52;
                                        next = next;
                                        array3 = array3;
                                        mapMinY = mapMinY;
                                        f14 = 2.0f;
                                        i5 = 3;
                                        c = 0;
                                        c2 = 1;
                                    }
                                }
                                if (f15 < 0.5f) {
                                    f9 = ((f17 - f16) * f15 * f14) + f16;
                                    float f30 = fArr2[4];
                                    float f31 = fArr2[c2];
                                    f10 = ((f30 - f31) * f15 * f14) + f31;
                                    angleBetweenPoints = PMath.getAngleBetweenPoints(f16, f31, f17, f30);
                                } else {
                                    float f32 = f15 - 0.5f;
                                    f9 = ((f26 - f17) * f32 * f14) + f17;
                                    float f33 = fArr2[7];
                                    float f34 = fArr2[4];
                                    f10 = ((f33 - f34) * f32 * f14) + f34;
                                    angleBetweenPoints = PMath.getAngleBetweenPoints(f17, f34, f26, f33);
                                }
                                f11 = f10;
                                f12 = angleBetweenPoints;
                                f13 = f9;
                                Vector2 pointByAngleFromPoint32 = PMath.getPointByAngleFromPoint(f13, f11, f12 - 180.0f, f14);
                                spriteBatch.setColor(Config.BACKGROUND_COLOR);
                                Color color522 = color4;
                                float f2322 = f11;
                                float f2422 = f13;
                                int i722 = mapMinX;
                                spriteBatch.draw(this.f11040g, pointByAngleFromPoint32.f5527x - 8.0f, pointByAngleFromPoint32.f5528y - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f12);
                                Vector2 pointByAngleFromPoint222 = PMath.getPointByAngleFromPoint(f2422, f2322, f12, 3.0f);
                                float f2522 = f12;
                                spriteBatch.draw(this.f11040g, pointByAngleFromPoint222.f5527x - 8.0f, pointByAngleFromPoint222.f5528y - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f2522);
                                spriteBatch.setColor(color522);
                                spriteBatch.draw(this.f11040g, f2422 - 8.0f, f2322 - 8.0f, 8.0f, 8.0f, 16.0f, 16.0f, 1.0f, 1.0f, f2522);
                                i6++;
                                mapMinX = i722;
                                color4 = color522;
                                next = next;
                                array3 = array3;
                                mapMinY = mapMinY;
                                f14 = 2.0f;
                                i5 = 3;
                                c = 0;
                                c2 = 1;
                            }
                            researchLink = next;
                            i2 = mapMinY;
                            i3 = mapMinX;
                            array2 = array3;
                            f8 = 2.0f;
                            spriteBatch.setColor(Color.WHITE);
                        } else {
                            researchLink = next;
                            i2 = mapMinY;
                            i3 = mapMinX;
                            array2 = array3;
                            f8 = 2.0f;
                        }
                        if (z && !researchLink.isVisible()) {
                            Research.ResearchLink researchLink2 = researchLink;
                            if (researchLink2.requiredLevels > 1) {
                                float f35 = (researchLink2.requiredLevelsLabelX - 130.0f) - i3;
                                mapMinY = i2;
                                StringBuilder stringBuilder = f11026G;
                                stringBuilder.setLength(0);
                                stringBuilder.append(researchLink2.parent.installedLevel);
                                stringBuilder.append("/");
                                stringBuilder.append(researchLink2.requiredLevels);
                                this.f11043j.setColor(Color.BLACK);
                                float f36 = ((researchLink2.requiredLevelsLabelY - 20.0f) - mapMinY) + 28.0f;
                                this.f11043j.draw(spriteBatch, stringBuilder, f35 + f8, f36 - f8, 260.0f, 1, false);
                                this.f11043j.setColor(Color.WHITE);
                                this.f11043j.draw(spriteBatch, stringBuilder, f35, f36, 260.0f, 1, false);
                                mapMinX = i3;
                                instances = array2;
                                c = 0;
                                c2 = 1;
                            }
                        }
                        mapMinY = i2;
                        mapMinX = i3;
                        instances = array2;
                        c = 0;
                        c2 = 1;
                    }
                }
            }
        }
        int i8 = mapMinX;
        int i9 = instances.size;
        int i10 = 0;
        while (i10 < i9) {
            Research research4 = instances.get(i10);
            float f37 = research4.f8856x - i8;
            float f38 = research4.f8857y - mapMinY;
            float f39 = f37 - 55.0f;
            float f40 = f38 - 55.0f;
            IntRectangle intRectangle2 = f11027H;
            int i11 = (int) f39;
            intRectangle2.minX = i11;
            int i12 = (int) f40;
            intRectangle2.minY = i12;
            intRectangle2.maxX = i11 + 110;
            intRectangle2.maxY = i12 + 110;
            if (this.cameraController.isRectVisible(intRectangle2)) {
                if (this.selectedResearch == research4) {
                    spriteBatch.setColor(f11024E);
                    f3 = f40;
                    f4 = f39;
                    spriteBatch.draw(this.f11038e, f37 - 60.0f, f38 - 60.0f, 120.0f, 120.0f);
                } else {
                    f3 = f40;
                    f4 = f39;
                    if (this.hoveredResearch == research4) {
                        spriteBatch.setColor(f11023D);
                        spriteBatch.draw(this.f11038e, f37 - 60.0f, f38 - 60.0f, 120.0f, 120.0f);
                    }
                }
                if (Game.f8589i.researchManager.isVisible(research4)) {
                    boolean canStartResearching = Game.f8589i.researchManager.canStartResearching(research4, false);
                    if (canStartResearching) {
                        float timestampMillis = ((float) (Game.getTimestampMillis() % 1000)) * 0.001f;
                        if (timestampMillis < 0.5f) {
                            f7 = timestampMillis * 2.0f;
                        } else {
                            f7 = 1.0f - ((timestampMillis - 0.5f) * 2.0f);
                        }
                        color = f11028I;
                        color.set(f11021B).lerp(f11022C, f7);
                    } else if (research4.installedLevel == 0) {
                        color = f11020A;
                    } else if (Game.f8589i.progressManager.getDifficultyMode() != DifficultyMode.EASY && Game.f8589i.progressManager.getDifficultyMode() != DifficultyMode.NORMAL) {
                        if (research4.isMaxEndlessLevel()) {
                            color = f11033z;
                        } else {
                            color = f11032y;
                        }
                    } else if (research4.isMaxNormalLevel()) {
                        color = f11033z;
                    } else {
                        color = f11032y;
                    }
                    Color color6 = color;
                    spriteBatch.setColor(color6);
                    array = instances;
                    spriteBatch.draw(this.f11037d, f4, f3, 110.0f, 110.0f);
                    if (research4.installedLevel == 0) {
                        spriteBatch.setColor(f11020A);
                    } else {
                        spriteBatch.setColor(Color.WHITE);
                    }
                    TextureRegionConfig.drawBatch(research4.category.getIcon(), spriteBatch, f37 - 40.0f, f38 - 40.0f, 80.0f);
                    if (z) {
                        int length = research4.levels.length;
                        if (DifficultyMode.isEndless(Game.f8589i.progressManager.getDifficultyMode())) {
                            length = research4.maxEndlessLevel;
                        }
                        if (length > 1 && research4.installedLevel != 0) {
                            spriteBatch.setColor(color6);
                            spriteBatch.draw(this.f11041h, f4 + 55.0f, f3 + 9.0f, 46.0f, 36.0f);
                            StringBuilder stringBuilder2 = f11026G;
                            stringBuilder2.setLength(0);
                            stringBuilder2.append('L');
                            if (DifficultyMode.isEndless(Game.f8589i.progressManager.getDifficultyMode())) {
                                stringBuilder2.append(research4.installedLevel);
                            } else {
                                int i13 = research4.installedLevel;
                                Research.ResearchLevel[] researchLevelArr = research4.levels;
                                if (i13 > researchLevelArr.length) {
                                    stringBuilder2.append(researchLevelArr.length);
                                } else {
                                    stringBuilder2.append(i13);
                                }
                            }
                            if (canStartResearching) {
                                this.f11043j.setColor(Color.BLACK);
                                float f41 = f4 + 48.0f;
                                float f42 = f3 + 32.0f;
                                f5 = f38;
                                f6 = f37;
                                this.f11043j.draw(spriteBatch, stringBuilder2, f41 + 2.0f, f42 - 2.0f, 48.0f, 16, false);
                                this.f11043j.setColor(Color.WHITE);
                                this.f11043j.draw(spriteBatch, stringBuilder2, f41, f42, 48.0f, 16, false);
                            } else {
                                f5 = f38;
                                f6 = f37;
                                this.f11043j.setColor(Color.BLACK);
                                this.f11043j.draw(spriteBatch, stringBuilder2, f4 + 48.0f, f3 + 32.0f, 48.0f, 16, false);
                                this.f11043j.setColor(Color.WHITE);
                            }
                            if (z && research4.priceInStars > 0) {
                                StringBuilder stringBuilder3 = f11026G;
                                stringBuilder3.setLength(0);
                                stringBuilder3.append(research4.priceInStars);
                                float f43 = f6 + 38.5f;
                                float f44 = f5 + 11.0f;
                                spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                                spriteBatch.draw(this.f11042i, f43 - 5.0f, f44 - 5.0f, 34.0f, 34.0f);
                                Color color7 = MaterialColor.AMBER.P400;
                                spriteBatch.setColor(color7);
                                spriteBatch.draw(this.f11042i, f43, f44, 24.0f, 24.0f);
                                this.f11044k.setColor(color7);
                                this.f11044k.draw(spriteBatch, stringBuilder3, f43 + 32.0f, f44 + 21.0f, 100.0f, 8, false);
                            }
                            i10++;
                            instances = array;
                        }
                    }
                    f5 = f38;
                    f6 = f37;
                    if (z) {
                        StringBuilder stringBuilder32 = f11026G;
                        stringBuilder32.setLength(0);
                        stringBuilder32.append(research4.priceInStars);
                        float f432 = f6 + 38.5f;
                        float f442 = f5 + 11.0f;
                        spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                        spriteBatch.draw(this.f11042i, f432 - 5.0f, f442 - 5.0f, 34.0f, 34.0f);
                        Color color72 = MaterialColor.AMBER.P400;
                        spriteBatch.setColor(color72);
                        spriteBatch.draw(this.f11042i, f432, f442, 24.0f, 24.0f);
                        this.f11044k.setColor(color72);
                        this.f11044k.draw(spriteBatch, stringBuilder32, f432 + 32.0f, f442 + 21.0f, 100.0f, 8, false);
                    }
                    i10++;
                    instances = array;
                }
            }
            array = instances;
            i10++;
            instances = array;
        }
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.end();
        if (Game.f8589i.researchManager.getCurrentResearching() != null) {
            spriteBatch.begin();
            this.f11048o.setPosition(currentResearching.f8856x - i8, currentResearching.f8857y - mapMinY);
            f2 = f;
            this.f11048o.draw(spriteBatch, f2);
            spriteBatch.end();
        } else {
            f2 = f;
        }
        if (this.f11050q.size != 0) {
            spriteBatch.begin();
            i = GL20.GL_SRC_ALPHA;
            spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
            this.f11050q.begin();
            int i14 = 0;
            while (true) {
                delayedRemovalArray = this.f11050q;
                if (i14 >= delayedRemovalArray.size) {
                    break;
                }
                ParticleEffectPool.PooledEffect pooledEffect = delayedRemovalArray.items[i14];
                pooledEffect.draw(spriteBatch, f2);
                if (pooledEffect.isComplete()) {
                    this.f11050q.removeIndex(i14);
                }
                i14++;
            }
            delayedRemovalArray.end();
            spriteBatch.end();
        } else {
            i = GL20.GL_SRC_ALPHA;
        }
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setBlendFunction(i, GL20.GL_ONE_MINUS_SRC_ALPHA);
        this.f11046m.draw(f2);
    }

    /* renamed from: j */
    public final void m21147j() {
        boolean z;
        int length;
        Array<Research> instances = Game.f8589i.researchManager.getInstances();
        if (Game.f8589i.progressManager.getDifficultyMode() != DifficultyMode.NORMAL) {
            z = true;
        } else {
            z = false;
        }
        for (int i = 0; i < instances.size; i++) {
            Research research = instances.items[i];
            if (z) {
                length = research.maxEndlessLevel;
            } else {
                length = research.levels.length;
            }
            research.installedLevel = length;
        }
    }

    /* renamed from: k */
    public final void m21146k() {
        boolean z;
        int length;
        Array<Research> instances = Game.f8589i.researchManager.getInstances();
        if (Game.f8589i.progressManager.getDifficultyMode() != DifficultyMode.NORMAL) {
            z = true;
        } else {
            z = false;
        }
        for (int i = 0; i < instances.size; i++) {
            Research research = instances.items[i];
            if (z) {
                length = research.maxEndlessLevel;
            } else {
                length = research.levels.length;
            }
            int i2 = length / 2;
            if (i2 < 1) {
                i2 = 1;
            }
            if (research.installedLevel < i2) {
                research.installedLevel = i2;
            }
        }
    }

    /* renamed from: l */
    public final void m21145l() {
        boolean z;
        int length;
        Array<Research> instances = Game.f8589i.researchManager.getInstances();
        if (Game.f8589i.progressManager.getDifficultyMode() != DifficultyMode.NORMAL) {
            z = true;
        } else {
            z = false;
        }
        for (int i = 0; i < instances.size; i++) {
            Research research = instances.items[i];
            ResearchType researchType = research.type;
            if (researchType != ResearchType.ROOT && !research.unlocksTower) {
                if (!researchType.name().endsWith("MAX_EXP_LEVEL") && !research.type.name().endsWith("MAX_UPGRADE_LEVEL") && !research.type.name().startsWith("MINER_TYPE_") && !research.type.name().startsWith("MODIFIER_TYPE_") && !research.type.name().startsWith("STORYLINE_")) {
                    research.installedLevel = 0;
                } else {
                    if (z) {
                        length = research.maxEndlessLevel;
                    } else {
                        length = research.levels.length;
                    }
                    research.installedLevel = length;
                }
            } else {
                research.installedLevel = 1;
            }
        }
    }

    /* renamed from: r */
    public final void m21139r(Research research) {
        if (research == this.hoveredResearch) {
            return;
        }
        this.hoveredResearch = research;
        this.f11054u.begin();
        int i = this.f11054u.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f11054u.get(i2).hoveredResearchChanged();
        }
        this.f11054u.end();
    }

    public void removeListener(ResearchesScreenListener researchesScreenListener) {
        if (researchesScreenListener != null) {
            this.f11054u.removeValue(researchesScreenListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.cameraController.setScreenSize(i, i2);
        }
        super.resize(i, i2);
    }

    /* renamed from: s */
    public final void m21138s(Research research) {
        if (research == this.selectedResearch) {
            return;
        }
        this.selectedResearch = research;
        this.f11054u.begin();
        int i = this.f11054u.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f11054u.get(i2).selectedResearchChanged();
        }
        this.f11054u.end();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        Gdx.input.setInputProcessor(this.f11035b);
        Game.f8589i.uiManager.stage.setScrollFocus(null);
    }

    public void updateStarsCount() {
        Game.f8589i.researchManager.updateAndValidateStarBranch();
        this.f11047n.setText(Game.f8589i.researchManager.getUnusedStarsCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m21142o() {
        m21145l();
        Game.f8589i.researchManager.checkResearchesStatus(false);
        Game.f8589i.uiManager.notifications.add("Minimal research enabled", null, null, StaticSoundType.SUCCESS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m21141p() {
        m21145l();
        m21146k();
        Game.f8589i.researchManager.checkResearchesStatus(false);
        Game.f8589i.uiManager.notifications.add("Average research enabled", null, null, StaticSoundType.SUCCESS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m21140q() {
        m21147j();
        Game.f8589i.researchManager.checkResearchesStatus(false);
        Game.f8589i.uiManager.notifications.add("Full research enabled", null, null, StaticSoundType.SUCCESS);
    }
}

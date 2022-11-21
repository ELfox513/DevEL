package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.actions.SequenceAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.RunnableC1650f0;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.ScreenManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.Locale;
/* renamed from: com.prineside.tdi2.ui.shared.ResourcesAndMoney */
/* loaded from: classes2.dex */
public class ResourcesAndMoney {

    /* renamed from: l */
    public static final Color f14868l = new Color(168430267);

    /* renamed from: m */
    public static final Color f14869m = MaterialColor.GREEN.P800;

    /* renamed from: n */
    public static final Color f14870n = MaterialColor.GREEN.P700;

    /* renamed from: o */
    public static final Color f14871o = MaterialColor.GREEN.P900;

    /* renamed from: a */
    public final UiManager.UiLayer f14872a;

    /* renamed from: b */
    public final Group f14873b;

    /* renamed from: c */
    public final Label f14874c;

    /* renamed from: d */
    public final Table f14875d;

    /* renamed from: e */
    public final Image f14876e;

    /* renamed from: f */
    public final Image f14877f;

    /* renamed from: g */
    public final Image f14878g;

    /* renamed from: h */
    public final Label.LabelStyle f14879h;

    /* renamed from: i */
    public float f14880i;

    /* renamed from: j */
    public int f14881j;

    /* renamed from: k */
    public boolean f14882k;

    /* renamed from: h */
    public static /* synthetic */ void m19881h() {
        Game game = Game.f8589i;
        game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("exit_game_confirm"), new RunnableC1650f0());
    }

    public void setVisible(boolean z) {
        this.f14872a.getTable().setVisible(z);
    }

    public ResourcesAndMoney() {
        boolean z;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SHARED_COMPONENTS, 100, "ResourcesAndMoney");
        this.f14872a = addLayer;
        this.f14880i = 0.0f;
        this.f14881j = -1;
        this.f14882k = false;
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).expand().top().right().size(1200.0f, 80.0f);
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.t1
                @Override // java.lang.Runnable
                public final void run() {
                    ResourcesAndMoney.m19881h();
                }
            });
            complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-top-bar-exit"), 0.0f, 0.0f, 139.0f, 88.0f);
            complexButton.setBackgroundColors(new Color(673720575), new Color(-2112218369), new Color(-1255922433), Color.GRAY);
            complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 46.0f, 26.0f, 40.0f, 40.0f);
            Color color = Color.WHITE;
            complexButton.setIconColors(color, color, color, color);
            addLayer.getTable().add((Table) complexButton).top().right().size(128.0f, 88.0f).padLeft(-5.0f);
            z = true;
        } else {
            z = false;
        }
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(30);
        Color color2 = Color.WHITE;
        this.f14879h = new Label.LabelStyle(font, color2);
        Group group2 = new Group();
        this.f14873b = group2;
        group2.setTransform(false);
        group2.setSize(1200.0f, 80.0f);
        group.addActor(group2);
        Group group3 = new Group() { // from class: com.prineside.tdi2.ui.shared.ResourcesAndMoney.1
            @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
            public void act(float f) {
                super.act(f);
                if (ResourcesAndMoney.this.f14876e != null) {
                    ResourcesAndMoney.this.f14876e.setVisible(Game.f8589i.purchaseManager.canShowRewardingAd(PurchaseManager.RewardingAdsType.REGULAR));
                }
            }
        };
        group3.setTransform(false);
        group3.setSize(273.0f, 88.0f);
        group3.setPosition(927.0f, -8.0f);
        group.addActor(group3);
        final Image image = new Image(Game.f8589i.assetManager.getTextureRegion("ui-top-bar-money"));
        image.setColor(f14869m);
        image.setSize(283.0f, 88.0f);
        group3.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getTextureRegion("icon-money"));
        this.f14877f = image2;
        image2.setSize(48.0f, 48.0f);
        image2.setOrigin(24.0f, 4.0f);
        image2.setPosition(209.0f, 24.0f);
        image2.setColor(color2);
        group3.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("count-bubble"));
        this.f14878g = image3;
        image3.setSize(21.5f, 24.5f);
        image3.setPosition(249.0f, 56.0f);
        image3.setVisible(false);
        group3.addActor(image3);
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.ui.shared.ResourcesAndMoney.2
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                ResourcesAndMoney.this.f14882k = true;
            }

            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void temporaryModeUpdated() {
                if (Game.f8589i.preferencesManager.isTemporarySettingsApplied()) {
                    ResourcesAndMoney.this.f14877f.setDrawable(Game.f8589i.assetManager.getDrawable("icon-sand-clock"));
                } else {
                    ResourcesAndMoney.this.f14877f.setDrawable(Game.f8589i.assetManager.getDrawable("icon-money"));
                }
                ResourcesAndMoney.this.f14882k = true;
            }
        });
        Game.f8589i.screenManager.addListener(new ScreenManager.ScreenManagerListener() { // from class: com.prineside.tdi2.ui.shared.ResourcesAndMoney.3
            @Override // com.prineside.tdi2.managers.ScreenManager.ScreenManagerListener
            public void screenChanged() {
                ResourcesAndMoney.this.f14882k = true;
            }
        });
        Label label = new Label("0", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color2));
        this.f14874c = label;
        label.setAlignment(16);
        label.setSize(193.0f, 80.0f);
        label.setPosition(0.0f, 8.0f);
        group3.addActor(label);
        Table table = new Table();
        this.f14875d = table;
        table.setSize(273.0f, 24.0f);
        if (z) {
            table.setPosition(1050.0f, -40.0f);
        } else {
            table.setPosition(927.0f, -40.0f);
        }
        group.addActor(table);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("ui-top-bar-ad-available"));
        this.f14876e = image4;
        image4.setSize(64.0f, 59.0f);
        image4.setPosition(-1.0f, 14.0f);
        image4.setVisible(false);
        image4.addAction(Actions.forever(Actions.sequence(Actions.color(new Color(0.85f, 0.85f, 0.85f, 1.0f), 0.5f, Interpolation.exp5In), Actions.color(color2, 0.5f, Interpolation.exp5Out))));
        group3.addActor(image4);
        group3.setTouchable(Touchable.enabled);
        group3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.ResourcesAndMoney.4

            /* renamed from: o */
            public boolean f14886o = false;

            /* renamed from: p */
            public boolean f14887p = false;

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f14887p = true;
                    m19879a();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f14887p = false;
                    m19879a();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f14886o = true;
                m19879a();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f14886o = false;
                m19879a();
                super.touchUp(inputEvent, f, f2, i, i2);
            }

            /* renamed from: a */
            public final void m19879a() {
                if (this.f14886o) {
                    image.setColor(ResourcesAndMoney.f14871o);
                } else if (this.f14887p) {
                    image.setColor(ResourcesAndMoney.f14870n);
                } else {
                    image.setColor(ResourcesAndMoney.f14869m);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (Game.f8589i.preferencesManager.isTemporarySettingsApplied()) {
                    Game.f8589i.preferencesManager.clearTemporaryPreferences();
                    Game.f8589i.screenManager.goToMainMenu();
                    return;
                }
                Game.f8589i.screenManager.goToMoneyScreen();
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            }
        });
        this.f14882k = true;
        setVisible(false);
        Game.f8589i.progressManager.addListener(new ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter() { // from class: com.prineside.tdi2.ui.shared.ResourcesAndMoney.5
            @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
            public void itemsChanged(Item item, int i, int i2) {
                if (item.getType() == ItemType.RESOURCE || item.getType() == ItemType.GREEN_PAPER || item.getType() == ItemType.ACCELERATOR) {
                    ResourcesAndMoney.this.f14882k = true;
                }
            }
        });
    }

    /* renamed from: i */
    public final void m19880i() {
        boolean z;
        this.f14874c.setText(String.format(Locale.ENGLISH, "%,d", Integer.valueOf(Game.f8589i.progressManager.getGreenPapers())));
        if (Game.f8589i.progressManager.getGreenPapers() < 10000000) {
            this.f14874c.setStyle(Game.f8589i.assetManager.getLabelStyle(30));
        } else {
            this.f14874c.setStyle(Game.f8589i.assetManager.getLabelStyle(24));
        }
        ProgressManager progressManager = Game.f8589i.progressManager;
        if (progressManager.videosWatchedForDoubleGain < 500 && progressManager.videosWatchedForLuckyShot < 20) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            this.f14878g.setVisible(true);
            this.f14877f.setDrawable(Game.f8589i.assetManager.getDrawable("icon-gift"));
            this.f14877f.clearActions();
            this.f14877f.setPosition(209.0f, 24.0f);
            Image image = this.f14877f;
            SequenceAction sequence = Actions.sequence(Actions.scaleTo(1.0f, 1.0f));
            ScaleToAction scaleTo = Actions.scaleTo(1.2f, 0.8f, 0.2f, Interpolation.fastSlow);
            Interpolation interpolation = Interpolation.sine;
            image.addAction(Actions.sequence(sequence, Actions.forever(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(Actions.scaleTo(0.8f, 1.2f, 0.2f, interpolation), Actions.scaleTo(1.1f, 0.9f, 0.2f, interpolation), Actions.scaleTo(1.0f, 1.0f, 0.1f, interpolation)), Actions.sequence(Actions.moveBy(0.0f, 12.0f, 0.2f, Interpolation.pow2Out), Actions.moveBy(0.0f, -12.0f, 0.2f, Interpolation.pow2In))), Actions.delay(1.0f)))));
        } else {
            this.f14877f.clearActions();
            this.f14877f.setPosition(209.0f, 24.0f);
            this.f14877f.setDrawable(Game.f8589i.assetManager.getDrawable("icon-money"));
            this.f14878g.setVisible(false);
        }
        this.f14873b.clearChildren();
        Image image2 = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        image2.setColor(f14868l);
        image2.setSize(280.0f, 80.0f);
        float f = 920.0f;
        image2.setPosition(920.0f, 0.0f);
        this.f14873b.addActor(image2);
        for (int length = ResourceType.values.length - 1; length >= 0; length--) {
            ResourceType resourceType = ResourceType.values[length];
            if (Game.f8589i.progressManager.isResourceOpened(resourceType)) {
                Image image3 = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
                image3.setColor(f14868l);
                image3.setSize(136.0f, 80.0f);
                f -= 136.0f;
                image3.setPosition(f, 0.0f);
                this.f14873b.addActor(image3);
                Group group = new Group();
                group.setTransform(false);
                group.setSize(150.0f, 80.0f);
                group.setPosition(f, 0.0f);
                this.f14873b.addActor(group);
                Image image4 = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[resourceType.ordinal()]));
                image4.setSize(48.0f, 48.0f);
                image4.setColor(Game.f8589i.resourceManager.getColor(resourceType));
                image4.setPosition(16.0f, 16.0f);
                group.addActor(image4);
                Label label = new Label(StringFormatter.compactNumber(Game.f8589i.progressManager.getResources(resourceType), false), this.f14879h);
                label.setColor(Game.f8589i.resourceManager.getColor(resourceType));
                label.setSize(62.0f, 80.0f);
                label.setPosition(72.0f, 0.0f);
                group.addActor(label);
            }
        }
        QuadActor quadActor = new QuadActor(Color.WHITE, new float[]{28.0f, 0.0f, 0.0f, 80.0f, 38.0f, 80.0f, 38.0f, 0.0f});
        quadActor.setColor(f14868l);
        quadActor.setSize(38.0f, 80.0f);
        float f2 = f - 38.0f;
        quadActor.setPosition(f2, 0.0f);
        this.f14873b.addActor(quadActor);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("time-accelerator"));
        Color color = MaterialColor.YELLOW.P500;
        image5.setColor(color);
        image5.setSize(48.0f, 48.0f);
        float f3 = f2 - 136.0f;
        image5.setPosition(f3, 16.0f);
        this.f14873b.addActor(image5);
        Label label2 = new Label(StringFormatter.compactNumber(Game.f8589i.progressManager.getAccelerators(), false), this.f14879h);
        label2.setColor(color);
        label2.setSize(64.0f, 80.0f);
        label2.setAlignment(1);
        label2.setPosition(f3 + 64.0f, 0.0f);
        this.f14873b.addActor(label2);
        updateBoosts();
    }

    public void postRender(float f) {
        if (this.f14872a.getTable().isVisible()) {
            float f2 = this.f14880i + f;
            this.f14880i = f2;
            if (f2 >= 1.0f) {
                this.f14880i = 0.0f;
                updateBoosts();
            }
        }
    }

    public void preRender(float f) {
        if (this.f14882k) {
            m19880i();
            this.f14882k = false;
        }
    }

    public void updateBoosts() {
        int itemsCount = Game.f8589i.progressManager.getItemsCount(Item.C1543D.RARITY_BOOST);
        int lootBoostTimeLeft = (int) Game.f8589i.progressManager.getLootBoostTimeLeft();
        int i = (itemsCount * 31) + lootBoostTimeLeft;
        if (this.f14881j != i) {
            this.f14875d.clear();
            this.f14875d.add().height(1.0f).expandX().fillX();
            if (itemsCount > 0) {
                this.f14875d.add((Table) new Image(Game.f8589i.assetManager.getDrawable("rarity-token"))).size(24.0f, 24.0f).padRight(5.0f);
                Label label = new Label("x" + itemsCount, Game.f8589i.assetManager.getLabelStyle(21));
                label.setColor(MaterialColor.AMBER.P500);
                this.f14875d.add((Table) label).height(24.0f).padRight(16.0f);
            }
            if (lootBoostTimeLeft > 0) {
                this.f14875d.add((Table) new Image(Game.f8589i.assetManager.getDrawable("loot-token"))).size(24.0f, 24.0f).padRight(5.0f);
                Label label2 = new Label(StringFormatter.digestTime(lootBoostTimeLeft), Game.f8589i.assetManager.getLabelStyle(21));
                label2.setColor(MaterialColor.LIGHT_GREEN.P400);
                this.f14875d.add((Table) label2).height(24.0f).padRight(16.0f);
            }
            this.f14875d.add().height(1.0f).width(8.0f);
            this.f14881j = i;
        }
    }
}

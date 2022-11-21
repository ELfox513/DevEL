package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.actors.SideMenu */
/* loaded from: classes2.dex */
public class SideMenu implements Disposable {

    /* renamed from: A */
    public boolean f12722A;

    /* renamed from: B */
    public Drawable f12723B;

    /* renamed from: C */
    public Drawable f12724C;

    /* renamed from: D */
    public final Runnable f12725D;

    /* renamed from: E */
    public final Runnable f12726E;

    /* renamed from: F */
    public final DelayedRemovalArray<SideMenuListener> f12727F;

    /* renamed from: a */
    public final UiManager.UiLayer f12728a;

    /* renamed from: b */
    public Group f12729b;

    /* renamed from: d */
    public Group f12730d;

    /* renamed from: k */
    public Group f12731k;

    /* renamed from: p */
    public Group f12732p;

    /* renamed from: q */
    public Image f12733q;

    /* renamed from: r */
    public PaddedImageButton f12734r;

    /* renamed from: s */
    public Group f12735s;
    public QuadActor sideShadow;

    /* renamed from: t */
    public float f12736t;

    /* renamed from: u */
    public Label f12737u;

    /* renamed from: v */
    public Image f12738v;

    /* renamed from: w */
    public QuadActor f12739w;

    /* renamed from: x */
    public Image f12740x;

    /* renamed from: y */
    public final Array<SideMenuContainer> f12741y;

    /* renamed from: z */
    public boolean f12742z;

    /* renamed from: com.prineside.tdi2.ui.actors.SideMenu$SideMenuContainer */
    /* loaded from: classes2.dex */
    public static class SideMenuContainer extends Group {

        /* renamed from: sb */
        public static StringBuilder f12748sb = new StringBuilder();

        /* renamed from: M */
        public boolean f12749M;

        /* renamed from: N */
        public SideMenu f12750N;

        /* renamed from: O */
        public Label f12751O;

        public void hide() {
            super.setVisible(false);
            this.f12749M = false;
            this.f12750N.m20662f();
        }

        public void show() {
            super.setVisible(true);
            this.f12749M = true;
            this.f12750N.m20662f();
        }

        public void setLabelOverTitle(CharSequence charSequence) {
            Label label = this.f12751O;
            if (label != null) {
                label.remove();
            }
            Label label2 = new Label(charSequence, Game.f8589i.assetManager.getLabelStyle(24));
            this.f12751O = label2;
            label2.setSize(100.0f, 26.0f);
            this.f12751O.setPosition(460.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 54.0f);
            this.f12751O.setAlignment(16);
            this.f12751O.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            addActor(this.f12751O);
        }

        public void setLabelOverTitleTilePos(Tile tile) {
            if (tile == null) {
                return;
            }
            f12748sb.setLength(0);
            f12748sb.append(tile.getX()).append(":").append(tile.getY());
            setLabelOverTitle(f12748sb);
        }

        public SideMenuContainer(SideMenu sideMenu) {
            setTransform(false);
            this.f12750N = sideMenu;
        }
    }

    /* renamed from: com.prineside.tdi2.ui.actors.SideMenu$SideMenuListener */
    /* loaded from: classes2.dex */
    public interface SideMenuListener {

        /* renamed from: com.prineside.tdi2.ui.actors.SideMenu$SideMenuListener$SideMenuListenerAdapter */
        /* loaded from: classes2.dex */
        public static class SideMenuListenerAdapter implements SideMenuListener {
            @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
            public void offscreenChanged() {
            }

            @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
            public void offscreenStartingToChange() {
            }

            @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
            public void sideTooltipHidden() {
            }

            @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
            public void visibilityChanged() {
            }
        }

        void offscreenChanged();

        void offscreenStartingToChange();

        void sideTooltipHidden();

        void visibilityChanged();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f12728a);
    }

    public void finalFadeOut() {
        setOffscreen(true);
        this.f12728a.getTable().setTouchable(Touchable.disabled);
        this.f12728a.getTable().clearActions();
        this.f12728a.getTable().addAction(Actions.alpha(0.0f, 1.0f));
    }

    public Group getBackgroundContainer() {
        return this.f12731k;
    }

    public void hideSideTooltip() {
        this.f12735s.setVisible(false);
    }

    public boolean isOffscreen() {
        return this.f12722A;
    }

    public boolean isVisible() {
        return this.f12742z;
    }

    public SideMenu() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 105, "SideMenu");
        this.f12728a = addLayer;
        this.f12741y = new Array<>();
        this.f12727F = new DelayedRemovalArray<>();
        Group group = new Group();
        this.f12729b = group;
        group.setTransform(false);
        Group group2 = this.f12729b;
        Touchable touchable = Touchable.childrenOnly;
        group2.setTouchable(touchable);
        addLayer.getTable().add((Table) this.f12729b).width(740.0f).height(Game.f8589i.settingsManager.getScaledViewportHeight()).expand().bottom().right();
        Group group3 = new Group();
        this.f12730d = group3;
        group3.setSize(740.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        this.f12730d.setTransform(true);
        this.f12730d.setTouchable(touchable);
        this.f12729b.addActor(this.f12730d);
        QuadActor quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.14f), new float[]{4.0f, 0.0f, 0.0f, Game.f8589i.settingsManager.getScaledViewportHeight(), 7.0f, Game.f8589i.settingsManager.getScaledViewportHeight(), 7.0f, 0.0f});
        this.sideShadow = quadActor;
        quadActor.setPosition(133.0f, 0.0f);
        this.f12730d.addActor(this.sideShadow);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-toggle-button"));
        this.f12733q = image;
        image.setSize(180.0f, 196.0f);
        this.f12730d.addActor(this.f12733q);
        Group group4 = new Group();
        this.f12731k = group4;
        group4.setTransform(false);
        this.f12731k.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        this.f12731k.setPosition(140.0f, 0.0f);
        this.f12730d.addActor(this.f12731k);
        Group group5 = new Group();
        this.f12735s = group5;
        group5.setSize(288.0f, 173.0f);
        this.f12735s.setPosition(-148.0f, 0.0f);
        this.f12730d.addActor(this.f12735s);
        Group group6 = this.f12735s;
        Touchable touchable2 = Touchable.enabled;
        group6.setTouchable(touchable2);
        this.f12735s.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.SideMenu.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                SideMenu.this.hideSideTooltip();
                SideMenu.this.f12727F.begin();
                for (int i = 0; i < SideMenu.this.f12727F.size; i++) {
                    ((SideMenuListener) SideMenu.this.f12727F.get(i)).sideTooltipHidden();
                }
                SideMenu.this.f12727F.end();
            }
        });
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-side-tooltip"));
        this.f12738v = image2;
        image2.setSize(22.0f, 173.0f);
        this.f12738v.setPosition(266.0f, 0.0f);
        this.f12735s.addActor(this.f12738v);
        QuadActor quadActor2 = new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        this.f12739w = quadActor2;
        this.f12735s.addActor(quadActor2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-info-circle"));
        this.f12740x = image3;
        image3.setSize(64.0f, 64.0f);
        this.f12740x.setPosition(-36.0f, 133.0f);
        this.f12735s.addActor(this.f12740x);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        Label label = new Label("Side tooltip", new Label.LabelStyle(font, color));
        this.f12737u = label;
        label.setSize(238.0f, 173.0f);
        this.f12737u.setPosition(20.0f, 0.0f);
        this.f12737u.setWrap(true);
        this.f12737u.setAlignment(1);
        this.f12735s.addActor(this.f12737u);
        hideSideTooltip();
        this.f12723B = Game.f8589i.assetManager.getDrawable("icon-triangle-right-hollow");
        this.f12724C = Game.f8589i.assetManager.getDrawable("icon-triangle-left-hollow");
        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-right-hollow"), new Runnable() { // from class: com.prineside.tdi2.ui.actors.SideMenu.2
            @Override // java.lang.Runnable
            public void run() {
                SideMenu sideMenu = SideMenu.this;
                sideMenu.setOffscreen(!sideMenu.f12722A);
            }
        }, color, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P600);
        this.f12734r = paddedImageButton;
        paddedImageButton.setName("side_menu_toggle_button");
        this.f12734r.setSize(140.0f, 196.0f);
        this.f12734r.setTouchable(touchable2);
        this.f12734r.setIconSize(64.0f, 64.0f);
        this.f12734r.setIconPosition(32.0f, 48.0f);
        this.f12730d.addActor(this.f12734r);
        if (HotKeyHintLabel.isEnabled()) {
            this.f12734r.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.TOGGLE_TILE_MENU), 64.0f, 12.0f));
        }
        Group group7 = new Group();
        this.f12732p = group7;
        group7.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        this.f12732p.setPosition(140.0f, 0.0f);
        this.f12732p.setTransform(false);
        this.f12732p.setTouchable(touchable2);
        this.f12732p.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.actors.SideMenu.3
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                return true;
            }
        });
        this.f12730d.addActor(this.f12732p);
        this.f12725D = new Runnable() { // from class: com.prineside.tdi2.ui.actors.SideMenu.4
            @Override // java.lang.Runnable
            public void run() {
                SideMenu.this.f12732p.setVisible(false);
                SideMenu.this.f12731k.setVisible(false);
                SideMenu.this.f12727F.begin();
                int i = SideMenu.this.f12727F.size;
                for (int i2 = 0; i2 < i; i2++) {
                    ((SideMenuListener) SideMenu.this.f12727F.get(i2)).offscreenChanged();
                }
                SideMenu.this.f12727F.end();
            }
        };
        this.f12726E = new Runnable() { // from class: com.prineside.tdi2.ui.actors.SideMenu.5
            @Override // java.lang.Runnable
            public void run() {
                SideMenu.this.f12732p.setVisible(true);
                SideMenu.this.f12731k.setVisible(true);
            }
        };
        setVisible(true);
        this.f12722A = true;
        setOffscreen(false);
    }

    public void addListener(SideMenuListener sideMenuListener) {
        if (sideMenuListener != null) {
            if (!this.f12727F.contains(sideMenuListener, true)) {
                this.f12727F.add(sideMenuListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void addOffscreenBackground() {
        if (Game.f8589i.settingsManager.getScaledViewportHeight() > 0) {
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setColor(new Color(387389371));
            image.setSize(Game.f8589i.uiManager.getScreenSafeMargin(), Game.f8589i.settingsManager.getScaledViewportHeight());
            image.setPosition(600.0f, 0.0f);
            getBackgroundContainer().addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
            image2.setSize(10.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
            image2.setPosition(600.0f, 0.0f);
            image2.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            getBackgroundContainer().addActor(image2);
        }
    }

    public SideMenuContainer createContainer() {
        SideMenuContainer sideMenuContainer = new SideMenuContainer(this);
        sideMenuContainer.setSize(this.f12732p.getWidth(), this.f12732p.getHeight());
        this.f12732p.addActor(sideMenuContainer);
        this.f12741y.add(sideMenuContainer);
        sideMenuContainer.setVisible(false);
        return sideMenuContainer;
    }

    /* renamed from: f */
    public final void m20662f() {
        Array.ArrayIterator<SideMenuContainer> it = this.f12741y.iterator();
        while (it.hasNext()) {
            if (it.next().f12749M) {
                setVisible(true);
                return;
            }
        }
        setVisible(false);
    }

    public void removeListener(SideMenuListener sideMenuListener) {
        if (sideMenuListener != null) {
            this.f12727F.removeValue(sideMenuListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void setOffscreen(boolean z) {
        if (this.f12722A != z) {
            this.f12722A = z;
            int i = 0;
            if (z) {
                this.f12730d.clearActions();
                this.f12727F.begin();
                int i2 = this.f12727F.size;
                while (i < i2) {
                    this.f12727F.get(i).offscreenStartingToChange();
                    i++;
                }
                this.f12727F.end();
                this.f12734r.clearActions();
                this.f12733q.clearActions();
                int screenSafeMargin = Game.f8589i.uiManager.getScreenSafeMargin();
                if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                    this.f12730d.addAction(Actions.sequence(Actions.moveTo(screenSafeMargin + 600.0f, 0.0f, 0.2f, Interpolation.exp5Out), Actions.run(this.f12725D)));
                    float f = -screenSafeMargin;
                    this.f12734r.addAction(Actions.moveTo(f, 0.0f, 0.2f));
                    this.f12733q.addAction(Actions.moveTo(f, 0.0f, 0.2f));
                } else {
                    this.f12730d.setPosition(screenSafeMargin + 600.0f, 0.0f);
                    float f2 = -screenSafeMargin;
                    this.f12734r.setPosition(f2, 0.0f);
                    this.f12733q.setPosition(f2, 0.0f);
                    this.f12725D.run();
                }
                this.f12734r.setIcon(this.f12724C);
                return;
            }
            this.f12730d.clearActions();
            this.f12726E.run();
            this.f12734r.clearActions();
            this.f12733q.clearActions();
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                this.f12730d.addAction(Actions.moveTo(0.0f, 0.0f, 0.2f, Interpolation.exp5Out));
                this.f12734r.addAction(Actions.moveTo(0.0f, 0.0f, 0.2f));
                this.f12733q.addAction(Actions.moveTo(0.0f, 0.0f, 0.2f));
            } else {
                this.f12730d.setPosition(0.0f, 0.0f);
                this.f12734r.setPosition(0.0f, 0.0f);
                this.f12733q.setPosition(0.0f, 0.0f);
            }
            this.f12734r.setIcon(this.f12723B);
            this.f12727F.begin();
            int i3 = this.f12727F.size;
            for (int i4 = 0; i4 < i3; i4++) {
                this.f12727F.get(i4).offscreenStartingToChange();
            }
            this.f12727F.end();
            this.f12727F.begin();
            int i5 = this.f12727F.size;
            while (i < i5) {
                this.f12727F.get(i).offscreenChanged();
                i++;
            }
            this.f12727F.end();
        }
    }

    public void setVisible(boolean z) {
        DelayedRemovalArray<SideMenuListener> delayedRemovalArray;
        if (this.f12742z != z) {
            this.f12742z = z;
            this.f12727F.begin();
            int i = 0;
            while (true) {
                delayedRemovalArray = this.f12727F;
                if (i >= delayedRemovalArray.size) {
                    break;
                }
                delayedRemovalArray.get(i).visibilityChanged();
                i++;
            }
            delayedRemovalArray.end();
        }
        this.f12728a.getTable().setVisible(z);
    }

    public void showSideTooltip(CharSequence charSequence, float f) {
        if (this.f12735s.isVisible() && this.f12737u.textEquals(charSequence) && this.f12736t == f) {
            return;
        }
        this.f12737u.setText(charSequence);
        this.f12737u.layout();
        this.f12737u.validate();
        float prefHeight = this.f12737u.getPrefHeight() + 24.0f;
        if (prefHeight <= 173.0f) {
            prefHeight = 173.0f;
        }
        Group group = this.f12735s;
        group.setSize(group.getWidth(), prefHeight);
        this.f12735s.setVisible(true);
        this.f12735s.setY(f - (prefHeight / 2.0f));
        Image image = this.f12738v;
        image.setPosition(image.getX(), (prefHeight - 173.0f) * 0.5f);
        float[] vertexPositions = this.f12739w.getVertexPositions();
        vertexPositions[0] = 5.0f;
        vertexPositions[1] = 5.0f;
        vertexPositions[2] = 0.0f;
        vertexPositions[3] = prefHeight - 5.0f;
        vertexPositions[4] = 266.0f;
        vertexPositions[5] = prefHeight;
        vertexPositions[6] = 266.0f;
        vertexPositions[7] = 0.0f;
        this.f12739w.setVertexPositions(vertexPositions);
        this.f12737u.setSize(238.0f, prefHeight);
        this.f12737u.setPosition(20.0f, 0.0f);
        this.f12740x.setPosition(-36.0f, prefHeight - 40.0f);
        this.f12736t = f;
    }
}

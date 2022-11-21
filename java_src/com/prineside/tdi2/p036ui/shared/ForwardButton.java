package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.shared.ForwardButton */
/* loaded from: classes2.dex */
public class ForwardButton {

    /* renamed from: a */
    public Color f14223a;

    /* renamed from: b */
    public Color f14224b;

    /* renamed from: c */
    public Color f14225c;

    /* renamed from: d */
    public Color f14226d;

    /* renamed from: e */
    public final UiManager.UiLayer f14227e;

    /* renamed from: f */
    public final Image f14228f;

    /* renamed from: g */
    public final Label f14229g;

    /* renamed from: h */
    public final Image f14230h;

    /* renamed from: i */
    public boolean f14231i = true;

    /* renamed from: j */
    public boolean f14232j = false;

    /* renamed from: k */
    public boolean f14233k = false;

    /* renamed from: l */
    public Runnable f14234l;
    public static final Color DEFAULT_NORMAL_COLOR = MaterialColor.LIGHT_BLUE.P700;
    public static final Color DEFAULT_HOVER_COLOR = MaterialColor.LIGHT_BLUE.P600;
    public static final Color DEFAULT_ACTIVE_COLOR = MaterialColor.LIGHT_BLUE.P800;
    public static final Color DEFAULT_DISABLED_COLOR = Color.GRAY;

    public ForwardButton setClickHandler(Runnable runnable) {
        this.f14234l = runnable;
        return this;
    }

    public ForwardButton setIcon(Drawable drawable) {
        this.f14230h.setDrawable(drawable);
        return this;
    }

    public ForwardButton setText(CharSequence charSequence) {
        this.f14229g.setText(charSequence);
        return this;
    }

    public ForwardButton setVisible(boolean z) {
        this.f14227e.getTable().setVisible(z);
        return this;
    }

    /* renamed from: f */
    public final void m20160f() {
        if (this.f14231i) {
            if (this.f14232j) {
                this.f14228f.setColor(this.f14225c);
                return;
            } else if (this.f14233k) {
                this.f14228f.setColor(this.f14224b);
                return;
            } else {
                this.f14228f.setColor(this.f14223a);
                return;
            }
        }
        this.f14228f.setColor(this.f14226d);
    }

    public ForwardButton reset() {
        setIcon(Game.f8589i.assetManager.getDrawable("icon-triangle-right"));
        setText(Game.f8589i.localeManager.i18n.get("continue"));
        setVisible(false);
        setEnabled(true);
        setBackgroundColors(DEFAULT_NORMAL_COLOR, DEFAULT_HOVER_COLOR, DEFAULT_ACTIVE_COLOR, DEFAULT_DISABLED_COLOR);
        return this;
    }

    public ForwardButton setBackgroundColors(Color color, Color color2, Color color3, Color color4) {
        this.f14223a = color;
        this.f14224b = color2;
        this.f14225c = color3;
        this.f14226d = color4;
        m20160f();
        return this;
    }

    public ForwardButton setEnabled(boolean z) {
        this.f14231i = z;
        m20160f();
        return this;
    }

    public ForwardButton() {
        Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE);
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SHARED_COMPONENTS, 100, "Forward button");
        this.f14227e = addLayer;
        Group group = new Group();
        group.setTouchable(Touchable.enabled);
        addLayer.getTable().add((Table) group).expand().bottom().right().size(442.0f, 128.0f);
        Color color = DEFAULT_NORMAL_COLOR;
        this.f14223a = color;
        this.f14224b = DEFAULT_HOVER_COLOR;
        this.f14225c = DEFAULT_ACTIVE_COLOR;
        this.f14226d = DEFAULT_DISABLED_COLOR;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-forward-button"));
        this.f14228f = image;
        image.setSize(442.0f, 128.0f);
        image.setColor(color);
        group.addActor(image);
        Image image2 = new Image();
        this.f14230h = image2;
        image2.setSize(64.0f, 64.0f);
        image2.setPosition(346.0f, 28.0f);
        group.addActor(image2);
        Label label = new Label("", labelStyle);
        this.f14229g = label;
        label.setSize(330.0f, 124.0f);
        label.setAlignment(16);
        group.addActor(label);
        group.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.ForwardButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    ForwardButton.this.f14233k = true;
                    ForwardButton.this.m20160f();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    ForwardButton.this.f14233k = false;
                    ForwardButton.this.m20160f();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (ForwardButton.this.f14231i && ForwardButton.this.f14234l != null) {
                    ForwardButton.this.f14234l.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                ForwardButton.this.f14232j = true;
                ForwardButton.this.m20160f();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                ForwardButton.this.f14232j = false;
                ForwardButton.this.m20160f();
                super.touchUp(inputEvent, f, f2, i, i2);
            }
        });
        reset();
    }
}

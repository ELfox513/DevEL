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
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.shared.BackButton */
/* loaded from: classes2.dex */
public class BackButton {

    /* renamed from: f */
    public static final Color f13951f = MaterialColor.LIGHT_BLUE.P800;

    /* renamed from: g */
    public static final Color f13952g = MaterialColor.LIGHT_BLUE.P700;

    /* renamed from: h */
    public static final Color f13953h = MaterialColor.LIGHT_BLUE.P900;

    /* renamed from: a */
    public final UiManager.UiLayer f13954a;

    /* renamed from: b */
    public final Image f13955b;

    /* renamed from: c */
    public final Label f13956c;

    /* renamed from: d */
    public Group f13957d;

    /* renamed from: e */
    public Runnable f13958e;

    public BackButton setClickHandler(Runnable runnable) {
        this.f13958e = runnable;
        return this;
    }

    public BackButton setVisible(boolean z) {
        setVisible(z, false);
        return this;
    }

    public BackButton setText(CharSequence charSequence) {
        if (charSequence == null) {
            this.f13956c.setText(Game.f8589i.localeManager.i18n.get("back"));
        } else {
            this.f13956c.setText(charSequence);
        }
        return this;
    }

    public BackButton setVisible(boolean z, boolean z2) {
        this.f13954a.getTable().setVisible(z);
        if (!z) {
            this.f13958e = null;
        }
        return this;
    }

    public BackButton() {
        Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE);
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SHARED_COMPONENTS, 100, "BackButton");
        this.f13954a = addLayer;
        Group group = new Group();
        this.f13957d = group;
        group.setTouchable(Touchable.enabled);
        this.f13957d.setName("shared_back_button");
        addLayer.getTable().add((Table) this.f13957d).expand().bottom().left().size(442.0f, 128.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-back-button"));
        this.f13955b = image;
        image.setSize(462.0f, 128.0f);
        image.setColor(f13951f);
        image.setPosition(-20.0f, 0.0f);
        this.f13957d.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-left"));
        image2.setSize(64.0f, 64.0f);
        image2.setPosition(32.0f, 28.0f);
        this.f13957d.addActor(image2);
        Label label = new Label(Game.f8589i.localeManager.i18n.get("back"), labelStyle);
        this.f13956c = label;
        label.setSize(314.0f, 124.0f);
        label.setPosition(112.0f, 0.0f);
        this.f13957d.addActor(label);
        this.f13957d.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.BackButton.1

            /* renamed from: o */
            public boolean f13959o = false;

            /* renamed from: p */
            public boolean f13960p = false;

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f13960p = true;
                    m20267a();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f13960p = false;
                    m20267a();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f13959o = true;
                m20267a();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f13959o = false;
                m20267a();
                super.touchUp(inputEvent, f, f2, i, i2);
            }

            /* renamed from: a */
            public final void m20267a() {
                if (this.f13959o) {
                    BackButton.this.f13955b.setColor(BackButton.f13953h);
                } else if (this.f13960p) {
                    BackButton.this.f13955b.setColor(BackButton.f13952g);
                } else {
                    BackButton.this.f13955b.setColor(BackButton.f13951f);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (BackButton.this.f13958e != null) {
                    BackButton.this.f13958e.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }
        });
        setVisible(false, true);
    }
}

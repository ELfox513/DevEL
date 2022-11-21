package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.SellButton */
/* loaded from: classes2.dex */
public class SellButton extends Group {

    /* renamed from: M */
    public Color f13603M = MaterialColor.RED.P800.cpy();

    /* renamed from: N */
    public Color f13604N = MaterialColor.RED.P900.cpy();

    /* renamed from: O */
    public Color f13605O = MaterialColor.RED.P700.cpy();

    /* renamed from: P */
    public final Image f13606P;

    /* renamed from: Q */
    public final Label f13607Q;

    /* renamed from: R */
    public int f13608R;

    /* renamed from: S */
    public boolean f13609S;

    /* renamed from: T */
    public boolean f13610T;

    public void setColors(Color color, Color color2, Color color3) {
        this.f13603M.set(color);
        this.f13604N.set(color2);
        this.f13605O.set(color3);
        m20384t();
    }

    public void setPrice(int i) {
        this.f13608R = i;
        this.f13607Q.setText(StringFormatter.commaSeparatedNumber(i));
    }

    /* renamed from: t */
    public final void m20384t() {
        if (this.f13610T) {
            this.f13606P.setColor(this.f13604N);
        } else if (this.f13609S) {
            this.f13606P.setColor(this.f13605O);
        } else {
            this.f13606P.setColor(this.f13603M);
        }
    }

    public SellButton(final Runnable runnable) {
        setSize(192.0f, 80.0f);
        setTouchable(Touchable.enabled);
        setTransform(false);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-sell-button"));
        this.f13606P = image;
        image.setSize(192.0f, 80.0f);
        addActor(image);
        Actor image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-dollar"));
        image2.setSize(40.0f, 40.0f);
        image2.setPosition(35.0f, 20.0f);
        addActor(image2);
        Label label = new Label("0", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE));
        this.f13607Q = label;
        label.setSize(80.0f, 80.0f);
        label.setPosition(92.0f, 0.0f);
        label.setAlignment(16);
        addActor(label);
        if (HotKeyHintLabel.isEnabled()) {
            addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.SELL_BUILDING), 96.0f, -27.0f));
        }
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.SellButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (runnable != null) {
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showConfirm(game.localeManager.i18n.format("sell_for_coins_price_confirm", StringFormatter.commaSeparatedNumber(SellButton.this.f13608R)), runnable, "sellButton");
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                SellButton.this.f13610T = true;
                SellButton.this.m20384t();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.enter(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    SellButton.this.f13609S = true;
                    SellButton.this.m20384t();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.exit(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    SellButton.this.f13609S = false;
                    SellButton.this.m20384t();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                super.touchUp(inputEvent, f, f2, i, i2);
                SellButton.this.f13610T = false;
                SellButton.this.m20384t();
            }
        });
        m20384t();
    }
}

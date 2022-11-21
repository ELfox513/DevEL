package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.QuadDrawable;
/* renamed from: com.prineside.tdi2.ui.shared.TextInputOverlay */
/* loaded from: classes2.dex */
public class TextInputOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14894a;

    /* renamed from: b */
    public final Label f14895b;

    /* renamed from: c */
    public final TextFieldXPlatform f14896c;

    /* renamed from: d */
    public Input.TextInputListener f14897d;

    /* renamed from: f */
    public static /* synthetic */ void m19873f() {
        Game.f8589i.uiManager.darkOverlay.cancelCurrentClick();
    }

    public boolean isVisible() {
        return this.f14894a.getTable().isVisible();
    }

    public TextInputOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 20001, "TextInputOverlay main");
        this.f14894a = addLayer;
        Table table = addLayer.getTable();
        Group group = new Group();
        group.setTransform(false);
        group.setTouchable(Touchable.enabled);
        group.addListener(new InputVoid());
        table.add((Table) group).size(800.0f, 200.0f);
        QuadActor quadActor = new QuadActor(new Color(33), new float[]{10.0f, 0.0f, 0.0f, 200.0f, 800.0f, 190.0f, 790.0f, 12.0f});
        quadActor.setSize(800.0f, 200.0f);
        quadActor.setPosition(12.0f, -12.0f);
        group.addActor(quadActor);
        QuadActor quadActor2 = new QuadActor(new Color(724249599), new float[]{10.0f, 0.0f, 0.0f, 200.0f, 800.0f, 190.0f, 790.0f, 12.0f});
        group.setSize(800.0f, 200.0f);
        group.addActor(quadActor2);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(30, false);
        Color color = Color.WHITE;
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(font, color, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable = textFieldStyle.background;
        drawable.setLeftWidth(drawable.getLeftWidth() + 16.0f);
        Drawable drawable2 = textFieldStyle.background;
        drawable2.setRightWidth(drawable2.getRightWidth() + 16.0f);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14895b = label;
        label.setPosition(40.0f, 150.0f);
        group.addActor(label);
        TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform("", textFieldStyle);
        this.f14896c = textFieldXPlatform;
        textFieldXPlatform.setSize(720.0f, 64.0f);
        textFieldXPlatform.setPosition(40.0f, 50.0f);
        group.addActor(textFieldXPlatform);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.shared.v1
            @Override // java.lang.Runnable
            public final void run() {
                TextInputOverlay.this.m19875d();
            }
        });
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 26.0f, 18.0f, 48.0f, 48.0f);
        Color color2 = MaterialColor.RED.P800;
        Color color3 = MaterialColor.RED.P900;
        Color color4 = MaterialColor.RED.P700;
        Color color5 = Color.GRAY;
        complexButton.setIconLabelColors(color2, color3, color4, color5);
        complexButton.setSize(100.0f, 80.0f);
        complexButton.setPosition(750.0f, 146.0f);
        group.addActor(complexButton);
        ComplexButton complexButton2 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.shared.w1
            @Override // java.lang.Runnable
            public final void run() {
                TextInputOverlay.this.m19874e();
            }
        });
        complexButton2.setBackground(new QuadDrawable(new QuadActor(color, new float[]{2.0f, 3.0f, 0.0f, 77.0f, 120.0f, 80.0f, 118.0f, 0.0f})), 0.0f, 0.0f, 120.0f, 80.0f);
        complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-check"), 36.0f, 18.0f, 48.0f, 48.0f);
        complexButton2.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, color5);
        complexButton2.setSize(120.0f, 80.0f);
        complexButton2.setPosition(640.0f, -50.0f);
        group.addActor(complexButton2);
        addLayer.getTable().setVisible(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m19875d() {
        Input.TextInputListener textInputListener = this.f14897d;
        hide();
        if (textInputListener != null) {
            textInputListener.canceled();
            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m19874e() {
        Input.TextInputListener textInputListener = this.f14897d;
        hide();
        if (textInputListener != null) {
            textInputListener.input(this.f14896c.getText());
            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
        }
    }

    /* renamed from: g */
    public final void m19872g() {
        Game.f8589i.uiManager.darkOverlay.addCaller("TextInputOverlay", this.f14894a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.u1
            @Override // java.lang.Runnable
            public final void run() {
                TextInputOverlay.m19873f();
            }
        });
        this.f14894a.getTable().setVisible(true);
        Game.f8589i.uiManager.stage.setKeyboardFocus(this.f14896c);
    }

    public void hide() {
        this.f14894a.getTable().setVisible(false);
        Game.f8589i.uiManager.darkOverlay.removeCaller("TextInputOverlay");
        this.f14897d = null;
    }

    public void show(Input.TextInputListener textInputListener, String str, String str2, String str3) {
        this.f14897d = textInputListener;
        this.f14896c.setText(str2);
        this.f14896c.setMessageText(str3);
        this.f14895b.setText(str);
        m19872g();
    }

    public void postRender(float f) {
        if (isVisible()) {
            if (!Gdx.input.isKeyJustPressed(4) && !Gdx.input.isKeyJustPressed(111)) {
                if (Gdx.input.isKeyJustPressed(66) || Gdx.input.isKeyJustPressed(160)) {
                    Input.TextInputListener textInputListener = this.f14897d;
                    hide();
                    if (textInputListener != null) {
                        textInputListener.input(this.f14896c.getText());
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        return;
                    }
                    return;
                }
                return;
            }
            this.f14897d.canceled();
            hide();
            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
        }
    }
}

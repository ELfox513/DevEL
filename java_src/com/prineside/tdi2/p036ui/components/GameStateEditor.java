package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.screens.GameScreen;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.GameStateEditor */
/* loaded from: classes2.dex */
public class GameStateEditor implements Disposable {

    /* renamed from: p */
    public static final StringBuilder f13036p = new StringBuilder();

    /* renamed from: a */
    public final UiManager.UiLayer f13037a;

    /* renamed from: b */
    public Label f13038b;

    /* renamed from: d */
    public TextFieldXPlatform f13039d;

    /* renamed from: k */
    public GameSystemProvider f13040k;

    /* renamed from: e */
    public static /* synthetic */ void m20569e(GameSystemProvider gameSystemProvider) {
        gameSystemProvider.gameState.setGameSpeed(0.0f);
    }

    /* renamed from: d */
    public final GameScreen m20570d() {
        return (GameScreen) Game.f8589i.screenManager.getCurrentScreen();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13037a);
    }

    public GameStateEditor(final GameSystemProvider gameSystemProvider) {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 104, "GameStateEditor");
        this.f13037a = addLayer;
        this.f13040k = gameSystemProvider;
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).size(600.0f, 200.0f).padBottom(40.0f).bottom().expandY();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(0.0f, 0.0f, 0.0f, 0.56f);
        image.setSize(600.0f, 200.0f);
        group.addActor(image);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13038b = label;
        label.setPosition(20.0f, 160.0f);
        this.f13038b.setSize(100.0f, 20.0f);
        group.addActor(this.f13038b);
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-pause");
        Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.components.a
            @Override // java.lang.Runnable
            public final void run() {
                GameStateEditor.m20569e(GameSystemProvider.this);
            }
        };
        Color color = MaterialColor.LIGHT_BLUE.P500;
        Color color2 = MaterialColor.LIGHT_BLUE.P300;
        Color color3 = MaterialColor.LIGHT_BLUE.P700;
        PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnable, color, color2, color3);
        paddedImageButton.setSize(48.0f, 48.0f);
        paddedImageButton.setIconPosition(8.0f, 8.0f);
        paddedImageButton.setIconSize(32.0f, 32.0f);
        paddedImageButton.setPosition(20.0f, 100.0f);
        group.addActor(paddedImageButton);
        PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-right"), new Runnable() { // from class: com.prineside.tdi2.ui.components.b
            @Override // java.lang.Runnable
            public final void run() {
                GameStateEditor.this.m20568f(gameSystemProvider);
            }
        }, color, color2, color3);
        paddedImageButton2.setSize(48.0f, 48.0f);
        paddedImageButton2.setIconPosition(8.0f, 8.0f);
        paddedImageButton2.setIconSize(32.0f, 32.0f);
        paddedImageButton2.setPosition(84.0f, 100.0f);
        group.addActor(paddedImageButton2);
        PaddedImageButton paddedImageButton3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-double-triangle-right"), new Runnable() { // from class: com.prineside.tdi2.ui.components.c
            @Override // java.lang.Runnable
            public final void run() {
                GameStateEditor.this.m20567g(gameSystemProvider);
            }
        }, color, color2, color3);
        paddedImageButton3.setSize(48.0f, 48.0f);
        paddedImageButton3.setIconPosition(8.0f, 8.0f);
        paddedImageButton3.setIconSize(32.0f, 32.0f);
        paddedImageButton3.setPosition(148.0f, 100.0f);
        group.addActor(paddedImageButton3);
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(24, false), Color.WHITE, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable2 = textFieldStyle.background;
        drawable2.setLeftWidth(drawable2.getLeftWidth() + 6.0f);
        Drawable drawable3 = textFieldStyle.background;
        drawable3.setRightWidth(drawable3.getRightWidth() + 6.0f);
        TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform("10", textFieldStyle);
        this.f13039d = textFieldXPlatform;
        textFieldXPlatform.setSize(96.0f, 48.0f);
        this.f13039d.setPosition(212.0f, 100.0f);
        group.addActor(this.f13039d);
        addLayer.getTable().setVisible(false);
    }

    public void draw(float f) {
        if (Gdx.input.isKeyJustPressed(140)) {
            this.f13037a.getTable().setVisible(!this.f13037a.getTable().isVisible());
        }
        if (!this.f13037a.getTable().isVisible()) {
            return;
        }
        StringBuilder stringBuilder = f13036p;
        stringBuilder.setLength(0);
        stringBuilder.append("F: ").append(StringFormatter.commaSeparatedNumber(this.f13040k.gameState.updateNumber)).append("| S: ").append(StringFormatter.compactNumber(this.f13040k.gameState.getGameSpeed(), 2, true));
        this.f13038b.setText(stringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m20568f(GameSystemProvider gameSystemProvider) {
        GameScreen m20570d = m20570d();
        m20570d.updateSystems();
        m20570d.updateDraw(gameSystemProvider.gameValue.getTickRateDeltaTime(), gameSystemProvider.gameValue.getTickRateDeltaTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m20567g(GameSystemProvider gameSystemProvider) {
        int i;
        GameScreen m20570d = m20570d();
        try {
            i = Integer.parseInt(this.f13039d.getText());
        } catch (Exception unused) {
            i = 10;
        }
        for (int i2 = 0; i2 < i; i2++) {
            m20570d.updateSystems();
            m20570d.updateDraw(gameSystemProvider.gameValue.getTickRateDeltaTime(), gameSystemProvider.gameValue.getTickRateDeltaTime());
        }
    }
}

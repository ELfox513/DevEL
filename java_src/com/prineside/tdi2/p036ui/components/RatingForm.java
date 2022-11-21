package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextArea;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.UiUtils;
import java.util.HashMap;
/* renamed from: com.prineside.tdi2.ui.components.RatingForm */
/* loaded from: classes2.dex */
public class RatingForm {

    /* renamed from: a */
    public final UiManager.UiLayer f13513a;

    /* renamed from: b */
    public final UiManager.UiLayer f13514b;

    /* renamed from: c */
    public Group f13515c;

    /* renamed from: d */
    public Group f13516d;

    /* renamed from: e */
    public Group f13517e;

    /* renamed from: f */
    public Group f13518f;

    /* renamed from: g */
    public boolean f13519g;

    public void hide() {
        setVisible(false);
    }

    public void setVisible(boolean z) {
        if (z) {
            UiUtils.bouncyShowOverlay(this.f13513a.getTable(), this.f13514b.getTable(), this.f13515c);
        } else {
            UiUtils.bouncyHideOverlay(this.f13513a.getTable(), this.f13514b.getTable(), this.f13515c);
        }
        this.f13519g = z;
    }

    public void showFeedbackForm(final int i) {
        String str;
        if (Config.isHeadless()) {
            return;
        }
        if (i == 5) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.REVIEW_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("playerid", Game.f8589i.authManager.getPlayerId());
            if (Game.f8589i.authManager.isSignedIn()) {
                hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
            }
            hashMap.put("stars", "5");
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.ui.components.RatingForm.7
                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void cancelled() {
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void failed(Throwable th) {
                    Logger.error("RatingForm", "failed", th);
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                    Logger.log("RatingForm", "response: " + httpResponse.getResultAsString());
                }
            });
            if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                str = "App Store";
            } else {
                str = "Google Play";
            }
            Game.f8589i.uiManager.dialog.showConfirm(Game.f8589i.localeManager.i18n.format("rating_form_thanks_market_prompt", str), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.8
                @Override // java.lang.Runnable
                public void run() {
                    if (Gdx.app.getType() == Application.ApplicationType.Android) {
                        Gdx.f38302net.openURI(Config.PLAY_STORE_URI);
                    } else if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                        Gdx.f38302net.openURI(Config.APP_STORE_URI);
                    }
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showAlert(game.localeManager.i18n.get("thanks_for_feedback"));
                }
            });
            hide();
            Game.f8589i.ratingManager.madeReview(i, null);
            return;
        }
        this.f13516d.setVisible(false);
        this.f13517e.setVisible(false);
        this.f13518f.setVisible(true);
        this.f13518f.clearChildren();
        this.f13518f.addActor(new QuadActor(new Color(791621631), new float[]{15.0f, 0.0f, 0.0f, 570.0f, 720.0f, 558.0f, 705.0f, 7.0f}));
        Label label = new Label(Game.f8589i.localeManager.i18n.get("thanks_for_feedback"), Game.f8589i.assetManager.getLabelStyle(36));
        label.setPosition(55.0f, 485.0f);
        label.setSize(100.0f, 27.0f);
        label.setColor(MaterialColor.GREEN.P500);
        this.f13518f.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("rating_form_comment_prompt"), Game.f8589i.assetManager.getLabelStyle(30));
        label2.setPosition(55.0f, 396.0f);
        label2.setSize(600.0f, 58.0f);
        label2.setWrap(true);
        label2.setAlignment(10);
        this.f13518f.addActor(label2);
        Label label3 = new Label("[#AAAAAA]" + Game.f8589i.localeManager.i18n.get("if_problems_contact_us") + ": [][#03A9F4]" + Config.FEEDBACK_EMAIL + "[]", Game.f8589i.assetManager.getLabelStyle(24));
        label3.setPosition(55.0f, 310.0f);
        label3.setSize(600.0f, 42.0f);
        label3.setWrap(true);
        label3.setAlignment(10);
        this.f13518f.addActor(label3);
        label3.setTouchable(Touchable.enabled);
        label3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.RatingForm.9
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.f38302net.openURI("mailto:sup.prineside@gmail.com");
            }
        });
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24, false);
        Color color = Color.WHITE;
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(font, color, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
        Drawable drawable = textFieldStyle.background;
        drawable.setLeftWidth(drawable.getLeftWidth() + 10.0f);
        Drawable drawable2 = textFieldStyle.background;
        drawable2.setRightWidth(drawable2.getRightWidth() + 10.0f);
        Drawable drawable3 = textFieldStyle.background;
        drawable3.setTopHeight(drawable3.getTopHeight() + 7.0f);
        Drawable drawable4 = textFieldStyle.background;
        drawable4.setBottomHeight(drawable4.getBottomHeight() + 7.0f);
        textFieldStyle.cursor.setMinWidth(2.0f);
        final TextArea textArea = new TextArea("", textFieldStyle);
        textArea.setMessageText(Game.f8589i.localeManager.i18n.get("please_write_your_thoughts"));
        textArea.setPosition(55.0f, 148.0f);
        textArea.setSize(608.0f, 120.0f);
        this.f13518f.addActor(textArea);
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("close"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.10
            @Override // java.lang.Runnable
            public void run() {
                RatingForm.this.hide();
            }
        });
        complexButton.setSize(251.0f, 101.0f);
        complexButton.setPosition(0.0f, -11.0f);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 50.0f, 22.0f, 48.0f, 48.0f);
        complexButton.setLabel(115.0f, 0.0f, 100.0f, 96.0f, 8);
        complexButton.setBackground(new QuadDrawable(new QuadActor(color, new float[]{11.0f, 0.0f, 0.0f, 101.0f, 245.0f, 93.0f, 251.0f, 0.0f})), 0.0f, 0.0f, 251.0f, 101.0f);
        complexButton.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, color);
        this.f13518f.addActor(complexButton);
        ComplexButton complexButton2 = new ComplexButton(Game.f8589i.localeManager.i18n.get("market"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.11
            @Override // java.lang.Runnable
            public void run() {
                if (Gdx.app.getType() == Application.ApplicationType.Android) {
                    Gdx.f38302net.openURI(Config.PLAY_STORE_URI);
                } else if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                    Gdx.f38302net.openURI(Config.APP_STORE_URI);
                }
            }
        });
        complexButton2.setSize(218.0f, 96.0f);
        complexButton2.setPosition(251.0f, -11.0f);
        if (Gdx.app.getType() == Application.ApplicationType.Android) {
            complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-google-play"), 47.0f, 22.0f, 48.0f, 48.0f);
        } else if (Gdx.app.getType() == Application.ApplicationType.iOS) {
            complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-ios-app-store"), 47.0f, 22.0f, 48.0f, 48.0f);
        }
        complexButton2.setLabel(103.0f, 0.0f, 100.0f, 96.0f, 8);
        complexButton2.setBackground(new QuadDrawable(new QuadActor(color, new float[]{7.0f, 0.0f, 0.0f, 93.0f, 218.0f, 96.0f, 212.0f, 0.0f})), 0.0f, 0.0f, 218.0f, 96.0f);
        complexButton2.setBackgroundColors(MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P900, MaterialColor.LIGHT_BLUE.P700, color);
        this.f13518f.addActor(complexButton2);
        if (i < 4) {
            complexButton2.setVisible(false);
        }
        ComplexButton complexButton3 = new ComplexButton(Game.f8589i.localeManager.i18n.get("send"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.12
            @Override // java.lang.Runnable
            public void run() {
                Net.HttpRequest httpRequest2 = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest2.setUrl(Config.REVIEW_URL);
                HashMap hashMap2 = new HashMap();
                hashMap2.put("playerid", Game.f8589i.authManager.getPlayerId());
                if (Game.f8589i.authManager.isSignedIn()) {
                    hashMap2.put("sessionid", Game.f8589i.authManager.getSessionId());
                }
                hashMap2.put("stars", String.valueOf(i));
                if (textArea.getText().length() > 0) {
                    hashMap2.put("message", textArea.getText());
                }
                httpRequest2.setContent(HttpParametersUtils.convertHttpParameters(hashMap2));
                Gdx.f38302net.sendHttpRequest(httpRequest2, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.ui.components.RatingForm.12.1
                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void cancelled() {
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void failed(Throwable th) {
                        Logger.error("RatingForm", "failed", th);
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void handleHttpResponse(Net.HttpResponse httpResponse) {
                        Logger.log("RatingForm", "response: " + httpResponse.getResultAsString());
                    }
                });
                RatingForm.this.hide();
                Game game = Game.f8589i;
                game.uiManager.dialog.showAlert(game.localeManager.i18n.get("thanks_for_feedback"));
                Game.f8589i.ratingManager.madeReview(i, textArea.getText());
            }
        });
        complexButton3.setSize(251.0f, 101.0f);
        complexButton3.setPosition(469.0f, -11.0f);
        complexButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-letter"), 50.0f, 22.0f, 48.0f, 48.0f);
        complexButton3.setLabel(115.0f, 0.0f, 100.0f, 96.0f, 8);
        complexButton3.setBackground(new QuadDrawable(new QuadActor(color, new float[]{0.0f, 0.0f, 7.0f, 96.0f, 251.0f, 101.0f, 240.0f, 0.0f})), 0.0f, 0.0f, 251.0f, 101.0f);
        complexButton3.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, color);
        this.f13518f.addActor(complexButton3);
        setVisible(true);
    }

    public void showRatePrompt() {
        this.f13516d.setVisible(true);
        this.f13517e.setVisible(false);
        this.f13518f.setVisible(false);
        this.f13516d.clearChildren();
        this.f13516d.addActor(new QuadActor(new Color(791621631), new float[]{15.0f, 0.0f, 0.0f, 300.0f, 720.0f, 288.0f, 705.0f, 7.0f}));
        Label label = new Label(Game.f8589i.localeManager.i18n.get("rating_form_prompt"), Game.f8589i.assetManager.getLabelStyle(36));
        label.setAlignment(1);
        label.setSize(640.0f, 30.0f);
        label.setWrap(true);
        label.setPosition(40.0f, 175.0f);
        this.f13516d.addActor(label);
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("never"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.1
            @Override // java.lang.Runnable
            public void run() {
                RatingForm.this.hide();
                Game.f8589i.ratingManager.promptAnsweredNever();
            }
        });
        complexButton.setSize(251.0f, 101.0f);
        complexButton.setPosition(0.0f, -11.0f);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 50.0f, 22.0f, 48.0f, 48.0f);
        complexButton.setLabel(115.0f, 0.0f, 100.0f, 96.0f, 8);
        Color color = Color.WHITE;
        complexButton.setBackground(new QuadDrawable(new QuadActor(color, new float[]{11.0f, 0.0f, 0.0f, 101.0f, 245.0f, 93.0f, 251.0f, 0.0f})), 0.0f, 0.0f, 251.0f, 101.0f);
        complexButton.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, color);
        this.f13516d.addActor(complexButton);
        ComplexButton complexButton2 = new ComplexButton(Game.f8589i.localeManager.i18n.get("later"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.2
            @Override // java.lang.Runnable
            public void run() {
                RatingForm.this.hide();
                Game.f8589i.ratingManager.promptAnsweredLater();
            }
        });
        complexButton2.setSize(218.0f, 96.0f);
        complexButton2.setPosition(251.0f, -11.0f);
        complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-clock"), 47.0f, 22.0f, 48.0f, 48.0f);
        complexButton2.setLabel(103.0f, 0.0f, 100.0f, 96.0f, 8);
        complexButton2.setBackground(new QuadDrawable(new QuadActor(color, new float[]{7.0f, 0.0f, 0.0f, 93.0f, 218.0f, 96.0f, 212.0f, 0.0f})), 0.0f, 0.0f, 218.0f, 96.0f);
        complexButton2.setBackgroundColors(MaterialColor.AMBER.P800, MaterialColor.AMBER.P900, MaterialColor.AMBER.P700, color);
        this.f13516d.addActor(complexButton2);
        ComplexButton complexButton3 = new ComplexButton(Game.f8589i.localeManager.i18n.get("rate"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.3
            @Override // java.lang.Runnable
            public void run() {
                RatingForm.this.showStarsForm();
            }
        });
        complexButton3.setSize(251.0f, 101.0f);
        complexButton3.setPosition(469.0f, -11.0f);
        complexButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-star"), 50.0f, 22.0f, 48.0f, 48.0f);
        complexButton3.setLabel(115.0f, 0.0f, 100.0f, 96.0f, 8);
        complexButton3.setBackground(new QuadDrawable(new QuadActor(color, new float[]{0.0f, 0.0f, 7.0f, 96.0f, 251.0f, 101.0f, 240.0f, 0.0f})), 0.0f, 0.0f, 251.0f, 101.0f);
        complexButton3.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, color);
        this.f13516d.addActor(complexButton3);
        setVisible(true);
    }

    public void showStarsForm() {
        this.f13516d.setVisible(false);
        this.f13517e.setVisible(true);
        this.f13518f.setVisible(false);
        this.f13517e.clearChildren();
        this.f13517e.addActor(new QuadActor(new Color(791621631), new float[]{15.0f, 0.0f, 0.0f, 300.0f, 720.0f, 288.0f, 705.0f, 7.0f}));
        final int[] iArr = {5};
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("cancel"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.4
            @Override // java.lang.Runnable
            public void run() {
                RatingForm.this.hide();
            }
        });
        complexButton.setSize(251.0f, 101.0f);
        complexButton.setPosition(0.0f, -11.0f);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 50.0f, 22.0f, 48.0f, 48.0f);
        complexButton.setLabel(115.0f, 0.0f, 100.0f, 96.0f, 8);
        Color color = Color.WHITE;
        complexButton.setBackground(new QuadDrawable(new QuadActor(color, new float[]{11.0f, 0.0f, 0.0f, 101.0f, 245.0f, 93.0f, 251.0f, 0.0f})), 0.0f, 0.0f, 251.0f, 101.0f);
        complexButton.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, color);
        this.f13517e.addActor(complexButton);
        final ComplexButton complexButton2 = new ComplexButton("5", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.RatingForm.5
            @Override // java.lang.Runnable
            public void run() {
                RatingForm.this.showFeedbackForm(iArr[0]);
            }
        });
        complexButton2.setSize(251.0f, 101.0f);
        complexButton2.setPosition(469.0f, -11.0f);
        complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-star"), 82.0f, 22.0f, 48.0f, 48.0f);
        complexButton2.setLabel(140.0f, 0.0f, 100.0f, 96.0f, 8);
        complexButton2.setBackground(new QuadDrawable(new QuadActor(color, new float[]{0.0f, 0.0f, 7.0f, 96.0f, 251.0f, 101.0f, 240.0f, 0.0f})), 0.0f, 0.0f, 251.0f, 101.0f);
        complexButton2.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, MaterialColor.GREY.P800);
        complexButton2.setEnabled(false);
        this.f13517e.addActor(complexButton2);
        final Image[] imageArr = new Image[5];
        for (int i = 0; i < 5; i++) {
            Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
            image.setPosition((i * 96.0f) + 128.0f, 152.0f);
            image.setSize(80.0f, 80.0f);
            image.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            imageArr[i] = image;
            this.f13517e.addActor(image);
            image.setTouchable(Touchable.enabled);
            final int i2 = i;
            image.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.RatingForm.6
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Color color2;
                    iArr[0] = i2 + 1;
                    for (int i3 = 0; i3 < 5; i3++) {
                        imageArr[i3].setColor(1.0f, 1.0f, 1.0f, 0.28f);
                    }
                    int i4 = iArr[0];
                    if (i4 < 3) {
                        color2 = MaterialColor.RED.P500;
                    } else if (i4 < 5) {
                        color2 = MaterialColor.AMBER.P500;
                    } else {
                        color2 = MaterialColor.GREEN.P500;
                    }
                    int i5 = 0;
                    while (true) {
                        int i6 = iArr[0];
                        if (i5 < i6) {
                            imageArr[i5].setColor(color2);
                            i5++;
                        } else {
                            complexButton2.setText(String.valueOf(i6));
                            complexButton2.setEnabled(true);
                            return;
                        }
                    }
                }
            });
        }
        setVisible(true);
    }

    public RatingForm() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SHARED_COMPONENTS;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 110, "RatingForm tint");
        this.f13513a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 111, "RatingForm main");
        this.f13514b = addLayer2;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(Config.BACKGROUND_COLOR);
        image.getColor().f3889a = 0.78f;
        addLayer.getTable().add((Table) image).expand().fill();
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new InputVoid());
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(360.0f, 285.0f);
        addLayer2.getTable().add((Table) group).size(720.0f, 570.0f);
        Group group2 = new Group();
        this.f13515c = group2;
        group2.setTransform(false);
        this.f13515c.setOrigin(360.0f, 285.0f);
        this.f13515c.setSize(720.0f, 570.0f);
        group.addActor(this.f13515c);
        Group group3 = new Group();
        this.f13516d = group3;
        group3.setTransform(false);
        this.f13516d.setSize(720.0f, 300.0f);
        this.f13516d.setPosition(0.0f, 130.0f);
        this.f13515c.addActor(this.f13516d);
        Group group4 = new Group();
        this.f13517e = group4;
        group4.setTransform(false);
        this.f13517e.setSize(720.0f, 300.0f);
        this.f13517e.setPosition(0.0f, 130.0f);
        this.f13515c.addActor(this.f13517e);
        Group group5 = new Group();
        this.f13518f = group5;
        group5.setTransform(false);
        this.f13518f.setSize(720.0f, 570.0f);
        this.f13515c.addActor(this.f13518f);
        addLayer.getTable().addAction(Actions.alpha(0.0f));
        addLayer.getTable().setVisible(false);
        addLayer2.getTable().setVisible(false);
        this.f13519g = false;
    }
}

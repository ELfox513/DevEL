package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.WebView;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.WebBrowser */
/* loaded from: classes2.dex */
public class WebBrowser implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f14921a;

    /* renamed from: b */
    public Group f14922b;

    /* renamed from: d */
    public ScrollPane f14923d;

    /* renamed from: k */
    public Table f14924k;

    /* renamed from: p */
    public Image f14925p;

    /* renamed from: q */
    public Group f14926q;

    /* renamed from: r */
    public Group f14927r;

    /* renamed from: s */
    public WebView f14928s;

    /* renamed from: t */
    public boolean f14929t;
    public WebView webView;

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f14921a);
    }

    public void hide() {
        setVisible(false);
        m19861g();
    }

    public void setVisible(boolean z) {
        if (z) {
            Game.f8589i.uiManager.darkOverlay.addCaller("WebBrowser", this.f14921a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.b2
                @Override // java.lang.Runnable
                public final void run() {
                    WebBrowser.this.hide();
                }
            });
            UiUtils.bouncyShowOverlay(null, this.f14921a.getTable(), this.f14922b);
        } else {
            Game.f8589i.uiManager.darkOverlay.removeCaller("WebBrowser");
            UiUtils.bouncyHideOverlay(null, this.f14921a.getTable(), this.f14922b);
        }
        this.f14929t = z;
    }

    /* renamed from: g */
    public final void m19861g() {
        Logger.log("WebBrowser", "hideModal");
        this.f14926q.clearActions();
        this.f14926q.addAction(Actions.sequence(Actions.fadeOut(0.2f), Actions.hide()));
    }

    public WebBrowser() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 149, "WebBrowser main");
        this.f14921a = addLayer;
        final int scaledViewportHeight = (Game.f8589i.settingsManager.getScaledViewportHeight() - 1080) + 960;
        Group group = new Group();
        group.setTransform(false);
        float f = scaledViewportHeight;
        float f2 = 0.5f * f;
        group.setOrigin(520.0f, f2);
        addLayer.getTable().add((Table) group).size(1040.0f, f);
        Group group2 = new Group();
        this.f14922b = group2;
        group2.setTransform(false);
        this.f14922b.setOrigin(520.0f, f2);
        this.f14922b.setSize(1040.0f, f);
        group.addActor(this.f14922b);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(new Color(555819519));
        image.setSize(1040.0f, f);
        this.f14922b.addActor(image);
        QuadActor quadActor = new QuadActor(new Color(555819519), new float[]{0.0f, 0.0f, 0.0f, 12.0f, 1040.0f, 12.0f, 1040.0f, 12.0f});
        quadActor.setPosition(0.0f, -12.0f);
        this.f14922b.addActor(quadActor);
        Table table = new Table();
        this.f14924k = table;
        Touchable touchable = Touchable.childrenOnly;
        table.setTouchable(touchable);
        ScrollPane scrollPane = new ScrollPane(this.f14924k);
        this.f14923d = scrollPane;
        scrollPane.setTransform(true);
        this.f14923d.setSize(1040.0f, f);
        ScrollPane scrollPane2 = this.f14923d;
        Touchable touchable2 = Touchable.enabled;
        scrollPane2.setTouchable(touchable2);
        this.f14922b.addActor(this.f14923d);
        Group group3 = new Group();
        this.f14926q = group3;
        group3.setTransform(false);
        this.f14926q.setSize(1040.0f, f);
        this.f14926q.setVisible(false);
        this.f14922b.addActor(this.f14926q);
        Group group4 = new Group();
        group4.setTransform(false);
        group4.setSize(1040.0f, f);
        group4.setTouchable(touchable2);
        group4.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.WebBrowser.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f3, float f4) {
                WebBrowser.this.m19861g();
            }
        });
        this.f14926q.addActor(group4);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setColor(new Color(64));
        image2.setSize(1040.0f, f);
        group4.addActor(image2);
        QuadActor quadActor2 = new QuadActor(new Color(64), new float[]{0.0f, 0.0f, 0.0f, 12.0f, 1040.0f, 12.0f, 1040.0f, 12.0f});
        quadActor2.setPosition(0.0f, -12.0f);
        group4.addActor(quadActor2);
        Group group5 = new Group();
        this.f14927r = group5;
        group5.setTransform(false);
        this.f14927r.setSize(1040.0f, f);
        this.f14927r.setTouchable(touchable);
        this.f14926q.addActor(this.f14927r);
        WebView webView = new WebView();
        this.f14928s = webView;
        webView.addListener(new WebView.WebViewListener() { // from class: com.prineside.tdi2.ui.shared.WebBrowser.2
            @Override // com.prineside.tdi2.p036ui.actors.WebView.WebViewListener
            public void modalLoadRequested(String str) {
                WebBrowser.this.f14928s.loadUrl(Net.HttpMethods.GET, str, null);
            }

            @Override // com.prineside.tdi2.p036ui.actors.WebView.WebViewListener
            public void urlLoadFinish(boolean z, String str, boolean z2) {
                Logger.log("WebBrowser", "modal urlLoadFinish " + z + " " + str);
                WebBrowser.this.f14927r.clear();
                if (z) {
                    if (WebBrowser.this.f14928s.pageWidth > 0 && WebBrowser.this.f14928s.pageHeight > 0) {
                        Group group6 = new Group();
                        group6.setTransform(false);
                        group6.setSize(WebBrowser.this.f14928s.pageWidth + 80.0f, WebBrowser.this.f14928s.pageHeight + 80.0f);
                        group6.setPosition(520.0f - ((WebBrowser.this.f14928s.pageWidth + 80.0f) * 0.5f), (scaledViewportHeight * 0.5f) - ((WebBrowser.this.f14928s.pageHeight + 80.0f) * 0.5f));
                        WebBrowser.this.f14927r.addActor(group6);
                        Group group7 = new Group();
                        group7.setTransform(false);
                        group7.setOrigin((WebBrowser.this.f14928s.pageWidth + 80.0f) * 0.5f, (WebBrowser.this.f14928s.pageHeight + 80.0f) * 0.5f);
                        group7.setSize(WebBrowser.this.f14928s.pageWidth + 80.0f, WebBrowser.this.f14928s.pageHeight + 80.0f);
                        group6.addActor(group7);
                        UiUtils.bouncyShowOverlay(null, null, group7);
                        QuadActor quadActor3 = new QuadActor(new Color(48), new float[]{0.0f, 0.0f, 6.0f, WebBrowser.this.f14928s.pageHeight + 80.0f, WebBrowser.this.f14928s.pageWidth + 80.0f, (WebBrowser.this.f14928s.pageHeight + 80.0f) - 6.0f, (WebBrowser.this.f14928s.pageWidth + 80.0f) - 6.0f, 6.0f});
                        quadActor3.setPosition(12.0f, -8.0f);
                        group7.addActor(quadActor3);
                        group7.addActor(new QuadActor(new Color(606348543), new float[]{0.0f, 0.0f, 6.0f, WebBrowser.this.f14928s.pageHeight + 80.0f, WebBrowser.this.f14928s.pageWidth + 80.0f, (WebBrowser.this.f14928s.pageHeight + 80.0f) - 6.0f, (WebBrowser.this.f14928s.pageWidth + 80.0f) - 6.0f, 6.0f}));
                        WebBrowser.this.f14928s.setSize(WebBrowser.this.f14928s.pageWidth, WebBrowser.this.f14928s.pageHeight);
                        WebBrowser.this.f14928s.setPosition(40.0f, 40.0f);
                        group7.addActor(WebBrowser.this.f14928s);
                        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.WebBrowser.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                WebBrowser.this.m19861g();
                            }
                        }, MaterialColor.ORANGE.P500, MaterialColor.ORANGE.P400, MaterialColor.ORANGE.P600);
                        paddedImageButton.setIconSize(48.0f, 48.0f);
                        paddedImageButton.setIconPosition(16.0f, 16.0f);
                        paddedImageButton.setSize(64.0f, 64.0f);
                        paddedImageButton.setPosition(WebBrowser.this.f14928s.pageWidth + 40, WebBrowser.this.f14928s.pageHeight + 40);
                        group7.addActor(paddedImageButton);
                        return;
                    }
                    Logger.error("WebBrowser", "modal size is unknown: " + WebBrowser.this.f14928s.pageWidth + " " + WebBrowser.this.f14928s.pageHeight);
                    WebBrowser.this.m19861g();
                    return;
                }
                Logger.error("WebBrowser", "modal loading is not successful");
                WebBrowser.this.m19861g();
            }

            @Override // com.prineside.tdi2.p036ui.actors.WebView.WebViewListener
            public void urlLoadStart(Net.HttpRequest httpRequest) {
                Logger.log("WebBrowser", "modal urlLoadStart");
                WebBrowser.this.f14926q.clearActions();
                WebBrowser.this.f14926q.addAction(Actions.sequence(Actions.show(), Actions.fadeIn(0.2f)));
                WebBrowser.this.f14927r.clear();
                Image image3 = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
                image3.setColor(1.0f, 1.0f, 1.0f, 0.0f);
                image3.setTouchable(Touchable.disabled);
                image3.setOrigin(24.0f, 24.0f);
                image3.setPosition(496.0f, (scaledViewportHeight * 0.5f) - 24.0f);
                image3.setSize(48.0f, 48.0f);
                WebBrowser.this.f14927r.addActor(image3);
            }
        });
        this.webView = new WebView();
        this.f14924k.add().width(1.0f).height(32.0f).row();
        this.f14924k.add().width(40.0f);
        this.f14924k.add(this.webView).width(960.0f).expandY().fillY();
        this.f14924k.add().width(40.0f).row();
        this.f14924k.add().width(1.0f).height(32.0f).row();
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        this.f14925p = image3;
        image3.setColor(1.0f, 1.0f, 1.0f, 0.0f);
        this.f14925p.setTouchable(Touchable.disabled);
        this.f14925p.setOrigin(24.0f, 24.0f);
        this.f14925p.setPosition(496.0f, f2 - 24.0f);
        this.f14925p.setSize(48.0f, 48.0f);
        this.f14922b.addActor(this.f14925p);
        this.webView.addListener(new WebView.WebViewListener() { // from class: com.prineside.tdi2.ui.shared.WebBrowser.3
            @Override // com.prineside.tdi2.p036ui.actors.WebView.WebViewListener
            public void modalLoadRequested(String str) {
                WebBrowser.this.f14928s.loadUrl(Net.HttpMethods.GET, str, null);
            }

            @Override // com.prineside.tdi2.p036ui.actors.WebView.WebViewListener
            public void urlLoadFinish(boolean z, String str, boolean z2) {
                WebBrowser.this.f14923d.setColor(1.0f, 1.0f, 1.0f, 1.0f);
                WebBrowser.this.f14923d.setTouchable(Touchable.enabled);
                if (z) {
                    WebBrowser.this.f14925p.clearActions();
                    WebBrowser.this.f14925p.addAction(Actions.fadeOut(0.2f));
                    return;
                }
                WebBrowser.this.f14925p.setDrawable(Game.f8589i.assetManager.getDrawable("icon-times"));
                WebBrowser.this.f14925p.clearActions();
                WebBrowser.this.f14925p.addAction(Actions.sequence(Actions.rotateTo(0.0f), Actions.fadeIn(0.2f), Actions.delay(0.5f), Actions.fadeOut(0.2f)));
            }

            @Override // com.prineside.tdi2.p036ui.actors.WebView.WebViewListener
            public void urlLoadStart(Net.HttpRequest httpRequest) {
                WebBrowser.this.f14923d.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                WebBrowser.this.f14923d.setTouchable(Touchable.disabled);
                WebBrowser.this.f14925p.setDrawable(Game.f8589i.assetManager.getDrawable("loading-icon"));
                WebBrowser.this.f14925p.clearActions();
                WebBrowser.this.f14925p.addAction(Actions.sequence(Actions.parallel(Actions.fadeIn(0.2f), Actions.forever(Actions.rotateBy(90.0f, 0.5f)))));
            }
        });
        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.WebBrowser.4
            @Override // java.lang.Runnable
            public void run() {
                WebBrowser.this.setVisible(false);
            }
        }, MaterialColor.ORANGE.P500, MaterialColor.ORANGE.P400, MaterialColor.ORANGE.P600);
        paddedImageButton.setIconSize(48.0f, 48.0f);
        paddedImageButton.setIconPosition(16.0f, 16.0f);
        paddedImageButton.setSize(64.0f, 64.0f);
        paddedImageButton.setPosition(1008.0f, f - 32.0f);
        paddedImageButton.setName("web_browser_close_button");
        this.f14922b.addActor(paddedImageButton);
        addLayer.getTable().setVisible(false);
    }
}

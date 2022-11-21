package com.prineside.tdi2.p036ui.shared;

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
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.JsonReader;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.ibxm.IBXM;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.managers.BasicLevelManager;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.managers.music.LiveMusicManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.HorizontalSlider;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.shared.MusicListOverlay;
import com.prineside.tdi2.tiles.XmMusicTrackTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.UiUtils;
import java.util.HashMap;
/* renamed from: com.prineside.tdi2.ui.shared.MusicListOverlay */
/* loaded from: classes2.dex */
public class MusicListOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14763a;

    /* renamed from: b */
    public final Group f14764b;

    /* renamed from: c */
    public final ScrollPane f14765c;

    /* renamed from: d */
    public final Table f14766d;

    /* renamed from: e */
    public final Label f14767e;

    /* renamed from: f */
    public final PaddedImageButton f14768f;

    /* renamed from: g */
    public final Table f14769g;

    /* renamed from: h */
    public final Image f14770h;

    /* renamed from: i */
    public final HorizontalSlider f14771i;

    /* renamed from: j */
    public final LabelToggleButton f14772j;

    /* renamed from: k */
    public int f14773k;

    /* renamed from: l */
    public int f14774l;

    /* renamed from: m */
    public int f14775m;

    /* renamed from: n */
    public int f14776n;

    /* renamed from: o */
    public float f14777o;

    /* renamed from: p */
    public int f14778p;

    /* renamed from: q */
    public byte f14779q;

    /* renamed from: r */
    public Array<MusicItem> f14780r;

    /* renamed from: s */
    public boolean f14781s;

    /* renamed from: t */
    public boolean f14782t;

    /* renamed from: com.prineside.tdi2.ui.shared.MusicListOverlay$1 */
    /* loaded from: classes2.dex */
    public class RunnableC29081 implements Runnable {
        public RunnableC29081() {
            MusicListOverlay.this = r1;
        }

        /* renamed from: com.prineside.tdi2.ui.shared.MusicListOverlay$1$1 */
        /* loaded from: classes2.dex */
        public class C29091 implements Net.HttpResponseListener {

            /* renamed from: a */
            public final /* synthetic */ long f14784a;

            /* renamed from: b */
            public final /* synthetic */ String f14785b;

            /* renamed from: c */
            public final /* synthetic */ String f14786c;

            public C29091(long j, String str, String str2) {
                RunnableC29081.this = r1;
                this.f14784a = j;
                this.f14785b = str;
                this.f14786c = str2;
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("MusicListOverlay", "Failed", th);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                if (new JsonReader().parse(httpResponse.getResultAsString()).has("infoRequired")) {
                    Logger.log("MusicListOverlay", "server asks for music " + this.f14784a);
                    if (MusicListOverlay.this.f14781s) {
                        Logger.log("MusicListOverlay", "already sending music, abort");
                    } else {
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.shared.MusicListOverlay.1.1.1
                            {
                                C29091.this = this;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                if (Game.f8589i.authManager.isSignedIn() && C29091.this.f14785b != null) {
                                    Logger.log("MusicListOverlay", "sending music to server");
                                    MusicListOverlay.this.f14781s = true;
                                    Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                                    httpRequest.setUrl(Config.SUBMIT_MUSIC_URL);
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("hash", C29091.this.f14784a + "");
                                    hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
                                    hashMap.put("file", C29091.this.f14785b);
                                    hashMap.put("title", C29091.this.f14786c);
                                    httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                                    Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.ui.shared.MusicListOverlay.1.1.1.1
                                        {
                                            RunnableC29101.this = this;
                                        }

                                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                                        public void cancelled() {
                                            MusicListOverlay.this.f14781s = false;
                                        }

                                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                                        public void failed(Throwable th) {
                                            MusicListOverlay.this.f14781s = false;
                                        }

                                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                                        public void handleHttpResponse(Net.HttpResponse httpResponse2) {
                                            MusicListOverlay.this.f14781s = false;
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            MusicItem m19933m = MusicListOverlay.this.m19933m();
            if (m19933m != null) {
                boolean z = !Game.f8589i.musicManager.isMusicThumbsUp(m19933m.hash);
                Game.f8589i.musicManager.voteThumbsUp(m19933m.hash, z);
                MusicListOverlay.this.m19926t();
                m19933m.updateUi();
                try {
                    Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                    httpRequest.setUrl(Config.VOTE_MUSIC_URL);
                    HashMap hashMap = new HashMap();
                    long j = m19933m.hash & 4294967295L;
                    hashMap.put("hash", j + "");
                    if (z) {
                        str = "up";
                    } else {
                        str = "down";
                    }
                    hashMap.put("vote", str);
                    hashMap.put("playerid", Game.f8589i.authManager.getPlayerId());
                    if (Game.f8589i.authManager.isSignedIn()) {
                        hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
                    }
                    httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                    Gdx.f38302net.sendHttpRequest(httpRequest, new C29091(j, m19933m.getBase64(), m19933m.name));
                } catch (Exception unused) {
                }
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.MusicListOverlay$MusicItem */
    /* loaded from: classes2.dex */
    public class MusicItem {
        public Group container;
        public int hash;
        public PaddedImageButton lessRepeatsButton;
        public PaddedImageButton menuThemeButton;
        public PaddedImageButton moreRepeatsButton;
        public String name;
        public Label nameLabel;
        public ComplexButton playButton;
        public Group repeatsGroupScrollDependable;
        public Label repeatsLabel;
        public MusicManager.MusicSource source;
        public Image thumbsUpIcon;

        public MusicItem() {
            MusicListOverlay.this = r1;
        }

        public String getBase64() {
            return this.source.getBase64();
        }

        public /* synthetic */ MusicItem(MusicListOverlay musicListOverlay, RunnableC29081 runnableC29081) {
            this();
        }

        /* renamed from: c */
        public /* synthetic */ void m19922c() {
            Array<MusicManager.MusicSource> menuThemeSources = Game.f8589i.musicManager.getMenuThemeSources();
            for (int i = 0; i < menuThemeSources.size; i++) {
                if (menuThemeSources.items[i].sameAs(this.source)) {
                    MusicManager.MusicSource[] musicSourceArr = menuThemeSources.items;
                    if (musicSourceArr[i].repeats > 1) {
                        if (musicSourceArr[i].repeats > 4) {
                            musicSourceArr[i].repeats = 4;
                        } else if (musicSourceArr[i].repeats > 2) {
                            musicSourceArr[i].repeats = 2;
                        } else {
                            musicSourceArr[i].repeats = 1;
                        }
                        Game.f8589i.musicManager.requireSave();
                        updateUi();
                        return;
                    }
                    return;
                }
            }
        }

        /* renamed from: d */
        public /* synthetic */ void m19921d() {
            Array<MusicManager.MusicSource> menuThemeSources = Game.f8589i.musicManager.getMenuThemeSources();
            for (int i = 0; i < menuThemeSources.size; i++) {
                if (menuThemeSources.items[i].sameAs(this.source)) {
                    MusicManager.MusicSource[] musicSourceArr = menuThemeSources.items;
                    if (musicSourceArr[i].repeats < 8) {
                        if (musicSourceArr[i].repeats < 2) {
                            musicSourceArr[i].repeats = 2;
                        } else if (musicSourceArr[i].repeats < 4) {
                            musicSourceArr[i].repeats = 4;
                        } else {
                            musicSourceArr[i].repeats = 8;
                        }
                        Game.f8589i.musicManager.requireSave();
                        updateUi();
                        return;
                    }
                    return;
                }
            }
        }

        public String getLevelName() {
            MusicManager.MusicSource musicSource = this.source;
            MusicManager.MusicSourceType musicSourceType = musicSource.type;
            if (musicSourceType == MusicManager.MusicSourceType.BASIC_LEVEL) {
                return musicSource.f9921id;
            }
            if (musicSourceType == MusicManager.MusicSourceType.USER_MAP) {
                return Game.f8589i.userMapManager.getUserMap(musicSource.f9921id).name;
            }
            return "";
        }

        public Module getModule() {
            Module module = this.source.getModule();
            if (module == null) {
                return Game.f8589i.assetManager.getMenuXmSoundTrack();
            }
            return module;
        }

        public boolean isAvailable() {
            MusicManager.MusicSource musicSource = this.source;
            if (musicSource.type == MusicManager.MusicSourceType.BASIC_LEVEL) {
                BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
                return basicLevelManager.isOpened(basicLevelManager.getLevel(musicSource.f9921id));
            }
            return true;
        }

        public void play() {
            try {
                Game.f8589i.musicManager.playMusic(getModule(), 1.0f);
            } catch (Exception e) {
                Logger.error("MusicListOverlay", "failed to play " + this.source, e);
            }
        }

        public void toggleAsMenuTheme() {
            if (Game.f8589i.musicManager.isMenuMusicSourceEnabled(this.source)) {
                Game.f8589i.musicManager.removeMenuMusicSource(this.source);
            } else {
                Game.f8589i.musicManager.addMenuMusicSource(this.source);
            }
            Game.f8589i.musicManager.requireSave();
        }

        public void updateUi() {
            boolean z;
            boolean isAvailable = isAvailable();
            boolean z2 = false;
            if (this.thumbsUpIcon == null) {
                Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-thumbs-up"));
                this.thumbsUpIcon = image;
                image.setColor(MaterialColor.LIGHT_GREEN.P500);
                this.thumbsUpIcon.setSize(32.0f, 32.0f);
                this.thumbsUpIcon.setPosition(417.0f, 12.0f);
                this.container.addActor(this.thumbsUpIcon);
                Image image2 = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
                image2.setSize(32.0f, 32.0f);
                image2.setPosition(417.0f, 12.0f);
                image2.setColor(new Color(623191551));
                this.container.addActor(image2);
                Label label = new Label(getLevelName(), Game.f8589i.assetManager.getLabelStyle(21));
                label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                label.setSize(100.0f, 56.0f);
                label.setAlignment(16);
                label.setPosition(320.0f, 0.0f);
                this.container.addActor(label);
                Label label2 = new Label(this.name, Game.f8589i.assetManager.getLabelStyle(24));
                this.nameLabel = label2;
                label2.setSize(100.0f, 56.0f);
                this.nameLabel.setPosition(40.0f, 0.0f);
                this.container.addActor(this.nameLabel);
                TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("settings-toggle-on");
                Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.shared.MusicListOverlay.MusicItem.1
                    {
                        MusicItem.this = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        MusicItem.this.toggleAsMenuTheme();
                        MusicListOverlay.this.m19928r();
                    }
                };
                Color color = Color.WHITE;
                PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnable, color, color, color);
                this.menuThemeButton = paddedImageButton;
                paddedImageButton.setSize(64.0f, 52.0f);
                this.menuThemeButton.setPosition(460.0f, 0.0f);
                this.menuThemeButton.setIconSize(64.0f, 32.0f);
                this.menuThemeButton.setIconPosition(0.0f, 10.0f);
                this.container.addActor(this.menuThemeButton);
                ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.MusicListOverlay.MusicItem.2
                    {
                        MusicItem.this = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        MusicItem.this.play();
                        MusicItem musicItem = MusicItem.this;
                        MusicListOverlay.this.f14776n = musicItem.hash;
                        MusicListOverlay.this.m19928r();
                        MusicListOverlay.this.m19926t();
                    }
                });
                this.playButton = complexButton;
                complexButton.setBackground(new QuadDrawable(new QuadActor(color, new float[]{0.0f, 0.0f, 8.0f, 56.0f, 100.0f, 56.0f, 100.0f, 0.0f})), 0.0f, 0.0f, 100.0f, 56.0f);
                this.playButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-triangle-right"), 36.0f, 12.0f, 32.0f, 32.0f);
                this.playButton.setPosition(540.0f, 0.0f);
                this.container.addActor(this.playButton);
                Group group = new Group();
                this.repeatsGroupScrollDependable = group;
                group.setTransform(false);
                this.repeatsGroupScrollDependable.setSize(120.0f, 52.0f);
                this.repeatsGroupScrollDependable.setPosition(640.0f, 0.0f);
                this.container.addActor(this.repeatsGroupScrollDependable);
                Label label3 = new Label("x1", Game.f8589i.assetManager.getLabelStyle(24));
                this.repeatsLabel = label3;
                label3.setSize(120.0f, 52.0f);
                this.repeatsLabel.setAlignment(1);
                this.repeatsLabel.setPosition(0.0f, 0.0f);
                this.repeatsGroupScrollDependable.addActor(this.repeatsLabel);
                this.repeatsGroupScrollDependable.setVisible(false);
                TextureRegionDrawable drawable2 = Game.f8589i.assetManager.getDrawable("icon-triangle-bottom");
                Runnable runnable2 = new Runnable() { // from class: com.prineside.tdi2.ui.shared.k1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicListOverlay.MusicItem.this.m19922c();
                    }
                };
                Color color2 = MaterialColor.LIGHT_BLUE.P300;
                Color color3 = MaterialColor.LIGHT_BLUE.P200;
                Color color4 = MaterialColor.LIGHT_BLUE.P500;
                PaddedImageButton paddedImageButton2 = new PaddedImageButton(drawable2, runnable2, color2, color3, color4);
                this.lessRepeatsButton = paddedImageButton2;
                paddedImageButton2.setPosition(0.0f, 0.0f);
                this.lessRepeatsButton.setSize(60.0f, 52.0f);
                this.lessRepeatsButton.setIconPosition(18.0f, 14.0f);
                this.lessRepeatsButton.setIconSize(24.0f, 24.0f);
                this.repeatsGroupScrollDependable.addActor(this.lessRepeatsButton);
                PaddedImageButton paddedImageButton3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-top"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.l1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicListOverlay.MusicItem.this.m19921d();
                    }
                }, color2, color3, color4);
                this.moreRepeatsButton = paddedImageButton3;
                paddedImageButton3.setPosition(60.0f, 0.0f);
                this.moreRepeatsButton.setSize(60.0f, 52.0f);
                this.moreRepeatsButton.setIconPosition(18.0f, 14.0f);
                this.moreRepeatsButton.setIconSize(24.0f, 24.0f);
                this.repeatsGroupScrollDependable.addActor(this.moreRepeatsButton);
            }
            this.thumbsUpIcon.setVisible(Game.f8589i.musicManager.isMusicThumbsUp(this.hash));
            if (MusicListOverlay.this.m19934l() == this.hash) {
                this.nameLabel.setColor(MaterialColor.LIGHT_GREEN.P500);
                this.playButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-pause"));
                this.playButton.setEnabled(true);
            } else {
                this.playButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-triangle-right"));
                if (isAvailable) {
                    this.playButton.setEnabled(true);
                    this.nameLabel.setColor(Color.WHITE);
                } else {
                    this.playButton.setEnabled(false);
                    this.nameLabel.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                }
            }
            this.menuThemeButton.setVisible(isAvailable);
            if (Game.f8589i.musicManager.isMenuMusicSourceEnabled(this.source)) {
                this.menuThemeButton.setIcon(Game.f8589i.assetManager.getDrawable("settings-toggle-on"));
                int menuMusicSourceRepeatCount = Game.f8589i.musicManager.getMenuMusicSourceRepeatCount(this.source);
                Label label4 = this.repeatsLabel;
                label4.setText("x" + menuMusicSourceRepeatCount);
                PaddedImageButton paddedImageButton4 = this.lessRepeatsButton;
                if (menuMusicSourceRepeatCount > 1) {
                    z = true;
                } else {
                    z = false;
                }
                paddedImageButton4.setVisible(z);
                PaddedImageButton paddedImageButton5 = this.moreRepeatsButton;
                if (menuMusicSourceRepeatCount < 8) {
                    z2 = true;
                }
                paddedImageButton5.setVisible(z2);
                this.repeatsLabel.setVisible(true);
                return;
            }
            this.menuThemeButton.setIcon(Game.f8589i.assetManager.getDrawable("settings-toggle-off"));
            this.moreRepeatsButton.setVisible(false);
            this.lessRepeatsButton.setVisible(false);
            this.repeatsLabel.setVisible(false);
        }
    }

    /* renamed from: n */
    public static /* synthetic */ void m19932n(Boolean bool) {
        Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.IGNORE_MAP_MUSIC, bool.booleanValue() ? 1.0d : 0.0d);
    }

    /* renamed from: m */
    public final MusicItem m19933m() {
        int i = 0;
        while (true) {
            Array<MusicItem> array = this.f14780r;
            if (i < array.size) {
                MusicItem[] musicItemArr = array.items;
                if (musicItemArr[i].hash == this.f14776n) {
                    return musicItemArr[i];
                }
                i++;
            } else {
                return null;
            }
        }
    }

    /* renamed from: q */
    public final void m19929q(boolean z) {
        if (z) {
            Game.f8589i.uiManager.darkOverlay.addCaller("MusicListOverlay", this.f14763a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.h1
                @Override // java.lang.Runnable
                public final void run() {
                    MusicListOverlay.this.hide();
                }
            });
            UiUtils.bouncyShowOverlay(null, this.f14763a.getTable(), this.f14764b);
        } else {
            Game.f8589i.uiManager.darkOverlay.removeCaller("MusicListOverlay");
            UiUtils.bouncyHideOverlay(null, this.f14763a.getTable(), this.f14764b);
        }
        this.f14782t = z;
    }

    public MusicListOverlay() {
        boolean z;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 249, "MusicListOverlay main");
        this.f14763a = addLayer;
        this.f14777o = 0.0f;
        this.f14778p = 0;
        this.f14779q = (byte) 0;
        this.f14780r = new Array<>(MusicItem.class);
        this.f14781s = false;
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(320.0f, 477.0f);
        addLayer.getTable().add((Table) group).size(640.0f, 954.0f);
        Group group2 = new Group();
        this.f14764b = group2;
        group2.setTransform(false);
        group2.setOrigin(320.0f, 477.0f);
        group2.setSize(640.0f, 954.0f);
        group.addActor(group2);
        QuadActor quadActor = new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 11.0f, 640.0f, 0.0f, 640.0f, 0.0f});
        quadActor.setPosition(0.0f, 943.0f);
        group2.addActor(quadActor);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(new Color(724249599));
        image.setSize(640.0f, 932.0f);
        image.setPosition(0.0f, 11.0f);
        group2.addActor(image);
        group2.addActor(new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 11.0f, 640.0f, 11.0f, 640.0f, 11.0f}));
        Table table = new Table();
        this.f14766d = table;
        table.setTouchable(Touchable.childrenOnly);
        ScrollPane scrollPane = new ScrollPane(table);
        this.f14765c = scrollPane;
        scrollPane.setTransform(true);
        scrollPane.setSize(760.0f, 930.0f);
        scrollPane.setPosition(0.0f, 13.0f);
        Touchable touchable = Touchable.enabled;
        scrollPane.setTouchable(touchable);
        group2.addActor(scrollPane);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image2.setColor(new Color(724249599));
        image2.setSize(640.0f, 16.0f);
        image2.setPosition(0.0f, 928.0f);
        Touchable touchable2 = Touchable.disabled;
        image2.setTouchable(touchable2);
        group2.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image3.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        image3.setSize(640.0f, 16.0f);
        image3.setPosition(0.0f, 183.0f);
        image3.setTouchable(touchable2);
        group2.addActor(image3);
        QuadActor quadActor2 = new QuadActor(new Color(858993663), new float[]{0.0f, 0.0f, 0.0f, 183.0f, 640.0f, 183.0f, 640.0f, 11.0f});
        quadActor2.setTouchable(touchable);
        group2.addActor(quadActor2);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14767e = label;
        label.setPosition(40.0f, 131.0f);
        Color color = MaterialColor.LIGHT_GREEN.P500;
        label.setColor(color);
        label.setSize(100.0f, 20.0f);
        group2.addActor(label);
        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-thumbs-up"), new RunnableC29081(), color, MaterialColor.LIGHT_GREEN.P400, MaterialColor.LIGHT_GREEN.P600);
        this.f14768f = paddedImageButton;
        paddedImageButton.setSize(96.0f, 96.0f);
        paddedImageButton.setIconSize(64.0f, 64.0f);
        paddedImageButton.setPosition(520.0f, 74.0f);
        paddedImageButton.setIconPosition(16.0f, 16.0f);
        group2.addActor(paddedImageButton);
        Table table2 = new Table();
        this.f14769g = table2;
        ScrollPane scrollPane2 = new ScrollPane(table2, Game.f8589i.assetManager.getScrollPaneStyle(4.0f));
        scrollPane2.setScrollingDisabled(false, true);
        scrollPane2.setSize(500.0f, 52.0f);
        scrollPane2.setPosition(20.0f, 78.0f);
        group2.addActor(scrollPane2);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
        image4.setColor(new Color(858993663));
        image4.setSize(20.0f, 52.0f);
        image4.setPosition(19.0f, 78.0f);
        image4.setTouchable(touchable2);
        group2.addActor(image4);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("gradient-right"));
        image5.setColor(new Color(858993663));
        image5.setSize(20.0f, 52.0f);
        image5.setPosition(501.0f, 78.0f);
        image5.setTouchable(touchable2);
        group2.addActor(image5);
        Table table3 = new Table();
        table3.setSize(640.0f, 32.0f);
        table3.setPosition(0.0f, 32.0f);
        group2.addActor(table3);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("icon-speaker"));
        this.f14770h = image6;
        table3.add((Table) image6).size(32.0f).padRight(8.0f).padLeft(40.0f);
        HorizontalSlider horizontalSlider = new HorizontalSlider(150.0f, Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.MUSIC_VOLUME), 0.0d, 1.0d, new ObjectRetriever<Double>() { // from class: com.prineside.tdi2.ui.shared.MusicListOverlay.2
            {
                MusicListOverlay.this = this;
            }

            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Double d) {
                double customValue = Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.MUSIC_VOLUME);
                Game.f8589i.settingsManager.setMusicVolume(d.doubleValue());
                if (customValue == 0.0d && d.doubleValue() > 0.0d) {
                    MusicItem m19933m = MusicListOverlay.this.m19933m();
                    if (m19933m != null) {
                        m19933m.play();
                        MusicListOverlay.this.f14776n = m19933m.hash;
                    }
                } else if (customValue > 0.0d && d.doubleValue() == 0.0d) {
                    Game.f8589i.musicManager.stopMusic();
                }
                MusicListOverlay.this.m19928r();
                MusicListOverlay.this.m19926t();
                MusicListOverlay.this.m19925u();
            }
        });
        this.f14771i = horizontalSlider;
        horizontalSlider.setNotifyOnDrag(true);
        table3.add((Table) horizontalSlider).size(150.0f, 48.0f).padRight(16.0f);
        table3.add().expand().fill();
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.IGNORE_MAP_MUSIC) != 0.0d) {
            z = true;
        } else {
            z = false;
        }
        LabelToggleButton labelToggleButton = new LabelToggleButton("", z, 24, 32.0f, true, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.shared.g1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                MusicListOverlay.m19932n((Boolean) obj);
            }
        });
        this.f14772j = labelToggleButton;
        table3.add(labelToggleButton).padRight(40.0f);
        PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.MusicListOverlay.3
            {
                MusicListOverlay.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                MusicListOverlay.this.hide();
            }
        }, MaterialColor.ORANGE.P500, MaterialColor.ORANGE.P400, MaterialColor.ORANGE.P600);
        paddedImageButton2.setIconSize(48.0f, 48.0f);
        paddedImageButton2.setIconPosition(16.0f, 16.0f);
        paddedImageButton2.setSize(64.0f, 64.0f);
        paddedImageButton2.setIconPosition(16.0f, 16.0f);
        paddedImageButton2.setPosition(592.0f, 892.0f);
        paddedImageButton2.setName("music_list_overlay_close_button");
        group2.addActor(paddedImageButton2);
        addLayer.getTable().setVisible(false);
    }

    /* renamed from: o */
    public /* synthetic */ void m19931o() {
        if (this.f14779q == 1) {
            Logger.error("MusicListOverlay", "another thread in progress");
            return;
        }
        this.f14779q = (byte) 1;
        int i = 7;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            try {
                Array<UserMap> array = Game.f8589i.userMapManager.userMapsOrdered;
                if (i3 >= array.size) {
                    break;
                }
                UserMap userMap = array.items[i3];
                XmMusicTrackTile xmMusicTrackTile = userMap.map.xmMusicTrackTile;
                if (xmMusicTrackTile != null && xmMusicTrackTile.getModule() != null) {
                    i = (((i * 31) + userMap.f8950id.hashCode()) * 31) + Game.f8589i.musicManager.getMusicB64hash(userMap.map.xmMusicTrackTile.getTrackBase64());
                }
                i3++;
            } catch (Exception e) {
                Logger.error("MusicListOverlay", "failed to update music list", e);
                this.f14779q = (byte) 3;
                Gdx.app.postRunnable(new RunnableC2970i1(this));
                return;
            }
        }
        if (i != this.f14778p) {
            this.f14778p = i;
            this.f14780r.clear();
            Module menuXmSoundTrack = Game.f8589i.assetManager.getMenuXmSoundTrack();
            if (menuXmSoundTrack != null) {
                MusicItem musicItem = new MusicItem(this, null);
                musicItem.source = MusicManager.MusicSource.DEFAULT;
                musicItem.name = menuXmSoundTrack.songName;
                this.f14780r.add(musicItem);
            }
            IntSet intSet = new IntSet();
            int i4 = 0;
            while (true) {
                Array<BasicLevel> array2 = Game.f8589i.basicLevelManager.levelsOrdered;
                if (i4 >= array2.size) {
                    break;
                }
                BasicLevel basicLevel = array2.items[i4];
                if (basicLevel.getMap().xmMusicTrackTile != null && basicLevel.getMap().xmMusicTrackTile.getModule() != null) {
                    int musicB64hash = Game.f8589i.musicManager.getMusicB64hash(basicLevel.getMap().xmMusicTrackTile.getTrackBase64());
                    if (!intSet.contains(musicB64hash)) {
                        intSet.add(musicB64hash);
                        MusicItem musicItem2 = new MusicItem(this, null);
                        musicItem2.source = new MusicManager.MusicSource(MusicManager.MusicSourceType.BASIC_LEVEL, basicLevel.name);
                        musicItem2.hash = musicB64hash;
                        musicItem2.name = basicLevel.getMap().xmMusicTrackTile.getModule().songName;
                        this.f14780r.add(musicItem2);
                    }
                }
                i4++;
            }
            while (true) {
                Array<UserMap> array3 = Game.f8589i.userMapManager.userMapsOrdered;
                if (i2 >= array3.size) {
                    break;
                }
                UserMap userMap2 = array3.items[i2];
                XmMusicTrackTile xmMusicTrackTile2 = userMap2.map.xmMusicTrackTile;
                if (xmMusicTrackTile2 != null && xmMusicTrackTile2.getModule() != null) {
                    int musicB64hash2 = Game.f8589i.musicManager.getMusicB64hash(userMap2.map.xmMusicTrackTile.getTrackBase64());
                    if (!intSet.contains(musicB64hash2)) {
                        intSet.add(musicB64hash2);
                        MusicItem musicItem3 = new MusicItem(this, null);
                        musicItem3.source = new MusicManager.MusicSource(MusicManager.MusicSourceType.USER_MAP, userMap2.f8950id);
                        musicItem3.hash = musicB64hash2;
                        musicItem3.name = userMap2.map.xmMusicTrackTile.getModule().songName;
                        this.f14780r.add(musicItem3);
                    }
                }
                i2++;
            }
        }
        this.f14779q = (byte) 2;
        Gdx.app.postRunnable(new RunnableC2970i1(this));
    }

    public void hide() {
        if (this.f14782t) {
            m19929q(false);
            Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        }
    }

    /* renamed from: l */
    public final int m19934l() {
        if (Game.f8589i.musicManager.getPlayingMusic() == null) {
            return -1;
        }
        return this.f14776n;
    }

    /* renamed from: p */
    public final void m19930p() {
        if (!this.f14782t) {
            return;
        }
        this.f14766d.clear();
        this.f14766d.add().width(1.0f).height(32.0f).row();
        Table table = new Table();
        this.f14766d.add(table).width(760.0f).row();
        Group group = new Group();
        group.setTransform(false);
        table.add((Table) group).size(760.0f, 46.0f).row();
        Label label = new Label(Game.f8589i.localeManager.i18n.get("title"), Game.f8589i.assetManager.getLabelStyle(21));
        label.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label.setSize(100.0f, 46.0f);
        label.setPosition(40.0f, 0.0f);
        group.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("level"), Game.f8589i.assetManager.getLabelStyle(21));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label2.setAlignment(16);
        label2.setSize(100.0f, 46.0f);
        label2.setPosition(320.0f, 0.0f);
        group.addActor(label2);
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("music_list_header_menu_theme"), Game.f8589i.assetManager.getLabelStyle(21));
        label3.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label3.setSize(100.0f, 46.0f);
        label3.setPosition(460.0f, 0.0f);
        group.addActor(label3);
        int i = 0;
        while (true) {
            Array<MusicItem> array = this.f14780r;
            if (i < array.size) {
                MusicItem musicItem = array.items[i];
                Group group2 = musicItem.container;
                if (group2 == null) {
                    Group group3 = new Group();
                    group3.setTransform(false);
                    table.add((Table) group3).size(760.0f, 56.0f).padBottom(4.0f).row();
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    image.setColor(new Color(623191551));
                    image.setSize(640.0f, 56.0f);
                    group3.addActor(image);
                    musicItem.container = group3;
                } else {
                    table.add((Table) group2).size(760.0f, 56.0f).padBottom(4.0f).row();
                }
                i++;
            } else {
                this.f14766d.add().width(1.0f).height(185.0f).row();
                this.f14771i.setVisible(true);
                m19926t();
                m19928r();
                m19925u();
                return;
            }
        }
    }

    public void postRender(float f) {
        if (this.f14782t) {
            float f2 = this.f14777o + f;
            this.f14777o = f2;
            if (f2 > 0.33f) {
                this.f14777o = 0.0f;
                m19926t();
            }
        }
    }

    /* renamed from: r */
    public final void m19928r() {
        if (this.f14779q == 2) {
            int i = 0;
            while (true) {
                Array<MusicItem> array = this.f14780r;
                if (i < array.size) {
                    array.items[i].updateUi();
                    i++;
                } else {
                    return;
                }
            }
        } else {
            Logger.error("MusicListOverlay", "music list is not prepared yet");
        }
    }

    /* renamed from: s */
    public final void m19927s() {
        new Thread(new Runnable() { // from class: com.prineside.tdi2.ui.shared.j1
            @Override // java.lang.Runnable
            public final void run() {
                MusicListOverlay.this.m19931o();
            }
        }, "MusicListOverlay update").start();
    }

    public void show() {
        int i = 0;
        this.f14771i.setVisible(false);
        this.f14772j.setText(Game.f8589i.localeManager.i18n.get("settings_ignore_map_music"));
        this.f14766d.clear();
        byte b = this.f14779q;
        if (b == 2) {
            Gdx.app.postRunnable(new RunnableC2970i1(this));
        } else if (b != 1) {
            m19927s();
        }
        if (Game.f8589i.musicManager.getCurrentlyPlayingMenuThemeSource().type != MusicManager.MusicSourceType.DEFAULT) {
            while (true) {
                Array<MusicItem> array = this.f14780r;
                if (i >= array.size) {
                    break;
                }
                if (array.items[i].source.equals(Game.f8589i.musicManager.getCurrentlyPlayingMenuThemeSource())) {
                    this.f14776n = this.f14780r.items[i].hash;
                }
                i++;
            }
        } else {
            this.f14776n = 0;
        }
        Image image = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        image.setOrigin(32.0f, 32.0f);
        image.addAction(Actions.forever(Actions.rotateBy(90.0f, 1.0f)));
        this.f14766d.add((Table) image).size(64.0f).padRight(120.0f).row();
        m19929q(true);
        Game.f8589i.uiManager.stage.setScrollFocus(this.f14765c);
    }

    /* renamed from: t */
    public final void m19926t() {
        final LiveMusicManager liveMusicManager;
        IBXM ibxm;
        Module playingMusic = Game.f8589i.musicManager.getPlayingMusic();
        if (playingMusic != null) {
            this.f14767e.setText(playingMusic.songName);
        } else {
            this.f14767e.setText("");
        }
        MusicManager musicManager = Game.f8589i.musicManager;
        boolean z = false;
        if ((musicManager instanceof LiveMusicManager) && playingMusic != null && (ibxm = (liveMusicManager = (LiveMusicManager) musicManager).ibxm) != null) {
            int sequencePos = ibxm.getSequencePos();
            int i = playingMusic.sequenceLength;
            int i2 = playingMusic.restartPos;
            if (this.f14774l != sequencePos || this.f14773k != i || this.f14775m != i2) {
                this.f14774l = sequencePos;
                this.f14773k = i;
                this.f14775m = i2;
                this.f14769g.clear();
                this.f14769g.add().height(1.0f).width(20.0f);
                final int i3 = 0;
                while (i3 < i) {
                    Group group = new Group();
                    group.setTransform(z);
                    group.setTouchable(Touchable.enabled);
                    group.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.MusicListOverlay.4
                        {
                            MusicListOverlay.this = this;
                        }

                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                        public void clicked(InputEvent inputEvent, float f, float f2) {
                            try {
                                IBXM ibxm2 = liveMusicManager.ibxm;
                                ibxm2.lastSeqPos = 0;
                                ibxm2.setSequencePos(i3);
                                MusicListOverlay.this.m19926t();
                            } catch (Exception unused) {
                            }
                        }
                    });
                    this.f14769g.add((Table) group).size(32.0f, 32.0f).padRight(4.0f);
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    if (i3 == sequencePos) {
                        image.setSize(32.0f, 32.0f);
                        image.setColor(MaterialColor.LIGHT_GREEN.P500);
                    } else {
                        image.setSize(32.0f, 20.0f);
                        image.setPosition(0.0f, 6.0f);
                        image.setColor(MaterialColor.LIGHT_GREEN.P800);
                    }
                    group.addActor(image);
                    if (i2 == i3) {
                        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-right-hollow"));
                        image2.setSize(16.0f, 16.0f);
                        image2.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                        image2.setPosition(8.0f, 8.0f);
                        group.addActor(image2);
                    } else {
                        Label label = new Label(String.valueOf(i3), Game.f8589i.assetManager.getLabelStyle(21));
                        label.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                        label.setSize(32.0f, 20.0f);
                        label.setPosition(0.0f, 6.0f);
                        label.setAlignment(1);
                        group.addActor(label);
                    }
                    i3++;
                    z = false;
                }
                this.f14769g.add().height(1.0f).width(20.0f);
                this.f14769g.add().height(1.0f).expandX().fillX();
            }
        }
        MusicItem m19933m = m19933m();
        if (m19933m != null && playingMusic != null) {
            this.f14768f.setVisible(true);
            if (Game.f8589i.musicManager.isMusicThumbsUp(m19933m.hash)) {
                this.f14768f.setColors(MaterialColor.LIGHT_GREEN.P500, MaterialColor.LIGHT_GREEN.P400, MaterialColor.LIGHT_GREEN.P600);
                return;
            } else {
                this.f14768f.setColors(MaterialColor.GREY.P700, MaterialColor.GREY.P500, MaterialColor.GREY.P800);
                return;
            }
        }
        this.f14768f.setVisible(false);
    }

    /* renamed from: u */
    public final void m19925u() {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.MUSIC_VOLUME;
        if (settingsManager.getCustomValue(customValueType) == 0.0d) {
            this.f14770h.setDrawable(Game.f8589i.assetManager.getDrawable("icon-speaker-crossed"));
        } else {
            this.f14770h.setDrawable(Game.f8589i.assetManager.getDrawable("icon-speaker"));
        }
        this.f14771i.setValue(Game.f8589i.settingsManager.getCustomValue(customValueType), false);
    }
}

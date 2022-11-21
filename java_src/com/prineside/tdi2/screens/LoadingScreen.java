package com.prineside.tdi2.screens;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.viewport.ScreenViewport;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.screens.LoadingScreen;
import com.prineside.tdi2.utils.GameSyncLoader;
import com.prineside.tdi2.utils.MaterialColor;
/* loaded from: classes2.dex */
public class LoadingScreen extends Screen {

    /* renamed from: a */
    public GameSyncLoader f10820a;

    /* renamed from: b */
    public Texture f10821b;

    /* renamed from: c */
    public Texture f10822c;

    /* renamed from: d */
    public Texture f10823d;

    /* renamed from: e */
    public Texture f10824e;

    /* renamed from: f */
    public ScreenViewport f10825f;

    /* renamed from: g */
    public Stage f10826g;

    /* renamed from: h */
    public Table f10827h;

    /* renamed from: i */
    public Image f10828i;

    /* renamed from: j */
    public Label f10829j;

    /* renamed from: k */
    public float f10830k;

    /* renamed from: l */
    public Color f10831l;

    /* renamed from: m */
    public boolean f10832m;

    /* renamed from: com.prineside.tdi2.screens.LoadingScreen$1 */
    /* loaded from: classes2.dex */
    public class C20941 implements GameSyncLoader.SyncExecutionListener {

        /* renamed from: a */
        public final /* synthetic */ GameSyncLoader f10833a;

        public C20941(GameSyncLoader gameSyncLoader) {
            this.f10833a = gameSyncLoader;
        }

        /* renamed from: c */
        public static /* synthetic */ void m21243c() {
            Game.f8589i.screenManager.goToMainMenu();
        }

        @Override // com.prineside.tdi2.utils.GameSyncLoader.SyncExecutionListener
        public void done() {
            if (!LoadingScreen.this.f10832m) {
                try {
                    Gdx.files.local("cache/enable-fast-loading-B184.txt").writeString("This file was created after a successful, careful initialization of the game.\nIt seems your device had not caught fire so now we can use more extreme loading process.", false);
                } catch (Exception unused) {
                }
                Game.f8589i.screenManager.goToMainMenu();
                return;
            }
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.x
                @Override // java.lang.Runnable
                public final void run() {
                    LoadingScreen.C20941.m21243c();
                }
            });
        }

        @Override // com.prineside.tdi2.utils.GameSyncLoader.SyncExecutionListener
        public void startedTask(final GameSyncLoader.Task task, GameSyncLoader.Task task2) {
            if (LoadingScreen.this.f10832m) {
                Application application = Gdx.app;
                final GameSyncLoader gameSyncLoader = this.f10833a;
                application.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        LoadingScreen.C20941.this.m21242d(gameSyncLoader, task);
                    }
                });
                return;
            }
            LoadingScreen.this.f10828i.setWidth(this.f10833a.getProgress() * 384.0f);
            LoadingScreen.this.f10829j.setText(task.title);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m21242d(GameSyncLoader gameSyncLoader, GameSyncLoader.Task task) {
            LoadingScreen.this.f10828i.setWidth(MathUtils.clamp(gameSyncLoader.getProgress(), 0.0f, 1.0f) * 384.0f);
            LoadingScreen.this.f10829j.setText(task.title);
        }
    }

    /* renamed from: d */
    public final void m21246d() {
        String str;
        this.f10826g.clear();
        Table table = new Table();
        this.f10827h = table;
        table.setFillParent(true);
        this.f10826g.addActor(this.f10827h);
        this.f10827h.add((Table) new Image(this.f10821b)).size(256.0f).padTop(220.0f).row();
        Group group = new Group();
        this.f10827h.add((Table) group).size(384.0f, 16.0f).padTop(48.0f).row();
        String str2 = "";
        Label label = new Label("", new Label.LabelStyle(Game.f8589i.defaultSmallFuturaFont, MaterialColor.GREY.P600));
        this.f10829j = label;
        label.setAlignment(8);
        this.f10827h.add((Table) this.f10829j).width(384.0f).padTop(8.0f).padBottom(120.0f).row();
        this.f10827h.add((Table) new Image(this.f10822c)).size(128.0f).padBottom(32.0f).row();
        StringBuilder sb = new StringBuilder();
        sb.append("Infinitode 2\nv.R.1.8.7 (b 184)\n");
        sb.append((Runtime.getRuntime().maxMemory() / 1024) / 1024);
        sb.append("Mb / ");
        sb.append(Config.getMaxTextureSize() / 1024);
        sb.append("k / ");
        if (Game.f8589i.actionResolver.isAppModified()) {
            str = "M";
        } else {
            str = "C";
        }
        sb.append(str);
        if (Config.isModdingMode()) {
            str2 = "(" + Config.getModId() + ")";
        }
        sb.append(str2);
        sb.append(" / ");
        sb.append(Game.f8589i.actionResolver.getShortDeviceInfo());
        Label label2 = new Label(sb.toString(), new Label.LabelStyle(Game.f8589i.defaultSmallFuturaFont, new Color(0.28f, 0.28f, 0.28f, 1.0f)));
        label2.setAlignment(1);
        this.f10827h.add((Table) label2).colspan(2).width(384.0f).row();
        Image image = new Image(this.f10824e);
        image.setColor(Color.BLACK);
        image.setSize(384.0f, 8.0f);
        group.addActor(image);
        Image image2 = new Image(this.f10824e);
        this.f10828i = image2;
        image2.setColor(new Color(0.56f, 0.56f, 0.56f, 1.0f));
        this.f10828i.setSize(0.0f, 8.0f);
        group.addActor(this.f10828i);
        if (this.f10823d != null && this.f10830k > 0.5f) {
            Image image3 = new Image(this.f10824e);
            image3.setColor(this.f10831l);
            image3.setSize(this.f10825f.getWorldWidth(), this.f10825f.getWorldHeight());
            this.f10826g.addActor(image3);
            image3.addAction(Actions.sequence(Actions.delay(StrictMath.max(this.f10830k - 0.2f, 0.0f)), Actions.fadeOut(0.2f)));
            Image image4 = new Image(this.f10823d);
            image4.setPosition((this.f10825f.getWorldWidth() * 0.5f) - (this.f10823d.getWidth() * 0.5f), (this.f10825f.getWorldHeight() * 0.5f) - (this.f10823d.getHeight() * 0.5f));
            this.f10826g.addActor(image4);
            image4.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.parallel(Actions.fadeIn(0.15f), Actions.delay(StrictMath.max(this.f10830k - 0.3f, 0.0f))), Actions.fadeOut(0.15f)));
        }
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        this.f10821b.dispose();
        this.f10822c.dispose();
        Texture texture = this.f10823d;
        if (texture != null) {
            texture.dispose();
        }
        this.f10826g.dispose();
        this.f10824e.dispose();
        Logger.log("LoadingScreen", "disposed");
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Config.BACKGROUND_COLOR;
        AssetManager assetManager = Game.f8589i.assetManager;
        if (assetManager != null) {
            color = assetManager.getColor("menu_background");
        }
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        float f2 = this.f10830k - f;
        this.f10830k = f2;
        if (f2 < 0.0f) {
            if (this.f10832m) {
                long realTickCount = Game.getRealTickCount();
                while (!this.f10820a.isDone() && Game.getRealTickCount() - realTickCount < 12000) {
                    this.f10820a.iterate();
                }
            } else {
                this.f10820a.iterate();
            }
            this.f10830k = 0.0f;
        }
        this.f10826g.act(f);
        this.f10826g.draw();
    }

    public LoadingScreen(GameSyncLoader gameSyncLoader) {
        float f;
        boolean exists = Gdx.files.local("cache/enable-fast-loading-B184.txt").exists();
        this.f10832m = exists;
        this.f10820a = gameSyncLoader;
        if (!exists) {
            gameSyncLoader.enableExtraFrameBeforeTaskStart();
        }
        gameSyncLoader.addListener(new C20941(gameSyncLoader));
        Pixmap.Format format = Pixmap.Format.RGBA8888;
        Pixmap pixmap = new Pixmap(1, 1, format);
        pixmap.setColor(Color.WHITE);
        pixmap.fill();
        this.f10824e = new Texture(pixmap);
        pixmap.dispose();
        Texture texture = new Texture(Gdx.files.external("res/loading-brand.png"), format, false);
        this.f10822c = texture;
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
        texture.setFilter(textureFilter, textureFilter);
        if (this.f10823d == null) {
            this.f10831l = Config.BACKGROUND_COLOR;
            this.f10823d = this.f10822c;
        }
        this.f10823d.setFilter(textureFilter, textureFilter);
        if (this.f10832m) {
            f = 1.0f;
        } else {
            f = 2.0f;
        }
        this.f10830k = f;
        Texture texture2 = new Texture(Gdx.files.external("res/loading-logo.png"), format, false);
        this.f10821b = texture2;
        texture2.setFilter(textureFilter, textureFilter);
        ScreenViewport screenViewport = new ScreenViewport();
        this.f10825f = screenViewport;
        this.f10826g = new Stage(screenViewport, Game.f8589i.renderingManager.batch);
        m21246d();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
        super.resize(i, i2);
        if (i > 0 && i2 > 0) {
            Logger.log("LoadingScreen", "resize " + i2 + " " + Gdx.graphics.getBackBufferHeight());
            int backBufferWidth = Gdx.graphics.getBackBufferWidth();
            int backBufferHeight = Gdx.graphics.getBackBufferHeight();
            this.f10825f.setUnitsPerPixel(1080.0f / ((float) Gdx.graphics.getHeight()));
            this.f10825f.update(backBufferWidth, backBufferHeight, true);
            m21246d();
        }
    }
}

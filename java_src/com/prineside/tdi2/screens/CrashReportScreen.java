package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.viewport.ScreenViewport;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.utils.MaterialColor;
/* loaded from: classes2.dex */
public class CrashReportScreen extends Screen {

    /* renamed from: a */
    public final BitmapFont f10634a;

    /* renamed from: b */
    public final BitmapFont f10635b;

    /* renamed from: c */
    public final SpriteBatch f10636c;

    /* renamed from: d */
    public final Stage f10637d;

    /* renamed from: e */
    public final ScreenViewport f10638e;

    /* renamed from: f */
    public final Table f10639f;

    /* renamed from: g */
    public final Label.LabelStyle f10640g;

    /* renamed from: h */
    public final Label.LabelStyle f10641h;

    /* renamed from: a */
    public final Label m21329a(String str, Color color) {
        return m21327c(str, color, false, false);
    }

    /* renamed from: b */
    public final Label m21328b(String str, Color color, boolean z) {
        return m21327c(str, color, z, false);
    }

    /* renamed from: c */
    public final Label m21327c(String str, Color color, boolean z, boolean z2) {
        Label.LabelStyle labelStyle;
        float f;
        if (z2) {
            labelStyle = this.f10641h;
        } else {
            labelStyle = this.f10640g;
        }
        Label label = new Label(str, labelStyle);
        label.setColor(color);
        label.setWrap(true);
        Cell growX = this.f10639f.add((Table) label).growX();
        if (z) {
            f = 20.0f;
        } else {
            f = 0.0f;
        }
        growX.padBottom(f).top().left().row();
        return label;
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        this.f10637d.dispose();
        this.f10636c.dispose();
        this.f10634a.dispose();
        this.f10635b.dispose();
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Gdx.f3119gl.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        Gdx.f3119gl.glClear(16640);
        this.f10637d.act(f);
        this.f10637d.draw();
        if (Gdx.input.isTouched() || Gdx.input.isKeyPressed(-1)) {
            try {
                Gdx.files.local("cache/crash-report.json").delete();
            } catch (Exception unused) {
                Logger.error("CrashReportScreen", "failed to delete crash report");
            }
            Game game = Game.f8589i;
            game.screenManager.goToLoadingScreen(game.gameSyncLoader);
        }
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
        if (i > 0 && i2 > 0) {
            float f = i2;
            this.f10638e.setUnitsPerPixel(960.0f / f);
            this.f10638e.update(i, i2, true);
            this.f10639f.setSize(((i / f) * 960.0f) - 160.0f, 880.0f);
            this.f10639f.setPosition(80.0f, 40.0f);
        }
    }

    public CrashReportScreen(String str, String str2, String str3, String str4, String str5) {
        String str6;
        SpriteBatch spriteBatch = new SpriteBatch();
        this.f10636c = spriteBatch;
        BitmapFont bitmapFont = new BitmapFont(Gdx.files.internal("resourcepacks/default/futura.fnt"));
        this.f10634a = bitmapFont;
        bitmapFont.getData().setScale(bitmapFont.getData().scaleX * 0.5f);
        Texture texture = bitmapFont.getRegion().getTexture();
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
        texture.setFilter(textureFilter, textureFilter);
        BitmapFont bitmapFont2 = new BitmapFont(Gdx.files.internal("resourcepacks/default/futura.fnt"));
        this.f10635b = bitmapFont2;
        bitmapFont2.getData().setScale(bitmapFont2.getData().scaleX * 0.8f);
        bitmapFont2.getRegion().getTexture().setFilter(textureFilter, textureFilter);
        ScreenViewport screenViewport = new ScreenViewport();
        this.f10638e = screenViewport;
        Stage stage = new Stage(screenViewport, spriteBatch);
        this.f10637d = stage;
        if (!str4.contains("OutOfMemory") && !str5.contains("OutOfMemory")) {
            if (!str5.contains("ENOSPC") && !str3.contains("Test")) {
                str6 = null;
            } else {
                str6 = "Not enough of free disk space - make sure your disk drive is not completely full and the game is allowed to create new files";
            }
        } else {
            str6 = "Not enough memory (RAM) - try to disable some graphical effects / sell some tiles from your inventory";
        }
        Table table = new Table();
        this.f10639f = table;
        stage.addActor(table);
        Color color = Color.WHITE;
        this.f10640g = new Label.LabelStyle(bitmapFont, color);
        this.f10641h = new Label.LabelStyle(bitmapFont2, color);
        m21327c("Crash detected", MaterialColor.AMBER.P500, true, true);
        if (str6 != null) {
            m21329a("Possible reason:", MaterialColor.CYAN.P500);
            m21327c(str6, color, true, true);
        }
        Color color2 = MaterialColor.CYAN.P500;
        m21329a("Error:", color2);
        m21328b(str + ": " + str3, color, true);
        m21329a("Thread name:", color2);
        m21328b(str2, color, true);
        m21329a("Stacktrace:", color2);
        StringBuilder stringBuilder = new StringBuilder();
        String[] split = str4.replaceAll("\t", "    ").split("\n");
        int i = 0;
        while (true) {
            if (i >= split.length) {
                break;
            }
            stringBuilder.append(split[i]).append("\n");
            if (i == 16) {
                stringBuilder.append("...");
                break;
            }
            i++;
        }
        this.f10639f.add((Table) new Label(stringBuilder.toString(), this.f10640g)).minWidth(100.0f).padBottom(20.0f).top().left().row();
        this.f10639f.add().height(40.0f).width(1.0f).row();
        Color color3 = MaterialColor.LIGHT_GREEN.P500;
        m21327c("Tap the screen or press any key to continue", color3, true, true).addAction(Actions.forever(Actions.sequence(Actions.color(MaterialColor.LIGHT_GREEN.P900, 0.5f), Actions.color(color3, 0.3f))));
    }
}

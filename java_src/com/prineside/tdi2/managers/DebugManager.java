package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.graphics.profiling.GLProfiler;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.LongArray;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.TimeUtils;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.SoundManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.managers.music.LiveMusicManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.PrintStream;
import java.io.StringWriter;
import java.lang.ref.SoftReference;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class DebugManager extends Manager.ManagerAdapter {
    public static final Color[] RANDOM_COLORS = {MaterialColor.RED.P500, MaterialColor.YELLOW.P500, MaterialColor.BLUE.P500, MaterialColor.LIGHT_GREEN.P500, MaterialColor.BLUE_GREY.P500, MaterialColor.ORANGE.P500, MaterialColor.BROWN.P500, MaterialColor.DEEP_ORANGE.P500, MaterialColor.CYAN.P500, MaterialColor.DEEP_PURPLE.P500, MaterialColor.GREEN.P500, MaterialColor.INDIGO.P500, MaterialColor.GREY.P500, MaterialColor.PURPLE.P500, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIME.P500, MaterialColor.PINK.P500, MaterialColor.TEAL.P500, MaterialColor.AMBER.P500};

    /* renamed from: D */
    public long f9747D;

    /* renamed from: I */
    public long f9751I;

    /* renamed from: L */
    public boolean f9754L;

    /* renamed from: M */
    public final float[] f9755M;

    /* renamed from: N */
    public final float[] f9756N;

    /* renamed from: O */
    public final float[] f9757O;

    /* renamed from: P */
    public final float[] f9758P;

    /* renamed from: Q */
    public String f9759Q;

    /* renamed from: R */
    public OrthographicCamera f9760R;

    /* renamed from: S */
    public final int[] f9761S;

    /* renamed from: a */
    public UiManager.UiLayer f9762a;
    public final GLProfiler glProfiler;

    /* renamed from: k */
    public Label f9765k;

    /* renamed from: p */
    public long f9766p;

    /* renamed from: q */
    public long f9767q;

    /* renamed from: t */
    public SettingsManager.SettingsManagerListener f9770t;

    /* renamed from: x */
    public int f9774x;

    /* renamed from: y */
    public float f9775y;

    /* renamed from: b */
    public boolean f9763b = false;

    /* renamed from: d */
    public boolean f9764d = false;

    /* renamed from: r */
    public StringBuilder f9768r = new StringBuilder();

    /* renamed from: s */
    public final Array<String> f9769s = new Array<>(false, 1, String.class);

    /* renamed from: u */
    public final ObjectMap<String, StringBuilder> f9771u = new ObjectMap<>();

    /* renamed from: v */
    public final ObjectMap<String, long[]> f9772v = new ObjectMap<>();

    /* renamed from: w */
    public final LongArray f9773w = new LongArray(false, 30);

    /* renamed from: z */
    public final long[] f9776z = new long[240];

    /* renamed from: A */
    public final int[] f9744A = new int[Config.DISPLAY_HEIGHT];

    /* renamed from: B */
    public int f9745B = 0;

    /* renamed from: C */
    public int f9746C = 1;

    /* renamed from: E */
    public final long[] f9748E = new long[60];

    /* renamed from: G */
    public int f9749G = 0;

    /* renamed from: H */
    public float f9750H = 16.0f;

    /* renamed from: J */
    public SoftReference<GarbageCollectorListener> f9752J = null;

    /* renamed from: K */
    public float f9753K = 0.0f;

    /* loaded from: classes2.dex */
    public class GarbageCollectorListener {
        public GarbageCollectorListener() {
        }

        public void finalize() {
            DebugManager.this.f9754L = true;
            DebugManager.this.f9753K = 0.0f;
            super.finalize();
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<DebugManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public DebugManager read() {
            return Game.f8589i.debugManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void clearPools() {
        this.f9754L = false;
        if (Game.f8589i.shapeManager != null) {
            for (ShapeType shapeType : ShapeType.values) {
                Game.f8589i.shapeManager.getFactory(shapeType).clearPool();
            }
        }
        for (AbilityType abilityType : AbilityType.values) {
            Game.f8589i.abilityManager.getFactory(abilityType).clearPool();
        }
        for (EnemyType enemyType : EnemyType.values) {
            Game.f8589i.enemyManager.getFactory(enemyType).clearPool();
        }
        for (BuffType buffType : BuffType.values) {
            Game.f8589i.buffManager.getFactory(buffType).clearPool();
        }
        for (ExplosionType explosionType : ExplosionType.values) {
            Game.f8589i.explosionManager.getFactory(explosionType).clearPool();
        }
        for (ProjectileType projectileType : ProjectileType.values) {
            Game.f8589i.projectileManager.getFactory(projectileType).clearPool();
        }
        Game.f8589i.enemyManager.enemyBuffArraysPool.clear();
        Logger.log("DebugManager", "pools cleared");
    }

    public boolean isEnabled() {
        return this.f9763b;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        int i;
        float f2;
        long[] jArr;
        DebugManager debugManager;
        StaticSoundType staticSoundType;
        boolean z;
        float f3;
        float f4;
        float f5;
        Array.ArrayIterator<String> arrayIterator;
        SpriteBatch spriteBatch;
        ResourcePack.ResourcePackBitmapFont resourcePackBitmapFont;
        DebugManager debugManager2 = this;
        if (Config.isHeadless()) {
            return;
        }
        SoftReference<GarbageCollectorListener> softReference = debugManager2.f9752J;
        if (softReference == null || softReference.get() == null) {
            float f6 = debugManager2.f9753K + f;
            debugManager2.f9753K = f6;
            if (f6 > 1.0f) {
                debugManager2.f9752J = new SoftReference<>(new GarbageCollectorListener());
                debugManager2.f9753K = 0.0f;
            }
        }
        if (debugManager2.f9754L) {
            clearPools();
        }
        if (debugManager2.f9762a == null) {
            return;
        }
        debugManager2.registerFrameDrawTimeAndMemory(Game.getRealTickCount() - debugManager2.f9751I);
        RenderingManager renderingManager = Game.f8589i.renderingManager;
        SpriteBatch spriteBatch2 = renderingManager.batch;
        ShapeRenderer shapeRenderer = renderingManager.shapeRenderer;
        Camera camera = debugManager2.f9762a.getTable().getStage().getCamera();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        int screenSafeMargin = Game.f8589i.uiManager.getScreenSafeMargin();
        if (debugManager2.f9759Q == null) {
            m21606f();
        }
        spriteBatch2.setProjectionMatrix(debugManager2.f9760R.combined);
        spriteBatch2.begin();
        Gdx.f3119gl.glEnable(GL20.GL_BLEND);
        Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        Game.f8589i.assetManager.getDebugFont(false).setColor(0.0f, 1.0f, 0.0f, 0.02f);
        Game.f8589i.assetManager.getDebugFont(false).draw(spriteBatch2, debugManager2.f9759Q, 1.0f, 17.0f);
        spriteBatch2.end();
        Game.f8589i.assetManager.getDebugFont(false).setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        spriteBatch2.setProjectionMatrix(camera.combined);
        shapeRenderer.setProjectionMatrix(camera.combined);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_SHOW_FPS) != 0.0d) {
            float f7 = debugManager2.f9775y + f;
            debugManager2.f9775y = f7;
            if (f7 > 0.2f) {
                debugManager2.f9774x = 0;
                long timestampMillis = Game.getTimestampMillis();
                for (int i2 = debugManager2.f9773w.size - 1; i2 >= 0; i2--) {
                    LongArray longArray = debugManager2.f9773w;
                    if (timestampMillis - longArray.items[i2] > 1000) {
                        longArray.removeIndex(i2);
                    } else {
                        debugManager2.f9774x++;
                    }
                }
                debugManager2.f9775y = 0.0f;
            }
            spriteBatch2.begin();
            try {
                debugManager2.f9768r.setLength(0);
                debugManager2.f9768r.append(Gdx.graphics.getFramesPerSecond()).append(" FPS / ").append(debugManager2.f9774x).append(" UPS");
                font.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                font.draw(spriteBatch2, debugManager2.f9768r, screenSafeMargin + 17, Game.f8589i.settingsManager.getScaledViewportHeight() - 17);
                font.setColor(1.0f, 1.0f, 1.0f, 1.0f);
                font.draw(spriteBatch2, debugManager2.f9768r, screenSafeMargin + 15, Game.f8589i.settingsManager.getScaledViewportHeight() - 15);
            } catch (Exception unused) {
                Logger.error("DebugManager", "failed to draw FPS");
            }
            spriteBatch2.end();
        }
        spriteBatch2.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_VIEWPORT_CULLING) != 0.0d) {
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
            shapeRenderer.begin(ShapeRenderer.ShapeType.Filled);
            shapeRenderer.setColor(0.0f, 1.0f, 0.0f, 0.28f);
            float f8 = camera.viewportWidth;
            i = 0;
            shapeRenderer.rectLine(f8 / 2.0f, 0.0f, f8 / 2.0f, Game.f8589i.settingsManager.getScaledViewportHeight(), 2.0f);
            shapeRenderer.setColor(Color.WHITE);
            shapeRenderer.end();
        } else {
            i = 0;
        }
        if (debugManager2.f9763b) {
            long realTickCount = Game.getRealTickCount();
            if (realTickCount - debugManager2.f9767q > 100000) {
                if (debugManager2.f9763b) {
                    debugManager2.registerValue("GL calls").append(debugManager2.glProfiler.getCalls());
                    debugManager2.registerValue("Draw calls").append(debugManager2.glProfiler.getDrawCalls());
                    debugManager2.registerValue("Texture bindings").append(debugManager2.glProfiler.getTextureBindings());
                    debugManager2.registerValue("Max sprites / batch").append(Game.f8589i.renderingManager.batch.maxSpritesInBatch);
                    debugManager2.registerValue("Resolution").append(Gdx.graphics.getWidth()).append('x').append(Gdx.graphics.getHeight());
                    debugManager2.registerValue("Sounds").append(Game.f8589i.soundManager.playingSoundStats.size).append(" / 48");
                }
                debugManager2.f9767q = realTickCount;
            }
            if (Game.getRealTickCount() - debugManager2.f9766p > 300000) {
                debugManager2.f9766p = Game.getRealTickCount();
                debugManager2.f9768r.setLength(i);
                debugManager2.f9769s.clear();
                ObjectMap.Entries<String, StringBuilder> it = debugManager2.f9771u.iterator();
                while (it.hasNext()) {
                    debugManager2.f9769s.add((String) it.next().key);
                }
                debugManager2.f9769s.sort();
                Array.ArrayIterator<String> it2 = debugManager2.f9769s.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    debugManager2.f9768r.append(next);
                    debugManager2.f9768r.append(" = ");
                    debugManager2.f9768r.append(debugManager2.f9771u.get(next));
                    debugManager2.f9768r.append("\n");
                }
                debugManager2.f9765k.setText(debugManager2.f9768r);
            }
            int i3 = debugManager2.f9749G + 1;
            debugManager2.f9749G = i3;
            if (i3 == 60) {
                debugManager2.f9749G = i;
            }
            float f9 = 5.0f;
            float f10 = screenSafeMargin;
            float f11 = ((camera.viewportWidth - 240.0f) - 5.0f) - f10;
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
            shapeRenderer.begin(ShapeRenderer.ShapeType.Filled);
            int i4 = debugManager2.f9749G;
            int i5 = 0;
            while (true) {
                f2 = f10;
                if (i4 >= 60) {
                    break;
                }
                SpriteBatch spriteBatch3 = spriteBatch2;
                double d = debugManager2.f9748E[i4];
                Double.isNaN(d);
                double d2 = 1.0E9d / d;
                float f12 = (i5 * 4.0f) + f11;
                double d3 = d2 <= 60.0d ? d2 : 60.0d;
                double d4 = 1.0f;
                Double.isNaN(d4);
                float f13 = (float) (d4 * d3);
                if (d3 > 50.0d) {
                    shapeRenderer.setColor(0.0f, 1.0f, 0.0f, 0.3f);
                } else if (d3 > 20.0d) {
                    shapeRenderer.setColor(0.5f, 0.5f, 0.0f, 0.5f);
                } else {
                    shapeRenderer.setColor(1.0f, 0.0f, 0.0f, 0.5f);
                }
                shapeRenderer.rect(f12 - 4.0f, 5.0f, 4.0f, f13);
                i5++;
                i4++;
                f10 = f2;
                spriteBatch2 = spriteBatch3;
            }
            SpriteBatch spriteBatch4 = spriteBatch2;
            for (int i6 = 0; i6 < debugManager2.f9749G; i6++) {
                double d5 = debugManager2.f9748E[i6];
                Double.isNaN(d5);
                double d6 = 1.0E9d / d5;
                float f14 = (i5 * 4.0f) + f11;
                if (d6 > 60.0d) {
                    d6 = 60.0d;
                }
                double d7 = 1.0f;
                Double.isNaN(d7);
                float f15 = (float) (d7 * d6);
                if (d6 > 50.0d) {
                    shapeRenderer.setColor(0.0f, 1.0f, 0.0f, 0.3f);
                } else if (d6 > 20.0d) {
                    shapeRenderer.setColor(0.5f, 0.5f, 0.0f, 0.5f);
                } else {
                    shapeRenderer.setColor(1.0f, 0.0f, 0.0f, 0.5f);
                }
                shapeRenderer.rect(f14 - 4.0f, 5.0f, 4.0f, f15);
                i5++;
            }
            MusicManager musicManager = Game.f8589i.musicManager;
            if (musicManager instanceof LiveMusicManager) {
                LiveMusicManager liveMusicManager = (LiveMusicManager) musicManager;
                if (liveMusicManager.spectrumLeft != null) {
                    shapeRenderer.setColor(0.0f, 1.0f, 0.0f, 0.5f);
                    float regularLayerWidth = Game.f8589i.uiManager.getRegularLayerWidth() * 0.5f;
                    int length = liveMusicManager.spectrumLeft.length;
                    float[] fArr = new float[length];
                    synchronized (liveMusicManager.spectrumLock) {
                        float[] fArr2 = liveMusicManager.spectrumLeft;
                        System.arraycopy(fArr2, i, fArr, i, fArr2.length);
                    }
                    for (int i7 = 0; i7 < length; i7++) {
                        float f16 = fArr[i7];
                        float[] fArr3 = debugManager2.f9755M;
                        float f17 = fArr3[i7];
                        if (f16 < f17) {
                            float[] fArr4 = debugManager2.f9757O;
                            float f18 = fArr4[i7];
                            float f19 = f17 - f18;
                            fArr4[i7] = f18 + (0.35f * f);
                            if (f19 >= f16) {
                                f16 = f19;
                            }
                        } else {
                            fArr3[i7] = f16;
                            debugManager2.f9757O[i7] = 0.0f;
                        }
                        fArr3[i7] = f16;
                        float f20 = f16 * 200.0f;
                        shapeRenderer.rect(regularLayerWidth - f20, (i7 * 10.0f) + 5.0f, f20, 8.0f);
                    }
                    shapeRenderer.setColor(0.0f, 0.5f, 1.0f, 0.5f);
                    synchronized (liveMusicManager.spectrumLock) {
                        float[] fArr5 = liveMusicManager.spectrumRight;
                        System.arraycopy(fArr5, 0, fArr, 0, fArr5.length);
                    }
                    for (int i8 = 0; i8 < length; i8++) {
                        float f21 = fArr[i8];
                        float[] fArr6 = debugManager2.f9756N;
                        float f22 = fArr6[i8];
                        if (f21 < f22) {
                            float[] fArr7 = debugManager2.f9758P;
                            float f23 = fArr7[i8];
                            float f24 = f22 - f23;
                            fArr7[i8] = f23 + (0.35f * f);
                            if (f24 >= f21) {
                                f21 = f24;
                            }
                        } else {
                            fArr6[i8] = f21;
                            debugManager2.f9758P[i8] = 0.0f;
                        }
                        fArr6[i8] = f21;
                        shapeRenderer.rect(regularLayerWidth, (i8 * 10.0f) + 5.0f, f21 * 200.0f, 8.0f);
                    }
                }
            }
            shapeRenderer.end();
            if (!debugManager2.f9764d) {
                Runtime runtime = Runtime.getRuntime();
                debugManager2.registerValue("Memory F/T/M").append(StringFormatter.commaSeparatedNumber((int) (runtime.freeMemory() / 1024))).append(" / ").append(StringFormatter.commaSeparatedNumber((int) (runtime.totalMemory() / 1024))).append(" / ").append(StringFormatter.commaSeparatedNumber((int) (runtime.maxMemory() / 1024)));
                debugManager = debugManager2;
            } else {
                debugManager2.unregisterValue("Memory");
                debugManager2.f9769s.clear();
                ObjectMap.Entries<String, long[]> it3 = debugManager2.f9772v.iterator();
                while (it3.hasNext()) {
                    debugManager2.f9769s.add((String) it3.next().key);
                }
                long j = 1000;
                for (long j2 : debugManager2.f9776z) {
                    if (j2 > j) {
                        j = j2;
                    }
                }
                if (j > 34000) {
                    j = 34000;
                }
                float f25 = (int) (((float) j) / 1000.0f);
                float f26 = 1.0f / f25;
                float f27 = debugManager2.f9750H - f25;
                float f28 = f * 10.0f;
                if (StrictMath.abs(f27) > f28) {
                    f25 = debugManager2.f9750H - (f27 * (f28 / StrictMath.abs(f27)));
                }
                debugManager2.f9750H = f25;
                int i9 = 560;
                int i10 = ((int) camera.viewportHeight) / 2;
                float regularLayerWidth2 = ((((int) Game.f8589i.uiManager.getRegularLayerWidth()) - 5) - 560) - 240;
                float f29 = regularLayerWidth2 / 240.0f;
                Gdx.f3119gl.glEnable(GL20.GL_BLEND);
                Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                shapeRenderer.begin(ShapeRenderer.ShapeType.Filled);
                shapeRenderer.setColor(0.0f, 0.0f, 0.0f, 0.3f);
                float f30 = 5;
                shapeRenderer.rect(0.0f, f30, camera.viewportWidth, camera.viewportHeight);
                int i11 = debugManager2.f9750H < 10.0f ? 1 : 2;
                shapeRenderer.setColor(1.0f, 1.0f, 1.0f, 0.14f);
                int i12 = i11;
                while (true) {
                    float f31 = i12;
                    if (f31 > f25) {
                        break;
                    }
                    float f32 = i10 * f26 * f31;
                    shapeRenderer.rectLine(i9 + screenSafeMargin, f32, camera.viewportWidth - f9, f32, 2.0f);
                    i12 += i11;
                    f2 = f2;
                    i10 = i10;
                    f29 = f29;
                    regularLayerWidth2 = regularLayerWidth2;
                    camera = camera;
                    i9 = 560;
                    f9 = 5.0f;
                }
                float f33 = f29;
                float f34 = regularLayerWidth2;
                int i13 = i10;
                Camera camera2 = camera;
                float f35 = f2;
                shapeRenderer.end();
                ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(21);
                spriteBatch4.begin();
                font2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                int i14 = i11;
                while (true) {
                    float f36 = i14;
                    if (f36 > f25) {
                        break;
                    }
                    debugManager2.f9768r.setLength(0);
                    debugManager2.f9768r.append(i14).append(" ms");
                    font2.draw(spriteBatch4, debugManager2.f9768r, 560 + screenSafeMargin, (f36 * i13 * f26) + 24.0f);
                    i14 += i11;
                }
                SpriteBatch spriteBatch5 = spriteBatch4;
                Color color = Color.WHITE;
                font2.setColor(color);
                spriteBatch5.end();
                spriteBatch5.begin();
                font2.setColor(color);
                float f37 = screenSafeMargin + 320;
                font2.draw(spriteBatch5, "min", f37, 32.0f);
                float f38 = screenSafeMargin + HttpStatus.SC_BAD_REQUEST;
                font2.draw(spriteBatch5, "avg", f38, 32.0f);
                float f39 = screenSafeMargin + 480;
                font2.draw(spriteBatch5, "max", f39, 32.0f);
                int i15 = debugManager2.f9769s.size - 1;
                int i16 = i13;
                float f40 = f33;
                long j3 = 1;
                long j4 = 1;
                long j5 = 1;
                while (i15 >= 0) {
                    float f41 = f30;
                    float f42 = f35;
                    long[] jArr2 = debugManager2.f9772v.get(debugManager2.f9769s.items[i15]);
                    long j6 = 0;
                    long j7 = Long.MAX_VALUE;
                    long j8 = Long.MIN_VALUE;
                    ShapeRenderer shapeRenderer2 = shapeRenderer;
                    for (long j9 : jArr2) {
                        j6 += j9;
                        if (j7 > j9) {
                            j7 = j9;
                        }
                        if (j8 < j9) {
                            j8 = j9;
                        }
                    }
                    int length2 = jArr2.length;
                    float f43 = f37;
                    float f44 = f38;
                    long j10 = j6 / length2;
                    if (j8 >= 500 || j10 >= 200) {
                        if (j3 < j7) {
                            j3 = j7;
                        }
                        if (j4 < j10) {
                            j4 = j10;
                        }
                        if (j5 < j8) {
                            j5 = j8;
                        }
                    } else {
                        debugManager2.f9769s.removeIndex(i15);
                    }
                    i15--;
                    f37 = f43;
                    f38 = f44;
                    f30 = f41;
                    f35 = f42;
                    shapeRenderer = shapeRenderer2;
                }
                ShapeRenderer shapeRenderer3 = shapeRenderer;
                float f45 = f35;
                float f46 = f37;
                float f47 = f30;
                float f48 = f38;
                debugManager2.f9769s.sort();
                debugManager2.f9769s.reverse();
                Array.ArrayIterator<String> it4 = debugManager2.f9769s.iterator();
                int i17 = 0;
                while (it4.hasNext()) {
                    String next2 = it4.next();
                    long[] jArr3 = debugManager2.f9772v.get(next2);
                    long j11 = 0;
                    Array.ArrayIterator<String> arrayIterator2 = it4;
                    long j12 = j5;
                    float f49 = f46;
                    long j13 = Long.MIN_VALUE;
                    long j14 = j4;
                    long j15 = Long.MAX_VALUE;
                    for (long j16 : jArr3) {
                        j11 += j16;
                        if (j15 > j16) {
                            j15 = j16;
                        }
                        if (j13 < j16) {
                            j13 = j16;
                        }
                    }
                    long length3 = j11 / jArr3.length;
                    long j17 = j13;
                    int i18 = 0;
                    for (int i19 = 0; i19 < next2.length(); i19++) {
                        i18 = (i18 * 31) + next2.charAt(i19);
                    }
                    Color[] colorArr = RANDOM_COLORS;
                    font2.setColor(colorArr[StrictMath.abs(i18) % colorArr.length]);
                    float f50 = (i17 + 2) * 24;
                    font2.draw(spriteBatch5, next2, screenSafeMargin + 5, f50);
                    font2.setColor(1.0f, 1.0f, 1.0f, ((((float) j15) * 0.5f) / ((float) j3)) + 0.5f);
                    this.f9768r.setLength(0);
                    this.f9768r.append(j15);
                    font2.draw(spriteBatch5, this.f9768r, f49, f50);
                    j4 = j14;
                    font2.setColor(1.0f, 1.0f, 1.0f, ((((float) length3) * 0.5f) / ((float) j4)) + 0.5f);
                    this.f9768r.setLength(0);
                    this.f9768r.append(length3);
                    font2.draw(spriteBatch5, this.f9768r, f48, f50);
                    font2.setColor(1.0f, 1.0f, 1.0f, ((((float) j17) * 0.5f) / ((float) j12)) + 0.5f);
                    this.f9768r.setLength(0);
                    this.f9768r.append(j17);
                    font2.draw(spriteBatch5, this.f9768r, f39, f50);
                    i17++;
                    debugManager2 = this;
                    f46 = f49;
                    j3 = j3;
                    it4 = arrayIterator2;
                    j5 = j12;
                }
                debugManager = debugManager2;
                font2.setColor(Color.WHITE);
                spriteBatch5.end();
                shapeRenderer3.begin(ShapeRenderer.ShapeType.Filled);
                Gdx.f3119gl.glEnable(GL20.GL_BLEND);
                Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                Array.ArrayIterator<String> it5 = debugManager.f9769s.iterator();
                while (it5.hasNext()) {
                    String next3 = it5.next();
                    long[] jArr4 = debugManager.f9772v.get(next3);
                    int i20 = 0;
                    for (int i21 = 0; i21 < next3.length(); i21++) {
                        i20 = (i20 * 31) + next3.charAt(i21);
                    }
                    Color[] colorArr2 = RANDOM_COLORS;
                    shapeRenderer3.setColor(colorArr2[StrictMath.abs(i20) % colorArr2.length]);
                    int i22 = debugManager.f9745B;
                    int i23 = 240;
                    float f51 = -1.0f;
                    int i24 = 0;
                    while (i22 < i23) {
                        float f52 = 560 + (i24 * f40) + f45;
                        int i25 = i16;
                        float f53 = f47 + ((((float) jArr4[i22]) / 1000.0f) * f26 * i25);
                        if (i24 != 0) {
                            spriteBatch = spriteBatch5;
                            arrayIterator = it5;
                            resourcePackBitmapFont = font2;
                            shapeRenderer3.rectLine(f52 - f40, f51, f52, f53, 1.5f);
                        } else {
                            arrayIterator = it5;
                            spriteBatch = spriteBatch5;
                            resourcePackBitmapFont = font2;
                        }
                        i24++;
                        i22++;
                        font2 = resourcePackBitmapFont;
                        f51 = f53;
                        spriteBatch5 = spriteBatch;
                        it5 = arrayIterator;
                        i23 = 240;
                        i16 = i25;
                    }
                    SpriteBatch spriteBatch6 = spriteBatch5;
                    int i26 = i16;
                    Array.ArrayIterator<String> arrayIterator3 = it5;
                    ResourcePack.ResourcePackBitmapFont resourcePackBitmapFont2 = font2;
                    int i27 = 0;
                    while (i27 < debugManager.f9745B) {
                        float f54 = 560 + (i24 * f40) + f45;
                        float f55 = f47 + ((((float) jArr4[i27]) / 1000.0f) * f26 * i26);
                        if (i24 != 0) {
                            shapeRenderer3.rectLine(f54 - f40, f51, f54, f55, 1.5f);
                        }
                        i24++;
                        i27++;
                        f51 = f55;
                    }
                    font2 = resourcePackBitmapFont2;
                    spriteBatch5 = spriteBatch6;
                    it5 = arrayIterator3;
                    i16 = i26;
                }
                SpriteBatch spriteBatch7 = spriteBatch5;
                ResourcePack.ResourcePackBitmapFont resourcePackBitmapFont3 = font2;
                int i28 = i16;
                shapeRenderer3.setColor(1.0f, 1.0f, 1.0f, 0.14f);
                int i29 = debugManager.f9745B;
                float f56 = -1.0f;
                int i30 = 0;
                for (int i31 = 240; i29 < i31; i31 = 240) {
                    float f57 = 560 + (i30 * f40) + f45;
                    float f58 = f47 + ((((float) debugManager.f9776z[i29]) / 1000.0f) * f26 * i28);
                    if (i30 != 0) {
                        shapeRenderer3.rectLine(f57 - f40, f56, f57, f58, 3.0f);
                    }
                    i30++;
                    i29++;
                    f56 = f58;
                }
                int i32 = 0;
                while (i32 < debugManager.f9745B) {
                    float f59 = 560 + (i30 * f40) + f45;
                    float f60 = f47 + ((((float) debugManager.f9776z[i32]) / 1000.0f) * f26 * i28);
                    if (i30 != 0) {
                        shapeRenderer3.rectLine(f59 - f40, f56, f59, f60, 3.0f);
                    }
                    i30++;
                    i32++;
                    f56 = f60;
                }
                shapeRenderer3.end();
                float f61 = 5 + i28 + 50.0f;
                float f62 = i28 * 0.5f;
                float f63 = 1.0f / debugManager.f9746C;
                Gdx.f3119gl.glEnable(GL20.GL_BLEND);
                Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                shapeRenderer3.begin(ShapeRenderer.ShapeType.Filled);
                shapeRenderer3.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                float f64 = 560;
                shapeRenderer3.rect(f64 - 200.0f, f61 - 16.0f, f34 + 200.0f, 32.0f + f62 + 16.0f);
                shapeRenderer3.setColor(0.0f, 0.7f, 1.0f, 0.21f);
                int i33 = debugManager.f9745B;
                int i34 = 0;
                for (int i35 = 240; i33 < i35; i35 = 240) {
                    int[] iArr = debugManager.f9744A;
                    int i36 = i33 * 3;
                    int i37 = iArr[i36 + 1] - iArr[i36];
                    float f65 = (i34 * f40) + f64 + f45;
                    float f66 = i37 * f63 * f62;
                    if (i34 != 0) {
                        f5 = f40;
                        shapeRenderer3.rect(f65 - f40, f61, f5, f66);
                    } else {
                        f5 = f40;
                    }
                    i34++;
                    i33++;
                    f40 = f5;
                }
                float f67 = f40;
                int i38 = i34;
                for (int i39 = 0; i39 < debugManager.f9745B; i39++) {
                    int[] iArr2 = debugManager.f9744A;
                    int i40 = i39 * 3;
                    int i41 = iArr2[i40 + 1] - iArr2[i40];
                    float f68 = (i38 * f67) + f64 + f45;
                    float f69 = i41 * f63 * f62;
                    if (i38 != 0) {
                        shapeRenderer3.rect(f68 - f67, f61, f67, f69);
                    }
                    i38++;
                }
                int i42 = Integer.MAX_VALUE;
                shapeRenderer3.setColor(0.0f, 1.0f, 0.0f, 0.21f);
                int i43 = debugManager.f9745B;
                int i44 = 0;
                while (i43 < 240) {
                    int[] iArr3 = debugManager.f9744A;
                    int i45 = i43 * 3;
                    int i46 = iArr3[i45 + 1];
                    int i47 = iArr3[i45];
                    float f70 = (i44 * f67) + f64 + f45;
                    float f71 = ((i46 - i47) * f63 * f62) + f61;
                    float f72 = i47 * f63 * f62;
                    float f73 = f61;
                    if (i44 != 0) {
                        shapeRenderer3.rect(f70 - f67, f71, f67, f72);
                    }
                    if (i42 < i47) {
                        shapeRenderer3.circle(f70, f71, 4.0f, 8);
                        shapeRenderer3.circle(f70, f71, 4.0f, 8);
                        shapeRenderer3.end();
                        spriteBatch7.begin();
                        resourcePackBitmapFont3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        debugManager.f9768r.setLength(0);
                        f3 = f62;
                        f4 = f63;
                        debugManager.f9768r.append(StringFormatter.commaSeparatedNumber(i47)).append("kb");
                        resourcePackBitmapFont3.draw(spriteBatch7, debugManager.f9768r, f70 + 8.0f, f71);
                        resourcePackBitmapFont3.setColor(Color.WHITE);
                        spriteBatch7.end();
                        Gdx.f3119gl.glEnable(GL20.GL_BLEND);
                        Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                        shapeRenderer3.begin(ShapeRenderer.ShapeType.Filled);
                        shapeRenderer3.setColor(0.0f, 1.0f, 0.0f, 0.21f);
                    } else {
                        f3 = f62;
                        f4 = f63;
                    }
                    i44++;
                    i43++;
                    i42 = i47;
                    f62 = f3;
                    f61 = f73;
                    f63 = f4;
                }
                float f74 = f61;
                float f75 = f62;
                float f76 = f63;
                float f77 = 4.0f;
                int i48 = i44;
                int i49 = 0;
                while (i49 < debugManager.f9745B) {
                    int[] iArr4 = debugManager.f9744A;
                    int i50 = i49 * 3;
                    int i51 = iArr4[i50 + 1];
                    int i52 = iArr4[i50];
                    float f78 = (i48 * f67) + f64 + f45;
                    float f79 = f74 + (f76 * (i51 - i52) * f75);
                    float f80 = f76 * i52 * f75;
                    if (i48 != 0) {
                        shapeRenderer3.rect(f78 - f67, f79, f67, f80);
                    }
                    if (i42 < i52) {
                        shapeRenderer3.circle(f78, f79, f77, 8);
                        shapeRenderer3.circle(f78, f79, f77, 8);
                        shapeRenderer3.end();
                        spriteBatch7.begin();
                        resourcePackBitmapFont3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        debugManager.f9768r.setLength(0);
                        debugManager.f9768r.append(String.valueOf(StringFormatter.commaSeparatedNumber(i52))).append("kb");
                        resourcePackBitmapFont3.draw(spriteBatch7, debugManager.f9768r, f78 + 8.0f, f79);
                        resourcePackBitmapFont3.setColor(Color.WHITE);
                        spriteBatch7.end();
                        Gdx.f3119gl.glEnable(GL20.GL_BLEND);
                        Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
                        shapeRenderer3.begin(ShapeRenderer.ShapeType.Filled);
                        shapeRenderer3.setColor(0.0f, 1.0f, 0.0f, 0.21f);
                    }
                    i48++;
                    i49++;
                    i42 = i52;
                    f77 = 4.0f;
                }
                shapeRenderer3.setColor(1.0f, 0.8f, 0.0f, 0.21f);
                int i53 = debugManager.f9745B;
                float f81 = -1.0f;
                int i54 = 0;
                for (int i55 = 240; i53 < i55; i55 = 240) {
                    float f82 = (i54 * f67) + f64 + f45;
                    float f83 = f74 + (debugManager.f9744A[(i53 * 3) + 2] * f76 * f75);
                    if (i54 != 0) {
                        shapeRenderer3.rectLine(f82 - f67, f81, f82, f83, 3.0f);
                    }
                    i54++;
                    i53++;
                    f81 = f83;
                }
                int i56 = 0;
                while (i56 < debugManager.f9745B) {
                    float f84 = (i54 * f67) + f64 + f45;
                    float f85 = f74 + (debugManager.f9744A[(i56 * 3) + 2] * f76 * f75);
                    if (i54 != 0) {
                        shapeRenderer3.rectLine(f84 - f67, f81, f84, f85, 3.0f);
                    }
                    i54++;
                    i56++;
                    f81 = f85;
                }
                Color color2 = Color.WHITE;
                shapeRenderer3.setColor(color2);
                shapeRenderer3.end();
                spriteBatch7.begin();
                resourcePackBitmapFont3.setColor(0.0f, 0.7f, 1.0f, 0.56f);
                debugManager.f9768r.setLength(0);
                debugManager.f9768r.append("Total: ").append(StringFormatter.commaSeparatedNumber(debugManager.f9744A[(debugManager.f9745B * 3) + 1])).append("kb");
                float f86 = f64 - 10.0f;
                resourcePackBitmapFont3.draw(spriteBatch7, debugManager.f9768r, f86, f74 + (debugManager.f9744A[(debugManager.f9745B * 3) + 1] * f76 * f75), 1.0f, 16, false);
                resourcePackBitmapFont3.setColor(0.0f, 1.0f, 0.0f, 0.56f);
                debugManager.f9768r.setLength(0);
                debugManager.f9768r.append("Free: ").append(StringFormatter.commaSeparatedNumber(debugManager.f9744A[debugManager.f9745B * 3])).append("kb");
                resourcePackBitmapFont3.draw(spriteBatch7, debugManager.f9768r, f86, f74 + (debugManager.f9744A[debugManager.f9745B * 3] * f76 * f75), 1.0f, 16, false);
                float f87 = 0.0f;
                resourcePackBitmapFont3.setColor(1.0f, 0.7f, 0.0f, 0.56f);
                debugManager.f9768r.setLength(0);
                debugManager.f9768r.append("Max: ").append(StringFormatter.commaSeparatedNumber(debugManager.f9744A[(debugManager.f9745B * 3) + 2])).append("kb");
                resourcePackBitmapFont3.draw(spriteBatch7, debugManager.f9768r, f86, f74 + (debugManager.f9744A[(debugManager.f9745B * 3) + 2] * f76 * f75) + 16.0f, 1.0f, 16, false);
                resourcePackBitmapFont3.setColor(color2);
                spriteBatch7.end();
                int i57 = debugManager.f9745B + 1;
                debugManager.f9745B = i57;
                if (i57 == 240) {
                    debugManager.f9745B = 0;
                }
                Array.ArrayIterator<String> it6 = debugManager.f9769s.iterator();
                while (it6.hasNext()) {
                    String next4 = it6.next();
                    long[] jArr5 = debugManager.f9772v.get(next4);
                    jArr5[debugManager.f9745B] = 0;
                    int length4 = jArr5.length;
                    int i58 = 0;
                    while (true) {
                        if (i58 >= length4) {
                            z = true;
                            break;
                        } else if (jArr5[i58] != 0) {
                            z = false;
                            break;
                        } else {
                            i58++;
                        }
                    }
                    if (z) {
                        debugManager.f9772v.remove(next4);
                    }
                }
                Arrays.fill(debugManager.f9761S, 0);
                for (int i59 = Game.f8589i.soundManager.playingSoundStats.size - 1; i59 >= 0; i59--) {
                    SoundManager.PlayingSoundStat playingSoundStat = Game.f8589i.soundManager.playingSoundStats.items[i59];
                    if (playingSoundStat != null && (staticSoundType = playingSoundStat.type) != null) {
                        int[] iArr5 = debugManager.f9761S;
                        int ordinal = staticSoundType.ordinal();
                        iArr5[ordinal] = iArr5[ordinal] + 1;
                    }
                }
                debugManager.f9768r.setLength(0);
                int i60 = 0;
                while (true) {
                    int[] iArr6 = debugManager.f9761S;
                    if (i60 >= iArr6.length) {
                        break;
                    }
                    int i61 = iArr6[i60];
                    if (i61 != 0) {
                        if (i61 >= 8) {
                            debugManager.f9768r.append("[#FFFF00]");
                        }
                        debugManager.f9768r.append(StaticSoundType.values[i60].name()).append(": ").append(debugManager.f9761S[i60]).append("\n");
                        if (debugManager.f9761S[i60] >= 8) {
                            debugManager.f9768r.append("[]");
                        }
                        f87 += 1.0f;
                    }
                    i60++;
                }
                if (debugManager.f9768r.length != 0) {
                    resourcePackBitmapFont3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                    spriteBatch7.begin();
                    resourcePackBitmapFont3.draw(spriteBatch7, debugManager.f9768r, ((camera2.viewportWidth - 100.0f) - f45) - 5.0f, (f87 * resourcePackBitmapFont3.getLineHeight()) + 80.0f, 100.0f, 16, false);
                    spriteBatch7.end();
                    resourcePackBitmapFont3.setColor(Color.WHITE);
                }
            }
            debugManager.glProfiler.reset();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        this.f9751I = Game.getRealTickCount();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        for (int i = 0; i < 100; i++) {
            RandomXS128 randomXS128 = FastRandom.random;
            float nextFloat = randomXS128.nextFloat() - randomXS128.nextFloat();
            if (nextFloat < -1.0f || nextFloat > 1.0f) {
                throw new RuntimeException("Manual triangular random failed: " + nextFloat);
            }
        }
    }

    public void unregisterValue(String str) {
        this.f9771u.remove(str);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        SettingsManager.SettingsManagerListener settingsManagerListener;
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        if (settingsManager != null && (settingsManagerListener = this.f9770t) != null) {
            settingsManager.removeListener(settingsManagerListener);
        }
    }

    /* renamed from: e */
    public final void m21607e() {
        this.f9763b = Game.f8589i.settingsManager.isInDebugMode();
        this.f9764d = Game.f8589i.settingsManager.isInDebugDetailedMode();
        if (this.f9763b) {
            this.f9762a.getTable().setVisible(true);
            this.glProfiler.enable();
            return;
        }
        this.f9762a.getTable().setVisible(false);
        this.glProfiler.disable();
    }

    /* renamed from: f */
    public final void m21606f() {
        String str;
        String str2;
        String str3;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(Config.PACKAGE.substring(str.length() - 4));
            sb.append(".");
            sb.append(184);
            sb.append(".");
            if (Game.f8589i.actionResolver.isAppModified()) {
                str2 = "M";
            } else {
                str2 = "V";
            }
            sb.append(str2);
            if (Config.isModdingMode()) {
                str3 = "(" + Config.getModId() + ")";
            } else {
                str3 = "";
            }
            sb.append(str3);
            this.f9759Q = sb.toString();
            if (Game.f8589i.authManager != null) {
                this.f9759Q += "." + Game.f8589i.authManager.getPlayerId();
            }
        } catch (Exception unused) {
            this.f9759Q = "ERR";
        }
        this.f9760R.setToOrtho(false, Gdx.graphics.getWidth() * 1.5f, Gdx.graphics.getHeight() * 1.5f);
    }

    public void registerFrameDrawTimeAndMemory(long j) {
        if (!this.f9763b) {
            return;
        }
        long nanoTime = TimeUtils.nanoTime();
        this.f9748E[this.f9749G] = nanoTime - this.f9747D;
        this.f9747D = nanoTime;
        if (this.f9764d) {
            Runtime runtime = Runtime.getRuntime();
            int freeMemory = (int) (runtime.freeMemory() / 1024);
            int i = (int) (runtime.totalMemory() / 1024);
            int maxMemory = (int) (runtime.maxMemory() / 1024);
            long[] jArr = this.f9776z;
            int i2 = this.f9745B;
            jArr[i2] = j;
            int[] iArr = this.f9744A;
            iArr[i2 * 3] = freeMemory;
            iArr[(i2 * 3) + 1] = i;
            iArr[(i2 * 3) + 2] = maxMemory;
            if (this.f9746C < maxMemory) {
                this.f9746C = maxMemory;
            }
        }
    }

    public void registerFrameJob(String str, long j) {
        if (!this.f9763b) {
            return;
        }
        if (!this.f9772v.containsKey(str)) {
            this.f9772v.put(str, new long[240]);
        }
        this.f9772v.get(str)[this.f9745B] = j;
    }

    public StringBuilder registerValue(String str) {
        if (!this.f9763b) {
            return null;
        }
        if (!this.f9771u.containsKey(str)) {
            this.f9771u.put(str, new StringBuilder());
        }
        StringBuilder stringBuilder = this.f9771u.get(str);
        stringBuilder.setLength(0);
        return stringBuilder;
    }

    public DebugManager() {
        int i = LiveMusicManager.SPECTRUM_SIZE;
        this.f9755M = new float[i];
        this.f9756N = new float[i];
        this.f9757O = new float[i];
        this.f9758P = new float[i];
        this.f9761S = new int[StaticSoundType.values.length];
        this.glProfiler = new GLProfiler(Gdx.graphics);
        OrthographicCamera orthographicCamera = new OrthographicCamera();
        this.f9760R = orthographicCamera;
        orthographicCamera.setToOrtho(false, Gdx.graphics.getWidth() * 1.5f, Gdx.graphics.getHeight() * 1.5f);
    }

    public void registerGameStateUpdate() {
        if (!Config.isHeadless() && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_SHOW_FPS) != 0.0d) {
            this.f9773w.add(Game.getTimestampMillis());
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        if (Config.isHeadless()) {
            return;
        }
        Game.f8589i.authManager.addListener(new AuthManager.AuthManagerListener.AuthManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.DebugManager.1
            @Override // com.prineside.tdi2.managers.AuthManager.AuthManagerListener.AuthManagerListenerAdapter, com.prineside.tdi2.managers.AuthManager.AuthManagerListener
            public void signInStatusUpdated() {
                DebugManager.this.m21606f();
            }
        });
        Game.f8589i.addListener(new Game.GameListener() { // from class: com.prineside.tdi2.managers.DebugManager.2
            @Override // com.prineside.tdi2.Game.GameListener
            public void gameStartedLoading() {
            }

            @Override // com.prineside.tdi2.Game.GameListener
            public void render() {
            }

            @Override // com.prineside.tdi2.Game.GameListener
            public void gameLoaded() {
                String name;
                AuthManager authManager;
                DebugManager.this.m21606f();
                try {
                    Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                    httpRequest.setUrl(Config.GAME_START_LOG_URL);
                    HashMap hashMap = new HashMap();
                    Application application = Gdx.app;
                    if (application == null) {
                        name = "unknown";
                    } else {
                        name = application.getType().name();
                    }
                    hashMap.put("os", name);
                    Game game = Game.f8589i;
                    String str = "G-0000-0000-000000";
                    if (game != null && (authManager = game.authManager) != null) {
                        String playerIdCached = authManager.getPlayerIdCached();
                        if (playerIdCached != null) {
                            str = playerIdCached;
                        }
                        hashMap.put("playerid", str);
                        if (Game.f8589i.authManager.getSessionId() != null) {
                            hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
                        }
                    } else {
                        hashMap.put("playerid", "G-0000-0000-000000");
                    }
                    ObjectMap<String, String> deviceInfo = Game.f8589i.actionResolver.getDeviceInfo();
                    Json json = new Json(JsonWriter.OutputType.json);
                    StringWriter stringWriter = new StringWriter();
                    json.setWriter(stringWriter);
                    json.writeObjectStart();
                    if (Game.f8589i.localeManager != null) {
                        try {
                            json.writeValue("g.locale", Charset.defaultCharset() + "," + Game.f8589i.localeManager.getLocale() + "," + Game.f8589i.localeManager.i18n.getLocale());
                        } catch (Exception unused) {
                        }
                    }
                    ObjectMap.Entries<String, String> it = deviceInfo.iterator();
                    while (it.hasNext()) {
                        ObjectMap.Entry next = it.next();
                        json.writeValue((String) next.key, next.value);
                    }
                    json.writeObjectStart("s.properties");
                    try {
                        Properties properties = System.getProperties();
                        Enumeration<?> propertyNames = properties.propertyNames();
                        while (propertyNames.hasMoreElements()) {
                            Object nextElement = propertyNames.nextElement();
                            Object obj = properties.get(nextElement);
                            if (obj != null) {
                                json.writeValue(nextElement.toString(), ((String) obj).trim());
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    json.writeObjectEnd();
                    json.writeObjectStart("s.runtime");
                    try {
                        Runtime runtime = Runtime.getRuntime();
                        json.writeValue("proc_av", Integer.valueOf(runtime.availableProcessors()));
                        json.writeValue("mem_free", Long.valueOf(runtime.freeMemory()));
                        json.writeValue("mem_max", Long.valueOf(runtime.maxMemory()));
                        json.writeValue("mem_total", Long.valueOf(runtime.totalMemory()));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    json.writeObjectEnd();
                    json.writeObjectStart("s.graphics");
                    try {
                        json.writeValue("type", Gdx.graphics.getGLVersion().getType().toString());
                        json.writeValue("version", Gdx.graphics.getGLVersion().getMajorVersion() + "." + Gdx.graphics.getGLVersion().getMinorVersion() + "." + Gdx.graphics.getGLVersion().getReleaseVersion());
                        json.writeValue("renderer", Gdx.graphics.getGLVersion().getRendererString());
                        json.writeValue("vendor", Gdx.graphics.getGLVersion().getVendorString());
                        json.writeValue("bb_size", Gdx.graphics.getBackBufferWidth() + "x" + Gdx.graphics.getBackBufferHeight());
                        json.writeValue("density", Float.valueOf(Gdx.graphics.getDensity()));
                        json.writeValue("max_txt_size", Integer.valueOf(Config.getMaxTextureSize()));
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    json.writeObjectEnd();
                    json.writeObjectEnd();
                    hashMap.put("device", stringWriter.toString());
                    try {
                        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.DebugManager.2.1
                            @Override // com.badlogic.gdx.Net.HttpResponseListener
                            public void cancelled() {
                                System.out.println("logGameStart: cancelled");
                            }

                            @Override // com.badlogic.gdx.Net.HttpResponseListener
                            public void failed(Throwable th) {
                                PrintStream printStream = System.out;
                                printStream.println("logGameStart: failed - " + th.getMessage());
                            }

                            @Override // com.badlogic.gdx.Net.HttpResponseListener
                            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                                try {
                                    String resultAsString = httpResponse.getResultAsString();
                                    PrintStream printStream = System.out;
                                    printStream.println("logGameStart: " + resultAsString);
                                } catch (Exception e4) {
                                    PrintStream printStream2 = System.out;
                                    printStream2.println("logGameStart: " + e4.getMessage());
                                    e4.printStackTrace();
                                }
                            }
                        });
                    } catch (Exception e4) {
                        for (String str2 : hashMap.keySet()) {
                            Logger.log("DebugManager", str2 + ": " + ((String) hashMap.get(str2)));
                        }
                        throw e4;
                    }
                } catch (Exception e5) {
                    Logger.error("DebugManager", "failed to log game start", e5);
                }
            }
        });
        Game.f8589i.addScreenResizeListener(new Game.ScreenResizeListener() { // from class: com.prineside.tdi2.managers.DebugManager.3
            @Override // com.prineside.tdi2.Game.ScreenResizeListener
            public void resize(int i, int i2) {
                if (i <= 0 || i2 <= 0) {
                    return;
                }
                DebugManager.this.m21606f();
            }

            @Override // com.prineside.tdi2.Game.ScreenResizeListener
            public void visibleDisplayFrameChanged() {
            }
        });
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 19001, "DebugManager main");
        this.f9762a = addLayer;
        Table table = addLayer.getTable();
        table.setTouchable(Touchable.disabled);
        table.setDebug(false);
        Label.LabelStyle labelStyle = new Label.LabelStyle();
        labelStyle.font = Game.f8589i.assetManager.getFont(16);
        labelStyle.background = Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f));
        Label label = new Label("Debug", labelStyle);
        this.f9765k = label;
        label.setAlignment(16);
        table.add((Table) this.f9765k).pad(5.0f).expand().top().right();
        SettingsManager.SettingsManagerListener.SettingsManagerListenerAdapter settingsManagerListenerAdapter = new SettingsManager.SettingsManagerListener.SettingsManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.DebugManager.4
            @Override // com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener.SettingsManagerListenerAdapter, com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener
            public void settingsChanged() {
                DebugManager.this.m21607e();
            }
        };
        this.f9770t = settingsManagerListenerAdapter;
        Game.f8589i.settingsManager.addListener(settingsManagerListenerAdapter);
        m21607e();
    }
}

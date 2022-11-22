package com.prineside.tdi2;

import android.app.AlertDialog;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Point;
import android.graphics.Rect;
import android.opengl.GLES30;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import android.view.Display;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.EditText;
import androidx.work.C0380b;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.backends.android.AndroidApplicationConfiguration;
import com.badlogic.gdx.backends.android.AndroidAudio;
import com.badlogic.gdx.backends.android.AsynchronousAndroidAudio;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.pay.PurchaseManager;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Timer;
import com.google.android.gms.auth.api.signin.C1408a;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.prineside.tdi2.ActionResolver;
import com.prineside.tdi2.AndroidLauncher;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.shared.Notifications;
import com.prineside.tdi2.screens.GameScreen;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.ObjectRetriever;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import net.bytebuddy.android.AndroidClassLoadingStrategy;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import p025c3.AbstractC1038a;
import p025c3.AbstractC1039b;
import p078h4.C4025d;
import p078h4.InterfaceC4029e;
import p095j3.AbstractC4327b;
import p095j3.AbstractC4328c;
import p095j3.InterfaceC4326a;
import p097j5.AbstractC4346i;
import p097j5.InterfaceC4336d;
import p104k3.AbstractC4441a;
import p104k3.AbstractC4442b;
import p106k5.C4469d;
import p106k5.C4471e;
import p106k5.C4472f;
import p106k5.InterfaceC4464b;
import p106k5.InterfaceC4466c;
import p153p7.InterfaceC5371d;
import p158q3.C5411b;
import p163r.C5481o;
import p163r.C5505x0;
import p184t2.AbstractC6715l;
import p184t2.C6702a;
import p184t2.C6708f;
import p184t2.C6716m;
import p184t2.C6718o;
import p184t2.C6723t;
import p184t2.InterfaceC6721r;
import p194u3.C6894b;
import p209w0.AbstractC7131t;
import p209w0.C7117l;
import p209w0.EnumC7107d;
import p227y2.InterfaceC7406b;
import p227y2.InterfaceC7407c;
/* loaded from: classes2.dex */
public class AndroidLauncher extends AndroidApplication {

    /* renamed from: F */
    public static final IntMap<String> f8413F;

    /* renamed from: G */
    public static String f8414G;

    /* renamed from: H */
    public static boolean f8415H;

    /* renamed from: I */
    public static boolean f8416I;

    /* renamed from: A */
    public FirebaseAnalytics f8417A;

    /* renamed from: B */
    public C5411b f8418B;

    /* renamed from: C */
    public PurchaseManager f8419C;

    /* renamed from: D */
    public InterfaceC4466c f8420D;

    /* renamed from: E */
    public boolean f8421E;

    /* renamed from: k */
    public ObjectRetriever<String> f8422k;

    /* renamed from: p */
    public AbstractC4327b f8423p;

    /* renamed from: q */
    public AbstractC4441a f8424q;

    /* renamed from: r */
    public AbstractC1038a f8425r;

    /* renamed from: s */
    public Game.GameListener f8426s;

    /* renamed from: t */
    public ActionResolverAndroid f8427t;

    /* renamed from: v */
    public Game f8429v;

    /* renamed from: w */
    public Handler f8430w;

    /* renamed from: x */
    public Preferences f8431x;

    /* renamed from: z */
    public long f8433z;

    /* renamed from: u */
    public final Rect f8428u = new Rect();

    /* renamed from: y */
    public final IntArray f8432y = new IntArray();

    /* renamed from: com.prineside.tdi2.AndroidLauncher$4 */
    /* loaded from: classes2.dex */
    public class C14664 implements Game.GameListener {

        /* renamed from: a */
        public Timer.Task f8437a;

        public C14664() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: F */
        public /* synthetic */ void m22136F() {
            m22092l0("main_menu_new_game_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: G */
        public /* synthetic */ void m22135G() {
            m22092l0("shared_back_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: H */
        public /* synthetic */ void m22134H() {
            m22092l0("dialog_left_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: J */
        public /* synthetic */ void m22132J() {
            m22092l0("level_select_level_1.1");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: K */
        public /* synthetic */ void m22131K() {
            m22092l0("level_select_overlay_continue_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: L */
        public /* synthetic */ void m22130L() {
            m22092l0("next_wave_call_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: M */
        public /* synthetic */ void m22129M() {
            m22096j0(0.25f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: N */
        public /* synthetic */ void m22128N() {
            m22096j0(0.25f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: P */
        public /* synthetic */ void m22126P() {
            m22092l0("build_menu_tower_build_button_BASIC");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: Q */
        public /* synthetic */ void m22125Q() {
            m22092l0("build_menu_tower_build_button_BASIC");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: R */
        public /* synthetic */ void m22124R() {
            m22092l0("main_menu_news_button");
        }

        /* renamed from: S */
        public static /* synthetic */ void m22123S() {
        }

        /* renamed from: T */
        public static /* synthetic */ void m22122T() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: U */
        public /* synthetic */ void m22121U() {
            m22092l0("game_pause_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: V */
        public /* synthetic */ void m22120V() {
            m22092l0("pause_menu_main_menu_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: W */
        public /* synthetic */ void m22119W() {
            m22096j0(0.02f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: X */
        public /* synthetic */ void m22118X() {
            m22096j0(0.02f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: Y */
        public /* synthetic */ void m22117Y() {
            m22096j0(0.02f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: Z */
        public /* synthetic */ void m22116Z() {
            m22096j0(0.02f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a0 */
        public /* synthetic */ void m22114a0() {
            m22096j0(0.02f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b0 */
        public /* synthetic */ void m22112b0() {
            m22096j0(0.02f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c0 */
        public /* synthetic */ void m22110c0() {
            m22092l0("web_browser_close_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d0 */
        public /* synthetic */ void m22108d0() {
            m22092l0("main_menu_season_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e0 */
        public /* synthetic */ void m22106e0() {
            m22092l0("web_browser_close_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f0 */
        public /* synthetic */ void m22104f0() {
            m22092l0("main_menu_music_player_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g0 */
        public /* synthetic */ void m22102g0() {
            m22092l0("music_list_overlay_close_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h0 */
        public /* synthetic */ void m22100h0() {
            m22092l0("main_menu_new_game_button");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i0 */
        public /* synthetic */ void m22098i0() {
            m22092l0("level_select_skip_tutorials_button");
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void gameStartedLoading() {
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void render() {
        }

        /* renamed from: O */
        public static /* synthetic */ void m22127O() {
            try {
                GameScreen gameScreen = (GameScreen) Game.f8589i.screenManager.getCurrentScreen();
                GameSystemProvider gameSystemProvider = gameScreen.f10670S;
                Array array = new Array();
                for (int i = 0; i < gameSystemProvider.map.getMap().tilesArray.size; i++) {
                    Tile tile = gameSystemProvider.map.getMap().tilesArray.items[i];
                    if (tile.type == TileType.PLATFORM) {
                        array.add(tile);
                    }
                }
                gameScreen.f10670S.map.setSelectedTile((Tile) array.random());
            } catch (Exception e) {
                Game.f8589i.uiManager.notifications.add(e.getMessage(), null, null, null);
            }
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void gameLoaded() {
            Game.f8589i.uiManager.setLogTouchDownsEnabled(true);
            final Runnable[] runnableArr = {new Runnable() { // from class: com.prineside.tdi2.p
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22136F();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.s
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22135G();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.e0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22124R();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.g0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22110c0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.h0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22108d0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.i0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22106e0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.j0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22104f0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.k0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22102g0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.l0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22100h0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.n0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22098i0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.b0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22134H();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.m0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.m22133I();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.o0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22132J();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.p0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22131K();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.q0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22130L();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.r0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22129M();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.s0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22128N();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.t0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.m22127O();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.u0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22126P();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.q
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22125Q();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.t
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.m22123S();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.u
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.m22122T();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.v
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22121U();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.w
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22120V();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.x
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22119W();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.y
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22118X();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.z
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22117Y();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.a0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22116Z();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.c0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22114a0();
                }
            }, new Runnable() { // from class: com.prineside.tdi2.d0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14664.this.m22112b0();
                }
            }, new RunnableC1650f0()};
            final int[] iArr = {0};
            Timer.Task task = new Timer.Task() { // from class: com.prineside.tdi2.AndroidLauncher.4.2
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    int i = iArr[0];
                    Runnable[] runnableArr2 = runnableArr;
                    if (i < runnableArr2.length) {
                        runnableArr2[i].run();
                        int[] iArr2 = iArr;
                        iArr2[0] = iArr2[0] + 1;
                        Timer.schedule(C14664.this.f8437a, 2.0f);
                    }
                }
            };
            this.f8437a = task;
            Timer.schedule(task, 3.0f);
        }

        /* renamed from: j0 */
        public final void m22096j0(float f) {
            int width = (int) (Gdx.graphics.getWidth() * f);
            int height = (int) (Gdx.graphics.getHeight() * f);
            m22094k0(width + FastRandom.getFairInt(Gdx.graphics.getWidth() - (width * 2)), height + FastRandom.getFairInt(Gdx.graphics.getHeight() - (height * 2)), 0.1f);
        }

        /* renamed from: k0 */
        public final void m22094k0(final int i, final int i2, float f) {
            final InputProcessor inputProcessor = Gdx.input.getInputProcessor();
            if (inputProcessor != null) {
                inputProcessor.touchDown(i, i2, 0, 0);
                if (f <= 0.0f) {
                    inputProcessor.touchUp(i, i2, 0, 0);
                    return;
                } else {
                    Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.AndroidLauncher.4.1
                        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                        public void run() {
                            inputProcessor.touchUp(i, i2, 0, 0);
                        }
                    }, f);
                    return;
                }
            }
            Game.f8589i.uiManager.notifications.add("tap: failed to get InputProcessor", null, null, null);
        }

        /* renamed from: l0 */
        public final void m22092l0(String str) {
            Actor findActor = Game.f8589i.uiManager.findActor(str);
            if (findActor != null) {
                Vector2 vector2 = new Vector2(findActor.getWidth() * 0.5f, findActor.getHeight() * 0.5f);
                findActor.localToScreenCoordinates(vector2);
                m22094k0(MathUtils.ceil(vector2.f5527x), MathUtils.ceil(vector2.f5528y), 0.1f);
                return;
            }
            Notifications notifications = Game.f8589i.uiManager.notifications;
            notifications.add("tap: failed to find actor \"" + str + "\"", null, null, null);
        }

        /* renamed from: I */
        public static /* synthetic */ void m22133I() {
            GameStateSystem.deleteSavedGame();
            Game.f8589i.screenManager.goToLevelSelectScreen();
        }
    }

    /* renamed from: com.prineside.tdi2.AndroidLauncher$8 */
    /* loaded from: classes2.dex */
    public class C14768 implements Game.GameListener {
        public C14768() {
        }

        /* renamed from: e */
        public static /* synthetic */ void m22073e(C4471e c4471e) {
            Logger.error("AndroidLauncher", "failed consentInformation.requestConsentInfoUpdate: " + c4471e.m16330b() + " (code " + c4471e.m16331a() + ")");
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void gameStartedLoading() {
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void render() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m22074d() {
            if (AndroidLauncher.this.f8420D.mo1391c()) {
                AndroidLauncher.this.loadThatUglyConsentForm();
            } else {
                Logger.log("AndroidLauncher", "consentInformation.isConsentFormAvailable() is false");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m22072f() {
            C4469d.C4470a c4470a = new C4469d.C4470a();
            c4470a.m16335b(false);
            C4469d m16336a = c4470a.m16336a();
            AndroidLauncher androidLauncher = AndroidLauncher.this;
            androidLauncher.f8420D = C4472f.m16329a(androidLauncher);
            AndroidLauncher.this.f8420D.mo1393a(AndroidLauncher.this, m16336a, new InterfaceC4466c.InterfaceC4468b() { // from class: com.prineside.tdi2.w0
                @Override // p106k5.InterfaceC4466c.InterfaceC4468b
                /* renamed from: a */
                public final void mo16340a() {
                    AndroidLauncher.C14768.this.m22074d();
                }
            }, new InterfaceC4466c.InterfaceC4467a() { // from class: com.prineside.tdi2.x0
                @Override // p106k5.InterfaceC4466c.InterfaceC4467a
                /* renamed from: a */
                public final void mo16341a(C4471e c4471e) {
                    AndroidLauncher.C14768.m22073e(c4471e);
                }
            });
        }

        @Override // com.prineside.tdi2.Game.GameListener
        public void gameLoaded() {
            Logger.log("AndroidLauncher", "game loaded, package name: " + AndroidLauncher.this.getPackageName());
            AndroidLauncher.this.runOnUiThread(new Runnable() { // from class: com.prineside.tdi2.v0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.C14768.this.m22072f();
                }
            });
        }
    }

    /* renamed from: com.prineside.tdi2.AndroidLauncher$9 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C14779 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8457a;

        static {
            int[] iArr = new int[SettingsManager.InitConfig.values().length];
            f8457a = iArr;
            try {
                iArr[SettingsManager.InitConfig.GRAPHICS_VSYNC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public class ActionResolverAndroid extends ActionResolver.ActionResolverAdapter {

        /* renamed from: b */
        public ActionResolver.InitConfigManager f8458b;

        /* renamed from: c */
        public ClassLoadingStrategy f8459c;

        public ActionResolverAndroid() {
        }

        /* renamed from: n */
        public static /* synthetic */ void m22058n(Input.TextInputListener textInputListener, DialogInterface dialogInterface) {
            Application application = Gdx.app;
            textInputListener.getClass();
            application.postRunnable(new RunnableC3099z0(textInputListener));
        }

        /* renamed from: p */
        public static /* synthetic */ void m22056p(Input.TextInputListener textInputListener, EditText editText) {
            textInputListener.input(editText.getText().toString());
        }

        /* renamed from: q */
        public static /* synthetic */ void m22055q(final Input.TextInputListener textInputListener, final EditText editText, DialogInterface dialogInterface, int i) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.a1
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.ActionResolverAndroid.m22056p(Input.TextInputListener.this, editText);
                }
            });
        }

        /* renamed from: r */
        public static /* synthetic */ void m22054r(Input.TextInputListener textInputListener, DialogInterface dialogInterface, int i) {
            Application application = Gdx.app;
            textInputListener.getClass();
            application.postRunnable(new RunnableC3099z0(textInputListener));
        }

        /* renamed from: s */
        public static /* synthetic */ void m22053s(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.TRUE);
        }

        /* renamed from: u */
        public static /* synthetic */ void m22051u(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.TRUE);
        }

        /* renamed from: v */
        public static /* synthetic */ void m22050v(final ObjectRetriever objectRetriever, InterfaceC4326a interfaceC4326a) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.c1
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.ActionResolverAndroid.m22051u(ObjectRetriever.this);
                }
            });
        }

        /* renamed from: w */
        public static /* synthetic */ void m22049w(ObjectRetriever objectRetriever) {
            objectRetriever.retrieved(Boolean.TRUE);
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public boolean canShowRewardAd() {
            return getSecondsTillCanShowRewardAd() == 0;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void getMobilePasswordInput(final Input.TextInputListener textInputListener, final String str, final String str2, final String str3) {
            AndroidLauncher.this.f8430w.post(new Runnable() { // from class: com.prineside.tdi2.d1
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.ActionResolverAndroid.this.m22057o(str, str3, str2, textInputListener);
                }
            });
        }

        @Override // com.prineside.tdi2.ActionResolver
        public InterfaceC5371d getOkJoySDK() {
            return null;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public PurchaseManager getPurchaseManager() {
            return AndroidLauncher.this.f8419C;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public int[] getScreenSafeAreaInsets() {
            return new int[4];
        }

        @Override // com.prineside.tdi2.ActionResolver
        public String getShortDeviceInfo() {
            return String.valueOf(Build.FINGERPRINT);
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public boolean hasGoogleAuth() {
            return AndroidLauncher.this.f8418B != null;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public boolean hasNotifications() {
            return true;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public boolean isSignedInWithGoogle() {
            return C1408a.m23048c(AndroidLauncher.this) != null;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void logIAP(Config.ProductId productId, Transaction transaction) {
            Logger.log("AndroidLauncher", "al logIAP");
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void logRewardedVideoViewed(PurchaseManager.RewardingAdsType rewardingAdsType) {
            Logger.log("AndroidLauncher", "al logRVV");
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void onExit() {
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public boolean rewardAdsAvailable() {
            return true;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void unlockAchievement(final AchievementType achievementType) {
            AndroidLauncher.this.runOnUiThread(new Runnable() { // from class: com.prineside.tdi2.y0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.ActionResolverAndroid.this.m22046z(achievementType);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public /* synthetic */ void m22057o(String str, String str2, String str3, final Input.TextInputListener textInputListener) {
            AlertDialog.Builder builder = new AlertDialog.Builder(AndroidLauncher.this);
            builder.setTitle(str);
            final EditText editText = new EditText(AndroidLauncher.this);
            editText.setHint(str2);
            editText.setText(str3);
            editText.setSingleLine();
            editText.setInputType(129);
            builder.setView(editText);
            builder.setPositiveButton(AndroidLauncher.this.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.prineside.tdi2.j1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    AndroidLauncher.ActionResolverAndroid.m22055q(Input.TextInputListener.this, editText, dialogInterface, i);
                }
            });
            builder.setNegativeButton(AndroidLauncher.this.getString(17039360), new DialogInterface.OnClickListener() { // from class: com.prineside.tdi2.k1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    AndroidLauncher.ActionResolverAndroid.m22054r(Input.TextInputListener.this, dialogInterface, i);
                }
            });
            builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.prineside.tdi2.l1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    AndroidLauncher.ActionResolverAndroid.m22058n(Input.TextInputListener.this, dialogInterface);
                }
            });
            builder.show();
        }

        /* renamed from: t */
        public static /* synthetic */ void m22052t(final ObjectRetriever objectRetriever, InterfaceC4326a interfaceC4326a) {
            Logger.log("AndroidLauncher", "The user earned the reward.");
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.b1
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.ActionResolverAndroid.m22053s(ObjectRetriever.this);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: x */
        public /* synthetic */ void m22048x(final ObjectRetriever objectRetriever) {
            if (AndroidLauncher.this.f8423p != null) {
                AndroidLauncher androidLauncher = AndroidLauncher.this;
                androidLauncher.f8423p.mo10652c(androidLauncher, new InterfaceC6721r() { // from class: com.prineside.tdi2.g1
                    @Override // p184t2.InterfaceC6721r
                    /* renamed from: a */
                    public final void mo3558a(InterfaceC4326a interfaceC4326a) {
                        AndroidLauncher.ActionResolverAndroid.m22052t(ObjectRetriever.this, interfaceC4326a);
                    }
                });
                AndroidLauncher.this.f8423p = null;
            } else if (AndroidLauncher.this.f8424q != null) {
                AndroidLauncher androidLauncher2 = AndroidLauncher.this;
                androidLauncher2.f8424q.mo7155c(androidLauncher2, new InterfaceC6721r() { // from class: com.prineside.tdi2.h1
                    @Override // p184t2.InterfaceC6721r
                    /* renamed from: a */
                    public final void mo3558a(InterfaceC4326a interfaceC4326a) {
                        AndroidLauncher.ActionResolverAndroid.m22050v(ObjectRetriever.this, interfaceC4326a);
                    }
                });
                AndroidLauncher.this.f8424q = null;
            } else if (AndroidLauncher.this.f8425r != null) {
                AndroidLauncher androidLauncher3 = AndroidLauncher.this;
                androidLauncher3.f8425r.mo12204d(androidLauncher3);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.i1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidLauncher.ActionResolverAndroid.m22049w(ObjectRetriever.this);
                    }
                });
                AndroidLauncher.this.f8425r = null;
            } else {
                Logger.log("AndroidLauncher", "The rewarded ad wasn't ready yet.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: z */
        public /* synthetic */ void m22046z(AchievementType achievementType) {
            try {
                if (isSignedInWithGoogle()) {
                    String str = (String) AndroidLauncher.f8413F.get(achievementType.ordinal(), null);
                    if (str != null) {
                        AndroidLauncher androidLauncher = AndroidLauncher.this;
                        C4025d.m17528a(androidLauncher, C1408a.m23048c(androidLauncher)).mo17549d(str);
                    } else {
                        Logger.log("AndroidLauncher", "achievement id not found for " + achievementType.name());
                    }
                }
            } catch (Exception e) {
                Logger.log("AndroidLauncher", "failed to unlock achievement: " + e.getMessage());
            }
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void addNotification(int i, String str, String str2, long j) {
            long timestampMillis = j - Game.getTimestampMillis();
            if (timestampMillis <= 0) {
                AndroidLauncher.showNotificationNow(AndroidLauncher.this, i, str, str2);
                return;
            }
            C0380b m26655a = new C0380b.C0381a().m26651e("id", i).m26650f("title", str).m26650f("description", str2).m26655a();
            try {
                AbstractC7131t m2475g = AbstractC7131t.m2475g(AndroidLauncher.this);
                m2475g.m2477b("notificationWork" + i, EnumC7107d.REPLACE, new C7117l.C7118a(NotifyWorker.class).m2465f(timestampMillis, TimeUnit.MILLISECONDS).m2464g(m26655a).m2470a("notificationWork").m2469b()).mo2192a();
            } catch (Exception e) {
                Logger.error("AndroidLauncher", "failed to add notification", e);
            }
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void clearNotification(int i) {
            try {
                AbstractC7131t m2475g = AbstractC7131t.m2475g(AndroidLauncher.this);
                m2475g.mo2171d("notificationWork" + i);
                NotificationManager notificationManager = (NotificationManager) AndroidLauncher.this.getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.cancel(i);
                }
            } catch (Exception e) {
                Logger.error("AndroidLauncher", "failed to clear notification", e);
            }
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void generateDeviceReport(Json json) {
            FeatureInfo[] systemAvailableFeatures;
            int i;
            PackageManager packageManager = AndroidLauncher.this.getPackageManager();
            json.writeValue("id", AndroidLauncher.this.m22188W());
            json.writeValue("board", String.valueOf(Build.BOARD));
            json.writeValue("bootloader", String.valueOf(Build.BOOTLOADER));
            json.writeValue("brand", String.valueOf(Build.BRAND));
            json.writeValue("device", String.valueOf(Build.DEVICE));
            json.writeValue("display", String.valueOf(Build.DISPLAY));
            json.writeValue("fingerprint", String.valueOf(Build.FINGERPRINT));
            json.writeValue("hardware", String.valueOf(Build.HARDWARE));
            json.writeValue("host", String.valueOf(Build.HOST));
            json.writeValue("build_id", String.valueOf(Build.ID));
            json.writeValue("manufacturer", String.valueOf(Build.MANUFACTURER));
            json.writeValue("model", String.valueOf(Build.MODEL));
            json.writeValue("product", String.valueOf(Build.PRODUCT));
            json.writeValue("tags", String.valueOf(Build.TAGS));
            json.writeValue("type", String.valueOf(Build.TYPE));
            json.writeValue("user", String.valueOf(Build.USER));
            json.writeValue("sdk", String.valueOf(Build.VERSION.SDK_INT));
            json.writeObjectStart("features");
            for (FeatureInfo featureInfo : packageManager.getSystemAvailableFeatures()) {
                String str = featureInfo.name;
                if (str == null) {
                    json.writeValue("GLES_VERSION", featureInfo.getGlEsVersion());
                } else {
                    if (Build.VERSION.SDK_INT >= 24) {
                        i = featureInfo.version;
                    } else {
                        i = 0;
                    }
                    json.writeValue(str, Integer.valueOf(i));
                }
            }
            json.writeObjectEnd();
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public ClassLoadingStrategy getByteBuddyClassLoadingStrategy() {
            if (this.f8459c == null) {
                this.f8459c = new AndroidClassLoadingStrategy.Wrapping(AndroidLauncher.this.getContext().getDir("generated", 0));
            }
            return this.f8459c;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public ObjectMap<String, String> getDeviceInfo() {
            boolean z;
            ObjectMap<String, String> objectMap = new ObjectMap<>();
            objectMap.put("id", AndroidLauncher.this.m22188W());
            objectMap.put("board", String.valueOf(Build.BOARD));
            objectMap.put("bootloader", String.valueOf(Build.BOOTLOADER));
            objectMap.put("brand", String.valueOf(Build.BRAND));
            objectMap.put("device", String.valueOf(Build.DEVICE));
            objectMap.put("display", String.valueOf(Build.DISPLAY));
            objectMap.put("fingerprint", String.valueOf(Build.FINGERPRINT));
            objectMap.put("hardware", String.valueOf(Build.HARDWARE));
            objectMap.put("host", String.valueOf(Build.HOST));
            objectMap.put("build_id", String.valueOf(Build.ID));
            objectMap.put("manufacturer", String.valueOf(Build.MANUFACTURER));
            objectMap.put("model", String.valueOf(Build.MODEL));
            objectMap.put("product", String.valueOf(Build.PRODUCT));
            objectMap.put("tags", String.valueOf(Build.TAGS));
            objectMap.put("type", String.valueOf(Build.TYPE));
            objectMap.put("user", String.valueOf(Build.USER));
            int i = Build.VERSION.SDK_INT;
            objectMap.put("sdk", String.valueOf(i));
            if (i >= 26) {
                z = AndroidLauncher.this.getPackageManager().isInstantApp();
            } else {
                z = false;
            }
            objectMap.put("instantapp", String.valueOf(z));
            return objectMap;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public ActionResolver.InitConfigManager getInitConfigManager() {
            if (this.f8458b == null) {
                this.f8458b = new ActionResolver.InitConfigManager() { // from class: com.prineside.tdi2.AndroidLauncher.ActionResolverAndroid.1
                    @Override // com.prineside.tdi2.ActionResolver.InitConfigManager
                    public int getDefault(SettingsManager.InitConfig initConfig) {
                        int i = C14779.f8457a[initConfig.ordinal()];
                        return 0;
                    }

                    @Override // com.prineside.tdi2.ActionResolver.InitConfigManager
                    public boolean isAvailable(SettingsManager.InitConfig initConfig) {
                        return initConfig == SettingsManager.InitConfig.GRAPHICS_AA_LEVELS;
                    }

                    @Override // com.prineside.tdi2.ActionResolver.InitConfigManager
                    /* renamed from: b */
                    public String mo22045b() {
                        try {
                            File file = new File(AndroidLauncher.this.getFilesDir(), ActionResolver.InitConfigManager.INIT_CONFIG_FILE);
                            if (file.exists()) {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
                                StringBuilder sb = new StringBuilder();
                                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                                    sb.append(readLine);
                                    sb.append("\n");
                                }
                                return sb.toString();
                            }
                            return "{}";
                        } catch (Exception unused) {
                            return "{}";
                        }
                    }

                    @Override // com.prineside.tdi2.ActionResolver.InitConfigManager
                    /* renamed from: d */
                    public void mo22044d(String str) {
                        try {
                            FileWriter fileWriter = new FileWriter(new File(AndroidLauncher.this.getFilesDir(), ActionResolver.InitConfigManager.INIT_CONFIG_FILE));
                            fileWriter.write(str);
                            fileWriter.close();
                        } catch (Exception e) {
                            Logger.error("AndroidLauncher", "failed to save init config", e);
                        }
                    }
                };
            }
            return this.f8458b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
            if (r0 < 0) goto L20;
         */
        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getSecondsTillCanShowRewardAd() {
            /*
                r11 = this;
                com.prineside.tdi2.AndroidLauncher r0 = com.prineside.tdi2.AndroidLauncher.this
                j3.b r0 = com.prineside.tdi2.AndroidLauncher.m22151r(r0)
                if (r0 != 0) goto L1b
                com.prineside.tdi2.AndroidLauncher r0 = com.prineside.tdi2.AndroidLauncher.this
                c3.a r0 = com.prineside.tdi2.AndroidLauncher.m22198M(r0)
                if (r0 != 0) goto L1b
                com.prineside.tdi2.AndroidLauncher r0 = com.prineside.tdi2.AndroidLauncher.this
                k3.a r0 = com.prineside.tdi2.AndroidLauncher.m22204G(r0)
                if (r0 == 0) goto L19
                goto L1b
            L19:
                r0 = -1
                return r0
            L1b:
                com.prineside.tdi2.AndroidLauncher r0 = com.prineside.tdi2.AndroidLauncher.this
                com.badlogic.gdx.utils.IntArray r0 = com.prineside.tdi2.AndroidLauncher.m22147u(r0)
                int r0 = r0.size
                r1 = 30
                r2 = 0
                if (r0 < r1) goto L44
                com.prineside.tdi2.AndroidLauncher r0 = com.prineside.tdi2.AndroidLauncher.this
                com.badlogic.gdx.utils.IntArray r0 = com.prineside.tdi2.AndroidLauncher.m22147u(r0)
                r0.sort()
                int r0 = com.prineside.tdi2.Game.getTimestampSeconds()
                com.prineside.tdi2.AndroidLauncher r1 = com.prineside.tdi2.AndroidLauncher.this
                com.badlogic.gdx.utils.IntArray r1 = com.prineside.tdi2.AndroidLauncher.m22147u(r1)
                int[] r1 = r1.items
                r1 = r1[r2]
                int r0 = r0 - r1
                int r0 = 1800 - r0
                if (r0 >= 0) goto L45
            L44:
                r0 = 0
            L45:
                com.prineside.tdi2.Game r1 = com.prineside.tdi2.Game.f8589i
                long r3 = r1.getMillisTillGameStart()
                r5 = 30000(0x7530, double:1.4822E-319)
                long r3 = r5 - r3
                r7 = 1000(0x3e8, double:4.94E-321)
                long r3 = r3 / r7
                int r1 = (int) r3
                long r3 = com.prineside.tdi2.Game.getTimestampMillis()
                com.prineside.tdi2.AndroidLauncher r9 = com.prineside.tdi2.AndroidLauncher.this
                long r9 = com.prineside.tdi2.AndroidLauncher.m22146v(r9)
                long r3 = r3 - r9
                long r5 = r5 - r3
                long r5 = r5 / r7
                int r3 = (int) r5
                if (r1 > 0) goto L68
                if (r3 > 0) goto L68
                if (r0 > 0) goto L68
                return r2
            L68:
                int r1 = java.lang.StrictMath.max(r1, r3)
                int r0 = java.lang.StrictMath.max(r1, r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.AndroidLauncher.ActionResolverAndroid.getSecondsTillCanShowRewardAd():int");
        }

        @Override // com.prineside.tdi2.ActionResolver
        public String glGetStringi(int i, int i2) {
            if (Build.VERSION.SDK_INT >= 18) {
                return GLES30.glGetStringi(i, i2);
            }
            return null;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void logCurrencyReceived(String str, int i) {
            if (AndroidLauncher.this.f8417A != null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("value", String.valueOf(i));
            bundle.putString("virtual_currency_name", str);
            AndroidLauncher.this.f8417A.m22963a("earn_virtual_currency", bundle);
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void logCurrencySpent(String str, String str2, int i) {
            if (AndroidLauncher.this.f8417A == null) {
                return;
            }
            Bundle bundle = new Bundle();
            if (str != null) {
                bundle.putString("item_name", str);
            }
            bundle.putString("value", String.valueOf(i));
            bundle.putString("virtual_currency_name", str2);
            AndroidLauncher.this.f8417A.m22963a("spend_virtual_currency", bundle);
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void logCustomEvent(String str, String[] strArr) {
            if (AndroidLauncher.this.f8417A == null) {
                return;
            }
            Bundle bundle = new Bundle();
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i += 2) {
                    bundle.putString(strArr[i], strArr[i + 1]);
                }
            }
            AndroidLauncher.this.f8417A.m22963a(str, bundle);
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void logLogined(String str) {
            if (AndroidLauncher.this.f8417A == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("method", str);
            AndroidLauncher.this.f8417A.m22963a("login", bundle);
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void logSignedUp(String str) {
            if (AndroidLauncher.this.f8417A == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("method", str);
            AndroidLauncher.this.f8417A.m22963a("sign_up", bundle);
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void requestGoogleAuth(ObjectRetriever<String> objectRetriever) {
            try {
                Intent m13325x = AndroidLauncher.this.f8418B.m13325x();
                AndroidLauncher.this.f8422k = objectRetriever;
                AndroidLauncher.this.startActivityForResult(m13325x, 13901);
            } catch (Exception e) {
                Logger.error("AndroidLauncher", "failed to call sign in with google", e);
                objectRetriever.retrieved(null);
                AndroidLauncher.this.f8422k = null;
            }
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void signOutGoogle() {
            try {
                C1408a.m23050a(AndroidLauncher.this, GoogleSignInOptions.f7670x).m13323z().mo16800b(AndroidLauncher.this, new InterfaceC4336d() { // from class: com.prineside.tdi2.e1
                    @Override // p097j5.InterfaceC4336d
                    /* renamed from: a */
                    public final void mo2639a(AbstractC4346i abstractC4346i) {
                        Logger.log("AndroidLauncher", "signed out from google");
                    }
                });
            } catch (Exception e) {
                Logger.error("AndroidLauncher", "failed to sign out", e);
            }
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public boolean isAppModified() {
            if (!AndroidLauncher.f8415H) {
                boolean unused = AndroidLauncher.f8416I = "pRko+ewP8b+Z5oDuA5k8+mua+go=".equals(AndroidLauncher.f8414G);
                boolean unused2 = AndroidLauncher.f8415H = true;
            }
            return !AndroidLauncher.f8416I;
        }

        @Override // com.prineside.tdi2.ActionResolver.ActionResolverAdapter, com.prineside.tdi2.ActionResolver
        public void showRewardAd(final ObjectRetriever<Boolean> objectRetriever, PurchaseManager.RewardingAdsType rewardingAdsType) {
            if (canShowRewardAd()) {
                try {
                    AndroidLauncher.this.runOnUiThread(new Runnable() { // from class: com.prineside.tdi2.f1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AndroidLauncher.ActionResolverAndroid.this.m22048x(objectRetriever);
                        }
                    });
                    AndroidLauncher.this.f8433z = Game.getTimestampMillis();
                    AndroidLauncher.this.f8432y.add(Game.getTimestampSeconds());
                    AndroidLauncher.this.f8432y.sort();
                    while (AndroidLauncher.this.f8432y.size > 30) {
                        AndroidLauncher.this.f8432y.removeIndex(0);
                    }
                    AndroidLauncher.this.m22152q0();
                    return;
                } catch (Exception unused) {
                    objectRetriever.retrieved(Boolean.FALSE);
                    return;
                }
            }
            objectRetriever.retrieved(Boolean.FALSE);
        }
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m22176e0(C4471e c4471e) {
        Logger.error("AndroidLauncher", "failed UserMessagingPlatform.loadConsentForm: " + c4471e.m16330b() + " (code " + c4471e.m16331a() + ")");
    }

    /* renamed from: i0 */
    public static /* synthetic */ void m22168i0() {
    }

    /* renamed from: j0 */
    public static /* synthetic */ void m22166j0(C4471e c4471e) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ void m22164k0(Point point) {
        Game game = this.f8429v;
        Rect rect = this.f8428u;
        int i = rect.left;
        int i2 = point.y;
        int i3 = rect.bottom;
        game.notifyVisibleDisplayFrameChanged(i, i2 - i3, rect.right - i, i3 - rect.top);
    }

    /* renamed from: W */
    public final String m22188W() {
        try {
            return Settings.Secure.getString(getContext().getContentResolver(), "android_id");
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidAudio createAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new AsynchronousAndroidAudio(context, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        this.useImmersiveMode = true;
        super.onWindowFocusChanged(z);
    }

    static {
        IntMap<String> intMap = new IntMap<>();
        f8413F = intMap;
        intMap.put(AchievementType.TUTORIALS_COMPLETE.ordinal(), "CgkIt8WMkYIEEAIQAQ");
        intMap.put(AchievementType.STAGE_1_COMPLETE.ordinal(), "CgkIt8WMkYIEEAIQAg");
        intMap.put(AchievementType.STAGE_2_COMPLETE.ordinal(), "CgkIt8WMkYIEEAIQAw");
        intMap.put(AchievementType.STAGE_3_COMPLETE.ordinal(), "CgkIt8WMkYIEEAIQBA");
        intMap.put(AchievementType.STAGE_4_COMPLETE.ordinal(), "CgkIt8WMkYIEEAIQBQ");
        intMap.put(AchievementType.STAGE_5_COMPLETE.ordinal(), "CgkIt8WMkYIEEAIQBg");
        intMap.put(AchievementType.FIVE_HUNDRED_RESEARCH.ordinal(), "CgkIt8WMkYIEEAIQLg");
        intMap.put(AchievementType.FULL_REGULAR_RESEARCH.ordinal(), "CgkIt8WMkYIEEAIQBw");
        intMap.put(AchievementType.MILLION_SCORE_ONE_GAME.ordinal(), "CgkIt8WMkYIEEAIQCA");
        intMap.put(AchievementType.PRESTIGE.ordinal(), "CgkIt8WMkYIEEAIQCg");
        intMap.put(AchievementType.HUNDRED_TILE_CUSTOM_MAP.ordinal(), "CgkIt8WMkYIEEAIQCw");
        intMap.put(AchievementType.FIVE_HUNDRED_TILE_CUSTOM_MAP.ordinal(), "CgkIt8WMkYIEEAIQDA");
        intMap.put(AchievementType.FAST_BOSS_KILL.ordinal(), "CgkIt8WMkYIEEAIQDQ");
        intMap.put(AchievementType.EVERY_ENEMY_MET.ordinal(), "CgkIt8WMkYIEEAIQDg");
        intMap.put(AchievementType.UNLOCK_ALL_TROPHIES.ordinal(), "CgkIt8WMkYIEEAIQDw");
        intMap.put(AchievementType.MILLION_PAPERS.ordinal(), "CgkIt8WMkYIEEAIQEA");
        intMap.put(AchievementType.MILLION_MDPS_ONE_GAME.ordinal(), "CgkIt8WMkYIEEAIQEQ");
        intMap.put(AchievementType.REACH_HIGH_WAVE_ONE_GAME.ordinal(), "CgkIt8WMkYIEEAIQEg");
        intMap.put(AchievementType.KILL_MILLION_ENEMIES.ordinal(), "CgkIt8WMkYIEEAIQEw");
        intMap.put(AchievementType.KILL_TEN_MILLION_ENEMIES.ordinal(), "CgkIt8WMkYIEEAIQFA");
        intMap.put(AchievementType.HUNDRED_KILLS_NUKE.ordinal(), "CgkIt8WMkYIEEAIQFQ");
        intMap.put(AchievementType.COPY_TOWERS_ONE_GAME.ordinal(), "CgkIt8WMkYIEEAIQFg");
        intMap.put(AchievementType.PLACE_MINES_ONE_GAME.ordinal(), "CgkIt8WMkYIEEAIQFw");
        intMap.put(AchievementType.EXPLODE_ENEMY_WITH_BULLET.ordinal(), "CgkIt8WMkYIEEAIQGA");
        intMap.put(AchievementType.HIT_ENEMY_WITH_SNOWBALLS.ordinal(), "CgkIt8WMkYIEEAIQGQ");
        intMap.put(AchievementType.KILL_GROUND_ENEMY_WITH_AIR.ordinal(), "CgkIt8WMkYIEEAIQGg");
        intMap.put(AchievementType.SPLASH_CHAIN_KILL.ordinal(), "CgkIt8WMkYIEEAIQGw");
        intMap.put(AchievementType.KILL_THROWN_BACK_ENEMIES.ordinal(), "CgkIt8WMkYIEEAIQHA");
        intMap.put(AchievementType.KILL_ENEMY_WITH_BACK_PROJECTILE.ordinal(), "CgkIt8WMkYIEEAIQHQ");
        intMap.put(AchievementType.PLACE_MICROGUNS.ordinal(), "CgkIt8WMkYIEEAIQHg");
        intMap.put(AchievementType.MASS_BUFF_ENEMY.ordinal(), "CgkIt8WMkYIEEAIQHw");
        intMap.put(AchievementType.MASS_BALL_LIGHTNINGS.ordinal(), "CgkIt8WMkYIEEAIQIA");
        intMap.put(AchievementType.MASS_MISSILES.ordinal(), "CgkIt8WMkYIEEAIQIQ");
        intMap.put(AchievementType.MASS_BURN_ENEMIES.ordinal(), "CgkIt8WMkYIEEAIQIg");
        intMap.put(AchievementType.DOUBLE_LASER_DAMAGE.ordinal(), "CgkIt8WMkYIEEAIQIw");
        intMap.put(AchievementType.MASS_STUN_ENEMIES_ONE_SHOT.ordinal(), "CgkIt8WMkYIEEAIQJA");
        intMap.put(AchievementType.RECRUIT_ENEMIES.ordinal(), "CgkIt8WMkYIEEAIQJQ");
        intMap.put(AchievementType.FAIL_TUTORIAL.ordinal(), "CgkIt8WMkYIEEAIQJg");
        intMap.put(AchievementType.HUGE_TOWER_ATTACK_SPEED.ordinal(), "CgkIt8WMkYIEEAIQJw");
        intMap.put(AchievementType.MASS_TOWERS_LEVEL_DEV.ordinal(), "CgkIt8WMkYIEEAIQKA");
        intMap.put(AchievementType.MASS_MINERS.ordinal(), "CgkIt8WMkYIEEAIQKQ");
        intMap.put(AchievementType.KILL_BOSS_BONUS_COINS.ordinal(), "CgkIt8WMkYIEEAIQKg");
        intMap.put(AchievementType.BUILD_TOWER_FINISH_WITH_TEN.ordinal(), "CgkIt8WMkYIEEAIQKw");
        intMap.put(AchievementType.RECRUIT_SPIDER.ordinal(), "CgkIt8WMkYIEEAIQLA");
        intMap.put(AchievementType.KILL_BOSS_WITH_RECRUIT.ordinal(), "CgkIt8WMkYIEEAIQLQ");
        f8414G = "egl14=";
        f8415H = false;
        f8416I = false;
    }

    /* renamed from: Y */
    public static /* synthetic */ void m22186Y(String str) {
        AuthManager authManager = Game.f8589i.authManager;
        if (authManager == null) {
            Logger.log("AndroidLauncher", "skip silent sign in - no authManager");
        } else if (authManager.isSignedIn()) {
            Logger.log("AndroidLauncher", "skip silent sign in - already signed in");
        } else {
            Game.f8589i.authManager.signInWithGoogle(str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public /* synthetic */ void m22185Z() {
        C6708f m3592c = new C6708f.C6709a().m3592c();
        Logger.log("AndroidLauncher", "loadNextAd - calling RewardedAd.load");
        final long timestampMillis = Game.getTimestampMillis();
        AbstractC4327b.m16811a(this, Config.ANDROID_REWARDED_VIDEOS_ID, m3592c, new AbstractC4328c() { // from class: com.prineside.tdi2.AndroidLauncher.7
            @Override // p184t2.AbstractC6705d
            public void onAdFailedToLoad(C6716m c6716m) {
                Logger.log("AndroidLauncher", "loadNextAd onAdFailedToLoad " + c6716m.m3611c() + ", " + c6716m + ", " + c6716m.m3562f() + ", falling back to rewarded interstitial");
                AndroidLauncher.this.f8423p = null;
                try {
                    ActionResolverAndroid m22189V = AndroidLauncher.this.m22189V();
                    m22189V.logCustomEvent("ad_load_failure", new String[]{"ad_format", "rewarded", "time", String.valueOf(Game.getTimestampMillis() - timestampMillis), "error", c6716m.m3611c() + "," + String.valueOf(c6716m.m3562f())});
                } catch (Exception unused) {
                }
                AndroidLauncher.this.m22154p0();
            }

            @Override // p184t2.AbstractC6705d
            public void onAdLoaded(AbstractC4327b abstractC4327b) {
                AndroidLauncher.this.f8423p = abstractC4327b;
                Logger.log("AndroidLauncher", "loadNextAd onAdLoaded in " + (Game.getTimestampMillis() - timestampMillis) + "ms");
                try {
                    AndroidLauncher.this.m22189V().logCustomEvent("ad_load_success", new String[]{"ad_format", "rewarded", "time", String.valueOf(Game.getTimestampMillis() - timestampMillis)});
                } catch (Exception unused) {
                }
                AndroidLauncher.this.f8423p.mo10653b(new AbstractC6715l() { // from class: com.prineside.tdi2.AndroidLauncher.7.1
                    @Override // p184t2.AbstractC6715l
                    public void onAdDismissedFullScreenContent() {
                        Logger.log("AndroidLauncher", "loadNextAd onAdDismissedFullScreenContent");
                        AndroidLauncher.this.f8423p = null;
                        AndroidLauncher.this.m22158n0();
                    }

                    @Override // p184t2.AbstractC6715l
                    public void onAdFailedToShowFullScreenContent(C6702a c6702a) {
                        Logger.log("AndroidLauncher", "loadNextAd onAdFailedToShowFullScreenContent " + c6702a.m3611c());
                        AndroidLauncher.this.f8423p = null;
                        AndroidLauncher.this.m22158n0();
                    }

                    @Override // p184t2.AbstractC6715l
                    public void onAdShowedFullScreenContent() {
                        Logger.log("AndroidLauncher", "loadNextAd onAdShowedFullScreenContent");
                        AndroidLauncher.this.f8423p = null;
                        AndroidLauncher.this.m22158n0();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m22184a0() {
        C6708f m3592c = new C6708f.C6709a().m3592c();
        Logger.log("AndroidLauncher", "loadNextInterstitialAd - calling InterstitialAd.load");
        final long timestampMillis = Game.getTimestampMillis();
        AbstractC1038a.m24782a(this, Config.ANDROID_INTERSTITIAL_AD_ID, m3592c, new AbstractC1039b() { // from class: com.prineside.tdi2.AndroidLauncher.6
            @Override // p184t2.AbstractC6705d
            public void onAdFailedToLoad(C6716m c6716m) {
                Logger.log("AndroidLauncher", "loadNextInterstitialAd onAdFailedToLoad " + c6716m.m3611c() + ", " + c6716m + ", " + c6716m.m3562f() + ", trying again in 10 seconds (No retries! Stop messing up my console!)");
                AndroidLauncher.this.f8425r = null;
                ActionResolverAndroid m22189V = AndroidLauncher.this.m22189V();
                StringBuilder sb = new StringBuilder();
                sb.append(c6716m.m3611c());
                sb.append(",");
                sb.append(String.valueOf(c6716m.m3562f()));
                m22189V.logCustomEvent("ad_load_failure", new String[]{"ad_format", "interstitial", "time", String.valueOf(Game.getTimestampMillis() - timestampMillis), "error", sb.toString()});
            }

            @Override // p184t2.AbstractC6705d
            public void onAdLoaded(AbstractC1038a abstractC1038a) {
                AndroidLauncher.this.f8425r = abstractC1038a;
                Logger.log("AndroidLauncher", "loadNextInterstitialAd onAdLoaded in " + (Game.getTimestampMillis() - timestampMillis) + "ms");
                try {
                    AndroidLauncher.this.m22189V().logCustomEvent("ad_load_success", new String[]{"ad_format", "interstitial", "time", String.valueOf(Game.getTimestampMillis() - timestampMillis)});
                } catch (Exception unused) {
                }
                AndroidLauncher.this.f8425r.mo12206b(new AbstractC6715l() { // from class: com.prineside.tdi2.AndroidLauncher.6.1
                    @Override // p184t2.AbstractC6715l
                    public void onAdDismissedFullScreenContent() {
                        Logger.log("AndroidLauncher", "loadNextInterstitialAd onAdDismissedFullScreenContent");
                        AndroidLauncher.this.f8425r = null;
                        AndroidLauncher.this.m22158n0();
                    }

                    @Override // p184t2.AbstractC6715l
                    public void onAdFailedToShowFullScreenContent(C6702a c6702a) {
                        Logger.log("AndroidLauncher", "loadNextInterstitialAd onAdFailedToShowFullScreenContent " + c6702a.m3611c());
                        AndroidLauncher.this.f8425r = null;
                        AndroidLauncher.this.m22158n0();
                    }

                    @Override // p184t2.AbstractC6715l
                    public void onAdShowedFullScreenContent() {
                        Logger.log("AndroidLauncher", "loadNextInterstitialAd onAdShowedFullScreenContent");
                        AndroidLauncher.this.f8425r = null;
                        AndroidLauncher.this.m22158n0();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public /* synthetic */ void m22182b0() {
        Logger.log("AndroidLauncher", "loadNextRewardedInterstitialAd - calling RewardedInterstitialAd.load");
        final long timestampMillis = Game.getTimestampMillis();
        AbstractC4441a.m16479a(this, Config.ANDROID_REWARDED_INTERSTITIAL_AD_ID, new C6708f.C6709a().m3592c(), new AbstractC4442b() { // from class: com.prineside.tdi2.AndroidLauncher.5
            @Override // p184t2.AbstractC6705d
            public void onAdFailedToLoad(C6716m c6716m) {
                Logger.log("AndroidLauncher", "loadNextRewardedInterstitialAd onAdFailedToLoad " + c6716m.m3611c() + ", " + c6716m + ", " + c6716m.m3562f() + ", falling back to regular interstitial");
                AndroidLauncher.this.f8424q = null;
                ActionResolverAndroid m22189V = AndroidLauncher.this.m22189V();
                StringBuilder sb = new StringBuilder();
                sb.append(c6716m.m3611c());
                sb.append(",");
                sb.append(String.valueOf(c6716m.m3562f()));
                m22189V.logCustomEvent("ad_load_failure", new String[]{"ad_format", "rewarded_interstitial", "time", String.valueOf(Game.getTimestampMillis() - timestampMillis), "error", sb.toString()});
                AndroidLauncher.this.m22156o0();
            }

            @Override // p184t2.AbstractC6705d
            public void onAdLoaded(AbstractC4441a abstractC4441a) {
                AndroidLauncher.this.f8424q = abstractC4441a;
                Logger.log("AndroidLauncher", "loadNextRewardedInterstitialAd onAdLoaded in " + (Game.getTimestampMillis() - timestampMillis) + "ms");
                try {
                    AndroidLauncher.this.m22189V().logCustomEvent("ad_load_success", new String[]{"ad_format", "rewarded_interstitial", "time", String.valueOf(Game.getTimestampMillis() - timestampMillis)});
                } catch (Exception unused) {
                }
                AndroidLauncher.this.f8424q.mo7156b(new AbstractC6715l() { // from class: com.prineside.tdi2.AndroidLauncher.5.1
                    @Override // p184t2.AbstractC6715l
                    public void onAdDismissedFullScreenContent() {
                        Logger.log("AndroidLauncher", "loadNextRewardedInterstitialAd onAdDismissedFullScreenContent");
                        AndroidLauncher.this.f8424q = null;
                        AndroidLauncher.this.m22158n0();
                    }

                    @Override // p184t2.AbstractC6715l
                    public void onAdFailedToShowFullScreenContent(C6702a c6702a) {
                        Logger.log("AndroidLauncher", "loadNextRewardedInterstitialAd onAdFailedToShowFullScreenContent " + c6702a.m3611c());
                        AndroidLauncher.this.f8424q = null;
                        AndroidLauncher.this.m22158n0();
                    }

                    @Override // p184t2.AbstractC6715l
                    public void onAdShowedFullScreenContent() {
                        Logger.log("AndroidLauncher", "loadNextRewardedInterstitialAd onAdShowedFullScreenContent");
                        AndroidLauncher.this.f8424q = null;
                        AndroidLauncher.this.m22158n0();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public /* synthetic */ void m22180c0(C4471e c4471e) {
        if (c4471e != null) {
            Logger.error("AndroidLauncher", "failed consentForm.show: " + c4471e.m16330b() + " (code " + c4471e.m16331a() + ")");
        }
        loadThatUglyConsentForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d0 */
    public /* synthetic */ void m22178d0(InterfaceC4464b interfaceC4464b) {
        if (this.f8420D.mo1392b() == 2) {
            interfaceC4464b.mo1382a(this, new InterfaceC4464b.InterfaceC4465a() { // from class: com.prineside.tdi2.d
                @Override // p106k5.InterfaceC4464b.InterfaceC4465a
                /* renamed from: a */
                public final void mo16342a(C4471e c4471e) {
                    AndroidLauncher.this.m22180c0(c4471e);
                }
            });
            return;
        }
        Logger.log("AndroidLauncher", "UserMessagingPlatform.loadConsentForm - consentInformation.getConsentStatus() is " + this.f8420D.mo1392b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m22174f0(GoogleSignInAccount googleSignInAccount) {
        String m23091b1;
        ObjectRetriever<String> objectRetriever = this.f8422k;
        if (googleSignInAccount == null) {
            m23091b1 = null;
        } else {
            m23091b1 = googleSignInAccount.m23091b1();
        }
        objectRetriever.retrieved(m23091b1);
        this.f8422k = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ void m22172g0() {
        this.f8422k.retrieved(null);
        this.f8422k = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m22170h0() {
        this.f8422k.retrieved(null);
        this.f8422k = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0 */
    public /* synthetic */ void m22160m0(AbstractC4346i abstractC4346i) {
        try {
            GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) abstractC4346i.mo16789m(C6894b.class);
            m22187X(googleSignInAccount);
            m22190U(googleSignInAccount);
        } catch (C6894b e) {
            Logger.error("AndroidLauncher", "failed silent sign in: " + e.m3063b());
        } catch (Throwable th) {
            Logger.error("AndroidLauncher", "failed silent sign in", th);
        }
    }

    public static void showNotificationNow(Context context, int i, String str, String str2) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("main", "main", 3);
            notificationChannel.setDescription("All notifications");
            systemService = context.getSystemService(NotificationManager.class);
            NotificationManager notificationManager = (NotificationManager) systemService;
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
        C5481o.C5485d m13212n = new C5481o.C5485d(context, "main").m13211o(com.prineside.tdi2.devel.R.drawable.ic_notification).m13219g(-16711681).m13216j(str).m13221e(true).m13217i(str2).m13212n(0);
        m13212n.m13218h(PendingIntent.getActivity(context, 0, context.getPackageManager().getLaunchIntentForPackage(Config.PACKAGE), 0));
        C5505x0.m13170b(context).m13168d(i, m13212n.m13224b());
    }

    /* renamed from: U */
    public final void m22190U(GoogleSignInAccount googleSignInAccount) {
        if (googleSignInAccount == null) {
            Logger.log("AndroidLauncher", "skip silent sign in - no account");
            return;
        }
        final String m23091b1 = googleSignInAccount.m23091b1();
        if (m23091b1 == null) {
            Logger.log("AndroidLauncher", "skip silent sign in - no idToken");
        } else {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.f
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.m22186Y(m23091b1);
                }
            });
        }
    }

    /* renamed from: V */
    public final ActionResolverAndroid m22189V() {
        if (this.f8427t == null) {
            this.f8427t = new ActionResolverAndroid();
        }
        return this.f8427t;
    }

    /* renamed from: X */
    public final void m22187X(GoogleSignInAccount googleSignInAccount) {
        try {
            InterfaceC4029e m17527b = C4025d.m17527b(this, googleSignInAccount);
            m17527b.mo17520c(findViewById(16908290));
            m17527b.mo17519e(49);
        } catch (Exception e) {
            Logger.error("AndroidLauncher", "failed to set popups view", e);
        }
        Logger.log("AndroidLauncher", "set view for popups");
    }

    public void loadThatUglyConsentForm() {
        Logger.log("AndroidLauncher", "loadThatUglyConsentForm called");
        if (this.f8420D == null) {
            Logger.error("AndroidLauncher", "loadThatUglyConsentForm - consentInformation is null");
        } else {
            C4472f.m16328b(this, new C4472f.InterfaceC4474b() { // from class: com.prineside.tdi2.l
                @Override // p106k5.C4472f.InterfaceC4474b
                /* renamed from: b */
                public final void mo1388b(InterfaceC4464b interfaceC4464b) {
                    AndroidLauncher.this.m22178d0(interfaceC4464b);
                }
            }, new C4472f.InterfaceC4473a() { // from class: com.prineside.tdi2.m
                @Override // p106k5.C4472f.InterfaceC4473a
                /* renamed from: a */
                public final void mo1389a(C4471e c4471e) {
                    AndroidLauncher.m22176e0(c4471e);
                }
            });
        }
    }

    /* renamed from: n0 */
    public final void m22158n0() {
        Logger.log("AndroidLauncher", "loadNextAd NOT called, hehe");
    }

    /* renamed from: o0 */
    public final void m22156o0() {
        Logger.log("AndroidLauncher", "loadNextInterstitialAd NOT called, hehe");
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 771236) {
            if (i2 == -1) {
                Logger.log("AndroidLauncher", "onActivityResult " + i + " " + i2 + " " + intent);
            }
        } else if (i == 13901) {
            if (this.f8422k == null) {
                return;
            }
            try {
                final GoogleSignInAccount mo16789m = C1408a.m23047d(intent).mo16789m(C6894b.class);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidLauncher.this.m22174f0(mo16789m);
                    }
                });
            } catch (C6894b e) {
                Logger.error("AndroidLauncher", "signInResult:failed code=" + e.m3063b(), e);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidLauncher.this.m22172g0();
                    }
                });
            } catch (Exception e2) {
                Log.e("AndroidLauncher", "signInResult:failed", e2);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidLauncher.this.m22170h0();
                    }
                });
            }
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Signature[] signatureArr;
        Signature[] signatureArr2;
        super.onCreate(bundle);
        ActionResolverAndroid m22189V = m22189V();
        Logger.init(m22189V);
        try {
            for (Signature signature : getPackageManager().getPackageInfo(getApplicationContext().getPackageName(), 64).signatures) {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(signature.toByteArray());
                Log.e("hash key", new String(Base64.encode(messageDigest.digest(), 0)));
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("name not found", e.toString());
        } catch (NoSuchAlgorithmException e2) {
            Log.e("no such an algorithm", e2.toString());
        } catch (Exception e3) {
            Log.e("exception", e3.toString());
        }
        Log.i("AndroidLauncher", "onCreate called in thread " + Thread.currentThread().getName());
        this.f8430w = new Handler();
        C4469d m16336a = new C4469d.C4470a().m16335b(false).m16336a();
        InterfaceC4466c m16329a = C4472f.m16329a(this);
        this.f8420D = m16329a;
        m16329a.mo1393a(this, m16336a, new InterfaceC4466c.InterfaceC4468b() { // from class: com.prineside.tdi2.n
            @Override // p106k5.InterfaceC4466c.InterfaceC4468b
            /* renamed from: a */
            public final void mo16340a() {
                AndroidLauncher.m22168i0();
            }
        }, new InterfaceC4466c.InterfaceC4467a() { // from class: com.prineside.tdi2.o
            @Override // p106k5.InterfaceC4466c.InterfaceC4467a
            /* renamed from: a */
            public final void mo16341a(C4471e c4471e) {
                AndroidLauncher.m22166j0(c4471e);
            }
        });
        AndroidApplicationConfiguration androidApplicationConfiguration = new AndroidApplicationConfiguration();
        androidApplicationConfiguration.numSamples = m22189V.getInitConfigManager().get(SettingsManager.InitConfig.GRAPHICS_AA_LEVELS);
        androidApplicationConfiguration.useAccelerometer = false;
        androidApplicationConfiguration.useCompass = false;
        androidApplicationConfiguration.useGyroscope = false;
        androidApplicationConfiguration.useImmersiveMode = true;
        androidApplicationConfiguration.maxSimultaneousSounds = 56;
        androidApplicationConfiguration.useWakelock = true;
        NormalGame normalGame = new NormalGame(m22189V);
        this.f8429v = normalGame;
        initialize(normalGame, androidApplicationConfiguration);
        try {
            Context applicationContext = getApplicationContext();
            for (Signature signature2 : applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 64).signatures) {
                MessageDigest messageDigest2 = MessageDigest.getInstance("SHA");
                messageDigest2.update(signature2.toByteArray());
                String encodeToString = Base64.encodeToString(messageDigest2.digest(), 0);
                f8414G = encodeToString;
                f8414G = encodeToString.trim();
            }
        } catch (Exception e4) {
            Log.i("AndroidLauncher", "Unable to get signature", e4);
        }
        Preferences preferences = Gdx.app.getPreferences(Config.PREFERENCES_NAME_PREFIX + "AndroidLauncher");
        this.f8431x = preferences;
        try {
            long j = preferences.getLong("lastRewardedAdShowTimestamp", 0L);
            this.f8433z = j;
            if (j > Game.getTimestampMillis()) {
                this.f8433z = 0L;
            }
            String string = this.f8431x.getString("rewardAdViewTimestamps", "[]");
            Iterator<JsonValue> iterator2 = new JsonReader().parse(string).iterator2();
            while (iterator2.hasNext()) {
                int asInt = iterator2.next().asInt();
                if (asInt < Game.getTimestampSeconds()) {
                    this.f8432y.add(asInt);
                }
            }
            Logger.log("AndroidLauncher", string);
        } catch (Exception unused) {
        }
        Logger.log("AndroidLauncher", "calling MobileAds.initialize");
        C6718o.m3560b(new C6723t.C6724a().m3553a());
        C6718o.m3561a(this, new InterfaceC7407c() { // from class: com.prineside.tdi2.AndroidLauncher.1
            @Override // p227y2.InterfaceC7407c
            public void onInitializationComplete(InterfaceC7406b interfaceC7406b) {
                Logger.log("AndroidLauncher", "MobileAds.initialize - onInitializationComplete " + interfaceC7406b);
                AndroidLauncher.this.m22158n0();
            }
        });
        Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.AndroidLauncher.2
            @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
            public void run() {
                if (AndroidLauncher.this.f8423p == null && AndroidLauncher.this.f8424q == null && AndroidLauncher.this.f8425r == null) {
                    Logger.log("AndroidLauncher", "admob did not call onInitializationComplete - fuck it, loading ad");
                    AndroidLauncher.this.m22158n0();
                }
            }
        }, 15.0f);
        Logger.log("AndroidLauncher", "FirebaseAnalytics.getInstance");
        try {
            this.f8417A = FirebaseAnalytics.getInstance(this);
        } catch (Exception unused2) {
            Log.e("AndroidLauncher", "failed to initialize firebase");
        }
        this.f8419C = new PurchaseManagerGoogleBilling(this);
        try {
            this.f8418B = C1408a.m23050a(this, new GoogleSignInOptions.C1407a(GoogleSignInOptions.f7669w).m23056d("138011681463-iqgufa34lpfasg9h9h840etivtngdpo9.apps.googleusercontent.com").m23054f(C4025d.f17508e, new Scope[0]).m23058b().m23059a());
            this.f8429v.addListener(new Game.GameListener() { // from class: com.prineside.tdi2.AndroidLauncher.3
                @Override // com.prineside.tdi2.Game.GameListener
                public void gameStartedLoading() {
                }

                @Override // com.prineside.tdi2.Game.GameListener
                public void render() {
                }

                @Override // com.prineside.tdi2.Game.GameListener
                public void gameLoaded() {
                    AndroidLauncher.this.m22150r0();
                    AndroidLauncher.this.f8421E = true;
                }
            });
        } catch (Exception e5) {
            Logger.error("AndroidLauncher", "failed to create sign in client", e5);
        }
        try {
            if (getIntent().getAction().equals("com.google.intent.action.TEST_LOOP")) {
                this.f8429v.addListener(new C14664());
            }
        } catch (Exception unused3) {
            Logger.error("AndroidLauncher", "failed to get testing intent");
        }
    }

    /* renamed from: p0 */
    public final void m22154p0() {
        Logger.log("AndroidLauncher", "loadNextRewardedInterstitialAd NOT called, hehe");
    }

    /* renamed from: q0 */
    public final void m22152q0() {
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        int i = 0;
        while (true) {
            IntArray intArray = this.f8432y;
            if (i < intArray.size) {
                json.writeValue(Integer.valueOf(intArray.items[i]));
                i++;
            } else {
                json.writeObjectEnd();
                this.f8431x.putString("rewardAdViewTimestamps", stringWriter.toString());
                this.f8431x.putLong("lastRewardedAdShowTimestamp", this.f8433z);
                this.f8431x.flush();
                return;
            }
        }
    }

    /* renamed from: r0 */
    public final void m22150r0() {
        try {
            AbstractC4346i<GoogleSignInAccount> m13327A = this.f8418B.m13327A();
            if (m13327A.mo16786p()) {
                GoogleSignInAccount mo16790l = m13327A.mo16790l();
                m22187X(mo16790l);
                m22190U(mo16790l);
            } else {
                m13327A.mo16799c(new InterfaceC4336d() { // from class: com.prineside.tdi2.k
                    @Override // p097j5.InterfaceC4336d
                    /* renamed from: a */
                    public final void mo2639a(AbstractC4346i abstractC4346i) {
                        AndroidLauncher.this.m22160m0(abstractC4346i);
                    }
                });
            }
        } catch (Exception e) {
            Logger.error("AndroidLauncher", "silent sign in failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ void m22162l0(Window window) {
        window.getDecorView().getWindowVisibleDisplayFrame(this.f8428u);
        if (this.f8429v != null) {
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            final Point point = new Point();
            defaultDisplay.getSize(point);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.e
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLauncher.this.m22164k0(point);
                }
            });
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplication, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f8421E) {
            m22150r0();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        C14768 c14768 = new C14768();
        this.f8426s = c14768;
        Game.f8589i.addListener(c14768);
        final Window window = getWindow();
        window.getDecorView().findViewById(16908290).getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.prineside.tdi2.b
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                AndroidLauncher.this.m22162l0(window);
            }
        });
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        Game.f8589i.removeListener(this.f8426s);
    }
}

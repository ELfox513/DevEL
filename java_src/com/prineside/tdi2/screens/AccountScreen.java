package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.LabelButton;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.p036ui.actors.WebView;
import com.prineside.tdi2.p036ui.shared.ScreenTitle;
import com.prineside.tdi2.screens.AccountScreen;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.StringFormatter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes2.dex */
public class AccountScreen extends Screen {

    /* renamed from: a */
    public final UiManager.UiLayer f10540a;

    /* renamed from: b */
    public final UiManager.UiLayer f10541b;

    /* renamed from: c */
    public final UiManager.UiLayer f10542c;

    /* renamed from: d */
    public final UiManager.UiLayer f10543d;

    /* renamed from: e */
    public final UiManager.UiLayer f10544e;

    /* renamed from: f */
    public final UiManager.UiLayer f10545f;

    /* renamed from: g */
    public final UiManager.UiLayer f10546g;

    /* renamed from: h */
    public final UiManager.UiLayer f10547h;

    /* renamed from: i */
    public ScreenType f10548i;

    /* renamed from: j */
    public Table f10549j;

    /* renamed from: k */
    public Label f10550k;

    /* renamed from: l */
    public Image f10551l;

    /* renamed from: m */
    public Label f10552m;

    /* renamed from: n */
    public Label f10553n;

    /* renamed from: o */
    public Label f10554o;

    /* renamed from: p */
    public LabelToggleButton f10555p;

    /* renamed from: q */
    public Table f10556q;

    /* renamed from: r */
    public RectButton f10557r;

    /* renamed from: s */
    public RectButton f10558s;

    /* renamed from: t */
    public RectButton f10559t;

    /* renamed from: u */
    public TextFieldXPlatform f10560u;

    /* renamed from: v */
    public RectButton f10561v;

    /* renamed from: w */
    public Array<RectButton> f10562w;

    /* renamed from: x */
    public final _AuthManagerListener f10563x;

    /* renamed from: com.prineside.tdi2.screens.AccountScreen$12 */
    /* loaded from: classes2.dex */
    public class C199212 extends ClickListener {

        /* renamed from: com.prineside.tdi2.screens.AccountScreen$12$1 */
        /* loaded from: classes2.dex */
        public class C19931 implements Input.TextInputListener {
            public C19931() {
            }

            @Override // com.badlogic.gdx.Input.TextInputListener
            public void canceled() {
            }

            @Override // com.badlogic.gdx.Input.TextInputListener
            public void input(final String str) {
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.12.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!Pattern.compile("^[a-zA-Z0-9_]+$").matcher(str).matches()) {
                            Game game = Game.f8589i;
                            game.uiManager.dialog.showAlert(game.localeManager.i18n.get("nickname_is_invalid"));
                            return;
                        }
                        Game.f8589i.authManager.requestNicknameChange(str, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.AccountScreen.12.1.1.1
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(Boolean bool) {
                                AccountScreen.this.m21351o();
                            }
                        });
                    }
                });
            }
        }

        public C199212() {
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
        public void clicked(InputEvent inputEvent, float f, float f2) {
            Game.f8589i.uiManager.getTextInput(new C19931(), Game.f8589i.localeManager.i18n.get("nickname"), Game.f8589i.authManager.getNickname(), "");
        }
    }

    /* renamed from: com.prineside.tdi2.screens.AccountScreen$16 */
    /* loaded from: classes2.dex */
    public class C199816 extends ClickListener {
        public C199816() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m21349b() {
            AuthManager authManager = Game.f8589i.authManager;
            authManager.resetPassword(authManager.getNickname(), new ObjectRetriever<AuthManager.PasswordResetResult>() { // from class: com.prineside.tdi2.screens.AccountScreen.16.1
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(AuthManager.PasswordResetResult passwordResetResult) {
                    int i = C202623.f10613c[passwordResetResult.ordinal()];
                    if (i == 1) {
                        Game game = Game.f8589i;
                        game.uiManager.dialog.showAlert(game.localeManager.i18n.get("check_mail_for_password_reset"));
                    } else if (i == 2) {
                        Game game2 = Game.f8589i;
                        game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("user_not_found"));
                    } else if (i == 3) {
                        Game game3 = Game.f8589i;
                        game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("error"));
                    }
                    AccountScreen.this.f10548i = ScreenType.ACCOUNT;
                    AccountScreen.this.m21351o();
                }
            });
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
        public void clicked(InputEvent inputEvent, float f, float f2) {
            Game.f8589i.uiManager.dialog.showConfirm(Game.f8589i.localeManager.i18n.format("account_password_not_set_confirm", Game.f8589i.authManager.getEmailHint()), new Runnable() { // from class: com.prineside.tdi2.screens.a
                @Override // java.lang.Runnable
                public final void run() {
                    AccountScreen.C199816.this.m21349b();
                }
            });
        }
    }

    /* renamed from: com.prineside.tdi2.screens.AccountScreen$19 */
    /* loaded from: classes2.dex */
    public class RunnableC200319 implements Runnable {

        /* renamed from: com.prineside.tdi2.screens.AccountScreen$19$1 */
        /* loaded from: classes2.dex */
        public class C20041 implements Net.HttpResponseListener {

            /* renamed from: com.prineside.tdi2.screens.AccountScreen$19$1$1 */
            /* loaded from: classes2.dex */
            public class RunnableC20051 implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ JsonValue f10584a;

                /* renamed from: com.prineside.tdi2.screens.AccountScreen$19$1$1$2 */
                /* loaded from: classes2.dex */
                public class RunnableC20092 implements Runnable {

                    /* renamed from: com.prineside.tdi2.screens.AccountScreen$19$1$1$2$1 */
                    /* loaded from: classes2.dex */
                    public class C20101 implements Net.HttpResponseListener {

                        /* renamed from: com.prineside.tdi2.screens.AccountScreen$19$1$1$2$1$1 */
                        /* loaded from: classes2.dex */
                        public class RunnableC20111 implements Runnable {

                            /* renamed from: a */
                            public final /* synthetic */ JsonValue f10592a;

                            public RunnableC20111(JsonValue jsonValue) {
                                this.f10592a = jsonValue;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                AccountScreen.this.f10546g.getTable().clearChildren();
                                Label label = new Label(Game.f8589i.localeManager.i18n.get("select_date_to_restore_game_state"), Game.f8589i.assetManager.getLabelStyle(24));
                                label.setWrap(true);
                                label.setAlignment(1);
                                AccountScreen.this.f10546g.getTable().add((Table) label).width(600.0f).padBottom(15.0f).row();
                                Iterator<JsonValue> iterator2 = this.f10592a.get("replays").iterator2();
                                boolean z = false;
                                while (iterator2.hasNext()) {
                                    JsonValue next = iterator2.next();
                                    Date date = new Date(next.getInt("date") * 1000);
                                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.US);
                                    final ReplayManager.ReplayRecord fromCompactString = ReplayManager.ReplayRecord.fromCompactString(next.getString("replay"), true);
                                    if (fromCompactString.hasPreferences && fromCompactString.getPreferencesSnapshot() != null) {
                                        LabelButton labelButton = new LabelButton(simpleDateFormat.format(date), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.19.1.1.2.1.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                Game game = Game.f8589i;
                                                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("restore_progress_to_date_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.19.1.1.2.1.1.1.1
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        String sessionId = Game.f8589i.authManager.getSessionId();
                                                        Game.f8589i.preferencesManager.loadFromBytes(fromCompactString.getPreferencesSnapshot(), true);
                                                        Game.f8589i.authManager.setSessionIdForced(sessionId);
                                                        Game.f8589i.preferencesManager.reapplyAllPreferences();
                                                        AccountScreen.this.f10546g.getTable().setVisible(false);
                                                        Game.f8589i.authManager.loadStateFromServer(sessionId, new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.19.1.1.2.1.1.1.1.1
                                                            @Override // java.lang.Runnable
                                                            public void run() {
                                                                Game.f8589i.screenManager.goToAccountScreen();
                                                                Logger.log("AccountScreen", "new session: " + Game.f8589i.authManager.getSessionId());
                                                                Game game2 = Game.f8589i;
                                                                game2.uiManager.notifications.add(game2.localeManager.i18n.get("game_loaded_from_cloud"), Game.f8589i.assetManager.getDrawable("icon-info"), null, StaticSoundType.NOTIFICATION);
                                                            }
                                                        });
                                                    }
                                                });
                                                Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
                                            }
                                        });
                                        labelButton.setAlignment(1);
                                        AccountScreen.this.f10546g.getTable().add((Table) labelButton).size(600.0f, 64.0f).row();
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    Label label2 = new Label(Game.f8589i.localeManager.i18n.get("no_replays_found_cant_restore"), Game.f8589i.assetManager.getLabelStyle(30));
                                    label2.setColor(MaterialColor.AMBER.P500);
                                    label2.setAlignment(1);
                                    AccountScreen.this.f10546g.getTable().add((Table) label2).size(600.0f, 64.0f).row();
                                    Logger.log("AccountScreen", "no replays");
                                }
                                AccountScreen.this.f10546g.getTable().setVisible(true);
                                RectButton rectButton = new RectButton(Game.f8589i.localeManager.i18n.get("cancel"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.19.1.1.2.1.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AccountScreen.this.f10546g.getTable().clearChildren();
                                        AccountScreen.this.f10546g.getTable().setVisible(false);
                                    }
                                });
                                AccountScreen.this.f10546g.getTable().row();
                                AccountScreen.this.f10546g.getTable().add((Table) rectButton).padTop(15.0f).size(200.0f, 64.0f);
                            }
                        }

                        public C20101() {
                        }

                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                        public void cancelled() {
                            Logger.error("AccountScreen", "Error");
                        }

                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                        public void failed(Throwable th) {
                            Logger.error("AccountScreen", "Error", th);
                        }

                        @Override // com.badlogic.gdx.Net.HttpResponseListener
                        public void handleHttpResponse(Net.HttpResponse httpResponse) {
                            try {
                                String resultAsString = httpResponse.getResultAsString();
                                Logger.log("AccountScreen", resultAsString);
                                JsonValue parse = new JsonReader().parse(resultAsString);
                                if (parse.getString("status").equals("success")) {
                                    Gdx.app.postRunnable(new RunnableC20111(parse));
                                } else {
                                    Logger.error("AccountScreen", resultAsString);
                                }
                            } catch (Exception e) {
                                Logger.error("AccountScreen", "Failed to parse response", e);
                            }
                        }
                    }

                    public RunnableC20092() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AccountScreen.this.f10547h.getTable().clearChildren();
                            AccountScreen.this.f10547h.getTable().setVisible(false);
                            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                            httpRequest.setUrl(Config.GET_LAST_REPLAYS_TO_RESTORE_PREFERENCES_URL);
                            HashMap hashMap = new HashMap();
                            hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
                            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                            AccountScreen.this.f10546g.getTable().clearChildren();
                            Image image = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
                            image.setOrigin(32.0f, 32.0f);
                            image.addAction(Actions.forever(Actions.rotateBy(90.0f, 1.0f)));
                            AccountScreen.this.f10546g.getTable().add((Table) image).size(64.0f, 64.0f);
                            AccountScreen.this.f10546g.getTable().setVisible(true);
                            Gdx.f38302net.sendHttpRequest(httpRequest, new C20101());
                        } catch (Exception e) {
                            Logger.error("AccountScreen", "Error", e);
                        }
                    }
                }

                public RunnableC20051(JsonValue jsonValue) {
                    this.f10584a = jsonValue;
                }

                @Override // java.lang.Runnable
                public void run() {
                    AccountScreen.this.f10547h.getTable().clearChildren();
                    Label label = new Label(Game.f8589i.localeManager.i18n.get("select_date_to_restore_game_state"), Game.f8589i.assetManager.getLabelStyle(24));
                    label.setWrap(true);
                    label.setAlignment(1);
                    AccountScreen.this.f10547h.getTable().add((Table) label).width(600.0f).padBottom(15.0f).row();
                    Iterator<JsonValue> iterator2 = this.f10584a.get("data").iterator2();
                    boolean z = false;
                    while (iterator2.hasNext()) {
                        JsonValue next = iterator2.next();
                        int i = next.getInt("modified");
                        final String string = next.getString("url");
                        LabelButton labelButton = new LabelButton(new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.US).format(new Date(i * 1000)), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.19.1.1.1

                            /* renamed from: com.prineside.tdi2.screens.AccountScreen$19$1$1$1$1 */
                            /* loaded from: classes2.dex */
                            public class RunnableC20071 implements Runnable {
                                public RunnableC20071() {
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    final String sessionId = Game.f8589i.authManager.getSessionId();
                                    Game.f8589i.preferencesManager.loadFromUrl(string, true, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.b
                                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                                        public final void retrieved(Object obj) {
                                            AccountScreen.RunnableC200319.C20041.RunnableC20051.RunnableC20061.RunnableC20071.this.m21347b(sessionId, (Boolean) obj);
                                        }
                                    });
                                }

                                /* JADX INFO: Access modifiers changed from: private */
                                /* renamed from: b */
                                public /* synthetic */ void m21347b(String str, Boolean bool) {
                                    if (bool.booleanValue()) {
                                        Game.f8589i.authManager.setSessionIdForced(str);
                                        Game.f8589i.preferencesManager.reapplyAllPreferences();
                                        AccountScreen.this.f10547h.getTable().setVisible(false);
                                        Game.f8589i.authManager.loadStateFromServer(str, new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.19.1.1.1.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                Game.f8589i.screenManager.goToAccountScreen();
                                                Logger.log("AccountScreen", "new session: " + Game.f8589i.authManager.getSessionId());
                                                Game game = Game.f8589i;
                                                game.uiManager.notifications.add(game.localeManager.i18n.get("game_loaded_from_cloud"), Game.f8589i.assetManager.getDrawable("icon-info"), null, StaticSoundType.NOTIFICATION);
                                            }
                                        });
                                        return;
                                    }
                                    Logger.error("AccountScreen", "Failed to load backup");
                                }
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                Game game = Game.f8589i;
                                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("restore_progress_to_date_confirm"), new RunnableC20071());
                                Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
                            }
                        });
                        labelButton.setAlignment(1);
                        AccountScreen.this.f10547h.getTable().add((Table) labelButton).size(600.0f, 64.0f).row();
                        z = true;
                    }
                    if (!z) {
                        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("no_replays_found_cant_restore"), Game.f8589i.assetManager.getLabelStyle(30));
                        label2.setColor(MaterialColor.AMBER.P500);
                        label2.setAlignment(1);
                        AccountScreen.this.f10547h.getTable().add((Table) label2).size(600.0f, 64.0f).row();
                        Logger.log("AccountScreen", "no replays");
                    }
                    AccountScreen.this.f10547h.getTable().setVisible(true);
                    LabelButton labelButton2 = new LabelButton("Restore from replays...", Game.f8589i.assetManager.getLabelStyle(24), new RunnableC20092());
                    AccountScreen.this.f10547h.getTable().row();
                    AccountScreen.this.f10547h.getTable().add((Table) labelButton2).padTop(15.0f).size(300.0f, 64.0f);
                    RectButton rectButton = new RectButton(Game.f8589i.localeManager.i18n.get("cancel"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.19.1.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AccountScreen.this.f10547h.getTable().clearChildren();
                            AccountScreen.this.f10547h.getTable().setVisible(false);
                        }
                    });
                    AccountScreen.this.f10547h.getTable().row();
                    AccountScreen.this.f10547h.getTable().add((Table) rectButton).padTop(15.0f).size(200.0f, 64.0f);
                }
            }

            public C20041() {
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
                Logger.error("AccountScreen", "Error");
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("AccountScreen", "Error", th);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                try {
                    String resultAsString = httpResponse.getResultAsString();
                    Logger.log("AccountScreen", resultAsString);
                    JsonValue parse = new JsonReader().parse(resultAsString);
                    if (parse.getString("status").equals("success")) {
                        Gdx.app.postRunnable(new RunnableC20051(parse));
                    } else {
                        Logger.error("AccountScreen", resultAsString);
                    }
                } catch (Exception e) {
                    Logger.error("AccountScreen", "Failed to parse response", e);
                }
            }
        }

        public RunnableC200319() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.GET_BACKUPS_TO_RESTORE_PREFERENCES_URL);
                HashMap hashMap = new HashMap();
                hashMap.put("sessionid", Game.f8589i.authManager.getSessionId());
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                AccountScreen.this.f10547h.getTable().clearChildren();
                Image image = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
                image.setOrigin(32.0f, 32.0f);
                image.addAction(Actions.forever(Actions.rotateBy(90.0f, 1.0f)));
                AccountScreen.this.f10547h.getTable().add((Table) image).size(64.0f, 64.0f);
                AccountScreen.this.f10547h.getTable().setVisible(true);
                Gdx.f38302net.sendHttpRequest(httpRequest, new C20041());
            } catch (Exception e) {
                Logger.error("AccountScreen", "Error", e);
            }
        }
    }

    /* renamed from: com.prineside.tdi2.screens.AccountScreen$21 */
    /* loaded from: classes2.dex */
    public class RunnableC202021 implements Runnable {
        public RunnableC202021() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountScreen.this.m21353m();
            Game.f8589i.actionResolver.requestGoogleAuth(new ObjectRetriever<String>() { // from class: com.prineside.tdi2.screens.AccountScreen.21.1
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(String str) {
                    if (str != null) {
                        Game.f8589i.authManager.signInWithGoogle(str, new ObjectRetriever<AuthManager.InUpSignInResult>() { // from class: com.prineside.tdi2.screens.AccountScreen.21.1.1
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(AuthManager.InUpSignInResult inUpSignInResult) {
                                if (inUpSignInResult == AuthManager.InUpSignInResult.OTHER_ERROR) {
                                    Game game = Game.f8589i;
                                    game.uiManager.notifications.add(game.localeManager.i18n.get("unknown_error"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                                } else if (inUpSignInResult == AuthManager.InUpSignInResult.SUCCESS_NEW_ACCOUNT) {
                                    Logger.log("AccountScreen", "new auto-created account, showing overlay");
                                    AccountScreen.this.f10548i = ScreenType.AUTO_SIGN_UP_DETAILS;
                                    AccountScreen.this.m21351o();
                                }
                                AccountScreen.this.m21352n();
                            }
                        });
                        return;
                    }
                    Game game = Game.f8589i;
                    game.uiManager.notifications.add(game.localeManager.i18n.get("unknown_error"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                    AccountScreen.this.m21352n();
                }
            });
        }
    }

    /* renamed from: com.prineside.tdi2.screens.AccountScreen$22 */
    /* loaded from: classes2.dex */
    public class C202322 implements ObjectRetriever<JsonValue> {
        public C202322() {
        }

        /* renamed from: i */
        public static /* synthetic */ void m21338i(int i) {
            Game.f8589i.authManager.loadSavedGameFromServer(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ void m21336k(AuthManager.SaveGameResult saveGameResult) {
            AccountScreen.this.m21351o();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m21335l(int i) {
            Game.f8589i.authManager.saveGameToServer(i, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.j
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    AccountScreen.C202322.this.m21336k((AuthManager.SaveGameResult) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public /* synthetic */ void m21333n(Boolean bool) {
            AccountScreen.this.m21351o();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public /* synthetic */ void m21332o(int i) {
            Game.f8589i.authManager.deleteGameFromServer(i, new ObjectRetriever() { // from class: com.prineside.tdi2.screens.i
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    AccountScreen.C202322.this.m21333n((Boolean) obj);
                }
            });
        }

        /* renamed from: j */
        public static /* synthetic */ void m21337j(final int i) {
            Game game = Game.f8589i;
            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("load_game_from_cloud_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.g
                @Override // java.lang.Runnable
                public final void run() {
                    AccountScreen.C202322.m21338i(i);
                }
            });
            Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m21334m(final int i) {
            Game game = Game.f8589i;
            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("overwrite_cloud_save_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.h
                @Override // java.lang.Runnable
                public final void run() {
                    AccountScreen.C202322.this.m21335l(i);
                }
            });
            Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: p */
        public /* synthetic */ void m21331p(final int i) {
            Game game = Game.f8589i;
            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("delete_cloud_save_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.f
                @Override // java.lang.Runnable
                public final void run() {
                    AccountScreen.C202322.this.m21332o(i);
                }
            });
            Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
        }

        @Override // com.prineside.tdi2.utils.ObjectRetriever
        public void retrieved(JsonValue jsonValue) {
            if (jsonValue == null) {
                AccountScreen.this.f10556q.clearChildren();
                Label label = new Label(Game.f8589i.localeManager.i18n.get("failed_to_load_saved_games"), Game.f8589i.assetManager.getLabelStyle(30));
                label.setColor(MaterialColor.RED.P500);
                AccountScreen.this.f10556q.add((Table) label);
            } else {
                AccountScreen.this.f10556q.clearChildren();
                AccountScreen.this.f10562w.clear();
                Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                boolean z = false;
                int i = 0;
                while (iterator2.hasNext()) {
                    JsonValue next = iterator2.next();
                    int i2 = i + 1;
                    final int i3 = next.getInt("slotId");
                    Group group = new Group();
                    group.setTransform(z);
                    AccountScreen.this.f10556q.add((Table) group).size(600.0f, 192.0f).padBottom(10.0f).row();
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    if (Game.f8589i.authManager.getCloudSaveSlotId() == i3) {
                        image.setColor(new Color(61469747));
                    } else {
                        image.setColor(1.0f, 1.0f, 1.0f, 0.07f);
                    }
                    image.setSize(600.0f, 192.0f);
                    group.addActor(image);
                    Label label2 = new Label("#" + i3 + "-" + next.getString("gameStartHash") + " (" + StringFormatter.timePassed(next.getInt("timeInGame"), z, z) + ")", Game.f8589i.assetManager.getLabelStyle(30));
                    label2.setPosition(20.0f, 140.0f);
                    group.addActor(label2);
                    String format = new SimpleDateFormat("dd.MM.yyyy HH:mm", Locale.US).format(new Date(((long) next.getInt("slotTimestamp")) * 1000));
                    boolean z2 = Game.f8589i.authManager.getCloudSaveSlotTimestamp() < next.getInt("slotTimestamp");
                    if (z2) {
                        format = format + " - [#4CAF50]" + Game.f8589i.localeManager.i18n.get("newer") + "[]";
                    }
                    Label label3 = new Label(format, Game.f8589i.assetManager.getLabelStyle(24));
                    label3.setPosition(20.0f, 110.0f);
                    label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                    group.addActor(label3);
                    RectButton rectButton = new RectButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            AccountScreen.C202322.m21337j(i3);
                        }
                    });
                    rectButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-cloud-download"), 24.0f, 8.0f, 48.0f, 48.0f);
                    AccountScreen.this.f10562w.add(rectButton);
                    rectButton.setPosition(484.0f, 20.0f);
                    rectButton.setSize(96.0f, 64.0f);
                    if (z2) {
                        rectButton.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, Color.WHITE);
                    }
                    group.addActor(rectButton);
                    RectButton rectButton2 = new RectButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            AccountScreen.C202322.this.m21334m(i3);
                        }
                    });
                    AccountScreen.this.f10562w.add(rectButton2);
                    rectButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-floppy"), 24.0f, 8.0f, 48.0f, 48.0f);
                    if (Game.f8589i.authManager.hasUnsavedProgressForCloud()) {
                        rectButton2.background.addAction(Actions.forever(Actions.sequence(Actions.color(MaterialColor.LIGHT_GREEN.P800, 0.33f), Actions.color(MaterialColor.LIGHT_GREEN.P600, 0.33f))));
                    }
                    rectButton2.setPosition(368.0f, 20.0f);
                    rectButton2.setSize(96.0f, 64.0f);
                    group.addActor(rectButton2);
                    RectButton rectButton3 = new RectButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            AccountScreen.C202322.this.m21331p(i3);
                        }
                    });
                    AccountScreen.this.f10562w.add(rectButton3);
                    rectButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 8.0f, 8.0f, 48.0f, 48.0f);
                    rectButton3.setPosition(284.0f, 20.0f);
                    rectButton3.setSize(64.0f, 64.0f);
                    rectButton3.setBackgroundColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700, null);
                    group.addActor(rectButton3);
                    if (Game.f8589i.authManager.getCloudSaveSlotId() == i3) {
                        Label label4 = new Label(Game.f8589i.localeManager.i18n.get("current").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(24));
                        label4.setColor(MaterialColor.AMBER.P500);
                        label4.setAlignment(16);
                        label4.setSize(80.0f, 20.0f);
                        label4.setPosition(500.0f, 150.0f);
                        group.addActor(label4);
                        if (Game.f8589i.authManager.hasUnsavedProgressForCloud()) {
                            Label label5 = new Label(Game.f8589i.localeManager.i18n.get("cloud_save_has_unsaved_progress"), Game.f8589i.assetManager.getLabelStyle(24));
                            label5.setColor(MaterialColor.LIGHT_GREEN.P300);
                            label5.setAlignment(16);
                            label5.setSize(80.0f, 24.0f);
                            label5.setPosition(500.0f, 110.0f);
                            group.addActor(label5);
                        }
                    }
                    int i4 = next.getInt("gameBuild");
                    Label label6 = new Label(Game.f8589i.localeManager.i18n.get("about_version") + ": B" + i4, Game.f8589i.assetManager.getLabelStyle(24));
                    label6.setPosition(20.0f, 80.0f);
                    if (184 < i4) {
                        label6.setColor(MaterialColor.ORANGE.P500);
                    } else {
                        label6.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                    }
                    group.addActor(label6);
                    i = i2;
                    z = false;
                }
                if (i < 3) {
                    RectButton rectButton4 = new RectButton(Game.f8589i.localeManager.i18n.get("save_game_to_new_slot"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.22.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Game.f8589i.authManager.saveGameToServer(-1, new ObjectRetriever<AuthManager.SaveGameResult>() { // from class: com.prineside.tdi2.screens.AccountScreen.22.1.1
                                @Override // com.prineside.tdi2.utils.ObjectRetriever
                                public void retrieved(AuthManager.SaveGameResult saveGameResult) {
                                    AccountScreen.this.m21351o();
                                }
                            });
                        }
                    });
                    AccountScreen.this.f10562w.add(rectButton4);
                    AccountScreen.this.f10556q.add((Table) rectButton4).size(600.0f, 96.0f).row();
                }
            }
            Logger.log("AccountScreen", jsonValue == null ? "null" : jsonValue.toJson(JsonWriter.OutputType.json));
        }
    }

    /* loaded from: classes2.dex */
    public enum ScreenType {
        ACCOUNT,
        SIGN_IN,
        SIGN_UP,
        PASSWORD_RESET,
        AUTO_SIGN_UP_DETAILS
    }

    /* loaded from: classes2.dex */
    public class _AuthManagerListener extends AuthManager.AuthManagerListener.AuthManagerListenerAdapter {
        public _AuthManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.AuthManager.AuthManagerListener.AuthManagerListenerAdapter, com.prineside.tdi2.managers.AuthManager.AuthManagerListener
        public void autoSaveModeChanged() {
            AccountScreen.this.f10555p.setEnabled(Game.f8589i.authManager.isAutoSavesEnabled());
        }

        @Override // com.prineside.tdi2.managers.AuthManager.AuthManagerListener.AuthManagerListenerAdapter, com.prineside.tdi2.managers.AuthManager.AuthManagerListener
        public void signInStatusUpdated() {
            AccountScreen.this.m21351o();
        }
    }

    public AccountScreen(ScreenType screenType) {
        this();
        this.f10548i = screenType;
        m21351o();
    }

    /* renamed from: com.prineside.tdi2.screens.AccountScreen$23 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C202623 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10611a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f10612b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f10613c;

        static {
            int[] iArr = new int[AuthManager.PasswordResetResult.values().length];
            f10613c = iArr;
            try {
                iArr[AuthManager.PasswordResetResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10613c[AuthManager.PasswordResetResult.USER_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10613c[AuthManager.PasswordResetResult.OTHER_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[AuthManager.SignUpResult.values().length];
            f10612b = iArr2;
            try {
                iArr2[AuthManager.SignUpResult.INVALID_EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10612b[AuthManager.SignUpResult.INVALID_LOGIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10612b[AuthManager.SignUpResult.INVALID_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10612b[AuthManager.SignUpResult.TOO_MANY_ATTEMPTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f10612b[AuthManager.SignUpResult.EMAIL_ALREADY_EXISTS.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f10612b[AuthManager.SignUpResult.NICKNAME_ALREADY_EXISTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f10612b[AuthManager.SignUpResult.OTHER_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f10612b[AuthManager.SignUpResult.SUCCESS.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr3 = new int[AuthManager.SignInResult.values().length];
            f10611a = iArr3;
            try {
                iArr3[AuthManager.SignInResult.OTHER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f10611a[AuthManager.SignInResult.USER_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f10611a[AuthManager.SignInResult.WRONG_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f10611a[AuthManager.SignInResult.PASSWORD_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f10541b);
        Game.f8589i.uiManager.removeLayer(this.f10542c);
        Game.f8589i.uiManager.removeLayer(this.f10543d);
        Game.f8589i.uiManager.removeLayer(this.f10540a);
        Game.f8589i.uiManager.removeLayer(this.f10544e);
        Game.f8589i.uiManager.removeLayer(this.f10545f);
        Game.f8589i.uiManager.removeLayer(this.f10546g);
        Game.f8589i.uiManager.removeLayer(this.f10547h);
        Game.f8589i.authManager.removeListener(this.f10563x);
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
    }

    /* renamed from: l */
    public final RectButton m21354l() {
        BitmapFont bitmapFont = Game.f8589i.defaultSmallFuturaFont;
        Color color = Color.WHITE;
        RectButton rectButton = new RectButton("Sign in with Google", new Label.LabelStyle(bitmapFont, color), new RunnableC202021());
        rectButton.setIcon(Game.f8589i.assetManager.getDrawable("google-g-icon"), 16.0f, 8.0f, 48.0f, 48.0f);
        rectButton.setBackgroundColors(color, MaterialColor.GREY.P100, color, color);
        rectButton.setIconColors(color, color, color, color);
        rectButton.setLabelColors(new Color(1886417151), new Color(1886417151), new Color(1886417151), Color.BLACK);
        rectButton.setLabel(72.0f, 0.0f, 240.0f, 64.0f, 1);
        rectButton.setSize(320.0f, 64.0f);
        return rectButton;
    }

    /* renamed from: m */
    public final void m21353m() {
        this.f10557r.setEnabled(false);
        this.f10559t.setEnabled(false);
        this.f10558s.setEnabled(false);
        this.f10555p.setEnabled(false);
        int i = 0;
        while (true) {
            Array<RectButton> array = this.f10562w;
            if (i < array.size) {
                array.get(i).setEnabled(false);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: n */
    public final void m21352n() {
        this.f10557r.setEnabled(true);
        this.f10559t.setEnabled(true);
        this.f10558s.setEnabled(true);
        this.f10555p.setEnabled(true);
        int i = 0;
        while (true) {
            Array<RectButton> array = this.f10562w;
            if (i < array.size) {
                array.get(i).setEnabled(true);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: o */
    public final void m21351o() {
        String str;
        String str2;
        this.f10544e.getTable().setVisible(false);
        this.f10543d.getTable().setVisible(false);
        this.f10541b.getTable().setVisible(false);
        this.f10542c.getTable().setVisible(false);
        this.f10545f.getTable().setVisible(false);
        if (this.f10548i == ScreenType.PASSWORD_RESET) {
            ScreenTitle screenTitle = Game.f8589i.uiManager.screenTitle;
            screenTitle.setText(Game.f8589i.localeManager.i18n.get("account_screen_title") + " / " + Game.f8589i.localeManager.i18n.get("reset_password"));
            this.f10543d.getTable().setVisible(true);
        } else if (Game.f8589i.authManager.isSignedIn()) {
            if (this.f10548i == ScreenType.AUTO_SIGN_UP_DETAILS) {
                ScreenTitle screenTitle2 = Game.f8589i.uiManager.screenTitle;
                screenTitle2.setText(Game.f8589i.localeManager.i18n.get("account_screen_title") + " / " + Game.f8589i.localeManager.i18n.get("account_details"));
                this.f10560u.setText(Game.f8589i.authManager.getNickname());
                this.f10545f.getTable().setVisible(true);
            } else {
                Game game = Game.f8589i;
                game.uiManager.screenTitle.setText(game.localeManager.i18n.get("account_screen_title"));
                this.f10544e.getTable().setVisible(true);
                this.f10551l.setDrawable(new TextureRegionDrawable(Game.f8589i.authManager.getAvatar(64)));
                this.f10552m.setText(Game.f8589i.authManager.getNickname());
                this.f10553n.setText(Game.f8589i.authManager.getPlayerId());
                this.f10554o.setText(Game.f8589i.authManager.getEmailHint());
                Label label = this.f10550k;
                if (Game.f8589i.authManager.getSignInStatus() == AuthManager.SignInStatus.SIGNED_IN) {
                    str = Game.f8589i.localeManager.i18n.get("signed_in_online_as");
                } else {
                    str = Game.f8589i.localeManager.i18n.get("signed_in_offline_as");
                }
                label.setText(str);
                this.f10556q.clearChildren();
                Label label2 = new Label(Game.f8589i.localeManager.i18n.get("loading..."), Game.f8589i.assetManager.getLabelStyle(30));
                label2.setColor(MaterialColor.AMBER.P500);
                this.f10556q.add((Table) label2);
                Game.f8589i.authManager.getCloudSavedGamesList(new C202322());
            }
        } else if (this.f10548i == ScreenType.SIGN_UP) {
            ScreenTitle screenTitle3 = Game.f8589i.uiManager.screenTitle;
            screenTitle3.setText(Game.f8589i.localeManager.i18n.get("account_screen_title") + " / " + Game.f8589i.localeManager.i18n.get("sign_up"));
            this.f10542c.getTable().setVisible(true);
        } else {
            Game game2 = Game.f8589i;
            game2.uiManager.screenTitle.setText(game2.localeManager.i18n.get("account_screen_title"));
            this.f10541b.getTable().setVisible(true);
        }
        AuthManager.SignInStatus signInStatus = Game.f8589i.authManager.getSignInStatus();
        this.f10549j.clear();
        StringBuilder sb = new StringBuilder();
        sb.append(Game.f8589i.localeManager.i18n.get("status"));
        sb.append(": ");
        Game.f8589i.authManager.isSignedIn();
        sb.append("[#FFC107]");
        sb.append(signInStatus.name());
        sb.append("[] ");
        if (Game.f8589i.actionResolver.isSignedInWithGoogle()) {
            str2 = "G";
        } else {
            str2 = "";
        }
        sb.append(str2);
        this.f10549j.add((Table) new Label(sb.toString(), Game.f8589i.assetManager.getLabelStyle(24))).padTop(64.0f).row();
        this.f10549j.add((Table) new Label(Game.f8589i.localeManager.i18n.get("nickname") + ": [#FFC107]" + Game.f8589i.authManager.getNickname() + "[]", Game.f8589i.assetManager.getLabelStyle(24))).row();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Playerid: [#FFC107]");
        sb2.append(Game.f8589i.authManager.getPlayerId());
        sb2.append("[]");
        this.f10549j.add((Table) new Label(sb2.toString(), Game.f8589i.assetManager.getLabelStyle(24))).row();
    }

    public AccountScreen() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 100, "AccountScreen status");
        this.f10540a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "AccountScreen signIn");
        this.f10541b = addLayer2;
        UiManager.UiLayer addLayer3 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "AccountScreen signUp");
        this.f10542c = addLayer3;
        UiManager.UiLayer addLayer4 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "AccountScreen passwordReset");
        this.f10543d = addLayer4;
        UiManager.UiLayer addLayer5 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "AccountScreen accountMenu");
        this.f10544e = addLayer5;
        UiManager.UiLayer addLayer6 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "AccountScreen autoSignUpDetails");
        this.f10545f = addLayer6;
        UiManager.UiLayer addLayer7 = Game.f8589i.uiManager.addLayer(mainUiLayer, 102, "AccountScreen preferencesRestoreOverlay");
        this.f10546g = addLayer7;
        UiManager.UiLayer addLayer8 = Game.f8589i.uiManager.addLayer(mainUiLayer, 103, "AccountScreen backupRestoreOverlay");
        this.f10547h = addLayer8;
        this.f10548i = ScreenType.ACCOUNT;
        this.f10562w = new Array<>();
        _AuthManagerListener _authmanagerlistener = new _AuthManagerListener();
        this.f10563x = _authmanagerlistener;
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game game = Game.f8589i;
        game.uiManager.screenTitle.setIcon(game.assetManager.getDrawable("icon-user")).setText(Game.f8589i.localeManager.i18n.get("account_screen_title")).setVisible(true);
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.1
            @Override // java.lang.Runnable
            public void run() {
                ScreenType screenType = AccountScreen.this.f10548i;
                ScreenType screenType2 = ScreenType.SIGN_IN;
                if (screenType != screenType2) {
                    ScreenType screenType3 = AccountScreen.this.f10548i;
                    ScreenType screenType4 = ScreenType.ACCOUNT;
                    if (screenType3 != screenType4) {
                        if (!Game.f8589i.authManager.isSignedIn()) {
                            AccountScreen.this.f10548i = screenType2;
                        } else {
                            AccountScreen.this.f10548i = screenType4;
                        }
                        AccountScreen.this.m21351o();
                        return;
                    }
                }
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        Game.f8589i.authManager.addListener(_authmanagerlistener);
        addLayer7.getTable().setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.78f)));
        Table table = addLayer7.getTable();
        Touchable touchable = Touchable.enabled;
        table.setTouchable(touchable);
        addLayer7.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AccountScreen.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
            }
        });
        addLayer7.getTable().setVisible(false);
        addLayer8.getTable().setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.78f)));
        addLayer8.getTable().setTouchable(touchable);
        addLayer8.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AccountScreen.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
            }
        });
        addLayer8.getTable().setVisible(false);
        Table table2 = new Table();
        addLayer2.getTable().add(table2).row();
        final Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        table2.add((Table) label).padBottom(32.0f).row();
        if (Game.f8589i.actionResolver.hasGoogleAuth()) {
            table2.add((Table) m21354l()).size(320.0f, 64.0f).padTop(16.0f).row();
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setColor(MaterialColor.GREY.P900);
            table2.add((Table) image).size(640.0f, 2.0f).padTop(30.0f).row();
        }
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("login"), Game.f8589i.assetManager.getLabelStyle(30));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table2.add((Table) label2).height(64.0f).row();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(30, false);
        Color color = Color.WHITE;
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(font, color, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable = textFieldStyle.background;
        drawable.setLeftWidth(drawable.getLeftWidth() + 16.0f);
        Drawable drawable2 = textFieldStyle.background;
        drawable2.setRightWidth(drawable2.getRightWidth() + 16.0f);
        final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform("", textFieldStyle);
        table2.add((Table) textFieldXPlatform).size(400.0f, 64.0f).row();
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("password"), Game.f8589i.assetManager.getLabelStyle(30));
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table2.add((Table) label3).height(64.0f).row();
        final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform("", textFieldStyle);
        textFieldXPlatform2.setPasswordMode(true);
        textFieldXPlatform2.setPasswordCharacter(TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH);
        table2.add((Table) textFieldXPlatform2).size(400.0f, 64.0f).row();
        RectButton rectButton = new RectButton(Game.f8589i.localeManager.i18n.get("sign_in"), Game.f8589i.assetManager.getLabelStyle(36), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.4
            @Override // java.lang.Runnable
            public void run() {
                if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
                    AccountScreen.this.m21353m();
                    label.setText(Game.f8589i.localeManager.i18n.get("signing_in..."));
                    label.setColor(MaterialColor.YELLOW.P500);
                    Game.f8589i.authManager.signIn(textFieldXPlatform.getText(), textFieldXPlatform2.getText(), new ObjectRetriever<AuthManager.SignInResult>() { // from class: com.prineside.tdi2.screens.AccountScreen.4.1
                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                        public void retrieved(AuthManager.SignInResult signInResult) {
                            int i = C202623.f10611a[signInResult.ordinal()];
                            if (i == 1) {
                                label.setText(Game.f8589i.localeManager.i18n.get("unknown_error"));
                                label.setColor(MaterialColor.RED.P500);
                            } else if (i == 2) {
                                label.setText(Game.f8589i.localeManager.i18n.get("user_not_found"));
                                label.setColor(MaterialColor.RED.P500);
                            } else if (i == 3) {
                                label.setText(Game.f8589i.localeManager.i18n.get("wrong_password"));
                                label.setColor(MaterialColor.RED.P500);
                            } else if (i != 4) {
                                label.setText("");
                            } else {
                                label.setText(Game.f8589i.localeManager.i18n.get("password_not_set_use_other_method"));
                                label.setColor(MaterialColor.RED.P500);
                            }
                            AccountScreen.this.m21352n();
                        }
                    });
                    return;
                }
                Game game2 = Game.f8589i;
                game2.uiManager.notifications.add(game2.localeManager.i18n.get("app_is_modified"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
            }
        });
        this.f10557r = rectButton;
        table2.add((Table) rectButton).size(400.0f, 80.0f).padTop(32.0f).row();
        LabelButton labelButton = new LabelButton(Game.f8589i.localeManager.i18n.get("privacy_policy"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.5
            @Override // java.lang.Runnable
            public void run() {
                Gdx.f38302net.openURI(Config.PRIVACY_POLICY_URL);
            }
        });
        labelButton.setAlignment(1);
        table2.add((Table) labelButton).size(320.0f, 48.0f).padTop(32.0f).padBottom(48.0f).row();
        Table table3 = new Table();
        table2.add(table3).padTop(32.0f).padBottom(200.0f).row();
        Label label4 = new Label(Game.f8589i.localeManager.i18n.get("dont_have_account?"), Game.f8589i.assetManager.getLabelStyle(30));
        label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table3.add((Table) label4);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("forgot_password?"), Game.f8589i.assetManager.getLabelStyle(30));
        label5.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table3.add((Table) label5).padLeft(64.0f).row();
        table3.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("sign_up"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.6
            @Override // java.lang.Runnable
            public void run() {
                AccountScreen.this.f10548i = ScreenType.SIGN_UP;
                AccountScreen.this.m21351o();
            }
        })).size(320.0f, 64.0f).padTop(16.0f);
        table3.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("reset_password"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.7
            @Override // java.lang.Runnable
            public void run() {
                AccountScreen.this.f10548i = ScreenType.PASSWORD_RESET;
                AccountScreen.this.m21351o();
            }
        })).size(320.0f, 64.0f).padTop(16.0f).padLeft(64.0f).row();
        Table table4 = new Table();
        addLayer3.getTable().add(table4).row();
        final Label label6 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        table4.add((Table) label6).padBottom(32.0f).colspan(2).row();
        if (Game.f8589i.actionResolver.hasGoogleAuth()) {
            table4.add((Table) m21354l()).colspan(2).size(320.0f, 64.0f).padTop(16.0f).padBottom(48.0f).row();
        }
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("nickname"), Game.f8589i.assetManager.getLabelStyle(30));
        label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table4.add((Table) label7).size(320.0f, 48.0f).padRight(24.0f).padBottom(8.0f);
        Label label8 = new Label(Game.f8589i.localeManager.i18n.get("email"), Game.f8589i.assetManager.getLabelStyle(30));
        label8.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table4.add((Table) label8).size(320.0f, 48.0f).padBottom(8.0f).row();
        final TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform("", textFieldStyle);
        table4.add((Table) textFieldXPlatform3).size(320.0f, 48.0f).padRight(24.0f).padBottom(16.0f);
        final TextFieldXPlatform textFieldXPlatform4 = new TextFieldXPlatform("", textFieldStyle);
        table4.add((Table) textFieldXPlatform4).size(320.0f, 48.0f).padBottom(16.0f).row();
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("password"), Game.f8589i.assetManager.getLabelStyle(30));
        label9.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table4.add((Table) label9).size(320.0f, 48.0f).padRight(24.0f).padBottom(8.0f);
        Label label10 = new Label(Game.f8589i.localeManager.i18n.get("repeat_password"), Game.f8589i.assetManager.getLabelStyle(30));
        label10.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table4.add((Table) label10).size(320.0f, 48.0f).padBottom(8.0f).row();
        final TextFieldXPlatform textFieldXPlatform5 = new TextFieldXPlatform("", textFieldStyle);
        textFieldXPlatform5.setPasswordMode(true);
        textFieldXPlatform5.setPasswordCharacter(TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH);
        table4.add((Table) textFieldXPlatform5).size(320.0f, 48.0f).padBottom(16.0f).padRight(24.0f);
        final TextFieldXPlatform textFieldXPlatform6 = new TextFieldXPlatform("", textFieldStyle);
        textFieldXPlatform6.setPasswordMode(true);
        textFieldXPlatform6.setPasswordCharacter(TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH);
        table4.add((Table) textFieldXPlatform6).size(320.0f, 48.0f).padBottom(16.0f).row();
        StringBuilder sb = new StringBuilder();
        sb.append(Game.f8589i.localeManager.i18n.get("invite_code"));
        sb.append(" (");
        String str = Game.f8589i.localeManager.i18n.get("optional");
        Locale locale = Locale.ENGLISH;
        sb.append(str.toLowerCase(locale));
        sb.append(")");
        Label label11 = new Label(sb.toString(), Game.f8589i.assetManager.getLabelStyle(30));
        label11.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table4.add((Table) label11).height(64.0f).colspan(2).row();
        final TextFieldXPlatform textFieldXPlatform7 = new TextFieldXPlatform("", textFieldStyle);
        table4.add((Table) textFieldXPlatform7).size(320.0f, 48.0f).padBottom(8.0f).colspan(2).row();
        Label label12 = new Label(Game.f8589i.localeManager.i18n.get("invite_code_sign_up_hint"), Game.f8589i.assetManager.getLabelStyle(21));
        label12.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label12.setAlignment(1);
        label12.setWrap(true);
        label12.setWidth(600.0f);
        table4.add((Table) label12).width(600.0f).colspan(2).row();
        RectButton rectButton2 = new RectButton(Game.f8589i.localeManager.i18n.get("sign_up"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.8
            @Override // java.lang.Runnable
            public void run() {
                String text = textFieldXPlatform3.getText();
                String text2 = textFieldXPlatform5.getText();
                String text3 = textFieldXPlatform6.getText();
                String trim = textFieldXPlatform4.getText().trim();
                String trim2 = textFieldXPlatform7.getText().trim();
                if (text.length() < 3) {
                    Game game2 = Game.f8589i;
                    game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("nickname_is_too_short"));
                } else if (!Pattern.compile("^[a-zA-Z0-9_]+$").matcher(text).matches()) {
                    Game game3 = Game.f8589i;
                    game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("nickname_is_invalid"));
                } else if (text2.length() < 6) {
                    Game game4 = Game.f8589i;
                    game4.uiManager.dialog.showAlert(game4.localeManager.i18n.get("password_is_too_short"));
                } else if (!text2.equals(text3)) {
                    Game game5 = Game.f8589i;
                    game5.uiManager.dialog.showAlert(game5.localeManager.i18n.get("passwords_do_not_match"));
                } else if (!StringFormatter.VALID_EMAIL_ADDRESS_REGEX.matcher(trim).matches()) {
                    Game game6 = Game.f8589i;
                    game6.uiManager.dialog.showAlert(game6.localeManager.i18n.get("email_is_invalid"));
                } else {
                    label6.setText(Game.f8589i.localeManager.i18n.get("signing_up..."));
                    label6.setColor(MaterialColor.YELLOW.P500);
                    AccountScreen.this.m21353m();
                    Game.f8589i.authManager.signUp(text, text2, trim, trim2, new ObjectRetriever<AuthManager.SignUpResult>() { // from class: com.prineside.tdi2.screens.AccountScreen.8.1
                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                        public void retrieved(AuthManager.SignUpResult signUpResult) {
                            switch (C202623.f10612b[signUpResult.ordinal()]) {
                                case 1:
                                    label6.setText(Game.f8589i.localeManager.i18n.get("email_is_invalid"));
                                    label6.setColor(MaterialColor.RED.P500);
                                    break;
                                case 2:
                                    label6.setText(Game.f8589i.localeManager.i18n.get("nickname_is_invalid"));
                                    label6.setColor(MaterialColor.RED.P500);
                                    break;
                                case 3:
                                    label6.setText(Game.f8589i.localeManager.i18n.get("password_is_too_short"));
                                    label6.setColor(MaterialColor.RED.P500);
                                    break;
                                case 4:
                                    label6.setText(Game.f8589i.localeManager.i18n.get("too_many_sign_ups"));
                                    label6.setColor(MaterialColor.RED.P500);
                                    break;
                                case 5:
                                    label6.setText(Game.f8589i.localeManager.i18n.get("email_already_exists"));
                                    label6.setColor(MaterialColor.RED.P500);
                                    break;
                                case 6:
                                    label6.setText(Game.f8589i.localeManager.i18n.get("nickname_already_exists"));
                                    label6.setColor(MaterialColor.RED.P500);
                                    break;
                                case 7:
                                    label6.setText(Game.f8589i.localeManager.i18n.get("unknown_error"));
                                    label6.setColor(MaterialColor.RED.P500);
                                    break;
                                case 8:
                                    label6.setText("");
                                    label6.setColor(MaterialColor.YELLOW.P500);
                                    AccountScreen.this.m21351o();
                                    break;
                                default:
                                    label6.setText("");
                                    break;
                            }
                            AccountScreen.this.m21352n();
                        }
                    });
                }
            }
        });
        this.f10558s = rectButton2;
        table4.add((Table) rectButton2).size(320.0f, 64.0f).padRight(24.0f).padTop(16.0f);
        table4.add((Table) new LabelButton(Game.f8589i.localeManager.i18n.get("privacy_policy"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.9
            @Override // java.lang.Runnable
            public void run() {
                Gdx.f38302net.openURI(Config.PRIVACY_POLICY_URL);
            }
        })).height(48.0f).padTop(32.0f).padBottom(16.0f).row();
        Table table5 = new Table();
        addLayer4.getTable().add(table5).row();
        final Label label13 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        table5.add((Table) label13).padBottom(32.0f).row();
        Label label14 = new Label(Game.f8589i.localeManager.i18n.get("email_or_nickname"), Game.f8589i.assetManager.getLabelStyle(30));
        label14.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table5.add((Table) label14).height(64.0f).row();
        final TextFieldXPlatform textFieldXPlatform8 = new TextFieldXPlatform("", textFieldStyle);
        table5.add((Table) textFieldXPlatform8).size(320.0f, 48.0f).row();
        RectButton rectButton3 = new RectButton(Game.f8589i.localeManager.i18n.get("reset_password"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.10
            @Override // java.lang.Runnable
            public void run() {
                String trim = textFieldXPlatform8.getText().trim();
                if (!StringFormatter.VALID_EMAIL_ADDRESS_REGEX.matcher(trim).matches() && !Pattern.compile("^[a-zA-Z0-9_]+$").matcher(trim).matches()) {
                    Game game2 = Game.f8589i;
                    game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("email_or_nickname_is_incorrect"));
                    return;
                }
                label13.setText(Game.f8589i.localeManager.i18n.get("requesting..."));
                label13.setColor(MaterialColor.YELLOW.P500);
                AccountScreen.this.m21353m();
                Game.f8589i.authManager.resetPassword(trim, new ObjectRetriever<AuthManager.PasswordResetResult>() { // from class: com.prineside.tdi2.screens.AccountScreen.10.1
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public void retrieved(AuthManager.PasswordResetResult passwordResetResult) {
                        int i = C202623.f10613c[passwordResetResult.ordinal()];
                        if (i == 1) {
                            AccountScreen.this.f10548i = ScreenType.SIGN_IN;
                            Game game3 = Game.f8589i;
                            game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("check_mail_for_password_reset"));
                            AccountScreen.this.m21351o();
                        } else if (i == 2) {
                            label13.setText(Game.f8589i.localeManager.i18n.get("user_not_found"));
                            label13.setColor(MaterialColor.RED.P500);
                        } else if (i != 3) {
                            label13.setText("");
                        } else {
                            label13.setText(Game.f8589i.localeManager.i18n.get("error"));
                            label13.setColor(MaterialColor.RED.P500);
                        }
                        AccountScreen.this.m21352n();
                    }
                });
            }
        });
        this.f10559t = rectButton3;
        table5.add((Table) rectButton3).size(320.0f, 64.0f).padTop(16.0f).row();
        Table table6 = new Table();
        addLayer5.getTable().add(table6).width(1200.0f).row();
        Table table7 = new Table();
        table6.add(table7).width(600.0f);
        Label label15 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f10550k = label15;
        Color color2 = MaterialColor.GREEN.P500;
        label15.setColor(color2);
        table7.add((Table) this.f10550k).row();
        Table table8 = new Table();
        table7.add(table8).padTop(20.0f).row();
        Group group = new Group();
        group.setTransform(false);
        group.setTouchable(touchable);
        group.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AccountScreen.11
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Net net2 = Gdx.f38302net;
                net2.openURI(Config.SITE_URL + "/?m=edit_profile&ts=" + Game.f8589i.authManager.getSessionId());
            }
        });
        table8.add((Table) group).size(64.0f, 64.0f);
        Image image2 = new Image();
        this.f10551l = image2;
        image2.setSize(64.0f, 64.0f);
        this.f10551l.setColor(0.56f, 0.56f, 0.56f, 1.0f);
        group.addActor(this.f10551l);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-edit"));
        image3.setSize(28.0f, 28.0f);
        image3.setPosition(2.0f, 2.0f);
        group.addActor(image3);
        Table table9 = new Table();
        table8.add(table9).padLeft(16.0f);
        Label label16 = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f10552m = label16;
        table9.add((Table) label16);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-edit"));
        image4.setColor(MaterialColor.LIGHT_BLUE.P500);
        image4.setTouchable(touchable);
        image4.addListener(new C199212());
        table9.add((Table) image4).size(32.0f).padLeft(16.0f);
        Label label17 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f10553n = label17;
        label17.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        table7.add((Table) this.f10553n).padTop(6.0f).row();
        Label label18 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f10554o = label18;
        label18.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        table7.add((Table) this.f10554o).padTop(6.0f).row();
        table7.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("view_profile"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.13
            @Override // java.lang.Runnable
            public void run() {
                WebView webView = Game.f8589i.uiManager.getWebBrowser().webView;
                webView.loadUrl(Net.HttpMethods.GET, Config.XDX_VIEW_PLAYER_PROFILE_URL + Game.f8589i.authManager.getPlayerId(), null);
                Game.f8589i.uiManager.getWebBrowser().setVisible(true);
            }
        })).size(296.0f, 64.0f).padTop(32.0f).row();
        if (Game.f8589i.authManager.getInviteCode() != null) {
            Label label19 = new Label(Game.f8589i.localeManager.i18n.get("invite_code"), Game.f8589i.assetManager.getLabelStyle(24));
            label19.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            table7.add((Table) label19).padTop(32.0f).row();
            Label label20 = new Label(Game.f8589i.authManager.getInviteCode(), Game.f8589i.assetManager.getLabelStyle(36));
            label20.setColor(MaterialColor.LIGHT_GREEN.P500);
            table7.add((Table) label20).row();
            label20.setTouchable(touchable);
            label20.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.AccountScreen.15
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Gdx.app.getClipboard().setContents(Game.f8589i.authManager.getInviteCode());
                    Game game2 = Game.f8589i;
                    game2.uiManager.notifications.add(game2.localeManager.i18n.get("copied_to_clipboard"), null, null, null);
                }
            });
            Label label21 = new Label(Game.f8589i.localeManager.i18n.get("invite_code_hint"), Game.f8589i.assetManager.getLabelStyle(21));
            label21.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            label21.setWrap(true);
            label21.setAlignment(1);
            table7.add((Table) label21).width(500.0f).row();
        }
        if (!Game.f8589i.authManager.isPasswordSet()) {
            Table table10 = new Table();
            table10.setTouchable(touchable);
            table10.addListener(new C199816());
            table10.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.PURPLE.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.28f)));
            Label label22 = new Label(Game.f8589i.localeManager.i18n.get("account_password_not_set_hint"), Game.f8589i.assetManager.getLabelStyle(24));
            label22.setWrap(true);
            label22.setAlignment(1);
            table10.add((Table) label22).width(460.0f).padTop(16.0f).padBottom(16.0f);
            table7.add(table10).width(500.0f).padBottom(24.0f).padTop(16.0f).row();
        }
        table7.add((Table) new RectButton(Game.f8589i.localeManager.i18n.get("sign_out"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.17
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.authManager.signOut();
            }
        })).size(296.0f, 64.0f).padTop(32.0f).row();
        Table table11 = new Table();
        table6.add(table11).width(600.0f);
        Label label23 = new Label(Game.f8589i.localeManager.i18n.get("cloud_saves"), Game.f8589i.assetManager.getLabelStyle(30));
        label23.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table11.add((Table) label23).padBottom(8.0f).row();
        Table table12 = new Table();
        this.f10556q = table12;
        table11.add(table12).row();
        Label label24 = new Label(Game.f8589i.localeManager.i18n.get("auto_saves_hint"), Game.f8589i.assetManager.getLabelStyle(24));
        label24.setWrap(true);
        label24.setAlignment(1);
        table11.add((Table) label24).width(500.0f).padTop(16.0f).row();
        LabelToggleButton labelToggleButton = new LabelToggleButton(Game.f8589i.localeManager.i18n.get("auto_saves"), Game.f8589i.authManager.isAutoSavesEnabled(), null);
        this.f10555p = labelToggleButton;
        labelToggleButton.onToggle = new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.screens.AccountScreen.18
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                if (bool.booleanValue()) {
                    if (Game.f8589i.authManager.getCloudSaveSlotId() == -1) {
                        AccountScreen.this.m21353m();
                        Game.f8589i.authManager.getCloudSavedGamesList(new ObjectRetriever<JsonValue>() { // from class: com.prineside.tdi2.screens.AccountScreen.18.1
                            @Override // com.prineside.tdi2.utils.ObjectRetriever
                            public void retrieved(JsonValue jsonValue) {
                                int i;
                                if (jsonValue != null) {
                                    Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                                    i = 0;
                                    while (iterator2.hasNext()) {
                                        iterator2.next();
                                        i++;
                                    }
                                } else {
                                    i = 0;
                                }
                                if (i >= 3) {
                                    Game game2 = Game.f8589i;
                                    game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("save_game_to_any_slot_first"));
                                    Game.f8589i.authManager.setAutoSavesEnabled(false);
                                    AccountScreen.this.f10555p.setEnabled(false);
                                } else {
                                    Game game3 = Game.f8589i;
                                    game3.uiManager.notifications.add(game3.localeManager.i18n.get("game_will_be_auto_saved_to_new_slot"), Game.f8589i.assetManager.getDrawable("icon-info"), null, StaticSoundType.NOTIFICATION);
                                    Game.f8589i.authManager.setAutoSavesEnabled(true);
                                }
                                AccountScreen.this.m21352n();
                            }
                        });
                        return;
                    }
                    Game.f8589i.authManager.setAutoSavesEnabled(true);
                    return;
                }
                Game.f8589i.authManager.setAutoSavesEnabled(false);
            }
        };
        table11.add(this.f10555p).height(96.0f).row();
        if (Game.f8589i.authManager.isSignedIn()) {
            LabelButton labelButton2 = new LabelButton(Game.f8589i.localeManager.i18n.get("lost_progress?"), Game.f8589i.assetManager.getLabelStyle(24), new RunnableC200319());
            labelButton2.setAlignment(16);
            table11.add((Table) labelButton2).padTop(8.0f).right().height(64.0f).width(300.0f);
        }
        Table table13 = new Table();
        addLayer6.getTable().add(table13).row();
        final Label label25 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        table13.add((Table) label25).padBottom(32.0f).row();
        Label label26 = new Label(Game.f8589i.localeManager.i18n.get("thanks_for_signing_up"), Game.f8589i.assetManager.getLabelStyle(30));
        label26.setColor(color2);
        table13.add((Table) label26).row();
        Label label27 = new Label(Game.f8589i.localeManager.i18n.get("pick_nickname_to_proceed"), Game.f8589i.assetManager.getLabelStyle(24));
        label27.setColor(color);
        table13.add((Table) label27).padTop(16.0f).padBottom(48.0f).row();
        Label label28 = new Label(Game.f8589i.localeManager.i18n.get("nickname"), Game.f8589i.assetManager.getLabelStyle(30));
        label28.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table13.add((Table) label28).height(64.0f).row();
        TextFieldXPlatform textFieldXPlatform9 = new TextFieldXPlatform("", textFieldStyle);
        this.f10560u = textFieldXPlatform9;
        table13.add((Table) textFieldXPlatform9).size(320.0f, 48.0f).row();
        final TextFieldXPlatform textFieldXPlatform10 = new TextFieldXPlatform("", textFieldStyle);
        Label label29 = new Label(Game.f8589i.localeManager.i18n.get("invite_code") + " (" + Game.f8589i.localeManager.i18n.get("optional").toLowerCase(locale) + ")", Game.f8589i.assetManager.getLabelStyle(30));
        label29.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table13.add((Table) label29).height(64.0f).padTop(16.0f).row();
        table13.add((Table) textFieldXPlatform10).size(320.0f, 48.0f).padBottom(8.0f).row();
        Label label30 = new Label(Game.f8589i.localeManager.i18n.get("invite_code_sign_up_hint"), Game.f8589i.assetManager.getLabelStyle(21));
        label30.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label30.setAlignment(1);
        label30.setWrap(true);
        label30.setWidth(600.0f);
        table13.add((Table) label30).width(600.0f).row();
        RectButton rectButton4 = new RectButton(Game.f8589i.localeManager.i18n.get("continue"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.screens.AccountScreen.20
            @Override // java.lang.Runnable
            public void run() {
                String trim = AccountScreen.this.f10560u.getText().trim();
                String trim2 = textFieldXPlatform10.getText().trim();
                if (trim.length() < 3) {
                    Game game2 = Game.f8589i;
                    game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("nickname_is_too_short"));
                } else if (!Pattern.compile("^[a-zA-Z0-9_]+$").matcher(trim).matches()) {
                    Game game3 = Game.f8589i;
                    game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("nickname_is_invalid"));
                } else {
                    label25.setText(Game.f8589i.localeManager.i18n.get("requesting..."));
                    label25.setColor(MaterialColor.YELLOW.P500);
                    AccountScreen.this.m21353m();
                    Game.f8589i.authManager.sendAutoSignUpDetails(trim, trim2, new ObjectRetriever<AuthManager.SignUpResult>() { // from class: com.prineside.tdi2.screens.AccountScreen.20.1
                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                        public void retrieved(AuthManager.SignUpResult signUpResult) {
                            int i = C202623.f10612b[signUpResult.ordinal()];
                            if (i == 2) {
                                label25.setText(Game.f8589i.localeManager.i18n.get("nickname_is_invalid"));
                                label25.setColor(MaterialColor.RED.P500);
                            } else if (i == 4) {
                                label25.setText(Game.f8589i.localeManager.i18n.get("too_many_sign_ups"));
                                label25.setColor(MaterialColor.RED.P500);
                            } else if (i == 6) {
                                label25.setText(Game.f8589i.localeManager.i18n.get("nickname_already_exists"));
                                label25.setColor(MaterialColor.RED.P500);
                            } else if (i != 8) {
                                label25.setText(Game.f8589i.localeManager.i18n.get("unknown_error"));
                                label25.setColor(MaterialColor.RED.P500);
                            } else {
                                label25.setText("");
                                label25.setColor(MaterialColor.YELLOW.P500);
                                AccountScreen.this.f10548i = ScreenType.ACCOUNT;
                                AccountScreen.this.m21351o();
                            }
                        }
                    });
                }
            }
        });
        this.f10561v = rectButton4;
        table13.add((Table) rectButton4).size(320.0f, 64.0f).padTop(32.0f).padBottom(64.0f).row();
        this.f10549j = new Table();
        addLayer.getTable().add(this.f10549j).expand().bottom().padBottom(40.0f);
        if (Game.f8589i.authManager.getSignInStatus() != AuthManager.SignInStatus.SIGNED_IN) {
            Game.f8589i.authManager.loadStateFromServer(null, null);
        }
        m21351o();
    }
}

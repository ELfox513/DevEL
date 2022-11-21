package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.prineside.tdi2.OkSdkHandler;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.utils.ObjectRetriever;
import p153p7.C5368a;
import p153p7.C5369b;
import p153p7.C5370c;
import p153p7.C5372e;
import p153p7.C5373f;
import p153p7.InterfaceC5371d;
import p153p7.InterfaceC5374g;
import p153p7.InterfaceC5375h;
import p153p7.InterfaceC5376i;
import p153p7.InterfaceC5377j;
/* loaded from: classes2.dex */
public class OkSdkHandler {
    public static final String TAG = "OkSdkHandler";
    public boolean isInit;
    public String okCurrentUserId;
    public boolean okIsInitSuccess;
    public boolean okIsLoginSuccess;
    public boolean okNeedDownload;
    public InterfaceC5371d sdk = Game.f8589i.actionResolver.getOkJoySDK();

    /* renamed from: com.prineside.tdi2.OkSdkHandler$2 */
    /* loaded from: classes2.dex */
    public class C15592 implements InterfaceC5374g<C5370c, String> {
        public C15592() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m21919d(String str, String str2) {
            Game.f8589i.authManager.signInWithOkJoy(str, OkSdkHandler.this.okCurrentUserId, str2, new ObjectRetriever() { // from class: com.prineside.tdi2.x1
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    OkSdkHandler.C15592.this.m21920c((AuthManager.InUpSignInResult) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m21920c(AuthManager.InUpSignInResult inUpSignInResult) {
            if (inUpSignInResult != AuthManager.InUpSignInResult.SUCCESS && inUpSignInResult != AuthManager.InUpSignInResult.SUCCESS_NEW_ACCOUNT) {
                OkSdkHandler.this.okIsLoginSuccess = false;
                Game.f8589i.uiManager.notifications.add("Failed to sign in with OkJoy", null, null, StaticSoundType.FAIL);
                return;
            }
            OkSdkHandler.this.okIsLoginSuccess = true;
        }

        public void failure(String str) {
            Logger.log(OkSdkHandler.TAG, "OK SDK: setLoginCallBack failure: " + str);
        }

        public void success(C5370c c5370c) {
            if (c5370c != null) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setLoginCallBack success: " + c5370c);
                OkSdkHandler.this.okCurrentUserId = c5370c.m13386b();
                final String m13385c = c5370c.m13385c();
                final String m13384d = c5370c.m13384d();
                String m13387a = c5370c.m13387a();
                Logger.log(OkSdkHandler.TAG, "  " + OkSdkHandler.this.okCurrentUserId + ", " + m13385c + ", " + m13384d + ", " + m13387a);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        OkSdkHandler.C15592.this.m21919d(m13384d, m13385c);
                    }
                });
            }
        }
    }

    /* renamed from: com.prineside.tdi2.OkSdkHandler$3 */
    /* loaded from: classes2.dex */
    public class C15603 implements InterfaceC5374g<String, String> {
        public C15603() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m21917b() {
            OkSdkHandler.this.sdk.m13380d();
        }

        public void failure(String str) {
            Logger.log(OkSdkHandler.TAG, "OK SDK: setLogoutCallBack failure: " + str);
        }

        public void success(String str) {
            Logger.log(OkSdkHandler.TAG, "OK SDK: setLogoutCallBack success: " + str);
            OkSdkHandler.this.okIsLoginSuccess = false;
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.y1
                @Override // java.lang.Runnable
                public final void run() {
                    OkSdkHandler.C15603.this.m21917b();
                }
            });
        }
    }

    public void init() {
        this.isInit = true;
        this.sdk.m13381c(new InterfaceC5374g<String, String>() { // from class: com.prineside.tdi2.OkSdkHandler.1
            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInitCallBack failure: " + str);
            }

            public void success(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInitCallBack success: " + str);
                OkSdkHandler okSdkHandler = OkSdkHandler.this;
                okSdkHandler.okIsInitSuccess = true;
                okSdkHandler.sdk.m13380d();
            }
        });
        this.sdk.m13371m(new C15592());
        this.sdk.m13383a(new C15603());
        this.sdk.m13373k(new InterfaceC5374g<String, String>() { // from class: com.prineside.tdi2.OkSdkHandler.4
            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setSubmitRoleCallBack failure: " + str);
            }

            public void success(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setSubmitRoleCallBack success: " + str);
            }
        });
        this.sdk.m13376h(new InterfaceC5374g<C5372e, String>() { // from class: com.prineside.tdi2.OkSdkHandler.5
            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setPayCallBack failure: " + str);
            }

            public void success(C5372e c5372e) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setPayCallBack success: " + c5372e);
                if (c5372e != null) {
                    Logger.log(OkSdkHandler.TAG, "OK SDK:   " + c5372e.m13369a() + " " + c5372e.m13368b());
                }
            }
        });
        this.sdk.m13370n(new InterfaceC5374g<C5373f, String>() { // from class: com.prineside.tdi2.OkSdkHandler.6
            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRealNameCallBack failure: " + str);
            }

            public void success(C5373f c5373f) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRealNameCallBack success: " + c5373f);
                if (c5373f != null) {
                    Logger.log(OkSdkHandler.TAG, "OK SDK:   " + c5373f.m13367a() + " " + c5373f.m13366b() + " " + c5373f.m13365c());
                }
            }
        });
        this.sdk.m13382b(new InterfaceC5376i() { // from class: com.prineside.tdi2.OkSdkHandler.7
            public void closed(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setOpenUserCenterCallBack closed: " + str);
            }

            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setOpenUserCenterCallBack failure: " + str);
            }

            public void success(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setOpenUserCenterCallBack success: " + str);
            }
        });
        this.sdk.m13379e(new InterfaceC5377j() { // from class: com.prineside.tdi2.OkSdkHandler.8
            /* renamed from: a */
            public final void m21916a(C5368a c5368a) {
            }

            public void didClick(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRewardAdCallBack didClick: " + c5368a);
                m21916a(c5368a);
            }

            public void didClose(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRewardAdCallBack didClose: " + c5368a);
                m21916a(c5368a);
            }

            public void didReward(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRewardAdCallBack didReward: " + c5368a);
                m21916a(c5368a);
            }

            public void endPlay(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRewardAdCallBack endPlay: " + c5368a);
                m21916a(c5368a);
            }

            public void playFailure(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRewardAdCallBack playFailure: " + c5368a);
                m21916a(c5368a);
            }

            public void startPlay(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setRewardAdCallBack startPlay: " + c5368a);
                m21916a(c5368a);
            }
        });
        this.sdk.m13372l(new InterfaceC5375h() { // from class: com.prineside.tdi2.OkSdkHandler.9
            /* renamed from: a */
            public final void m21915a(C5368a c5368a) {
            }

            public void didClick(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInterstitialAdCallBack didClick: " + c5368a);
                m21915a(c5368a);
            }

            public void didClose(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInterstitialAdCallBack didClose: " + c5368a);
                m21915a(c5368a);
            }

            public void endPlay(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInterstitialAdCallBack endPlay: " + c5368a);
                m21915a(c5368a);
            }

            public void playFailure(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInterstitialAdCallBack playFailure: " + c5368a);
                m21915a(c5368a);
            }

            public void showFailure(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInterstitialAdCallBack showFailure: " + c5368a);
                m21915a(c5368a);
            }

            public void startPlay(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInterstitialAdCallBack startPlay: " + c5368a);
                m21915a(c5368a);
            }

            public void startShow(C5368a c5368a) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setInterstitialAdCallBack startShow: " + c5368a);
                m21915a(c5368a);
            }
        });
        this.sdk.m13375i(new InterfaceC5374g<String, String>() { // from class: com.prineside.tdi2.OkSdkHandler.10
            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setUploadArchivesFileCallBack failure: " + str);
            }

            public void success(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setUploadArchivesFileCallBack success: " + str);
            }
        });
        this.sdk.m13378f(new InterfaceC5374g<C5369b, String>() { // from class: com.prineside.tdi2.OkSdkHandler.11
            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setGetArchivesFileCallBack failure: " + str);
            }

            public void success(C5369b c5369b) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setGetArchivesFileCallBack success: " + c5369b);
                if (c5369b != null) {
                    Logger.log(OkSdkHandler.TAG, "OK SDK:   " + c5369b.m13389a() + " " + c5369b.m13388b());
                }
            }
        });
        this.sdk.m13374j(new InterfaceC5374g<String, String>() { // from class: com.prineside.tdi2.OkSdkHandler.12
            public void failure(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setGameProgressPointCallBack failure: " + str);
            }

            public void success(String str) {
                Logger.log(OkSdkHandler.TAG, "OK SDK: setGameProgressPointCallBack success: " + str);
            }
        });
        this.sdk.m13377g(true, true, "okgame", "74", "4247");
    }
}

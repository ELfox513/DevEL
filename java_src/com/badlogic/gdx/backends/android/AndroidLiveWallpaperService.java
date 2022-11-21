package com.badlogic.gdx.backends.android;

import android.app.WallpaperColors;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.service.wallpaper.WallpaperService;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
/* loaded from: classes.dex */
public abstract class AndroidLiveWallpaperService extends WallpaperService {

    /* renamed from: w */
    public static boolean f3697w = false;

    /* renamed from: d */
    public int f3700d;

    /* renamed from: k */
    public int f3701k;

    /* renamed from: p */
    public int f3702p;

    /* renamed from: a */
    public volatile AndroidLiveWallpaper f3698a = null;

    /* renamed from: b */
    public SurfaceHolder.Callback f3699b = null;

    /* renamed from: q */
    public int f3703q = 0;

    /* renamed from: r */
    public int f3704r = 0;

    /* renamed from: s */
    public volatile AndroidWallpaperEngine f3705s = null;

    /* renamed from: t */
    public volatile boolean f3706t = false;

    /* renamed from: u */
    public volatile boolean f3707u = false;

    /* renamed from: v */
    public volatile int[] f3708v = new int[0];

    /* loaded from: classes.dex */
    public class AndroidWallpaperEngine extends WallpaperService.Engine {

        /* renamed from: a */
        public boolean f3709a;

        /* renamed from: b */
        public int f3710b;

        /* renamed from: c */
        public int f3711c;

        /* renamed from: d */
        public int f3712d;

        /* renamed from: e */
        public boolean f3713e;

        /* renamed from: f */
        public int f3714f;

        /* renamed from: g */
        public int f3715g;

        /* renamed from: h */
        public boolean f3716h;

        /* renamed from: i */
        public float f3717i;

        /* renamed from: j */
        public float f3718j;

        /* renamed from: k */
        public float f3719k;

        /* renamed from: l */
        public float f3720l;

        /* renamed from: m */
        public int f3721m;

        /* renamed from: n */
        public int f3722n;

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onDestroy() {
            super.onDestroy();
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onOffsetsChanged(float f, float f2, float f3, float f4, int i, int i2) {
            this.f3716h = false;
            this.f3717i = f;
            this.f3718j = f2;
            this.f3719k = f3;
            this.f3720l = f4;
            this.f3721m = i;
            this.f3722n = i2;
            m24310b();
            if (!Gdx.graphics.isContinuousRendering()) {
                Gdx.graphics.requestRendering();
            }
            super.onOffsetsChanged(f, f2, f3, f4, i, i2);
        }

        public AndroidWallpaperEngine() {
            super(AndroidLiveWallpaperService.this);
            this.f3709a = false;
            this.f3713e = true;
            this.f3716h = true;
            this.f3717i = 0.0f;
            this.f3718j = 0.0f;
            this.f3719k = 0.0f;
            this.f3720l = 0.0f;
            this.f3721m = 0;
            this.f3722n = 0;
            if (AndroidLiveWallpaperService.f3697w) {
                Log.d("WallpaperService", " > AndroidWallpaperEngine() " + hashCode());
            }
        }

        /* renamed from: a */
        public void m24311a() {
            if (AndroidLiveWallpaperService.this.f3705s == this && (AndroidLiveWallpaperService.this.f3698a.f3689s instanceof AndroidWallpaperListener) && !this.f3713e) {
                this.f3713e = true;
                AndroidLiveWallpaperService.this.f3698a.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidLiveWallpaperService.AndroidWallpaperEngine.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AndroidWallpaperEngine androidWallpaperEngine;
                        boolean z;
                        synchronized (AndroidLiveWallpaperService.this.f3708v) {
                            AndroidWallpaperEngine androidWallpaperEngine2 = AndroidLiveWallpaperService.this.f3705s;
                            androidWallpaperEngine = AndroidWallpaperEngine.this;
                            if (androidWallpaperEngine2 == androidWallpaperEngine) {
                                z = true;
                            } else {
                                z = false;
                            }
                        }
                        if (z) {
                            AndroidWallpaperEngine androidWallpaperEngine3 = AndroidWallpaperEngine.this;
                            ((AndroidWallpaperListener) AndroidLiveWallpaperService.this.f3698a.f3689s).iconDropped(androidWallpaperEngine3.f3714f, androidWallpaperEngine3.f3715g);
                        }
                    }
                });
            }
        }

        /* renamed from: b */
        public void m24310b() {
            if (AndroidLiveWallpaperService.this.f3705s == this && (AndroidLiveWallpaperService.this.f3698a.f3689s instanceof AndroidWallpaperListener) && !this.f3716h) {
                this.f3716h = true;
                AndroidLiveWallpaperService.this.f3698a.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidLiveWallpaperService.AndroidWallpaperEngine.2
                    @Override // java.lang.Runnable
                    public void run() {
                        AndroidWallpaperEngine androidWallpaperEngine;
                        boolean z;
                        synchronized (AndroidLiveWallpaperService.this.f3708v) {
                            AndroidWallpaperEngine androidWallpaperEngine2 = AndroidLiveWallpaperService.this.f3705s;
                            androidWallpaperEngine = AndroidWallpaperEngine.this;
                            if (androidWallpaperEngine2 == androidWallpaperEngine) {
                                z = true;
                            } else {
                                z = false;
                            }
                        }
                        if (z) {
                            AndroidWallpaperListener androidWallpaperListener = (AndroidWallpaperListener) AndroidLiveWallpaperService.this.f3698a.f3689s;
                            AndroidWallpaperEngine androidWallpaperEngine3 = AndroidWallpaperEngine.this;
                            androidWallpaperListener.offsetChange(androidWallpaperEngine3.f3717i, androidWallpaperEngine3.f3718j, androidWallpaperEngine3.f3719k, androidWallpaperEngine3.f3720l, androidWallpaperEngine3.f3721m, androidWallpaperEngine3.f3722n);
                        }
                    }
                });
            }
        }

        /* renamed from: c */
        public void m24309c() {
            if (AndroidLiveWallpaperService.this.f3705s == this && (AndroidLiveWallpaperService.this.f3698a.f3689s instanceof AndroidWallpaperListener)) {
                final boolean isPreview = AndroidLiveWallpaperService.this.f3705s.isPreview();
                AndroidLiveWallpaperService.this.f3698a.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidLiveWallpaperService.AndroidWallpaperEngine.3
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean z;
                        AndroidLiveWallpaper androidLiveWallpaper;
                        synchronized (AndroidLiveWallpaperService.this.f3708v) {
                            z = true;
                            if (AndroidLiveWallpaperService.this.f3706t && AndroidLiveWallpaperService.this.f3707u == isPreview) {
                                z = false;
                            }
                            AndroidLiveWallpaperService.this.f3707u = isPreview;
                            AndroidLiveWallpaperService.this.f3706t = true;
                        }
                        if (z && (androidLiveWallpaper = AndroidLiveWallpaperService.this.f3698a) != null) {
                            ((AndroidWallpaperListener) androidLiveWallpaper.f3689s).previewStateChange(isPreview);
                        }
                    }
                });
            }
        }

        /* renamed from: d */
        public final void m24308d(int i, int i2, int i3, boolean z) {
            if (!z) {
                AndroidLiveWallpaperService androidLiveWallpaperService = AndroidLiveWallpaperService.this;
                if (i == androidLiveWallpaperService.f3700d && i2 == androidLiveWallpaperService.f3701k && i3 == androidLiveWallpaperService.f3702p) {
                    if (AndroidLiveWallpaperService.f3697w) {
                        Log.d("WallpaperService", " > surface is current, skipping surfaceChanged event");
                        return;
                    }
                    return;
                }
            }
            this.f3710b = i;
            this.f3711c = i2;
            this.f3712d = i3;
            if (AndroidLiveWallpaperService.this.f3705s == this) {
                AndroidLiveWallpaperService androidLiveWallpaperService2 = AndroidLiveWallpaperService.this;
                androidLiveWallpaperService2.f3700d = this.f3710b;
                androidLiveWallpaperService2.f3701k = this.f3711c;
                androidLiveWallpaperService2.f3702p = this.f3712d;
                SurfaceHolder.Callback callback = androidLiveWallpaperService2.f3699b;
                SurfaceHolder surfaceHolder = getSurfaceHolder();
                AndroidLiveWallpaperService androidLiveWallpaperService3 = AndroidLiveWallpaperService.this;
                callback.surfaceChanged(surfaceHolder, androidLiveWallpaperService3.f3700d, androidLiveWallpaperService3.f3701k, androidLiveWallpaperService3.f3702p);
            } else if (AndroidLiveWallpaperService.f3697w) {
                Log.d("WallpaperService", " > engine is not active, skipping surfaceChanged event");
            }
        }

        /* renamed from: e */
        public final void m24307e(boolean z) {
            if (this.f3709a != z) {
                this.f3709a = z;
                if (z) {
                    onResume();
                } else {
                    onPause();
                }
            } else if (AndroidLiveWallpaperService.f3697w) {
                Log.d("WallpaperService", " > visible state is current, skipping visibilityChanged event!");
            }
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public Bundle onCommand(String str, int i, int i2, int i3, Bundle bundle, boolean z) {
            boolean z2;
            if (AndroidLiveWallpaperService.f3697w) {
                StringBuilder sb = new StringBuilder();
                sb.append(" > AndroidWallpaperEngine - onCommand(");
                sb.append(str);
                sb.append(" ");
                sb.append(i);
                sb.append(" ");
                sb.append(i2);
                sb.append(" ");
                sb.append(i3);
                sb.append(" ");
                sb.append(bundle);
                sb.append(" ");
                sb.append(z);
                sb.append("), linked: ");
                if (AndroidLiveWallpaperService.this.f3705s == this) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                sb.append(z2);
                Log.d("WallpaperService", sb.toString());
            }
            if (str.equals("android.home.drop")) {
                this.f3713e = false;
                this.f3714f = i;
                this.f3715g = i2;
                m24311a();
            }
            return super.onCommand(str, i, i2, i3, bundle, z);
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [android.app.WallpaperColors] */
        @Override // android.service.wallpaper.WallpaperService.Engine
        public WallpaperColors onComputeColors() {
            Color[] colorArr;
            final android.graphics.Color valueOf;
            final android.graphics.Color valueOf2;
            final android.graphics.Color valueOf3;
            Application application = Gdx.app;
            if (Build.VERSION.SDK_INT >= 27 && (application instanceof AndroidLiveWallpaper) && (colorArr = ((AndroidLiveWallpaper) application).f3696z) != null) {
                Color color = colorArr[0];
                valueOf = android.graphics.Color.valueOf(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
                Color color2 = colorArr[1];
                valueOf2 = android.graphics.Color.valueOf(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
                Color color3 = colorArr[2];
                valueOf3 = android.graphics.Color.valueOf(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
                return new Parcelable(valueOf, valueOf2, valueOf3) { // from class: android.app.WallpaperColors
                    static {
                        throw new NoClassDefFoundError();
                    }
                };
            }
            return super.onComputeColors();
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onCreate(SurfaceHolder surfaceHolder) {
            boolean z;
            if (AndroidLiveWallpaperService.f3697w) {
                StringBuilder sb = new StringBuilder();
                sb.append(" > AndroidWallpaperEngine - onCreate() ");
                sb.append(hashCode());
                sb.append(" running: ");
                sb.append(AndroidLiveWallpaperService.this.f3703q);
                sb.append(", linked: ");
                if (AndroidLiveWallpaperService.this.f3705s == this) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(z);
                sb.append(", thread: ");
                sb.append(Thread.currentThread().toString());
                Log.d("WallpaperService", sb.toString());
            }
            super.onCreate(surfaceHolder);
        }

        public void onPause() {
            boolean z;
            AndroidLiveWallpaperService.this.f3704r--;
            if (AndroidLiveWallpaperService.f3697w) {
                StringBuilder sb = new StringBuilder();
                sb.append(" > AndroidWallpaperEngine - onPause() ");
                sb.append(hashCode());
                sb.append(", running: ");
                sb.append(AndroidLiveWallpaperService.this.f3703q);
                sb.append(", linked: ");
                if (AndroidLiveWallpaperService.this.f3705s == this) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(z);
                sb.append(", visible: ");
                sb.append(AndroidLiveWallpaperService.this.f3704r);
                Log.d("WallpaperService", sb.toString());
            }
            Log.i("WallpaperService", "engine paused");
            AndroidLiveWallpaperService androidLiveWallpaperService = AndroidLiveWallpaperService.this;
            if (androidLiveWallpaperService.f3704r >= androidLiveWallpaperService.f3703q) {
                Log.e("WallpaperService", "wallpaper lifecycle error, counted too many visible engines! repairing..");
                AndroidLiveWallpaperService androidLiveWallpaperService2 = AndroidLiveWallpaperService.this;
                androidLiveWallpaperService2.f3704r = Math.max(androidLiveWallpaperService2.f3703q - 1, 0);
            }
            if (AndroidLiveWallpaperService.this.f3705s != null) {
                AndroidLiveWallpaperService androidLiveWallpaperService3 = AndroidLiveWallpaperService.this;
                if (androidLiveWallpaperService3.f3704r == 0) {
                    androidLiveWallpaperService3.f3698a.onPause();
                }
            }
            if (AndroidLiveWallpaperService.f3697w) {
                Log.d("WallpaperService", " > AndroidWallpaperEngine - onPause() done!");
            }
        }

        public void onResume() {
            boolean z;
            AndroidLiveWallpaperService.this.f3704r++;
            if (AndroidLiveWallpaperService.f3697w) {
                StringBuilder sb = new StringBuilder();
                sb.append(" > AndroidWallpaperEngine - onResume() ");
                sb.append(hashCode());
                sb.append(", running: ");
                sb.append(AndroidLiveWallpaperService.this.f3703q);
                sb.append(", linked: ");
                if (AndroidLiveWallpaperService.this.f3705s == this) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(z);
                sb.append(", visible: ");
                sb.append(AndroidLiveWallpaperService.this.f3704r);
                Log.d("WallpaperService", sb.toString());
            }
            Log.i("WallpaperService", "engine resumed");
            if (AndroidLiveWallpaperService.this.f3705s != null) {
                if (AndroidLiveWallpaperService.this.f3705s != this) {
                    AndroidLiveWallpaperService.this.m24312a(this);
                    AndroidLiveWallpaperService.this.f3699b.surfaceDestroyed(getSurfaceHolder());
                    m24308d(this.f3710b, this.f3711c, this.f3712d, false);
                    AndroidLiveWallpaperService.this.f3699b.surfaceCreated(getSurfaceHolder());
                } else {
                    m24308d(this.f3710b, this.f3711c, this.f3712d, false);
                }
                AndroidLiveWallpaperService androidLiveWallpaperService = AndroidLiveWallpaperService.this;
                if (androidLiveWallpaperService.f3704r == 1) {
                    androidLiveWallpaperService.f3698a.onResume();
                }
                m24309c();
                m24310b();
                if (!Gdx.graphics.isContinuousRendering()) {
                    Gdx.graphics.requestRendering();
                }
            }
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            boolean z;
            if (AndroidLiveWallpaperService.f3697w) {
                StringBuilder sb = new StringBuilder();
                sb.append(" > AndroidWallpaperEngine - onSurfaceChanged() isPreview: ");
                sb.append(isPreview());
                sb.append(", ");
                sb.append(hashCode());
                sb.append(", running: ");
                sb.append(AndroidLiveWallpaperService.this.f3703q);
                sb.append(", linked: ");
                if (AndroidLiveWallpaperService.this.f3705s == this) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(z);
                sb.append(", sufcace valid: ");
                sb.append(getSurfaceHolder().getSurface().isValid());
                Log.d("WallpaperService", sb.toString());
            }
            Log.i("WallpaperService", "engine surface changed");
            super.onSurfaceChanged(surfaceHolder, i, i2, i3);
            m24308d(i, i2, i3, true);
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
            boolean z;
            AndroidLiveWallpaperService androidLiveWallpaperService = AndroidLiveWallpaperService.this;
            androidLiveWallpaperService.f3703q++;
            androidLiveWallpaperService.m24312a(this);
            if (AndroidLiveWallpaperService.f3697w) {
                StringBuilder sb = new StringBuilder();
                sb.append(" > AndroidWallpaperEngine - onSurfaceCreated() ");
                sb.append(hashCode());
                sb.append(", running: ");
                sb.append(AndroidLiveWallpaperService.this.f3703q);
                sb.append(", linked: ");
                if (AndroidLiveWallpaperService.this.f3705s == this) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(z);
                Log.d("WallpaperService", sb.toString());
            }
            Log.i("WallpaperService", "engine surface created");
            super.onSurfaceCreated(surfaceHolder);
            AndroidLiveWallpaperService androidLiveWallpaperService2 = AndroidLiveWallpaperService.this;
            int i = androidLiveWallpaperService2.f3703q;
            if (i == 1) {
                androidLiveWallpaperService2.f3704r = 0;
            }
            if (i == 1 && androidLiveWallpaperService2.f3698a == null) {
                AndroidLiveWallpaperService androidLiveWallpaperService3 = AndroidLiveWallpaperService.this;
                androidLiveWallpaperService3.f3700d = 0;
                androidLiveWallpaperService3.f3701k = 0;
                androidLiveWallpaperService3.f3702p = 0;
                androidLiveWallpaperService3.f3698a = new AndroidLiveWallpaper(androidLiveWallpaperService3);
                AndroidLiveWallpaperService.this.onCreateApplication();
                if (AndroidLiveWallpaperService.this.f3698a.f3683b == null) {
                    throw new Error("You must override 'AndroidLiveWallpaperService.onCreateApplication' method and call 'initialize' from its body.");
                }
            }
            AndroidLiveWallpaperService androidLiveWallpaperService4 = AndroidLiveWallpaperService.this;
            androidLiveWallpaperService4.f3699b = androidLiveWallpaperService4.f3698a.f3683b.f3647a;
            getSurfaceHolder().removeCallback(AndroidLiveWallpaperService.this.f3699b);
            AndroidLiveWallpaperService androidLiveWallpaperService5 = AndroidLiveWallpaperService.this;
            this.f3710b = androidLiveWallpaperService5.f3700d;
            this.f3711c = androidLiveWallpaperService5.f3701k;
            this.f3712d = androidLiveWallpaperService5.f3702p;
            if (androidLiveWallpaperService5.f3703q == 1) {
                androidLiveWallpaperService5.f3699b.surfaceCreated(surfaceHolder);
            } else {
                androidLiveWallpaperService5.f3699b.surfaceDestroyed(surfaceHolder);
                m24308d(this.f3710b, this.f3711c, this.f3712d, false);
                AndroidLiveWallpaperService.this.f3699b.surfaceCreated(surfaceHolder);
            }
            m24309c();
            m24310b();
            if (!Gdx.graphics.isContinuousRendering()) {
                Gdx.graphics.requestRendering();
            }
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
            SurfaceHolder.Callback callback;
            boolean z = true;
            AndroidLiveWallpaperService.this.f3703q--;
            if (AndroidLiveWallpaperService.f3697w) {
                StringBuilder sb = new StringBuilder();
                sb.append(" > AndroidWallpaperEngine - onSurfaceDestroyed() ");
                sb.append(hashCode());
                sb.append(", running: ");
                sb.append(AndroidLiveWallpaperService.this.f3703q);
                sb.append(" ,linked: ");
                if (AndroidLiveWallpaperService.this.f3705s != this) {
                    z = false;
                }
                sb.append(z);
                sb.append(", isVisible: ");
                sb.append(this.f3709a);
                Log.d("WallpaperService", sb.toString());
            }
            Log.i("WallpaperService", "engine surface destroyed");
            AndroidLiveWallpaperService androidLiveWallpaperService = AndroidLiveWallpaperService.this;
            if (androidLiveWallpaperService.f3703q == 0) {
                androidLiveWallpaperService.onDeepPauseApplication();
            }
            if (AndroidLiveWallpaperService.this.f3705s == this && (callback = AndroidLiveWallpaperService.this.f3699b) != null) {
                callback.surfaceDestroyed(surfaceHolder);
            }
            this.f3710b = 0;
            this.f3711c = 0;
            this.f3712d = 0;
            AndroidLiveWallpaperService androidLiveWallpaperService2 = AndroidLiveWallpaperService.this;
            if (androidLiveWallpaperService2.f3703q == 0) {
                androidLiveWallpaperService2.f3705s = null;
            }
            super.onSurfaceDestroyed(surfaceHolder);
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onTouchEvent(MotionEvent motionEvent) {
            if (AndroidLiveWallpaperService.this.f3705s == this) {
                AndroidLiveWallpaperService.this.f3698a.f3684d.onTouch(null, motionEvent);
            }
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onVisibilityChanged(boolean z) {
            boolean isVisible = isVisible();
            if (AndroidLiveWallpaperService.f3697w) {
                Log.d("WallpaperService", " > AndroidWallpaperEngine - onVisibilityChanged(paramVisible: " + z + " reportedVisible: " + isVisible + ") " + hashCode() + ", sufcace valid: " + getSurfaceHolder().getSurface().isValid());
            }
            super.onVisibilityChanged(z);
            if (!isVisible && z) {
                if (AndroidLiveWallpaperService.f3697w) {
                    Log.d("WallpaperService", " > fake visibilityChanged event! Android WallpaperService likes do that!");
                    return;
                }
                return;
            }
            m24307e(z);
        }
    }

    public AndroidLiveWallpaper getLiveWallpaper() {
        return this.f3698a;
    }

    public WindowManager getWindowManager() {
        return (WindowManager) getSystemService("window");
    }

    public void initialize(ApplicationListener applicationListener) {
        initialize(applicationListener, new AndroidApplicationConfiguration());
    }

    public void onCreateApplication() {
        if (f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaperService - onCreateApplication()");
        }
    }

    /* renamed from: a */
    public void m24312a(AndroidWallpaperEngine androidWallpaperEngine) {
        synchronized (this.f3708v) {
            this.f3705s = androidWallpaperEngine;
        }
    }

    public void finalize() {
        Log.i("WallpaperService", "service finalized");
        super.finalize();
    }

    public SurfaceHolder getSurfaceHolder() {
        if (f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaperService - getSurfaceHolder()");
        }
        synchronized (this.f3708v) {
            if (this.f3705s == null) {
                return null;
            }
            return this.f3705s.getSurfaceHolder();
        }
    }

    @Override // android.service.wallpaper.WallpaperService, android.app.Service
    public void onCreate() {
        if (f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaperService - onCreate() " + hashCode());
        }
        Log.i("WallpaperService", "service created");
        super.onCreate();
    }

    @Override // android.service.wallpaper.WallpaperService
    public WallpaperService.Engine onCreateEngine() {
        if (f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaperService - onCreateEngine()");
        }
        Log.i("WallpaperService", "engine created");
        return new AndroidWallpaperEngine();
    }

    public void onDeepPauseApplication() {
        if (f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaperService - onDeepPauseApplication()");
        }
        if (this.f3698a != null) {
            this.f3698a.f3683b.clearManagedCaches();
        }
    }

    @Override // android.service.wallpaper.WallpaperService, android.app.Service
    public void onDestroy() {
        if (f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaperService - onDestroy() " + hashCode());
        }
        Log.i("WallpaperService", "service destroyed");
        super.onDestroy();
        if (this.f3698a != null) {
            this.f3698a.onDestroy();
            this.f3698a = null;
            this.f3699b = null;
        }
    }

    public void initialize(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        if (f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaperService - initialize()");
        }
        this.f3698a.initialize(applicationListener, androidApplicationConfiguration);
        if (!androidApplicationConfiguration.getTouchEventsForLiveWallpaper || Integer.parseInt(Build.VERSION.SDK) < 7) {
            return;
        }
        this.f3705s.setTouchEventsEnabled(true);
    }
}

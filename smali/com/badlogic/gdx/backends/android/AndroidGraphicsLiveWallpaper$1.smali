.class Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->b(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;->k:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;->k:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->n()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

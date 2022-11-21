.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public final synthetic d:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->d:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->a:Z

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->b:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->d:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->d:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->J:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->b:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-nez v3, :cond_0

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    :cond_0
    move-object v4, v1

    check-cast v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    iget-object v5, v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-eq v5, v3, :cond_1

    iput-object v3, v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->d:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->J:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;->d:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->J:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

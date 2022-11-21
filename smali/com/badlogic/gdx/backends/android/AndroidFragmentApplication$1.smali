.class Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;->a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;->a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->l0:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;->a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->l0:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;->a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->l0:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    return-void
.end method

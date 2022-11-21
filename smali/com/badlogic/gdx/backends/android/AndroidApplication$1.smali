.class Lcom/badlogic/gdx/backends/android/AndroidApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidApplication;->a(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/AndroidApplication;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->a:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->a:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->a:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

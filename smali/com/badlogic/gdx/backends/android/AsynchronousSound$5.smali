.class Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AsynchronousSound;->loop(F)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/badlogic/gdx/backends/android/AsynchronousSound;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->b:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    iput p2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->b:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->a(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$5;->a:F

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Sound;->loop(F)J

    return-void
.end method

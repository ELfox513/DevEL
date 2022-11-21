.class Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AsynchronousSound;->play(FFF)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic d:F

.field public final synthetic k:Lcom/badlogic/gdx/backends/android/AsynchronousSound;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->k:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    iput p2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->a:F

    iput p3, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->b:F

    iput p4, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->k:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->a(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->a:F

    iget v2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->b:F

    iget v3, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$3;->d:F

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/audio/Sound;->play(FFF)J

    return-void
.end method

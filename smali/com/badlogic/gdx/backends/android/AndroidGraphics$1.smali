.class Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/AndroidGraphics;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;->a:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;->a:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$1;->a:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

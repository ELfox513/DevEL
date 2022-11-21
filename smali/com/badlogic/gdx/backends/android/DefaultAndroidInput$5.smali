.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCapturedPointerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->setCursorCatched(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;->a:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturedPointer(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;->a:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;->a:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    aput p2, p1, v1

    return v1
.end method

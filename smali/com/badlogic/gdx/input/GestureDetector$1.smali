.class Lcom/badlogic/gdx/input/GestureDetector$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/badlogic/gdx/input/GestureDetector;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/input/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->q:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->q:Lcom/badlogic/gdx/input/GestureDetector;

    iget-boolean v1, v0, Lcom/badlogic/gdx/input/GestureDetector;->y:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v2, v0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->longPress(FF)Z

    move-result v1

    iput-boolean v1, v0, Lcom/badlogic/gdx/input/GestureDetector;->y:Z

    :cond_0
    return-void
.end method

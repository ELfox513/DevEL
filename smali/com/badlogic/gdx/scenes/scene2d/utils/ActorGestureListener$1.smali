.class Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;
.super Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/math/Vector2;

.field public final b:Lcom/badlogic/gdx/math/Vector2;

.field public final c:Lcom/badlogic/gdx/math/Vector2;

.field public final d:Lcom/badlogic/gdx/math/Vector2;

.field public final synthetic e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-direct {p0}, Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->a:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->b:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->c:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->d:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->f:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public fling(FFI)Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->a(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    const/4 p1, 0x1

    return p1
.end method

.method public longPress(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->longPress(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result p1

    return p1
.end method

.method public pan(FFFF)Z
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->a(Lcom/badlogic/gdx/math/Vector2;)V

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object p3, p3, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public panStop(FFII)Z
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->panStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    const/4 p1, 0x1

    return p1
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->a:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->pinch(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    const/4 p1, 0x1

    return p1
.end method

.method public tap(FFII)Z
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tap(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    const/4 p1, 0x1

    return p1
.end method

.method public zoom(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {v0, v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->zoom(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V

    const/4 p1, 0x1

    return p1
.end method

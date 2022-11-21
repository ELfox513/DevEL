.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;,
        Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;,
        Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;
    }
.end annotation


# static fields
.field public static final t:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public d:Z

.field public e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

.field public f:Z

.field public final g:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;",
            ">;"
        }
    .end annotation
.end field

.field public i:F

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:J

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->t:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->g:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->h:Lcom/badlogic/gdx/utils/ObjectMap;

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->i:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->k:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->l:F

    const/16 v0, 0xfa

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->p:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->r:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->s:Z

    return-void
.end method


# virtual methods
.method public addSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->i:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->setTapSquareSize(F)V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->j:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->setButton(I)V

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->h:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTarget(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->g:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->h:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->g:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->h:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->h:Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear(I)V

    return-void
.end method

.method public getDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getDragPayload()Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    return-object v0
.end method

.method public getDragSource()Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    return-object v0
.end method

.method public getDragTime()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->p:I

    return v0
.end method

.method public isDragValid()Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->o:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->h:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public removeTarget(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->g:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public setButton(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->j:I

    return-void
.end method

.method public setCancelTouchFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->r:Z

    return-void
.end method

.method public setDragActorPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->k:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->l:F

    return-void
.end method

.method public setDragTime(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->p:I

    return-void
.end method

.method public setKeepWithinStage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->s:Z

    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->i:F

    return-void
.end method

.method public setTouchOffset(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->m:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->n:F

    return-void
.end method

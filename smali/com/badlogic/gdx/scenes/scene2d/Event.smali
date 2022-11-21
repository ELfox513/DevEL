.class public Lcom/badlogic/gdx/scenes/scene2d/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public k:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->p:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->s:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->r:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->q:Z

    return-void
.end method

.method public getBubbles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->p:Z

    return v0
.end method

.method public getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public handle()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->q:Z

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->s:Z

    return v0
.end method

.method public isCapture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->k:Z

    return v0
.end method

.method public isHandled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->q:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->r:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->p:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->q:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->r:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->s:Z

    return-void
.end method

.method public setBubbles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->p:Z

    return-void
.end method

.method public setCapture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->k:Z

    return-void
.end method

.method public setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->r:Z

    return-void
.end method

.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Event;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;"
    }
.end annotation


# instance fields
.field public final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Z

.field public final r:Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->r:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->k:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->q:Z

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->p:Z

    return p1
.end method

.method public abstract handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->q:Z

    return v0
.end method

.method public restart()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->p:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->q:Z

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->q:Z

    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->r:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;->r:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_1
    return-void
.end method

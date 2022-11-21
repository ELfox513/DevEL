.class public Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Event;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public s:I

.field public t:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;-><init>(Ljava/lang/Class;)V

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->s:I

    return-void
.end method


# virtual methods
.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->t:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->t:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->s:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

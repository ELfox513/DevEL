.class public Lcom/badlogic/gdx/ai/btree/decorator/UntilFail;
.super Lcom/badlogic/gdx/ai/btree/LoopDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/LoopDecorator<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/LoopDecorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/LoopDecorator;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

    return-void
.end method


# virtual methods
.method public childFail(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->success()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    return-void
.end method

.method public childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    return-void
.end method

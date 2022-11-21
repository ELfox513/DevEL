.class public Lcom/badlogic/gdx/ai/btree/decorator/Invert;
.super Lcom/badlogic/gdx/ai/btree/Decorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/Decorator<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

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

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

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

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;->childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V

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

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;->childFail(Lcom/badlogic/gdx/ai/btree/Task;)V

    return-void
.end method

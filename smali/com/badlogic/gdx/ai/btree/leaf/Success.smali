.class public Lcom/badlogic/gdx/ai/btree/leaf/Success;
.super Lcom/badlogic/gdx/ai/btree/LeafTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/LeafTask<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/LeafTask;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    return-object p1
.end method

.method public execute()Lcom/badlogic/gdx/ai/btree/Task$Status;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->SUCCEEDED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    return-object v0
.end method

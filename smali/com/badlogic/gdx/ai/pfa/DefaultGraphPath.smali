.class public Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/GraphPath;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;->nodes:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverse()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/DefaultGraphPath;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    return-void
.end method

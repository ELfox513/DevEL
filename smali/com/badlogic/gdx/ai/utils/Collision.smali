.class public Lcom/badlogic/gdx/ai/utils/Collision;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public normal:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public point:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/utils/Collision;->point:Lcom/badlogic/gdx/math/Vector;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/utils/Collision;->normal:Lcom/badlogic/gdx/math/Vector;

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/ai/utils/Collision;)Lcom/badlogic/gdx/ai/utils/Collision;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Collision<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/utils/Collision<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/Collision;->point:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p1, Lcom/badlogic/gdx/ai/utils/Collision;->point:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/Collision;->normal:Lcom/badlogic/gdx/math/Vector;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/utils/Collision;->normal:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/utils/Collision;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lcom/badlogic/gdx/ai/utils/Collision<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/Collision;->point:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object p1, p0, Lcom/badlogic/gdx/ai/utils/Collision;->normal:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    return-object p0
.end method

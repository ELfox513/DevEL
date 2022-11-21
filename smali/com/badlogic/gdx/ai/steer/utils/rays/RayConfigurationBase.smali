.class public abstract Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/steer/Steerable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:[Lcom/badlogic/gdx/ai/utils/Ray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    new-array v0, p2, [Lcom/badlogic/gdx/ai/utils/Ray;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    new-instance v2, Lcom/badlogic/gdx/ai/utils/Ray;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/math/Vector;->setZero()Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v4}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v4}, Lcom/badlogic/gdx/math/Vector;->setZero()Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/ai/utils/Ray;-><init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getOwner()Lcom/badlogic/gdx/ai/steer/Steerable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object v0
.end method

.method public getRays()[Lcom/badlogic/gdx/ai/utils/Ray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    return-object v0
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-void
.end method

.method public setRays([Lcom/badlogic/gdx/ai/utils/Ray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    return-void
.end method

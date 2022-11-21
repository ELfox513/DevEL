.class public abstract Lcom/badlogic/gdx/scenes/scene2d/Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public d:Lcom/badlogic/gdx/utils/Pool;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract act(F)Z
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getPool()Lcom/badlogic/gdx/utils/Pool;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->d:Lcom/badlogic/gdx/utils/Pool;

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->d:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    return-void
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->d:Lcom/badlogic/gdx/utils/Pool;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->d:Lcom/badlogic/gdx/utils/Pool;

    :cond_1
    return-void
.end method

.method public setPool(Lcom/badlogic/gdx/utils/Pool;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/utils/Pool;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->d:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "Action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

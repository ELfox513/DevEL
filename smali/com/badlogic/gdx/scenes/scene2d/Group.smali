.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# static fields
.field public static final L:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final F:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Lcom/badlogic/gdx/math/Affine2;

.field public final H:Lcom/badlogic/gdx/math/Matrix4;

.field public final I:Lcom/badlogic/gdx/math/Matrix4;

.field public J:Z

.field public K:Lcom/badlogic/gdx/math/Rectangle;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->L:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->G:Lcom/badlogic/gdx/math/Affine2;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->H:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->I:Lcom/badlogic/gdx/math/Matrix4;

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->i()V

    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq p1, v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->i()V

    return-void
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->i()V

    return-void
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->i()V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    return-void
.end method

.method public clear(Z)V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clear()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    return-void
.end method

.method public clearChildren()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    return-void
.end method

.method public clearChildren(Z)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->clear()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->i()V

    return-void
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->j()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->k(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->m(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_1
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->j()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->h(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->l(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->n(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :cond_1
    return-void
.end method

.method public f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->I:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public getChild(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p1
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getCullingArea()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->K:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public h(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->I:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    return-void
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->L:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public isTransform()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    return v0
.end method

.method public j()Lcom/badlogic/gdx/math/Matrix4;
    .locals 9

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->G:Lcom/badlogic/gdx/math/Affine2;

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    add-float v1, v0, v7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    add-float v2, v0, v8

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Affine2;->setToTrnRotScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;

    const/4 v0, 0x0

    cmpl-float v1, v7, v0

    if-nez v1, :cond_0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_1

    :cond_0
    neg-float v0, v7

    neg-float v1, v8

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->translate(FF)Lcom/badlogic/gdx/math/Affine2;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->G:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Affine2;->preMul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->H:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->H:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public k(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->D:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v2, p2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->K:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v9, v8

    iget v10, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v10

    iget-boolean v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    if-eqz v11, :cond_2

    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v6, v7, :cond_c

    aget-object v11, v4, v6

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    :cond_0
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    cmpg-float v14, v12, v9

    if-gtz v14, :cond_1

    cmpg-float v14, v13, v5

    if-gtz v14, :cond_1

    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    add-float/2addr v12, v14

    cmpl-float v12, v12, v8

    if-ltz v12, :cond_1

    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v13, v12

    cmpl-float v12, v13, v10

    if-ltz v12, :cond_1

    invoke-virtual {v11, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v13, v4, v6

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_3

    :cond_3
    iget v14, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v15, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    cmpg-float v16, v14, v9

    if-gtz v16, :cond_4

    cmpg-float v16, v15, v5

    if-gtz v16, :cond_4

    move/from16 p2, v5

    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    add-float/2addr v5, v14

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_5

    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v5, v15

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_5

    add-float v5, v14, v11

    iput v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    add-float v5, v15, v12

    iput v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {v13, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iput v14, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v15, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 p2, v5

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p2

    goto :goto_2

    :cond_6
    iput v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    goto :goto_9

    :cond_7
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    if-eqz v5, :cond_9

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_5
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v7, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_7
    if-ge v6, v7, :cond_b

    aget-object v9, v4, v6

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    iget v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    add-float v12, v10, v5

    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    add-float v12, v11, v8

    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {v9, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iput v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    :cond_c
    :goto_9
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public l(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    goto :goto_4

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v7

    if-nez v7, :cond_5

    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    add-float v9, v7, v2

    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    add-float v9, v8, v4

    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    :goto_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actor is not a descendant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public m(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->I:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public n(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->I:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public o(Ljava/lang/StringBuilder;I)V
    .locals 7

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    const-string v6, "|  "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    aget-object v5, v1, v4

    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->o(Ljava/lang/StringBuilder;I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return v1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->i()V

    return-object p1
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/math/Rectangle;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->K:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public setDebug(ZZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTransform(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->J:Z

    return-void
.end method

.method public swapActor(II)Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->o(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

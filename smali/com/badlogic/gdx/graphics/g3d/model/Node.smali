.class public Lcom/badlogic/gdx/graphics/g3d/model/Node;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field

.field public final globalTransform:Lcom/badlogic/gdx/math/Matrix4;

.field public id:Ljava/lang/String;

.field public inheritTransform:Z

.field public isAnimated:Z

.field public final localTransform:Lcom/badlogic/gdx/math/Matrix4;

.field public parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/badlogic/gdx/math/Quaternion;

.field public final scale:Lcom/badlogic/gdx/math/Vector3;

.field public final translation:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-static {p2, p1, v2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p2

    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->detach()V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->copy()Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)I"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move-result p1

    return p1
.end method

.method public addChildren(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChildren(ILjava/lang/Iterable;)I

    move-result p1

    return p1
.end method

.method public attachTo(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    return-void
.end method

.method public calculateBoneTransforms(Z)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v3, :cond_0

    iget v2, v2, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v3, v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v4

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/math/Matrix4;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public calculateTransforms(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    :cond_0
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-boolean v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz p2, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, p1, v5, v3, v6}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {v4, p1, v5, v3}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public getChild(I)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object p1
.end method

.method public getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParent()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(ITT;)I"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot add a parent as a child"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Could not remove child from its current parent"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move p1, v0

    :goto_3
    iput-object p0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return p1
.end method

.method public insertChildren(ILjava/lang/Iterable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(I",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move v0, v2

    goto :goto_0

    :cond_2
    return p1
.end method

.method public removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->b:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->a:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return v1
.end method

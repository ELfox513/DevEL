.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 11

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->a:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f28f5c3    # 0.66f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->e:Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/Camera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    iget-object v1, v0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v0, p2, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p2, 0x0

    aget-object p6, v1, p2

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, p6, p3, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p6, 0x1

    aget-object v0, v1, p6

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, v0, p3, v2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x2

    aget-object v2, v1, v0

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, v2, p3, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v2, 0x3

    aget-object v3, v1, v2

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {p0, v3, p3, v4, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/4 v3, 0x4

    aget-object v3, v1, v3

    const/4 v4, 0x5

    aget-object v4, v1, v4

    const/4 v5, 0x6

    aget-object v5, v1, v5

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->d(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-interface {p0, p3, p5, v3, p5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->f:Lcom/badlogic/gdx/math/Vector3;

    aget-object p5, v1, p6

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p5

    aget-object v3, v1, p2

    invoke-virtual {p5, v3}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p5

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p5, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p5

    invoke-virtual {p5}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result p5

    aget-object p2, v1, p2

    aget-object p6, v1, p6

    aget-object v3, v1, v0

    invoke-static {p2, p6, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->d(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    const/high16 p6, 0x40000000    # 2.0f

    mul-float p5, p5, p6

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    aget-object p1, v1, v0

    invoke-interface {p0, p2, p4, p1, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object p1, v1, v0

    aget-object p3, v1, v2

    invoke-interface {p0, p1, p4, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object p1, v1, v2

    invoke-interface {p0, p1, p4, p2, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    iget-object p1, p1, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-interface {p0, v1, p2, v3, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v1, p1, v2

    const/4 v3, 0x2

    aget-object v4, p1, v3

    invoke-interface {p0, v1, p2, v4, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v1, p1, v3

    const/4 v4, 0x3

    aget-object v5, p1, v4

    invoke-interface {p0, v1, p2, v5, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v1, p1, v4

    aget-object v5, p1, v0

    invoke-interface {p0, v1, p2, v5, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v1, 0x4

    aget-object v5, p1, v1

    const/4 v6, 0x5

    aget-object v7, p1, v6

    invoke-interface {p0, v5, p2, v7, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v5, p1, v6

    const/4 v7, 0x6

    aget-object v8, p1, v7

    invoke-interface {p0, v5, p2, v8, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v5, p1, v7

    const/4 v8, 0x7

    aget-object v9, p1, v8

    invoke-interface {p0, v5, p2, v9, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v5, p1, v8

    aget-object v9, p1, v1

    invoke-interface {p0, v5, p2, v9, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v5, p1, v0

    aget-object v9, p1, v1

    invoke-interface {p0, v5, p2, v9, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v5, p1, v2

    aget-object v9, p1, v6

    invoke-interface {p0, v5, p2, v9, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v5, p1, v3

    aget-object v9, p1, v7

    invoke-interface {p0, v5, p2, v9, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object v5, p1, v4

    aget-object v9, p1, v8

    invoke-interface {p0, v5, p2, v9, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object p2, p1, v2

    aget-object v5, p1, v0

    invoke-static {p2, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    aget-object v5, p1, v4

    aget-object v9, p1, v3

    invoke-static {v5, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-interface {p0, p2, p3, v5, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object p2, p1, v3

    aget-object v2, p1, v2

    invoke-static {p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    aget-object v2, p1, v4

    aget-object v0, p1, v0

    invoke-static {v2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object p2, p1, v6

    aget-object v0, p1, v1

    invoke-static {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    aget-object v0, p1, v8

    aget-object v2, p1, v7

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    aget-object p2, p1, v7

    aget-object v0, p1, v6

    invoke-static {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    aget-object v0, p1, v8

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/FrustumShapeBuilder;->e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-interface {p0, p2, p3, p1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static d(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->g:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->g:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    return-object p0
.end method

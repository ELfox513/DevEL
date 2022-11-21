.class public Lcom/badlogic/gdx/math/Octree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Octree$RayCastResult;,
        Lcom/badlogic/gdx/math/Octree$Collider;,
        Lcom/badlogic/gdx/math/Octree$OctreeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final a:I

.field public final b:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/math/Octree<",
            "TT;>.OctreeNode;>;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/math/Octree$OctreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/math/Octree<",
            "TT;>.OctreeNode;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/math/Octree$Collider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/math/Octree$Collider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Octree;->e:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;IILcom/badlogic/gdx/math/Octree$Collider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Vector3;",
            "Lcom/badlogic/gdx/math/Vector3;",
            "II",
            "Lcom/badlogic/gdx/math/Octree$Collider<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Octree$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Octree$1;-><init>(Lcom/badlogic/gdx/math/Octree;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Octree;->b:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/math/Octree;->a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iput-object p5, p0, Lcom/badlogic/gdx/math/Octree;->d:Lcom/badlogic/gdx/math/Octree$Collider;

    iput p4, p0, Lcom/badlogic/gdx/math/Octree;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Vector3;",
            "Lcom/badlogic/gdx/math/Vector3;",
            "I)",
            "Lcom/badlogic/gdx/math/Octree<",
            "TT;>.OctreeNode;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->b:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v1, v0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->b:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    iput p3, v0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->a:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->c:Z

    return-object v0
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getAll(Lcom/badlogic/gdx/utils/ObjectSet;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->d(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object p1
.end method

.method public getNodesBoxes(Lcom/badlogic/gdx/utils/ObjectSet;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;",
            ">;)",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->e(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object p1
.end method

.method public query(Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/utils/ObjectSet;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Frustum;",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->g(Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object p2
.end method

.method public query(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/utils/ObjectSet;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->h(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object p2
.end method

.method public rayCast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Octree$RayCastResult;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Lcom/badlogic/gdx/math/Octree$RayCastResult<",
            "TT;>;)TT;"
        }
    .end annotation

    iget v0, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->c:F

    iput v0, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->b:F

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->i(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Octree$RayCastResult;)V

    iget-object p1, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->j(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree;->c:Lcom/badlogic/gdx/math/Octree$OctreeNode;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->a(Ljava/lang/Object;)V

    return-void
.end method

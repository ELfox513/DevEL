.class Lcom/badlogic/gdx/math/Octree$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Octree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/math/Octree<",
        "TT;>.OctreeNode;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/math/Octree;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Octree;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Octree$1;->b:Lcom/badlogic/gdx/math/Octree;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/math/Octree$OctreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/math/Octree<",
            "TT;>.OctreeNode;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$1;->b:Lcom/badlogic/gdx/math/Octree;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;-><init>(Lcom/badlogic/gdx/math/Octree;)V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Octree$1;->c()Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v0

    return-object v0
.end method

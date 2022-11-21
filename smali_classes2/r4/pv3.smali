.class public final Lr4/pv3;
.super Lr4/m74;
.source "SourceFile"


# instance fields
.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lr4/j44;",
            "Lr4/rv3;",
            ">;>;"
        }
    .end annotation
.end field

.field public final p:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lr4/m74;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lr4/pv3;->o:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lr4/pv3;->p:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lr4/pv3;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lr4/m74;-><init>()V

    invoke-super {p0, p1}, Lr4/m74;->k(Landroid/content/Context;)Lr4/m74;

    invoke-static {p1}, Lr4/lc;->B(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lr4/m74;->j(IIZ)Lr4/m74;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/pv3;->o:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lr4/pv3;->p:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lr4/pv3;->t()V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/ov3;Lr4/lv3;)V
    .locals 5

    invoke-direct {p0, p1}, Lr4/m74;-><init>(Lr4/n84;)V

    iget-boolean p2, p1, Lr4/ov3;->B:Z

    iput-boolean p2, p0, Lr4/pv3;->j:Z

    iget-boolean p2, p1, Lr4/ov3;->D:Z

    iput-boolean p2, p0, Lr4/pv3;->k:Z

    iget-boolean p2, p1, Lr4/ov3;->E:Z

    iput-boolean p2, p0, Lr4/pv3;->l:Z

    iget-boolean p2, p1, Lr4/ov3;->I:Z

    iput-boolean p2, p0, Lr4/pv3;->m:Z

    iget-boolean p2, p1, Lr4/ov3;->K:Z

    iput-boolean p2, p0, Lr4/pv3;->n:Z

    invoke-static {p1}, Lr4/ov3;->a(Lr4/ov3;)Landroid/util/SparseArray;

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lr4/pv3;->o:Landroid/util/SparseArray;

    invoke-static {p1}, Lr4/ov3;->b(Lr4/ov3;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lr4/pv3;->p:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static synthetic l(Lr4/pv3;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/pv3;->j:Z

    return p0
.end method

.method public static synthetic m(Lr4/pv3;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/pv3;->k:Z

    return p0
.end method

.method public static synthetic n(Lr4/pv3;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/pv3;->l:Z

    return p0
.end method

.method public static synthetic o(Lr4/pv3;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/pv3;->m:Z

    return p0
.end method

.method public static synthetic p(Lr4/pv3;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/pv3;->n:Z

    return p0
.end method

.method public static synthetic q(Lr4/pv3;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lr4/pv3;->o:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic r(Lr4/pv3;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lr4/pv3;->p:Landroid/util/SparseBooleanArray;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic j(IIZ)Lr4/m74;
    .locals 0

    const/4 p3, 0x1

    invoke-super {p0, p1, p2, p3}, Lr4/m74;->j(IIZ)Lr4/m74;

    return-object p0
.end method

.method public final s(IZ)Lr4/pv3;
    .locals 1

    iget-object v0, p0, Lr4/pv3;->p:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lr4/pv3;->p:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lr4/pv3;->p:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/pv3;->j:Z

    iput-boolean v0, p0, Lr4/pv3;->k:Z

    iput-boolean v0, p0, Lr4/pv3;->l:Z

    iput-boolean v0, p0, Lr4/pv3;->m:Z

    iput-boolean v0, p0, Lr4/pv3;->n:Z

    return-void
.end method

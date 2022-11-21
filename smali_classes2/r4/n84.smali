.class public Lr4/n84;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final x:Lr4/n84;

.field public static final y:Lr4/n84;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final z:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/n84;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:I

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Lr4/y33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/y33<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/m74;

    invoke-direct {v0}, Lr4/m74;-><init>()V

    new-instance v1, Lr4/n84;

    invoke-direct {v1, v0}, Lr4/n84;-><init>(Lr4/m74;)V

    sput-object v1, Lr4/n84;->x:Lr4/n84;

    sput-object v1, Lr4/n84;->y:Lr4/n84;

    sget-object v0, Lr4/l64;->a:Lr4/d3;

    sput-object v0, Lr4/n84;->z:Lr4/d3;

    return-void
.end method

.method public constructor <init>(Lr4/m74;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lr4/n84;->a:I

    iput v0, p0, Lr4/n84;->b:I

    iput v0, p0, Lr4/n84;->c:I

    iput v0, p0, Lr4/n84;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lr4/n84;->e:I

    iput v1, p0, Lr4/n84;->f:I

    iput v1, p0, Lr4/n84;->g:I

    iput v1, p0, Lr4/n84;->h:I

    invoke-static {p1}, Lr4/m74;->a(Lr4/m74;)I

    move-result v2

    iput v2, p0, Lr4/n84;->i:I

    invoke-static {p1}, Lr4/m74;->b(Lr4/m74;)I

    move-result v2

    iput v2, p0, Lr4/n84;->j:I

    invoke-static {p1}, Lr4/m74;->c(Lr4/m74;)Z

    move-result v2

    iput-boolean v2, p0, Lr4/n84;->k:Z

    invoke-static {p1}, Lr4/m74;->d(Lr4/m74;)Lr4/o33;

    move-result-object v2

    iput-object v2, p0, Lr4/n84;->l:Lr4/o33;

    invoke-static {p1}, Lr4/m74;->e(Lr4/m74;)Lr4/o33;

    move-result-object v2

    iput-object v2, p0, Lr4/n84;->m:Lr4/o33;

    iput v1, p0, Lr4/n84;->n:I

    iput v0, p0, Lr4/n84;->o:I

    iput v0, p0, Lr4/n84;->p:I

    invoke-static {p1}, Lr4/m74;->f(Lr4/m74;)Lr4/o33;

    move-result-object v0

    iput-object v0, p0, Lr4/n84;->q:Lr4/o33;

    invoke-static {p1}, Lr4/m74;->g(Lr4/m74;)Lr4/o33;

    move-result-object v0

    iput-object v0, p0, Lr4/n84;->r:Lr4/o33;

    invoke-static {p1}, Lr4/m74;->h(Lr4/m74;)I

    move-result v0

    iput v0, p0, Lr4/n84;->s:I

    iput-boolean v1, p0, Lr4/n84;->t:Z

    iput-boolean v1, p0, Lr4/n84;->u:Z

    iput-boolean v1, p0, Lr4/n84;->v:Z

    invoke-static {p1}, Lr4/m74;->i(Lr4/m74;)Lr4/y33;

    move-result-object p1

    iput-object p1, p0, Lr4/n84;->w:Lr4/y33;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/n84;

    iget-boolean v2, p0, Lr4/n84;->k:Z

    iget-boolean v3, p1, Lr4/n84;->k:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lr4/n84;->i:I

    iget v3, p1, Lr4/n84;->i:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lr4/n84;->j:I

    iget v3, p1, Lr4/n84;->j:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lr4/n84;->l:Lr4/o33;

    iget-object v3, p1, Lr4/n84;->l:Lr4/o33;

    invoke-virtual {v2, v3}, Lr4/o33;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/n84;->m:Lr4/o33;

    iget-object v3, p1, Lr4/n84;->m:Lr4/o33;

    invoke-virtual {v2, v3}, Lr4/o33;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/n84;->q:Lr4/o33;

    iget-object v3, p1, Lr4/n84;->q:Lr4/o33;

    invoke-virtual {v2, v3}, Lr4/o33;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/n84;->r:Lr4/o33;

    iget-object v3, p1, Lr4/n84;->r:Lr4/o33;

    invoke-virtual {v2, v3}, Lr4/o33;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lr4/n84;->s:I

    iget v3, p1, Lr4/n84;->s:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lr4/n84;->w:Lr4/y33;

    iget-object p1, p1, Lr4/n84;->w:Lr4/y33;

    invoke-virtual {v2, p1}, Lr4/y33;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lr4/n84;->k:Z

    const v1, -0x3e773ea1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/n84;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/n84;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/n84;->l:Lr4/o33;

    invoke-virtual {v1}, Lr4/o33;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/n84;->m:Lr4/o33;

    invoke-virtual {v1}, Lr4/o33;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    const v1, 0x7fffffff

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/n84;->q:Lr4/o33;

    invoke-virtual {v1}, Lr4/o33;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/n84;->r:Lr4/o33;

    invoke-virtual {v1}, Lr4/o33;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/n84;->s:I

    add-int/2addr v0, v1

    const v1, 0xe1781

    mul-int v0, v0, v1

    iget-object v1, p0, Lr4/n84;->w:Lr4/y33;

    invoke-virtual {v1}, Lr4/y33;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

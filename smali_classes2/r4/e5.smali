.class public final Lr4/e5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final G:Lr4/e5;

.field public static final H:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/e5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public F:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lr4/j8;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final o:Lr4/fz3;

.field public final p:J

.field public final q:I

.field public final r:I

.field public final s:F

.field public final t:I

.field public final u:F

.field public final v:[B

.field public final w:I

.field public final x:Lr4/av3;

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    new-instance v1, Lr4/e5;

    invoke-direct {v1, v0}, Lr4/e5;-><init>(Lr4/c5;)V

    sput-object v1, Lr4/e5;->G:Lr4/e5;

    sget-object v0, Lr4/b5;->a:Lr4/d3;

    sput-object v0, Lr4/e5;->H:Lr4/d3;

    return-void
.end method

.method public constructor <init>(Lr4/c5;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/c5;->A(Lr4/c5;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/e5;->a:Ljava/lang/String;

    invoke-static {p1}, Lr4/c5;->J(Lr4/c5;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/e5;->b:Ljava/lang/String;

    invoke-static {p1}, Lr4/c5;->K(Lr4/c5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/lc;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/e5;->c:Ljava/lang/String;

    invoke-static {p1}, Lr4/c5;->L(Lr4/c5;)I

    move-result v0

    iput v0, p0, Lr4/e5;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lr4/e5;->e:I

    invoke-static {p1}, Lr4/c5;->M(Lr4/c5;)I

    move-result v1

    iput v1, p0, Lr4/e5;->f:I

    invoke-static {p1}, Lr4/c5;->N(Lr4/c5;)I

    move-result v2

    iput v2, p0, Lr4/e5;->g:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lr4/e5;->h:I

    invoke-static {p1}, Lr4/c5;->O(Lr4/c5;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/e5;->i:Ljava/lang/String;

    invoke-static {p1}, Lr4/c5;->P(Lr4/c5;)Lr4/j8;

    move-result-object v1

    iput-object v1, p0, Lr4/e5;->j:Lr4/j8;

    invoke-static {p1}, Lr4/c5;->Q(Lr4/c5;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/e5;->k:Ljava/lang/String;

    invoke-static {p1}, Lr4/c5;->R(Lr4/c5;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lr4/e5;->l:Ljava/lang/String;

    invoke-static {p1}, Lr4/c5;->S(Lr4/c5;)I

    move-result v1

    iput v1, p0, Lr4/e5;->m:I

    invoke-static {p1}, Lr4/c5;->T(Lr4/c5;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lr4/c5;->T(Lr4/c5;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lr4/e5;->n:Ljava/util/List;

    invoke-static {p1}, Lr4/c5;->U(Lr4/c5;)Lr4/fz3;

    move-result-object v1

    iput-object v1, p0, Lr4/e5;->o:Lr4/fz3;

    invoke-static {p1}, Lr4/c5;->V(Lr4/c5;)J

    move-result-wide v4

    iput-wide v4, p0, Lr4/e5;->p:J

    invoke-static {p1}, Lr4/c5;->W(Lr4/c5;)I

    move-result v2

    iput v2, p0, Lr4/e5;->q:I

    invoke-static {p1}, Lr4/c5;->X(Lr4/c5;)I

    move-result v2

    iput v2, p0, Lr4/e5;->r:I

    invoke-static {p1}, Lr4/c5;->Y(Lr4/c5;)F

    move-result v2

    iput v2, p0, Lr4/e5;->s:F

    invoke-static {p1}, Lr4/c5;->Z(Lr4/c5;)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lr4/c5;->Z(Lr4/c5;)I

    move-result v2

    :goto_2
    iput v2, p0, Lr4/e5;->t:I

    invoke-static {p1}, Lr4/c5;->a0(Lr4/c5;)F

    move-result v2

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lr4/c5;->a0(Lr4/c5;)F

    move-result v2

    :goto_3
    iput v2, p0, Lr4/e5;->u:F

    invoke-static {p1}, Lr4/c5;->b0(Lr4/c5;)[B

    move-result-object v2

    iput-object v2, p0, Lr4/e5;->v:[B

    invoke-static {p1}, Lr4/c5;->c0(Lr4/c5;)I

    move-result v2

    iput v2, p0, Lr4/e5;->w:I

    invoke-static {p1}, Lr4/c5;->d0(Lr4/c5;)Lr4/av3;

    move-result-object v2

    iput-object v2, p0, Lr4/e5;->x:Lr4/av3;

    invoke-static {p1}, Lr4/c5;->e0(Lr4/c5;)I

    move-result v2

    iput v2, p0, Lr4/e5;->y:I

    invoke-static {p1}, Lr4/c5;->f0(Lr4/c5;)I

    move-result v2

    iput v2, p0, Lr4/e5;->z:I

    invoke-static {p1}, Lr4/c5;->g0(Lr4/c5;)I

    move-result v2

    iput v2, p0, Lr4/e5;->A:I

    invoke-static {p1}, Lr4/c5;->h0(Lr4/c5;)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lr4/c5;->h0(Lr4/c5;)I

    move-result v2

    :goto_4
    iput v2, p0, Lr4/e5;->B:I

    invoke-static {p1}, Lr4/c5;->a(Lr4/c5;)I

    move-result v2

    if-ne v2, v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {p1}, Lr4/c5;->a(Lr4/c5;)I

    move-result v0

    :goto_5
    iput v0, p0, Lr4/e5;->C:I

    invoke-static {p1}, Lr4/c5;->b(Lr4/c5;)I

    move-result v0

    iput v0, p0, Lr4/e5;->D:I

    invoke-static {p1}, Lr4/c5;->c(Lr4/c5;)I

    move-result v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    :goto_6
    iput p1, p0, Lr4/e5;->E:I

    return-void

    :cond_6
    invoke-static {p1}, Lr4/c5;->c(Lr4/c5;)I

    move-result p1

    goto :goto_6
.end method

.method public synthetic constructor <init>(Lr4/c5;Lr4/d5;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/e5;-><init>(Lr4/c5;)V

    return-void
.end method


# virtual methods
.method public final a()Lr4/c5;
    .locals 2

    new-instance v0, Lr4/c5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/c5;-><init>(Lr4/e5;Lr4/d5;)V

    return-object v0
.end method

.method public final b(I)Lr4/e5;
    .locals 2

    new-instance v0, Lr4/c5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/c5;-><init>(Lr4/e5;Lr4/d5;)V

    invoke-virtual {v0, p1}, Lr4/c5;->H(I)Lr4/c5;

    new-instance p1, Lr4/e5;

    invoke-direct {p1, v0}, Lr4/e5;-><init>(Lr4/c5;)V

    return-object p1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Lr4/e5;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lr4/e5;->r:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final d(Lr4/e5;)Z
    .locals 4

    iget-object v0, p0, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lr4/e5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lr4/e5;

    iget v2, p0, Lr4/e5;->F:I

    if-eqz v2, :cond_3

    iget v3, p1, Lr4/e5;->F:I

    if-eqz v3, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget v2, p0, Lr4/e5;->d:I

    iget v3, p1, Lr4/e5;->d:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->f:I

    iget v3, p1, Lr4/e5;->f:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->g:I

    iget v3, p1, Lr4/e5;->g:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->m:I

    iget v3, p1, Lr4/e5;->m:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lr4/e5;->p:J

    iget-wide v4, p1, Lr4/e5;->p:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget v2, p0, Lr4/e5;->q:I

    iget v3, p1, Lr4/e5;->q:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->r:I

    iget v3, p1, Lr4/e5;->r:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->t:I

    iget v3, p1, Lr4/e5;->t:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->w:I

    iget v3, p1, Lr4/e5;->w:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->y:I

    iget v3, p1, Lr4/e5;->y:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->z:I

    iget v3, p1, Lr4/e5;->z:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->A:I

    iget v3, p1, Lr4/e5;->A:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->B:I

    iget v3, p1, Lr4/e5;->B:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->C:I

    iget v3, p1, Lr4/e5;->C:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->D:I

    iget v3, p1, Lr4/e5;->D:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->E:I

    iget v3, p1, Lr4/e5;->E:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lr4/e5;->s:F

    iget v3, p1, Lr4/e5;->s:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lr4/e5;->u:F

    iget v3, p1, Lr4/e5;->u:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lr4/e5;->a:Ljava/lang/String;

    iget-object v3, p1, Lr4/e5;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->b:Ljava/lang/String;

    iget-object v3, p1, Lr4/e5;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->i:Ljava/lang/String;

    iget-object v3, p1, Lr4/e5;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->k:Ljava/lang/String;

    iget-object v3, p1, Lr4/e5;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->l:Ljava/lang/String;

    iget-object v3, p1, Lr4/e5;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->c:Ljava/lang/String;

    iget-object v3, p1, Lr4/e5;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->v:[B

    iget-object v3, p1, Lr4/e5;->v:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->j:Lr4/j8;

    iget-object v3, p1, Lr4/e5;->j:Lr4/j8;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->x:Lr4/av3;

    iget-object v3, p1, Lr4/e5;->x:Lr4/av3;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lr4/e5;->o:Lr4/fz3;

    iget-object v3, p1, Lr4/e5;->o:Lr4/fz3;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lr4/e5;->d(Lr4/e5;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lr4/e5;->F:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lr4/e5;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lr4/e5;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lr4/e5;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lr4/e5;->d:I

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget v2, p0, Lr4/e5;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lr4/e5;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lr4/e5;->i:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lr4/e5;->j:Lr4/j8;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lr4/j8;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lr4/e5;->k:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lr4/e5;->l:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lr4/e5;->p:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->s:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->u:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->C:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->D:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/e5;->E:I

    add-int/2addr v0, v1

    iput v0, p0, Lr4/e5;->F:I

    :cond_7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/e5;->a:Ljava/lang/String;

    iget-object v2, v0, Lr4/e5;->b:Ljava/lang/String;

    iget-object v3, v0, Lr4/e5;->k:Ljava/lang/String;

    iget-object v4, v0, Lr4/e5;->l:Ljava/lang/String;

    iget-object v5, v0, Lr4/e5;->i:Ljava/lang/String;

    iget v6, v0, Lr4/e5;->h:I

    iget-object v7, v0, Lr4/e5;->c:Ljava/lang/String;

    iget v8, v0, Lr4/e5;->q:I

    iget v9, v0, Lr4/e5;->r:I

    iget v10, v0, Lr4/e5;->s:F

    iget v11, v0, Lr4/e5;->y:I

    iget v12, v0, Lr4/e5;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x68

    add-int/2addr v13, v14

    add-int/2addr v13, v15

    add-int v13, v13, v16

    add-int v13, v13, v17

    add-int v13, v13, v18

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Format("

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

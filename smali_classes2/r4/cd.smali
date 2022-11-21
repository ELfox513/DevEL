.class public final Lr4/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ui;

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:[Lr4/hj;

.field public final e:[Z

.field public final f:J

.field public g:I

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lr4/cd;

.field public m:Lr4/bk;

.field public final n:[Lr4/nd;

.field public final o:[Lr4/od;

.field public final p:Lr4/ak;

.field public final q:Lr4/wi;

.field public r:Lr4/bk;

.field public final s:Lr4/mp0;


# direct methods
.method public constructor <init>([Lr4/nd;[Lr4/od;JLr4/ak;Lr4/mp0;Lr4/wi;Ljava/lang/Object;IIZJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cd;->n:[Lr4/nd;

    iput-object p2, p0, Lr4/cd;->o:[Lr4/od;

    iput-wide p3, p0, Lr4/cd;->f:J

    iput-object p5, p0, Lr4/cd;->p:Lr4/ak;

    iput-object p6, p0, Lr4/cd;->s:Lr4/mp0;

    iput-object p7, p0, Lr4/cd;->q:Lr4/wi;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lr4/cd;->b:Ljava/lang/Object;

    iput p9, p0, Lr4/cd;->c:I

    iput p10, p0, Lr4/cd;->g:I

    iput-boolean p11, p0, Lr4/cd;->i:Z

    iput-wide p12, p0, Lr4/cd;->h:J

    const/4 p1, 0x2

    new-array p2, p1, [Lr4/hj;

    iput-object p2, p0, Lr4/cd;->d:[Lr4/hj;

    new-array p1, p1, [Z

    iput-object p1, p0, Lr4/cd;->e:[Z

    invoke-virtual {p6}, Lr4/mp0;->l()Lr4/jk;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lr4/wi;->d(ILr4/jk;)Lr4/ui;

    move-result-object p1

    iput-object p1, p0, Lr4/cd;->a:Lr4/ui;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget-boolean v0, p0, Lr4/cd;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/cd;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v0}, Lr4/ui;->m()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Lr4/cd;->p:Lr4/ak;

    iget-object v1, p0, Lr4/cd;->o:[Lr4/od;

    iget-object v2, p0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v2}, Lr4/ui;->p()Lr4/mj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr4/ak;->a([Lr4/od;Lr4/mj;)Lr4/bk;

    move-result-object v0

    iget-object v1, p0, Lr4/cd;->r:Lr4/bk;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v1, v3}, Lr4/bk;->a(Lr4/bk;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_1
    iput-object v0, p0, Lr4/cd;->m:Lr4/bk;

    const/4 v0, 0x1

    return v0
.end method

.method public final c(JZ)J
    .locals 1

    const/4 p3, 0x2

    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lr4/cd;->d(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final d(JZ[Z)J
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lr4/cd;->m:Lr4/bk;

    iget-object v1, v1, Lr4/bk;->b:Lr4/yj;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lr4/cd;->e:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lr4/cd;->m:Lr4/bk;

    iget-object v7, v0, Lr4/cd;->r:Lr4/bk;

    invoke-virtual {v6, v7, v3}, Lr4/bk;->a(Lr4/bk;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lr4/cd;->a:Lr4/ui;

    invoke-virtual {v1}, Lr4/yj;->b()[Lr4/qj;

    move-result-object v7

    iget-object v8, v0, Lr4/cd;->e:[Z

    iget-object v9, v0, Lr4/cd;->d:[Lr4/hj;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lr4/ui;->e([Lr4/qj;[Z[Lr4/hj;[ZJ)J

    move-result-wide v6

    iget-object v3, v0, Lr4/cd;->m:Lr4/bk;

    iput-object v3, v0, Lr4/cd;->r:Lr4/bk;

    iput-boolean v2, v0, Lr4/cd;->k:Z

    const/4 v3, 0x0

    :goto_2
    iget-object v8, v0, Lr4/cd;->d:[Lr4/hj;

    if-ge v3, v4, :cond_5

    aget-object v8, v8, v3

    if-eqz v8, :cond_3

    invoke-virtual {v1, v3}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Lr4/vk;->d(Z)V

    iput-boolean v5, v0, Lr4/cd;->k:Z

    goto :goto_5

    :cond_3
    invoke-virtual {v1, v3}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Lr4/vk;->d(Z)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lr4/cd;->s:Lr4/mp0;

    iget-object v3, v0, Lr4/cd;->n:[Lr4/nd;

    iget-object v4, v0, Lr4/cd;->m:Lr4/bk;

    iget-object v4, v4, Lr4/bk;->a:Lr4/mj;

    invoke-virtual {v2, v3, v4, v1}, Lr4/mp0;->b([Lr4/nd;Lr4/mj;Lr4/yj;)V

    return-wide v6
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/cd;->q:Lr4/wi;

    iget-object v1, p0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v0, v1}, Lr4/wi;->b(Lr4/ui;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

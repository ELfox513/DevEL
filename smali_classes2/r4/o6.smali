.class public final Lr4/o6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Lr4/ft3;


# instance fields
.field public final a:Lr4/e8;

.field public final b:Lr4/ft3;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Lr4/o3;

.field public final g:Z

.field public final h:Lr4/j44;

.field public final i:Lr4/cw3;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/j8;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lr4/ft3;

.field public final l:Z

.field public final m:I

.field public final n:Lr4/q6;

.field public final o:Z

.field public final p:Z

.field public volatile q:J

.field public volatile r:J

.field public volatile s:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ft3;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lr4/ft3;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lr4/o6;->t:Lr4/ft3;

    return-void
.end method

.method public constructor <init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/e8;",
            "Lr4/ft3;",
            "JJI",
            "Lr4/o3;",
            "Z",
            "Lr4/j44;",
            "Lr4/cw3;",
            "Ljava/util/List<",
            "Lr4/j8;",
            ">;",
            "Lr4/ft3;",
            "ZI",
            "Lr4/q6;",
            "JJJZZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lr4/o6;->a:Lr4/e8;

    move-object v1, p2

    iput-object v1, v0, Lr4/o6;->b:Lr4/ft3;

    move-wide v1, p3

    iput-wide v1, v0, Lr4/o6;->c:J

    move-wide v1, p5

    iput-wide v1, v0, Lr4/o6;->d:J

    move v1, p7

    iput v1, v0, Lr4/o6;->e:I

    move-object v1, p8

    iput-object v1, v0, Lr4/o6;->f:Lr4/o3;

    move v1, p9

    iput-boolean v1, v0, Lr4/o6;->g:Z

    move-object v1, p10

    iput-object v1, v0, Lr4/o6;->h:Lr4/j44;

    move-object v1, p11

    iput-object v1, v0, Lr4/o6;->i:Lr4/cw3;

    move-object v1, p12

    iput-object v1, v0, Lr4/o6;->j:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lr4/o6;->k:Lr4/ft3;

    move/from16 v1, p14

    iput-boolean v1, v0, Lr4/o6;->l:Z

    move/from16 v1, p15

    iput v1, v0, Lr4/o6;->m:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lr4/o6;->s:J

    move/from16 v1, p23

    iput-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lr4/o6;->p:Z

    return-void
.end method

.method public static a(Lr4/cw3;)Lr4/o6;
    .locals 26

    move-object/from16 v11, p0

    new-instance v25, Lr4/o6;

    move-object/from16 v0, v25

    sget-object v1, Lr4/e8;->a:Lr4/e8;

    sget-object v13, Lr4/o6;->t:Lr4/ft3;

    move-object v2, v13

    sget-object v10, Lr4/j44;->d:Lr4/j44;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v12

    sget-object v16, Lr4/q6;->d:Lr4/q6;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v25
.end method

.method public static b()Lr4/ft3;
    .locals 1

    sget-object v0, Lr4/o6;->t:Lr4/ft3;

    return-object v0
.end method


# virtual methods
.method public final c(Lr4/ft3;JJJJLr4/j44;Lr4/cw3;Ljava/util/List;)Lr4/o6;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ft3;",
            "JJJJ",
            "Lr4/j44;",
            "Lr4/cw3;",
            "Ljava/util/List<",
            "Lr4/j8;",
            ">;)",
            "Lr4/o6;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    new-instance v26, Lr4/o6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget v8, v0, Lr4/o6;->e:I

    iget-object v9, v0, Lr4/o6;->f:Lr4/o3;

    iget-boolean v10, v0, Lr4/o6;->g:Z

    iget-object v14, v0, Lr4/o6;->k:Lr4/ft3;

    iget-boolean v15, v0, Lr4/o6;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lr4/o6;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lr4/o6;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v26
.end method

.method public final d(Lr4/e8;)Lr4/o6;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    new-instance v26, Lr4/o6;

    move-object/from16 v1, v26

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v0, Lr4/o6;->c:J

    iget-wide v6, v0, Lr4/o6;->d:J

    iget v8, v0, Lr4/o6;->e:I

    iget-object v9, v0, Lr4/o6;->f:Lr4/o3;

    iget-boolean v10, v0, Lr4/o6;->g:Z

    iget-object v11, v0, Lr4/o6;->h:Lr4/j44;

    iget-object v12, v0, Lr4/o6;->i:Lr4/cw3;

    iget-object v13, v0, Lr4/o6;->j:Ljava/util/List;

    iget-object v14, v0, Lr4/o6;->k:Lr4/ft3;

    iget-boolean v15, v0, Lr4/o6;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lr4/o6;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lr4/o6;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lr4/o6;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v26
.end method

.method public final e(I)Lr4/o6;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v8, p1

    new-instance v26, Lr4/o6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v0, Lr4/o6;->c:J

    iget-wide v6, v0, Lr4/o6;->d:J

    iget-object v9, v0, Lr4/o6;->f:Lr4/o3;

    iget-boolean v10, v0, Lr4/o6;->g:Z

    iget-object v11, v0, Lr4/o6;->h:Lr4/j44;

    iget-object v12, v0, Lr4/o6;->i:Lr4/cw3;

    iget-object v13, v0, Lr4/o6;->j:Ljava/util/List;

    iget-object v14, v0, Lr4/o6;->k:Lr4/ft3;

    iget-boolean v15, v0, Lr4/o6;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lr4/o6;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lr4/o6;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lr4/o6;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v26
.end method

.method public final f(Lr4/o3;)Lr4/o6;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v26, Lr4/o6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v0, Lr4/o6;->c:J

    iget-wide v6, v0, Lr4/o6;->d:J

    iget v8, v0, Lr4/o6;->e:I

    iget-boolean v10, v0, Lr4/o6;->g:Z

    iget-object v11, v0, Lr4/o6;->h:Lr4/j44;

    iget-object v12, v0, Lr4/o6;->i:Lr4/cw3;

    iget-object v13, v0, Lr4/o6;->j:Ljava/util/List;

    iget-object v14, v0, Lr4/o6;->k:Lr4/ft3;

    iget-boolean v15, v0, Lr4/o6;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lr4/o6;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lr4/o6;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lr4/o6;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v26
.end method

.method public final g(Lr4/ft3;)Lr4/o6;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    new-instance v26, Lr4/o6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v0, Lr4/o6;->c:J

    iget-wide v6, v0, Lr4/o6;->d:J

    iget v8, v0, Lr4/o6;->e:I

    iget-object v9, v0, Lr4/o6;->f:Lr4/o3;

    iget-boolean v10, v0, Lr4/o6;->g:Z

    iget-object v11, v0, Lr4/o6;->h:Lr4/j44;

    iget-object v12, v0, Lr4/o6;->i:Lr4/cw3;

    iget-object v13, v0, Lr4/o6;->j:Ljava/util/List;

    iget-boolean v15, v0, Lr4/o6;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lr4/o6;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lr4/o6;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lr4/o6;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v26
.end method

.method public final h(ZI)Lr4/o6;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    new-instance v26, Lr4/o6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v0, Lr4/o6;->c:J

    iget-wide v6, v0, Lr4/o6;->d:J

    iget v8, v0, Lr4/o6;->e:I

    iget-object v9, v0, Lr4/o6;->f:Lr4/o3;

    iget-boolean v10, v0, Lr4/o6;->g:Z

    iget-object v11, v0, Lr4/o6;->h:Lr4/j44;

    iget-object v12, v0, Lr4/o6;->i:Lr4/cw3;

    iget-object v13, v0, Lr4/o6;->j:Ljava/util/List;

    iget-object v14, v0, Lr4/o6;->k:Lr4/ft3;

    move-object/from16 p1, v1

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lr4/o6;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lr4/o6;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v26
.end method

.method public final i(Z)Lr4/o6;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v24, p1

    new-instance v26, Lr4/o6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v0, Lr4/o6;->c:J

    iget-wide v6, v0, Lr4/o6;->d:J

    iget v8, v0, Lr4/o6;->e:I

    iget-object v9, v0, Lr4/o6;->f:Lr4/o3;

    iget-boolean v10, v0, Lr4/o6;->g:Z

    iget-object v11, v0, Lr4/o6;->h:Lr4/j44;

    iget-object v12, v0, Lr4/o6;->i:Lr4/cw3;

    iget-object v13, v0, Lr4/o6;->j:Ljava/util/List;

    iget-object v14, v0, Lr4/o6;->k:Lr4/ft3;

    iget-boolean v15, v0, Lr4/o6;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lr4/o6;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lr4/o6;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lr4/o6;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    return-object v26
.end method

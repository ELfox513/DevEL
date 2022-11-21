.class public final Lr4/hp2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/xy;

.field public final b:Lr4/s70;

.field public final c:Lr4/d92;

.field public final d:Lr4/tt;

.field public final e:Lr4/yt;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/d20;

.field public final j:Lr4/eu;

.field public final k:I

.field public final l:Lv2/a;

.field public final m:Lv2/g;

.field public final n:Lr4/cw;

.field public final o:Lr4/xo2;

.field public final p:Z

.field public final q:Lr4/gw;


# direct methods
.method public synthetic constructor <init>(Lr4/fp2;Lr4/gp2;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lr4/fp2;->q(Lr4/fp2;)Lr4/yt;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->e:Lr4/yt;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->r(Lr4/fp2;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->f:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->n(Lr4/fp2;)Lr4/gw;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->q:Lr4/gw;

    new-instance v1, Lr4/tt;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget v3, v2, Lr4/tt;->a:I

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-wide v4, v2, Lr4/tt;->b:J

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v6, v2, Lr4/tt;->d:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget v7, v2, Lr4/tt;->k:I

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v8, v2, Lr4/tt;->p:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-boolean v9, v2, Lr4/tt;->q:Z

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget v10, v2, Lr4/tt;->r:I

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-boolean v2, v2, Lr4/tt;->s:Z

    const/4 v11, 0x1

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lr4/fp2;->t(Lr4/fp2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v12, v2, Lr4/tt;->t:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v13, v2, Lr4/tt;->u:Lr4/uy;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v14, v2, Lr4/tt;->v:Landroid/location/Location;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v15, v2, Lr4/tt;->w:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->x:Landroid/os/Bundle;

    move-object/from16 v16, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->y:Landroid/os/Bundle;

    move-object/from16 v17, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->z:Ljava/util/List;

    move-object/from16 v18, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->A:Ljava/lang/String;

    move-object/from16 v19, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->B:Ljava/lang/String;

    move-object/from16 v20, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-boolean v2, v2, Lr4/tt;->C:Z

    move/from16 v21, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->D:Lr4/jt;

    move-object/from16 v22, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget v2, v2, Lr4/tt;->E:I

    move/from16 v23, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->F:Ljava/lang/String;

    move-object/from16 v24, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->G:Ljava/util/List;

    move-object/from16 v25, v2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget v2, v2, Lr4/tt;->H:I

    invoke-static {v2}, Lb3/k2;->L(I)I

    move-result v26

    invoke-static/range {p1 .. p1}, Lr4/fp2;->p(Lr4/fp2;)Lr4/tt;

    move-result-object v2

    iget-object v2, v2, Lr4/tt;->I:Ljava/lang/String;

    move-object/from16 v27, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v27}, Lr4/tt;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lr4/uy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLr4/jt;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    iput-object v1, v0, Lr4/hp2;->d:Lr4/tt;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->s(Lr4/fp2;)Lr4/xy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lr4/fp2;->s(Lr4/fp2;)Lr4/xy;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lr4/fp2;->w(Lr4/fp2;)Lr4/d20;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Lr4/fp2;->w(Lr4/fp2;)Lr4/d20;

    move-result-object v1

    iget-object v1, v1, Lr4/d20;->q:Lr4/xy;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lr4/hp2;->a:Lr4/xy;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->u(Lr4/fp2;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->g:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->v(Lr4/fp2;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->h:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->u(Lr4/fp2;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lr4/fp2;->w(Lr4/fp2;)Lr4/d20;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lr4/d20;

    new-instance v3, Lv2/e$a;

    invoke-direct {v3}, Lv2/e$a;-><init>()V

    invoke-virtual {v3}, Lv2/e$a;->a()Lv2/e;

    move-result-object v3

    invoke-direct {v1, v3}, Lr4/d20;-><init>(Lv2/e;)V

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lr4/fp2;->w(Lr4/fp2;)Lr4/d20;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lr4/hp2;->i:Lr4/d20;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->x(Lr4/fp2;)Lr4/eu;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->j:Lr4/eu;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->B(Lr4/fp2;)I

    move-result v1

    iput v1, v0, Lr4/hp2;->k:I

    invoke-static/range {p1 .. p1}, Lr4/fp2;->y(Lr4/fp2;)Lv2/a;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->l:Lv2/a;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->z(Lr4/fp2;)Lv2/g;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->m:Lv2/g;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->A(Lr4/fp2;)Lr4/cw;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->n:Lr4/cw;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->C(Lr4/fp2;)Lr4/s70;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->b:Lr4/s70;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->D(Lr4/fp2;)Lr4/vo2;

    move-result-object v1

    new-instance v3, Lr4/xo2;

    invoke-direct {v3, v1, v2}, Lr4/xo2;-><init>(Lr4/vo2;Lr4/wo2;)V

    iput-object v3, v0, Lr4/hp2;->o:Lr4/xo2;

    invoke-static/range {p1 .. p1}, Lr4/fp2;->E(Lr4/fp2;)Z

    move-result v1

    iput-boolean v1, v0, Lr4/hp2;->p:Z

    invoke-static/range {p1 .. p1}, Lr4/fp2;->F(Lr4/fp2;)Lr4/d92;

    move-result-object v1

    iput-object v1, v0, Lr4/hp2;->c:Lr4/d92;

    return-void
.end method


# virtual methods
.method public final a()Lr4/d40;
    .locals 2

    iget-object v0, p0, Lr4/hp2;->m:Lv2/g;

    if-nez v0, :cond_1

    iget-object v1, p0, Lr4/hp2;->l:Lv2/a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lv2/g;->Y0()Lr4/d40;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lr4/hp2;->l:Lv2/a;

    invoke-virtual {v0}, Lv2/a;->Y0()Lr4/d40;

    move-result-object v0

    return-object v0
.end method

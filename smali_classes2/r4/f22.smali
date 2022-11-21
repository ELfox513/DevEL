.class public final Lr4/f22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dh1;


# instance fields
.field public final a:Lr4/im0;

.field public final b:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/r01;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/no2;

.field public final d:Lr4/cs0;

.field public final e:Lr4/hp2;

.field public final f:Lr4/x50;

.field public final g:Z


# direct methods
.method public constructor <init>(Lr4/im0;Lr4/h83;Lr4/no2;Lr4/cs0;Lr4/hp2;ZLr4/x50;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/im0;",
            "Lr4/h83<",
            "Lr4/r01;",
            ">;",
            "Lr4/no2;",
            "Lr4/cs0;",
            "Lr4/hp2;",
            "Z",
            "Lr4/x50;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f22;->a:Lr4/im0;

    iput-object p2, p0, Lr4/f22;->b:Lr4/h83;

    iput-object p3, p0, Lr4/f22;->c:Lr4/no2;

    iput-object p4, p0, Lr4/f22;->d:Lr4/cs0;

    iput-object p5, p0, Lr4/f22;->e:Lr4/hp2;

    iput-boolean p6, p0, Lr4/f22;->g:Z

    iput-object p7, p0, Lr4/f22;->f:Lr4/x50;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lr4/w71;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/f22;->b:Lr4/h83;

    invoke-static {v1}, Lr4/y73;->r(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/r01;

    iget-object v2, v0, Lr4/f22;->d:Lr4/cs0;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lr4/cs0;->Y0(Z)V

    new-instance v2, Lz2/j;

    iget-boolean v4, v0, Lr4/f22;->g:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lr4/f22;->f:Lr4/x50;

    invoke-virtual {v4, v3}, Lr4/x50;->c(Z)Z

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iget-boolean v4, v0, Lr4/f22;->g:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lr4/f22;->f:Lr4/x50;

    invoke-virtual {v4}, Lr4/x50;->d()Z

    move-result v4

    move v7, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-boolean v4, v0, Lr4/f22;->g:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lr4/f22;->f:Lr4/x50;

    invoke-virtual {v4}, Lr4/x50;->e()F

    move-result v4

    move v8, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v6, 0x1

    const/4 v9, -0x1

    iget-object v4, v0, Lr4/f22;->c:Lr4/no2;

    iget-boolean v11, v4, Lr4/no2;->K:Z

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lz2/j;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lr4/w71;->c()V

    :cond_3
    invoke-static {}, Lz2/t;->c()La3/o;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lr4/r01;->j()Lr4/sg1;

    move-result-object v6

    iget-object v8, v0, Lr4/f22;->d:Lr4/cs0;

    iget-object v1, v0, Lr4/f22;->c:Lr4/no2;

    iget v1, v1, Lr4/no2;->M:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    :goto_3
    move v9, v1

    goto :goto_4

    :cond_4
    iget-object v1, v0, Lr4/f22;->e:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->j:Lr4/eu;

    if-eqz v1, :cond_6

    iget v1, v1, Lr4/eu;->a:I

    if-ne v1, v3, :cond_5

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_4

    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_4

    :cond_6
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    invoke-static {v1}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lr4/f22;->c:Lr4/no2;

    iget v1, v1, Lr4/no2;->M:I

    goto :goto_3

    :goto_4
    iget-object v10, v0, Lr4/f22;->a:Lr4/im0;

    iget-object v1, v0, Lr4/f22;->c:Lr4/no2;

    iget-object v11, v1, Lr4/no2;->B:Ljava/lang/String;

    iget-object v1, v1, Lr4/no2;->s:Lr4/uo2;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v13, v1, Lr4/uo2;->b:Ljava/lang/String;

    iget-object v14, v1, Lr4/uo2;->a:Ljava/lang/String;

    iget-object v1, v0, Lr4/f22;->e:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lr4/gt;La3/q;La3/x;Lr4/cs0;ILr4/im0;Ljava/lang/String;Lz2/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/w71;)V

    move-object/from16 v1, p2

    invoke-static {v1, v2, v3}, La3/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method

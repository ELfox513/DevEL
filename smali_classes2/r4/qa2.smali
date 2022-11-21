.class public final Lr4/qa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/ra2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/eg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/eg2<",
            "Lr4/kg2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/hp2;

.field public final c:Landroid/content/Context;

.field public final d:Lr4/nl0;


# direct methods
.method public constructor <init>(Lr4/kc2;Lr4/hp2;Landroid/content/Context;Lr4/nl0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/kc2<",
            "Lr4/kg2;",
            ">;",
            "Lr4/hp2;",
            "Landroid/content/Context;",
            "Lr4/nl0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qa2;->a:Lr4/eg2;

    iput-object p2, p0, Lr4/qa2;->b:Lr4/hp2;

    iput-object p3, p0, Lr4/qa2;->c:Landroid/content/Context;

    iput-object p4, p0, Lr4/qa2;->d:Lr4/nl0;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lr4/kg2;)Lr4/ra2;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/qa2;->b:Lr4/hp2;

    iget-object v3, v1, Lr4/hp2;->e:Lr4/yt;

    iget-object v1, v3, Lr4/yt;->r:[Lr4/yt;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v3, Lr4/yt;->a:Ljava/lang/String;

    iget-boolean v6, v3, Lr4/yt;->t:Z

    move-object v10, v1

    move v11, v6

    goto :goto_2

    :cond_0
    array-length v6, v1

    move-object v10, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v12, v1, v7

    iget-boolean v13, v12, Lr4/yt;->t:Z

    if-nez v13, :cond_1

    if-nez v8, :cond_1

    iget-object v10, v12, Lr4/yt;->a:Ljava/lang/String;

    const/4 v8, 0x1

    :cond_1
    if-eqz v13, :cond_3

    if-nez v9, :cond_2

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v1, v0, Lr4/qa2;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, v0, Lr4/qa2;->d:Lr4/nl0;

    invoke-virtual {v8}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v8

    invoke-interface {v8}, Lb3/y1;->v()Ljava/lang/String;

    move-result-object v8

    move v9, v1

    move-object v1, v8

    move v8, v7

    move v7, v2

    goto :goto_3

    :cond_6
    move-object v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lr4/yt;->r:[Lr4/yt;

    if-eqz v12, :cond_f

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    const-string v4, "|"

    if-ge v14, v13, :cond_d

    aget-object v5, v12, v14

    iget-boolean v6, v5, Lr4/yt;->t:Z

    if-eqz v6, :cond_7

    const/4 v15, 0x1

    const/16 v16, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v4, v5, Lr4/yt;->p:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_a

    const/16 v16, 0x0

    cmpl-float v4, v7, v16

    if-eqz v4, :cond_9

    iget v4, v5, Lr4/yt;->q:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_5

    :cond_9
    const/4 v4, -0x1

    :cond_a
    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lr4/yt;->b:I

    const/4 v6, -0x2

    const/16 v16, 0x0

    if-ne v4, v6, :cond_c

    cmpl-float v4, v7, v16

    if-eqz v4, :cond_b

    iget v4, v5, Lr4/yt;->d:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_6

    :cond_b
    const/4 v4, -0x2

    :cond_c
    :goto_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_d
    if-eqz v15, :cond_f

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    const-string v4, "320x50"

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Lr4/ra2;

    iget-object v2, v0, Lr4/qa2;->b:Lr4/hp2;

    iget-boolean v13, v2, Lr4/hp2;->p:Z

    move-object v2, v12

    move-object v4, v10

    move v5, v11

    move-object v10, v1

    move v11, v13

    invoke-direct/range {v2 .. v11}, Lr4/ra2;-><init>(Lr4/yt;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v12
.end method

.method public final zza()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/ra2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/qa2;->a:Lr4/eg2;

    invoke-interface {v0}, Lr4/eg2;->zza()Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/pa2;

    invoke-direct {v1, p0}, Lr4/pa2;-><init>(Lr4/qa2;)V

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

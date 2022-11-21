.class public final Lr4/co0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lr4/un0;


# instance fields
.field public A:Landroid/graphics/Bitmap;

.field public final B:Landroid/widget/ImageView;

.field public C:Z

.field public final a:Lr4/po0;

.field public final b:Landroid/widget/FrameLayout;

.field public final d:Landroid/view/View;

.field public final k:Lr4/h00;

.field public final p:Lr4/ro0;

.field public final q:J

.field public final r:Lr4/vn0;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:J

.field public x:J

.field public y:Ljava/lang/String;

.field public z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/po0;IZLr4/h00;Lr4/oo0;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p2

    iput-object v7, v0, Lr4/co0;->a:Lr4/po0;

    iput-object v9, v0, Lr4/co0;->k:Lr4/h00;

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface/range {p2 .. p2}, Lr4/po0;->i()Lz2/a;

    move-result-object v1

    invoke-static {v1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lr4/po0;->i()Lz2/a;

    move-result-object v1

    iget-object v1, v1, Lz2/a;->a:Lr4/wn0;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v12, Lr4/qo0;

    invoke-interface/range {p2 .. p2}, Lr4/po0;->n()Lr4/im0;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lr4/po0;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lr4/po0;->j()Lr4/d00;

    move-result-object v6

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lr4/qo0;-><init>(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Lr4/h00;Lr4/d00;)V

    const/4 v1, 0x2

    move/from16 v2, p3

    if-ne v2, v1, :cond_2

    new-instance v13, Lr4/gp0;

    invoke-static/range {p2 .. p2}, Lr4/wn0;->a(Lr4/po0;)Z

    move-result v6

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lr4/gp0;-><init>(Landroid/content/Context;Lr4/qo0;Lr4/po0;ZZLr4/oo0;)V

    goto :goto_1

    :cond_2
    new-instance v12, Lr4/tn0;

    invoke-static/range {p2 .. p2}, Lr4/wn0;->a(Lr4/po0;)Z

    move-result v13

    new-instance v14, Lr4/qo0;

    invoke-interface/range {p2 .. p2}, Lr4/po0;->n()Lr4/im0;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lr4/po0;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lr4/po0;->j()Lr4/d00;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lr4/qo0;-><init>(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Lr4/h00;Lr4/d00;)V

    move-object v1, v12

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, v13

    move-object/from16 v6, p6

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lr4/tn0;-><init>(Landroid/content/Context;Lr4/po0;ZZLr4/oo0;Lr4/qo0;)V

    :goto_1
    iput-object v1, v0, Lr4/co0;->r:Lr4/vn0;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lr4/co0;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz v1, :cond_4

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v11, v11, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lr4/rz;->A:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    sget-object v2, Lr4/rz;->x:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lr4/co0;->m()V

    :cond_4
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lr4/co0;->B:Landroid/widget/ImageView;

    sget-object v2, Lr4/rz;->C:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lr4/co0;->q:J

    sget-object v2, Lr4/rz;->z:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lr4/co0;->v:Z

    if-eqz v9, :cond_6

    const/4 v3, 0x1

    if-eq v3, v2, :cond_5

    const-string v2, "0"

    goto :goto_2

    :cond_5
    const-string v2, "1"

    :goto_2
    const-string v3, "spinner_used"

    invoke-virtual {v9, v3, v2}, Lr4/h00;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lr4/ro0;

    invoke-direct {v2, p0}, Lr4/ro0;-><init>(Lr4/co0;)V

    iput-object v2, v0, Lr4/co0;->p:Lr4/ro0;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p0}, Lr4/vn0;->h(Lr4/un0;)V

    :cond_7
    if-nez v1, :cond_8

    const-string v1, "AdVideoUnderlay Error"

    const-string v2, "Allocating player failed."

    invoke-virtual {p0, v1, v2}, Lr4/co0;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static synthetic p(Lr4/co0;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lr4/vn0;->k()V

    return-void
.end method

.method public final B(I)V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lr4/vn0;->p(I)V

    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lr4/vn0;->b:Lr4/to0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lr4/to0;->a(Z)V

    invoke-virtual {v0}, Lr4/vn0;->n()V

    return-void
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lr4/vn0;->b:Lr4/to0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr4/to0;->a(Z)V

    invoke-virtual {v0}, Lr4/vn0;->n()V

    return-void
.end method

.method public final E(F)V
    .locals 2

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lr4/vn0;->b:Lr4/to0;

    invoke-virtual {v1, p1}, Lr4/to0;->b(F)V

    invoke-virtual {v0}, Lr4/vn0;->n()V

    return-void
.end method

.method public final F(I)V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v0, p1}, Lr4/vn0;->A(I)V

    return-void
.end method

.method public final G(I)V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v0, p1}, Lr4/vn0;->B(I)V

    return-void
.end method

.method public final H(I)V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v0, p1}, Lr4/vn0;->C(I)V

    return-void
.end method

.method public final I(I)V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v0, p1}, Lr4/vn0;->e(I)V

    return-void
.end method

.method public final a()V
    .locals 6

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lr4/co0;->x:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lr4/vn0;->m()I

    move-result v0

    iget-object v1, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v1}, Lr4/vn0;->r()I

    move-result v1

    iget-object v2, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v2}, Lr4/vn0;->s()I

    move-result v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    int-to-float v0, v0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "videoWidth"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "canplaythrough"

    invoke-virtual {p0, v0, v3}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lr4/co0;->a:Lr4/po0;

    invoke-interface {v0}, Lr4/po0;->h()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lr4/co0;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/co0;->a:Lr4/po0;

    invoke-interface {v0}, Lr4/po0;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lr4/co0;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/co0;->a:Lr4/po0;

    invoke-interface {v0}, Lr4/po0;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lr4/co0;->t:Z

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lr4/co0;->s:Z

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ended"

    invoke-virtual {p0, v1, v0}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/co0;->t()V

    return-void
.end method

.method public final d(II)V
    .locals 3

    iget-boolean v0, p0, Lr4/co0;->v:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lr4/rz;->B:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p2, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/co0;->C:Z

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    invoke-virtual {p0, v2, v1}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/co0;->t()V

    iput-boolean v0, p0, Lr4/co0;->s:Z

    return-void
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, Lr4/co0;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/co0;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/co0;->B:Landroid/widget/ImageView;

    iget-object v1, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lr4/co0;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lr4/co0;->B:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lr4/co0;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {v0}, Lr4/ro0;->a()V

    iget-wide v0, p0, Lr4/co0;->w:J

    iput-wide v0, p0, Lr4/co0;->x:J

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/ao0;

    invoke-direct {v1, p0}, Lr4/ao0;-><init>(Lr4/co0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {v0}, Lr4/ro0;->a()V

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-eqz v0, :cond_0

    sget-object v1, Lr4/qm0;->e:Lr4/i83;

    invoke-static {v0}, Lr4/xn0;->a(Lr4/vn0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "what"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "ExoPlayerAdapter exception"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "extra"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const-string p2, "exception"

    invoke-virtual {p0, p2, p1}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    invoke-virtual {p0, p1, v0}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lr4/co0;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final j()V
    .locals 5

    iget-boolean v0, p0, Lr4/co0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/co0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lr4/co0;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-object v2, p0, Lr4/co0;->r:Lr4/vn0;

    iget-object v3, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lr4/co0;->C:Z

    :cond_2
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lb3/w1;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Spinner frame grab took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_3
    iget-wide v0, p0, Lr4/co0;->q:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/co0;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/co0;->A:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lr4/co0;->k:Lr4/h00;

    if-eqz v0, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    invoke-virtual {v0, v2, v1}, Lr4/h00;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v0, p1}, Lr4/vn0;->f(I)V

    return-void
.end method

.method public final l(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final m()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v0}, Lr4/vn0;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdMob - "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {v0}, Lr4/ro0;->a()V

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/vn0;->j()V

    :cond_0
    invoke-virtual {p0}, Lr4/co0;->t()V

    return-void
.end method

.method public final o()V
    .locals 9

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lr4/vn0;->o()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lr4/co0;->w:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    sget-object v3, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "timeupdate"

    const/4 v5, 0x1

    const-string v6, "time"

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    aput-object v6, v3, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "totalBytes"

    aput-object v2, v3, v8

    const/4 v2, 0x3

    iget-object v5, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v5}, Lr4/vn0;->v()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x4

    const-string v5, "qoeCachedBytes"

    aput-object v5, v3, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v5}, Lr4/vn0;->u()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x6

    const-string v5, "qoeLoadedBytes"

    aput-object v5, v3, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v5}, Lr4/vn0;->t()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0x8

    const-string v5, "droppedFrames"

    aput-object v5, v3, v2

    const/16 v2, 0x9

    iget-object v5, p0, Lr4/co0;->r:Lr4/vn0;

    invoke-virtual {v5}, Lr4/vn0;->w()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0xa

    const-string v5, "reportTime"

    aput-object v5, v3, v2

    const/16 v2, 0xb

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v5

    invoke-interface {v5}, Lc4/f;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p0, v4, v3}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v3, v8, [Ljava/lang/String;

    aput-object v6, v3, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {p0, v4, v3}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    iput-wide v0, p0, Lr4/co0;->w:J

    :cond_2
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {v0}, Lr4/ro0;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {v0}, Lr4/ro0;->a()V

    iget-wide v0, p0, Lr4/co0;->w:J

    iput-wide v0, p0, Lr4/co0;->x:J

    :goto_0
    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/yn0;

    invoke-direct {v1, p0, p1}, Lr4/yn0;-><init>(Lr4/co0;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {p1}, Lr4/ro0;->b()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {p1}, Lr4/ro0;->a()V

    iget-wide v0, p0, Lr4/co0;->w:J

    iput-wide v0, p0, Lr4/co0;->x:J

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/bo0;

    invoke-direct {v1, p0, p1}, Lr4/bo0;-><init>(Lr4/co0;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic q(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasWindowFocus"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "windowFocusChanged"

    invoke-virtual {p0, p1, v0}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lr4/co0;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final varargs s(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v4, p2, v2

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr4/co0;->a:Lr4/po0;

    const-string p2, "onVideoEvent"

    invoke-interface {p1, p2, v0}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lr4/co0;->a:Lr4/po0;

    invoke-interface {v0}, Lr4/po0;->h()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lr4/co0;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/co0;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/co0;->a:Lr4/po0;

    invoke-interface {v0}, Lr4/po0;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/co0;->t:Z

    :cond_1
    return-void
.end method

.method public final u(I)V
    .locals 2

    sget-object v0, Lr4/rz;->A:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lr4/co0;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final v(IIII)V
    .locals 2

    invoke-static {}, Lb3/w1;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set video bounds to x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lr4/co0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final w(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr4/co0;->y:Ljava/lang/String;

    iput-object p2, p0, Lr4/co0;->z:[Ljava/lang/String;

    return-void
.end method

.method public final x(FF)V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lr4/vn0;->q(FF)V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/co0;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    iget-object v1, p0, Lr4/co0;->y:Ljava/lang/String;

    iget-object v2, p0, Lr4/co0;->z:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lr4/vn0;->z(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_src"

    invoke-virtual {p0, v1, v0}, Lr4/co0;->s(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lr4/co0;->r:Lr4/vn0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lr4/vn0;->l()V

    return-void
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lr4/co0;->p:Lr4/ro0;

    invoke-virtual {v0}, Lr4/ro0;->b()V

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/zn0;

    invoke-direct {v1, p0}, Lr4/zn0;-><init>(Lr4/co0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

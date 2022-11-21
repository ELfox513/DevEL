.class public final Lr4/zd0;
.super Lr4/fe0;
.source "SourceFile"


# static fields
.field public static final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/lang/Object;

.field public final l:Lr4/cs0;

.field public final m:Landroid/app/Activity;

.field public n:Lr4/vt0;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/LinearLayout;

.field public final q:Lr4/ge0;

.field public r:Landroid/widget/PopupWindow;

.field public s:Landroid/widget/RelativeLayout;

.field public t:Landroid/view/ViewGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bottom-center"

    aput-object v2, v0, v1

    invoke-static {v0}, Lc4/g;->g([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lr4/zd0;->u:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lr4/cs0;Lr4/ge0;)V
    .locals 2

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lr4/fe0;-><init>(Lr4/cs0;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lr4/zd0;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/zd0;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lr4/zd0;->e:I

    iput v0, p0, Lr4/zd0;->f:I

    const/4 v1, -0x1

    iput v1, p0, Lr4/zd0;->g:I

    iput v0, p0, Lr4/zd0;->h:I

    iput v0, p0, Lr4/zd0;->i:I

    iput v1, p0, Lr4/zd0;->j:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/zd0;->k:Ljava/lang/Object;

    iput-object p1, p0, Lr4/zd0;->l:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lr4/zd0;->m:Landroid/app/Activity;

    iput-object p2, p0, Lr4/zd0;->q:Lr4/ge0;

    return-void
.end method


# virtual methods
.method public final h(Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lr4/zd0;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lr4/zd0;->m:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, v1, Lr4/zd0;->l:Lr4/cs0;

    invoke-interface {v3}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, v1, Lr4/zd0;->l:Lr4/cs0;

    invoke-interface {v3}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v3

    invoke-virtual {v3}, Lr4/vt0;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2
    iget-object v3, v1, Lr4/zd0;->l:Lr4/cs0;

    invoke-interface {v3}, Lr4/cs0;->T()Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lb3/k2;->q(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lr4/zd0;->j:I

    :cond_3
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lb3/k2;->q(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lr4/zd0;->g:I

    :cond_4
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lb3/k2;->q(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lr4/zd0;->h:I

    :cond_5
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lb3/k2;->q(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lr4/zd0;->i:I

    :cond_6
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lr4/zd0;->d:Z

    :cond_7
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iput-object v0, v1, Lr4/zd0;->c:Ljava/lang/String;

    :cond_8
    iget v0, v1, Lr4/zd0;->j:I

    if-ltz v0, :cond_2b

    iget v0, v1, Lr4/zd0;->g:I

    if-ltz v0, :cond_2b

    iget-object v0, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    goto/16 :goto_12

    :cond_9
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v3, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-static {v3}, Lb3/k2;->y(Landroid/app/Activity;)[I

    move-result-object v3

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v4, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-static {v4}, Lb3/k2;->v(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v3, v3, v7

    iget v8, v1, Lr4/zd0;->j:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v13, 0x2

    const/16 v14, 0x32

    if-lt v8, v14, :cond_1b

    if-le v8, v6, :cond_a

    goto/16 :goto_a

    :cond_a
    iget v15, v1, Lr4/zd0;->g:I

    if-lt v15, v14, :cond_1a

    if-le v15, v3, :cond_b

    goto/16 :goto_9

    :cond_b
    if-ne v15, v3, :cond_c

    if-ne v8, v6, :cond_c

    const-string v3, "Cannot resize to a full-screen ad."

    invoke-static {v3}, Lr4/cm0;->f(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c
    iget-boolean v3, v1, Lr4/zd0;->d:Z

    if-eqz v3, :cond_15

    iget-object v3, v1, Lr4/zd0;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v16, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v12, "top-center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v12, "bottom-center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v12, "bottom-right"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v12, "bottom-left"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v12, "top-left"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v12, "center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    goto :goto_1

    :cond_d
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_13

    if-eq v3, v7, :cond_12

    if-eq v3, v13, :cond_11

    if-eq v3, v11, :cond_10

    if-eq v3, v10, :cond_f

    if-eq v3, v9, :cond_e

    :try_start_1
    iget v3, v1, Lr4/zd0;->e:I

    iget v12, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lr4/zd0;->f:I

    goto :goto_4

    :cond_e
    iget v3, v1, Lr4/zd0;->e:I

    iget v12, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lr4/zd0;->f:I

    goto :goto_2

    :cond_f
    iget v3, v1, Lr4/zd0;->e:I

    iget v12, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v12

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lr4/zd0;->f:I

    :goto_2
    iget v12, v1, Lr4/zd0;->i:I

    goto :goto_3

    :cond_10
    iget v3, v1, Lr4/zd0;->e:I

    iget v8, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v8

    iget v8, v1, Lr4/zd0;->f:I

    goto :goto_2

    :goto_3
    add-int/2addr v8, v12

    add-int/2addr v8, v15

    add-int/lit8 v8, v8, -0x32

    goto :goto_6

    :cond_11
    iget v3, v1, Lr4/zd0;->e:I

    iget v12, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v12

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lr4/zd0;->f:I

    iget v12, v1, Lr4/zd0;->i:I

    add-int/2addr v8, v12

    shr-int/lit8 v12, v15, 0x1

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, -0x19

    goto :goto_6

    :cond_12
    iget v3, v1, Lr4/zd0;->e:I

    iget v12, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v12

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lr4/zd0;->f:I

    :goto_4
    iget v12, v1, Lr4/zd0;->i:I

    goto :goto_5

    :cond_13
    iget v3, v1, Lr4/zd0;->e:I

    iget v8, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v8

    iget v8, v1, Lr4/zd0;->f:I

    goto :goto_4

    :goto_5
    add-int/2addr v8, v12

    :goto_6
    if-ltz v3, :cond_1c

    add-int/2addr v3, v14

    if-gt v3, v6, :cond_1c

    aget v3, v4, v5

    if-lt v8, v3, :cond_1c

    add-int/2addr v8, v14

    aget v3, v4, v7

    if-le v8, v3, :cond_14

    goto :goto_b

    :cond_14
    new-array v15, v13, [I

    iget v3, v1, Lr4/zd0;->e:I

    iget v4, v1, Lr4/zd0;->h:I

    add-int/2addr v3, v4

    aput v3, v15, v5

    iget v3, v1, Lr4/zd0;->f:I

    iget v4, v1, Lr4/zd0;->i:I

    add-int/2addr v3, v4

    aput v3, v15, v7

    goto :goto_c

    :cond_15
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v3, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-static {v3}, Lb3/k2;->y(Landroid/app/Activity;)[I

    move-result-object v3

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v4, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-static {v4}, Lb3/k2;->v(Landroid/app/Activity;)[I

    move-result-object v4

    aget v3, v3, v5

    iget v6, v1, Lr4/zd0;->e:I

    iget v8, v1, Lr4/zd0;->h:I

    add-int/2addr v6, v8

    iget v8, v1, Lr4/zd0;->f:I

    iget v12, v1, Lr4/zd0;->i:I

    add-int/2addr v8, v12

    if-gez v6, :cond_16

    const/4 v6, 0x0

    goto :goto_7

    :cond_16
    iget v12, v1, Lr4/zd0;->j:I

    add-int v15, v6, v12

    if-le v15, v3, :cond_17

    sub-int v6, v3, v12

    :cond_17
    :goto_7
    aget v3, v4, v5

    if-ge v8, v3, :cond_18

    move v8, v3

    goto :goto_8

    :cond_18
    iget v3, v1, Lr4/zd0;->g:I

    add-int v12, v8, v3

    aget v4, v4, v7

    if-le v12, v4, :cond_19

    sub-int v8, v4, v3

    :cond_19
    :goto_8
    new-array v15, v13, [I

    aput v6, v15, v5

    aput v8, v15, v7

    goto :goto_c

    :cond_1a
    :goto_9
    const-string v3, "Height is too small or too large."

    invoke-static {v3}, Lr4/cm0;->f(Ljava/lang/String;)V

    goto :goto_b

    :cond_1b
    :goto_a
    const-string v3, "Width is too small or too large."

    invoke-static {v3}, Lr4/cm0;->f(Ljava/lang/String;)V

    :cond_1c
    :goto_b
    const/4 v15, 0x0

    :goto_c
    if-nez v15, :cond_1d

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1d
    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v3, v1, Lr4/zd0;->m:Landroid/app/Activity;

    iget v4, v1, Lr4/zd0;->j:I

    invoke-static {v3, v4}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v4, v1, Lr4/zd0;->m:Landroid/app/Activity;

    iget v6, v1, Lr4/zd0;->g:I

    invoke-static {v4, v6}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v4

    iget-object v6, v1, Lr4/zd0;->l:Lr4/cs0;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_29

    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_29

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, v1, Lr4/zd0;->l:Lr4/cs0;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v1, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    if-nez v8, :cond_1e

    iput-object v6, v1, Lr4/zd0;->t:Landroid/view/ViewGroup;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v6, v1, Lr4/zd0;->l:Lr4/cs0;

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v12, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-direct {v6, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lr4/zd0;->o:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, v1, Lr4/zd0;->l:Lr4/cs0;

    invoke-interface {v6}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v6

    iput-object v6, v1, Lr4/zd0;->n:Lr4/vt0;

    iget-object v6, v1, Lr4/zd0;->t:Landroid/view/ViewGroup;

    iget-object v8, v1, Lr4/zd0;->o:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_d

    :cond_1e
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_d
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, v1, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v6, v1, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, v6, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, v1, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, v1, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v6, v1, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    iget-boolean v8, v1, Lr4/zd0;->d:Z

    xor-int/2addr v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v6, v1, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lr4/zd0;->l:Lr4/cs0;

    check-cast v8, Landroid/view/View;

    const/4 v12, -0x1

    invoke-virtual {v6, v8, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lr4/zd0;->p:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v8, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-static {v8, v14}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v8

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v12, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-static {v12, v14}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v6, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, v1, Lr4/zd0;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v12, :sswitch_data_1

    goto :goto_e

    :sswitch_6
    const-string v12, "top-center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v12, 0x1

    goto :goto_f

    :sswitch_7
    const-string v12, "bottom-center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v12, 0x4

    goto :goto_f

    :sswitch_8
    const-string v12, "bottom-right"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v12, 0x5

    goto :goto_f

    :sswitch_9
    const-string v12, "bottom-left"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v12, 0x3

    goto :goto_f

    :sswitch_a
    const-string v12, "top-left"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v12, 0x0

    goto :goto_f

    :sswitch_b
    const-string v12, "center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v12, 0x2

    goto :goto_f

    :cond_1f
    :goto_e
    const/4 v12, -0x1

    :goto_f
    const/16 v8, 0x9

    const/16 v14, 0xa

    if-eqz v12, :cond_25

    const/16 v5, 0xe

    if-eq v12, v7, :cond_24

    if-eq v12, v13, :cond_23

    const/16 v13, 0xc

    if-eq v12, v11, :cond_22

    if-eq v12, v10, :cond_21

    const/16 v5, 0xb

    if-eq v12, v9, :cond_20

    :try_start_2
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    :cond_20
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    :cond_21
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    :cond_22
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    :cond_23
    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    :cond_24
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    :cond_25
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_10
    iget-object v5, v1, Lr4/zd0;->p:Landroid/widget/LinearLayout;

    new-instance v8, Lr4/yd0;

    invoke-direct {v8, v1}, Lr4/yd0;-><init>(Lr4/zd0;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v1, Lr4/zd0;->p:Landroid/widget/LinearLayout;

    const-string v8, "Close button"

    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lr4/zd0;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v1, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v6, v1, Lr4/zd0;->m:Landroid/app/Activity;

    const/4 v8, 0x0

    aget v9, v15, v8

    invoke-static {v6, v9}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v6

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v8, v1, Lr4/zd0;->m:Landroid/app/Activity;

    aget v9, v15, v7

    invoke-static {v8, v9}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    aget v0, v15, v9

    aget v5, v15, v7

    iget-object v6, v1, Lr4/zd0;->q:Lr4/ge0;

    if-eqz v6, :cond_26

    iget v8, v1, Lr4/zd0;->j:I

    iget v9, v1, Lr4/zd0;->g:I

    invoke-interface {v6, v0, v5, v8, v9}, Lr4/ge0;->c(IIII)V

    :cond_26
    iget-object v0, v1, Lr4/zd0;->l:Lr4/cs0;

    invoke-static {v3, v4}, Lr4/vt0;->c(II)Lr4/vt0;

    move-result-object v3

    invoke-interface {v0, v3}, Lr4/cs0;->u0(Lr4/vt0;)V

    const/4 v0, 0x0

    aget v3, v15, v0

    aget v0, v15, v7

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v4, v1, Lr4/zd0;->m:Landroid/app/Activity;

    invoke-static {v4}, Lb3/k2;->v(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget v4, v1, Lr4/zd0;->j:I

    iget v5, v1, Lr4/zd0;->g:I

    invoke-virtual {v1, v3, v0, v4, v5}, Lr4/fe0;->d(IIII)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lr4/fe0;->f(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11
    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lr4/zd0;->l:Lr4/cs0;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lr4/zd0;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    iget-object v3, v1, Lr4/zd0;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lr4/zd0;->t:Landroid/view/ViewGroup;

    iget-object v3, v1, Lr4/zd0;->l:Lr4/cs0;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lr4/zd0;->l:Lr4/cs0;

    iget-object v3, v1, Lr4/zd0;->n:Lr4/vt0;

    invoke-interface {v0, v3}, Lr4/cs0;->u0(Lr4/vt0;)V

    :cond_28
    monitor-exit v2

    return-void

    :cond_29
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2a
    :goto_12
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2b
    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2c
    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final i(Z)V
    .locals 3

    iget-object v0, p0, Lr4/zd0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lr4/zd0;->l:Lr4/cs0;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lr4/zd0;->t:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lr4/zd0;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lr4/zd0;->t:Landroid/view/ViewGroup;

    iget-object v2, p0, Lr4/zd0;->l:Lr4/cs0;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lr4/zd0;->l:Lr4/cs0;

    iget-object v2, p0, Lr4/zd0;->n:Lr4/vt0;

    invoke-interface {v1, v2}, Lr4/cs0;->u0(Lr4/vt0;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lr4/fe0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/zd0;->q:Lr4/ge0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lr4/ge0;->a()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lr4/zd0;->s:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lr4/zd0;->t:Landroid/view/ViewGroup;

    iput-object p1, p0, Lr4/zd0;->p:Landroid/widget/LinearLayout;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(IIZ)V
    .locals 0

    iget-object p3, p0, Lr4/zd0;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput p1, p0, Lr4/zd0;->e:I

    iput p2, p0, Lr4/zd0;->f:I

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lr4/zd0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zd0;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(II)V
    .locals 0

    iput p1, p0, Lr4/zd0;->e:I

    iput p2, p0, Lr4/zd0;->f:I

    return-void
.end method

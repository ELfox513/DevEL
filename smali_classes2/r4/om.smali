.class public final Lr4/om;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final A:J


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/app/Application;

.field public final d:Landroid/view/WindowManager;

.field public final k:Landroid/os/PowerManager;

.field public final p:Landroid/app/KeyguardManager;

.field public q:Landroid/content/BroadcastReceiver;

.field public r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lr4/an;

.field public final u:Lb3/h1;

.field public v:Z

.field public w:I

.field public final x:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lr4/nm;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Landroid/util/DisplayMetrics;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lr4/rz;->R0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lr4/om;->A:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/h1;

    sget-wide v1, Lr4/om;->A:J

    invoke-direct {v0, v1, v2}, Lb3/h1;-><init>(J)V

    iput-object v0, p0, Lr4/om;->u:Lb3/h1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/om;->v:Z

    const/4 v0, -0x1

    iput v0, p0, Lr4/om;->w:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/om;->x:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lr4/om;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lr4/om;->d:Landroid/view/WindowManager;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lr4/om;->k:Landroid/os/PowerManager;

    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lr4/om;->p:Landroid/app/KeyguardManager;

    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lr4/om;->b:Landroid/app/Application;

    new-instance v2, Lr4/an;

    invoke-direct {v2, v0, p0}, Lr4/an;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v2, p0, Lr4/om;->t:Lr4/an;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lr4/om;->y:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lr4/om;->z:Landroid/graphics/Rect;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lr4/om;->s:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0, p1}, Lr4/om;->m(Landroid/view/View;)V

    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lr4/om;->s:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb3/g;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Lr4/om;->l(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public static synthetic c(Lr4/om;I)V
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    return-void
.end method


# virtual methods
.method public final a(Lr4/nm;)V
    .locals 1

    iget-object v0, p0, Lr4/om;->x:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    return-void
.end method

.method public final b(Lr4/nm;)V
    .locals 1

    iget-object v0, p0, Lr4/om;->x:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lr4/om;->k(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Lr4/om;->k(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Lr4/om;->k(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1}, Lr4/om;->k(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final e(J)V
    .locals 1

    iget-object v0, p0, Lr4/om;->u:Lb3/h1;

    invoke-virtual {v0, p1, p2}, Lb3/h1;->b(J)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr4/om;->u:Lb3/h1;

    sget-wide v1, Lr4/om;->A:J

    invoke-virtual {v0, v1, v2}, Lb3/h1;->b(J)V

    return-void
.end method

.method public final synthetic g()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lr4/om;->j(I)V

    return-void
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/km;

    invoke-direct {v1, p0}, Lr4/km;-><init>(Lr4/om;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lr4/om;->s:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lr4/om;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_2

    iput p2, p0, Lr4/om;->w:I

    :cond_2
    return-void
.end method

.method public final j(I)V
    .locals 32

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lr4/om;->x:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lr4/om;->s:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v8, v0, [I

    new-array v0, v0, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v14, "Failure getting view location."

    invoke-static {v14, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    aget v0, v8, v11

    iput v0, v4, Landroid/graphics/Rect;->left:I

    aget v8, v8, v10

    iput v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    move-object v8, v3

    goto :goto_1

    :cond_2
    move-object v8, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    sget-object v0, Lr4/rz;->U0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v14

    invoke-virtual {v14, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    :goto_2
    instance-of v15, v14, Landroid/view/View;

    if-eqz v15, :cond_5

    move-object v15, v14

    check-cast v15, Landroid/view/View;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15}, Landroid/view/View;->isScrollContainer()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v15, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v1, v11}, Lr4/om;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v11

    const-string v14, "PositionWatcher.getParentScrollViewRects"

    invoke-virtual {v11, v0, v14}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_5
    :goto_3
    move-object/from16 v31, v0

    const/16 v0, 0x8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    goto :goto_4

    :cond_6
    const/16 v11, 0x8

    :goto_4
    iget v14, v1, Lr4/om;->w:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    move v11, v14

    :cond_7
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v8}, Lb3/k2;->a(Landroid/view/View;)J

    move-result-wide v26

    sget-object v14, Lr4/rz;->Q6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v15

    invoke-virtual {v15, v14}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v3, :cond_9

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v3, v1, Lr4/om;->k:Landroid/os/PowerManager;

    iget-object v14, v1, Lr4/om;->p:Landroid/app/KeyguardManager;

    invoke-static {v8, v3, v14}, Lb3/k2;->w(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    sget-object v3, Lr4/rz;->T6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v14

    invoke-virtual {v14, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v14, v3

    cmp-long v3, v26, v14

    if-ltz v3, :cond_9

    if-nez v11, :cond_9

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v3, v1, Lr4/om;->k:Landroid/os/PowerManager;

    iget-object v14, v1, Lr4/om;->p:Landroid/app/KeyguardManager;

    invoke-static {v8, v3, v14}, Lb3/k2;->w(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    if-nez v11, :cond_9

    :goto_5
    const/4 v3, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    sget-object v14, Lr4/rz;->V6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v15

    invoke-virtual {v15, v14}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v14, v1, Lr4/om;->k:Landroid/os/PowerManager;

    iget-object v15, v1, Lr4/om;->p:Landroid/app/KeyguardManager;

    invoke-static {v8, v14, v15}, Lb3/k2;->w(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v14

    if-eq v10, v14, :cond_a

    const/4 v14, 0x0

    goto :goto_7

    :cond_a
    const/16 v14, 0x40

    :goto_7
    if-eq v10, v12, :cond_b

    const/4 v15, 0x0

    goto :goto_8

    :cond_b
    const/16 v15, 0x8

    :goto_8
    or-int/2addr v14, v15

    if-eq v10, v13, :cond_c

    const/4 v15, 0x0

    goto :goto_9

    :cond_c
    const/16 v15, 0x10

    :goto_9
    or-int/2addr v14, v15

    if-nez v11, :cond_d

    const/16 v11, 0x80

    goto :goto_a

    :cond_d
    const/4 v11, 0x0

    :goto_a
    or-int/2addr v11, v14

    sget-object v14, Lr4/rz;->T6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v15

    invoke-virtual {v15, v14}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    cmp-long v17, v26, v14

    if-ltz v17, :cond_e

    const/16 v14, 0x20

    goto :goto_b

    :cond_e
    const/4 v14, 0x0

    :goto_b
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    or-int/2addr v11, v14

    or-int/2addr v11, v3

    invoke-static {v8, v11, v9}, Lb3/k2;->m(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_f
    if-ne v2, v10, :cond_11

    iget-object v9, v1, Lr4/om;->u:Lb3/h1;

    invoke-virtual {v9}, Lb3/h1;->a()Z

    move-result v9

    if-nez v9, :cond_11

    iget-boolean v9, v1, Lr4/om;->v:Z

    if-eq v3, v9, :cond_10

    goto :goto_c

    :cond_10
    return-void

    :cond_11
    :goto_c
    if-nez v3, :cond_13

    iget-boolean v9, v1, Lr4/om;->v:Z

    if-nez v9, :cond_13

    if-eq v2, v10, :cond_12

    goto :goto_d

    :cond_12
    return-void

    :cond_13
    :goto_d
    new-instance v2, Lr4/mm;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v9

    invoke-interface {v9}, Lc4/f;->b()J

    move-result-wide v17

    iget-object v9, v1, Lr4/om;->k:Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v9

    if-eqz v8, :cond_14

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v11

    invoke-virtual {v11, v8}, Lb3/g;->g(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    :goto_e
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    move/from16 v19, v0

    goto :goto_f

    :cond_15
    const/16 v19, 0x8

    :goto_f
    iget-object v0, v1, Lr4/om;->z:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lr4/om;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual {v1, v4}, Lr4/om;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual {v1, v5}, Lr4/om;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    invoke-virtual {v1, v6}, Lr4/om;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v24

    invoke-virtual {v1, v7}, Lr4/om;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v28

    iget-object v0, v1, Lr4/om;->y:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v29, v0

    move-object v14, v2

    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v23, v12

    move/from16 v25, v13

    move/from16 v30, v3

    invoke-direct/range {v14 .. v31}, Lr4/mm;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZJLandroid/graphics/Rect;FZLjava/util/List;)V

    iget-object v0, v1, Lr4/om;->x:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/nm;

    invoke-interface {v4, v2}, Lr4/nm;->Y(Lr4/mm;)V

    goto :goto_10

    :cond_16
    iput-boolean v3, v1, Lr4/om;->v:Z

    return-void
.end method

.method public final k(I)I
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lr4/om;->y:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final l(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/om;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p1, p0, Lr4/om;->q:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lr4/lm;

    invoke-direct {v0, p0}, Lr4/lm;-><init>(Lr4/om;)V

    iput-object v0, p0, Lr4/om;->q:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lz2/t;->y()Lb3/p1;

    move-result-object v0

    iget-object v1, p0, Lr4/om;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/om;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2, p1}, Lb3/p1;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    iget-object p1, p0, Lr4/om;->b:Landroid/app/Application;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lr4/om;->t:Lr4/an;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr4/om;->r:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iput-object v0, p0, Lr4/om;->r:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    invoke-static {v2, v1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    invoke-static {v1, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lr4/om;->q:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {}, Lz2/t;->y()Lb3/p1;

    move-result-object p1

    iget-object v1, p0, Lr4/om;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/om;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v2}, Lb3/p1;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v1, p1, v2}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    invoke-static {v1, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-object v0, p0, Lr4/om;->q:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object p1, p0, Lr4/om;->b:Landroid/app/Application;

    if-eqz p1, :cond_4

    :try_start_3
    iget-object v0, p0, Lr4/om;->t:Lr4/an;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lr4/om;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lr4/om;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/om;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/om;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/om;->j(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lr4/om;->w:I

    invoke-virtual {p0, p1}, Lr4/om;->l(Landroid/view/View;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/om;->j(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lr4/om;->w:I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lr4/om;->j(I)V

    invoke-virtual {p0}, Lr4/om;->h()V

    invoke-virtual {p0, p1}, Lr4/om;->m(Landroid/view/View;)V

    return-void
.end method

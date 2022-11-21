.class public final Lr4/ek1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb3/y1;

.field public final b:Lr4/hp2;

.field public final c:Lr4/jj1;

.field public final d:Lr4/ej1;

.field public final e:Lr4/pk1;

.field public final f:Lr4/yk1;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lr4/d20;

.field public final j:Lr4/bj1;


# direct methods
.method public constructor <init>(Lb3/y1;Lr4/hp2;Lr4/jj1;Lr4/ej1;Lr4/pk1;Lr4/yk1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lr4/bj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ek1;->a:Lb3/y1;

    iput-object p2, p0, Lr4/ek1;->b:Lr4/hp2;

    iget-object p1, p2, Lr4/hp2;->i:Lr4/d20;

    iput-object p1, p0, Lr4/ek1;->i:Lr4/d20;

    iput-object p3, p0, Lr4/ek1;->c:Lr4/jj1;

    iput-object p4, p0, Lr4/ek1;->d:Lr4/ej1;

    iput-object p5, p0, Lr4/ek1;->e:Lr4/pk1;

    iput-object p6, p0, Lr4/ek1;->f:Lr4/yk1;

    iput-object p7, p0, Lr4/ek1;->g:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lr4/ek1;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lr4/ek1;->j:Lr4/bj1;

    return-void
.end method

.method public static g(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/16 v4, 0xc

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method


# virtual methods
.method public final a(Lr4/al1;)V
    .locals 2

    iget-object v0, p0, Lr4/ek1;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/bk1;

    invoke-direct {v1, p0, p1}, Lr4/bk1;-><init>(Lr4/ek1;Lr4/al1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lr4/al1;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lr4/ek1;->e:Lr4/pk1;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/ek1;->c:Lr4/jj1;

    invoke-virtual {v0}, Lr4/jj1;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lr4/ek1;->e:Lr4/pk1;

    invoke-virtual {v0}, Lr4/pk1;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lr4/ns0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "web view can not be obtained"

    invoke-static {v0, p1}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lr4/al1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lr4/ek1;->c:Lr4/jj1;

    iget-object v1, v1, Lr4/jj1;->a:Lr4/no2;

    invoke-static {v0, v1}, Lb3/f1;->i(Landroid/content/Context;Lr4/no2;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_2

    const-string p1, "Activity context is needed for policy validator."

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lr4/ek1;->f:Lr4/yk1;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lr4/ek1;->f:Lr4/yk1;

    invoke-virtual {v1, p1, v0}, Lr4/yk1;->a(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lb3/f1;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lr4/ns0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "web view can not be obtained"

    invoke-static {v0, p1}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr4/ek1;->h(Landroid/view/ViewGroup;Z)Z

    move-result p1

    return p1
.end method

.method public final synthetic e(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->h()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->d0()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->d0()I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->d0()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lr4/ek1;->a:Lb3/y1;

    iget-object v1, p0, Lr4/ek1;->b:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->f:Ljava/lang/String;

    const-string v2, "2"

    invoke-interface {v0, v1, v2, p1}, Lb3/y1;->Y0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lr4/ek1;->a:Lb3/y1;

    iget-object v1, p0, Lr4/ek1;->b:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->f:Ljava/lang/String;

    const-string v2, "1"

    invoke-interface {v0, v1, v2, p1}, Lb3/y1;->Y0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lr4/ek1;->a:Lb3/y1;

    iget-object v1, p0, Lr4/ek1;->b:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->f:Ljava/lang/String;

    iget-object v2, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v2}, Lr4/ej1;->d0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lb3/y1;->Y0(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public final synthetic f(Lr4/al1;)V
    .locals 9

    iget-object v0, p0, Lr4/ek1;->c:Lr4/jj1;

    invoke-virtual {v0}, Lr4/jj1;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/ek1;->c:Lr4/jj1;

    invoke-virtual {v0}, Lr4/jj1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "1098"

    aput-object v5, v4, v1

    const-string v5, "3011"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_0

    aget-object v6, v4, v5

    invoke-interface {p1, v6}, Lr4/al1;->h0(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v5}, Lr4/ej1;->g0()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->g0()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lr4/ek1;->i:Lr4/d20;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    if-nez v6, :cond_7

    iget v5, v5, Lr4/d20;->p:I

    invoke-static {v4, v5}, Lr4/ek1;->g(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v5}, Lr4/ej1;->f0()Lr4/h20;

    move-result-object v5

    instance-of v5, v5, Lr4/w10;

    if-nez v5, :cond_5

    move-object v0, v2

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v5}, Lr4/ej1;->f0()Lr4/h20;

    move-result-object v5

    check-cast v5, Lr4/w10;

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lr4/w10;->j()I

    move-result v7

    invoke-static {v4, v7}, Lr4/ek1;->g(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_6
    new-instance v7, Lr4/x10;

    invoke-direct {v7, v0, v5, v4}, Lr4/x10;-><init>(Landroid/content/Context;Lr4/w10;Landroid/widget/RelativeLayout$LayoutParams;)V

    sget-object v0, Lr4/rz;->m2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v7

    :cond_7
    :goto_3
    const/4 v4, -0x1

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    new-instance v5, Lv2/i;

    invoke-interface {p1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lv2/i;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    :goto_4
    invoke-interface {p1}, Lr4/al1;->p()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v0, v3}, Lr4/al1;->b2(Ljava/lang/String;Landroid/view/View;Z)V

    :goto_5
    sget-object v0, Lr4/ak1;->y:Lr4/o33;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_c
    if-ge v6, v5, :cond_d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v7}, Lr4/al1;->h0(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_c

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_d
    move-object v7, v2

    :goto_6
    iget-object v0, p0, Lr4/ek1;->h:Ljava/util/concurrent/Executor;

    new-instance v5, Lr4/ck1;

    invoke-direct {v5, p0, v7}, Lr4/ck1;-><init>(Lr4/ek1;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v7, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-virtual {p0, v7, v3}, Lr4/ek1;->h(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object v0

    new-instance v1, Lr4/dk1;

    invoke-direct {v1, p1, v7}, Lr4/dk1;-><init>(Lr4/al1;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lr4/cs0;->R0(Lr4/b20;)V

    return-void

    :cond_f
    sget-object v0, Lr4/rz;->O6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v7, v1}, Lr4/ek1;->h(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->s()Lr4/cs0;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->s()Lr4/cs0;

    move-result-object v0

    new-instance v1, Lr4/dk1;

    invoke-direct {v1, p1, v7}, Lr4/dk1;-><init>(Lr4/al1;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lr4/cs0;->R0(Lr4/b20;)V

    return-void

    :cond_10
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :cond_11
    if-eqz v2, :cond_14

    iget-object v0, p0, Lr4/ek1;->j:Lr4/bj1;

    invoke-virtual {v0}, Lr4/bj1;->a()Lr4/m20;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_0
    invoke-interface {v0}, Lr4/m20;->g()Lf4/a;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lr4/al1;->q()Lf4/a;

    move-result-object p1

    if-eqz p1, :cond_13

    sget-object v0, Lr4/rz;->w4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_8

    :cond_13
    :goto_7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    const-string p1, "Could not get main image drawable"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    :cond_14
    :goto_9
    return-void
.end method

.method public final h(Landroid/view/ViewGroup;Z)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {p2}, Lr4/ej1;->h()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lr4/ek1;->d:Lr4/ej1;

    invoke-virtual {p2}, Lr4/ej1;->i()Landroid/view/View;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    sget-object v0, Lr4/rz;->o2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

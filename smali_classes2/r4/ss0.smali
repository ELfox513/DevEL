.class public final Lr4/ss0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lr4/cs0;


# instance fields
.field public final a:Lr4/cs0;

.field public final b:Lr4/do0;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 2

    invoke-interface {p1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lr4/ss0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lr4/ss0;->a:Lr4/cs0;

    new-instance v0, Lr4/do0;

    invoke-interface {p1}, Lr4/cs0;->D0()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lr4/do0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr4/cs0;)V

    iput-object v0, p0, Lr4/ss0;->b:Lr4/do0;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 2

    sget-object v0, Lr4/rz;->p2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final B0()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->B0()Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lr4/b20;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->C()Lr4/b20;

    move-result-object v0

    return-object v0
.end method

.method public final C0(La3/e;Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/kt0;->C0(La3/e;Z)V

    return-void
.end method

.method public final D(Ljava/lang/String;Lr4/qq0;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/cs0;->D(Ljava/lang/String;Lr4/qq0;)V

    return-void
.end method

.method public final D0()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->D0()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final E()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->E()V

    return-void
.end method

.method public final F()Lr4/bo;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->F()Lr4/bo;

    move-result-object v0

    return-object v0
.end method

.method public final F0()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/gt;->F0()V

    :cond_0
    return-void
.end method

.method public final G()Lr4/no2;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->G()Lr4/no2;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Z
    .locals 1

    iget-object v0, p0, Lr4/ss0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final H()Lr4/u;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->H()Lr4/u;

    move-result-object v0

    return-object v0
.end method

.method public final H0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final I()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final I0()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->I0()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public final J()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final K(Lr4/at0;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->K(Lr4/at0;)V

    return-void
.end method

.method public final K0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Lr4/xs0;

    invoke-virtual {v0, p1, p2}, Lr4/xs0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final L()I
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->L()I

    move-result v0

    return v0
.end method

.method public final L0(Lr4/no2;Lr4/so2;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/cs0;->L0(Lr4/no2;Lr4/so2;)V

    return-void
.end method

.method public final M()Lr4/so2;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->M()Lr4/so2;

    move-result-object v0

    return-object v0
.end method

.method public final M0()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lz2/l;->M0()V

    return-void
.end method

.method public final N()I
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->N()I

    move-result v0

    return v0
.end method

.method public final O()V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Lb3/k2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final O0()Z
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->O0()Z

    move-result v0

    return v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->P0(Z)V

    return-void
.end method

.method public final Q0(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lr4/kt0;->Q0(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final R()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v1, v0}, Lr4/cs0;->setBackgroundColor(I)V

    return-void
.end method

.method public final R0(Lr4/b20;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->R0(Lr4/b20;)V

    return-void
.end method

.method public final S(I)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/po0;->S(I)V

    return-void
.end method

.method public final S0(ZIZ)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2, p3}, Lr4/kt0;->S0(ZIZ)V

    return-void
.end method

.method public final T()Z
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->T()Z

    move-result v0

    return v0
.end method

.method public final T0(I)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/po0;->T0(I)V

    return-void
.end method

.method public final U0()Z
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->U0()Z

    move-result v0

    return v0
.end method

.method public final V0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->V0(Z)V

    return-void
.end method

.method public final W()Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->W()Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final W0()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->b:Lr4/do0;

    invoke-virtual {v0}, Lr4/do0;->e()V

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->W0()V

    return-void
.end method

.method public final X()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->X()V

    return-void
.end method

.method public final X0(La3/n;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->X0(La3/n;)V

    return-void
.end method

.method public final Y(Lr4/mm;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/nm;->Y(Lr4/mm;)V

    return-void
.end method

.method public final Y0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->Y0(Z)V

    return-void
.end method

.method public final Z()La3/n;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->Z()La3/n;

    move-result-object v0

    return-object v0
.end method

.method public final Z0()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lz2/l;->Z0()V

    return-void
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/cf1;->a()V

    :cond_0
    return-void
.end method

.method public final a0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->a0(Z)V

    return-void
.end method

.method public final a1(Ljava/lang/String;Lc4/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc4/p<",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/cs0;->a1(Ljava/lang/String;Lc4/p;)V

    return-void
.end method

.method public final b0(I)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/po0;->b0(I)V

    return-void
.end method

.method public final b1()Z
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->b1()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/e80;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c0(Ljava/lang/String;)Lr4/qq0;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/po0;->c0(Ljava/lang/String;)Lr4/qq0;

    move-result-object p1

    return-object p1
.end method

.method public final c1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lr4/ss0;->a:Lr4/cs0;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lr4/cs0;->c1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final canGoBack()Z
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public final d()Lr4/do0;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->b:Lr4/do0;

    return-object v0
.end method

.method public final d1(La3/n;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->d1(La3/n;)V

    return-void
.end method

.method public final destroy()V
    .locals 4

    invoke-virtual {p0}, Lr4/ss0;->B0()Lf4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lb3/k2;->i:Lr4/c03;

    new-instance v2, Lr4/ps0;

    invoke-direct {v2, v0}, Lr4/ps0;-><init>(Lf4/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lr4/qs0;->a(Lr4/cs0;)Ljava/lang/Runnable;

    move-result-object v0

    sget-object v2, Lr4/rz;->v3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->destroy()V

    return-void
.end method

.method public final e0(I)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->b:Lr4/do0;

    invoke-virtual {v0, p1}, Lr4/do0;->f(I)V

    return-void
.end method

.method public final e1(ZJ)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2, p3}, Lr4/po0;->e1(ZJ)V

    return-void
.end method

.method public final f()Lr4/at0;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->f()Lr4/at0;

    move-result-object v0

    return-object v0
.end method

.method public final f0()Z
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->f0()Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lr4/ss0;->a:Lr4/cs0;

    const-string v0, "window.inspectorInfo"

    invoke-interface {p1, v0, p2}, Lr4/s80;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g0(Ljava/lang/String;Lr4/u50;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final goBack()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->goBack()V

    return-void
.end method

.method public final h()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final h0(Lr4/y10;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->h0(Lr4/y10;)V

    return-void
.end method

.method public final i()Lz2/a;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->i()Lz2/a;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lr4/d00;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->j()Lr4/d00;

    move-result-object v0

    return-object v0
.end method

.method public final j0(Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lr4/kt0;->j0(Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->k()V

    return-void
.end method

.method public final k0()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->k0()V

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->l0(Z)V

    return-void
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lr4/ss0;->a:Lr4/cs0;

    const-string v0, "text/html"

    invoke-interface {p2, p1, v0, p3}, Lr4/cs0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lr4/cs0;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final m()Lr4/e00;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->m()Lr4/e00;

    move-result-object v0

    return-object v0
.end method

.method public final m0(ZILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2, p3, p4}, Lr4/kt0;->m0(ZILjava/lang/String;Z)V

    return-void
.end method

.method public final n()Lr4/im0;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Z)V
    .locals 1

    iget-object p1, p0, Lr4/ss0;->a:Lr4/cs0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lr4/po0;->n0(Z)V

    return-void
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->o()I

    move-result v0

    return v0
.end method

.method public final o0()Lr4/st0;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    check-cast v0, Lr4/xs0;

    invoke-virtual {v0}, Lr4/xs0;->n1()Lr4/js0;

    move-result-object v0

    return-object v0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->b:Lr4/do0;

    invoke-virtual {v0}, Lr4/do0;->d()V

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->onResume()V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->p0(Z)V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    check-cast v0, Lr4/xs0;

    invoke-virtual {v0, p1}, Lr4/xs0;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public final q0(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->q0(Landroid/content/Context;)V

    return-void
.end method

.method public final r()Lr4/vt0;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v0

    return-object v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->t()V

    return-void
.end method

.method public final t0(ZI)Z
    .locals 4

    iget-object v0, p0, Lr4/ss0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v0, Lr4/rz;->x0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lr4/ss0;->a:Lr4/cs0;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/cs0;->t0(ZI)Z

    return v2
.end method

.method public final u0(Lr4/vt0;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->u0(Lr4/vt0;)V

    return-void
.end method

.method public final v()I
    .locals 2

    sget-object v0, Lr4/rz;->p2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->getMeasuredWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final v0(Ljava/lang/String;Lr4/u50;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1, p2}, Lr4/cs0;->v0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final w(I)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->w(I)V

    return-void
.end method

.method public final w0()V
    .locals 4

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v2

    invoke-virtual {v2}, Lb3/h;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_muted"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v2

    invoke-virtual {v2}, Lb3/h;->b()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_volume"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lr4/xs0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lb3/h;->e(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_volume"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "volume"

    invoke-virtual {v0, v2, v1}, Lr4/xs0;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final x()La3/n;
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->x()La3/n;

    move-result-object v0

    return-object v0
.end method

.method public final x0(I)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->x0(I)V

    return-void
.end method

.method public final y0(Lf4/a;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->y0(Lf4/a;)V

    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/po0;->z()V

    return-void
.end method

.method public final z0(Lr4/bo;)V
    .locals 1

    iget-object v0, p0, Lr4/ss0;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->z0(Lr4/bo;)V

    return-void
.end method

.class public Ld/f;
.super Ld/d;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/f$p;,
        Ld/f$o;,
        Ld/f$n;,
        Ld/f$k;,
        Ld/f$m;,
        Ld/f$l;,
        Ld/f$j;,
        Ld/f$r;,
        Ld/f$s;,
        Ld/f$h;,
        Ld/f$t;,
        Ld/f$i;,
        Ld/f$q;
    }
.end annotation


# static fields
.field public static final l0:Lp/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final m0:Z

.field public static final n0:[I

.field public static final o0:Z

.field public static final p0:Z

.field public static q0:Z


# instance fields
.field public A:Landroidx/appcompat/widget/ActionBarContextView;

.field public B:Landroid/widget/PopupWindow;

.field public C:Ljava/lang/Runnable;

.field public D:Ld0/p1;

.field public E:Z

.field public F:Z

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/view/View;

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:[Ld/f$s;

.field public S:Ld/f$s;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:I

.field public a0:Z

.field public b0:Z

.field public c0:Ld/f$l;

.field public d0:Ld/f$l;

.field public e0:Z

.field public f0:I

.field public final g0:Ljava/lang/Runnable;

.field public h0:Z

.field public i0:Landroid/graphics/Rect;

.field public j0:Landroid/graphics/Rect;

.field public final k:Ljava/lang/Object;

.field public k0:Ld/l;

.field public final p:Landroid/content/Context;

.field public q:Landroid/view/Window;

.field public r:Ld/f$j;

.field public final s:Ld/c;

.field public t:Ld/a;

.field public u:Landroid/view/MenuInflater;

.field public v:Ljava/lang/CharSequence;

.field public w:Lj/s0;

.field public x:Ld/f$h;

.field public y:Ld/f$t;

.field public z:Lh/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    sput-object v0, Ld/f;->l0:Lp/g;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Ld/f;->m0:Z

    new-array v4, v2, [I

    const v5, 0x1010054

    aput v5, v4, v1

    sput-object v4, Ld/f;->n0:[I

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "robolectric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    sput-boolean v4, Ld/f;->o0:Z

    const/16 v4, 0x11

    if-lt v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Ld/f;->p0:Z

    if-eqz v3, :cond_2

    sget-boolean v0, Ld/f;->q0:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Ld/f$a;

    invoke-direct {v1, v0}, Ld/f$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v2, Ld/f;->q0:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ld/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p1}, Ld/f;-><init>(Landroid/content/Context;Landroid/view/Window;Ld/c;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;Ld/c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Ld/f;-><init>(Landroid/content/Context;Landroid/view/Window;Ld/c;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ld/c;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ld/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/f;->D:Ld0/p1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->E:Z

    const/16 v0, -0x64

    iput v0, p0, Ld/f;->Y:I

    new-instance v1, Ld/f$b;

    invoke-direct {v1, p0}, Ld/f$b;-><init>(Ld/f;)V

    iput-object v1, p0, Ld/f;->g0:Ljava/lang/Runnable;

    iput-object p1, p0, Ld/f;->p:Landroid/content/Context;

    iput-object p3, p0, Ld/f;->s:Ld/c;

    iput-object p4, p0, Ld/f;->k:Ljava/lang/Object;

    iget p1, p0, Ld/f;->Y:I

    if-ne p1, v0, :cond_0

    instance-of p1, p4, Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ld/f;->I0()Ld/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld/b;->x()Ld/d;

    move-result-object p1

    invoke-virtual {p1}, Ld/d;->k()I

    move-result p1

    iput p1, p0, Ld/f;->Y:I

    :cond_0
    iget p1, p0, Ld/f;->Y:I

    if-ne p1, v0, :cond_1

    sget-object p1, Ld/f;->l0:Lp/g;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Ld/f;->Y:I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Ld/f;->I(Landroid/view/Window;)V

    :cond_2
    invoke-static {}, Lj/i;->h()V

    return-void
.end method

.method public static Z(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 5

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p1, :cond_16

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_2

    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_3

    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_4

    invoke-static {p0, p1, v0}, Ld/f$o;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Lc0/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_5
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_6

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_6
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_7

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_7
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_8

    iput v3, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_8
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_9

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    :cond_9
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_a

    iput v3, v0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_a
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_b

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_b
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v3, 0xf

    if-eq v2, v4, :cond_c

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_c
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v3, 0xc0

    if-eq v2, v4, :cond_d

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_d
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v3, 0x30

    if-eq v2, v4, :cond_e

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_e
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v3, 0x300

    if-eq v2, v4, :cond_f

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_f
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_10

    invoke-static {p0, p1, v0}, Ld/f$p;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_10
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v3, 0xf

    if-eq v2, v4, :cond_11

    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_11
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v3, 0x30

    if-eq v2, v4, :cond_12

    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_12
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_13

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_13
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_14

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_14
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_15

    iput v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_15
    const/16 v2, 0x11

    if-lt v1, v2, :cond_16

    invoke-static {p0, p1, v0}, Ld/f$n;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_16
    :goto_1
    return-object v0
.end method


# virtual methods
.method public A(I)V
    .locals 2

    invoke-virtual {p0}, Ld/f;->W()V

    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Ld/f;->p:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Ld/f;->r:Ld/f$j;

    invoke-virtual {p1}, Lh/m;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final A0(Ld/f$s;Landroid/view/KeyEvent;)Z
    .locals 8

    iget-boolean v0, p0, Ld/f;->X:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/f$s;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ld/f;->S:Ld/f$s;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ld/f;->O(Ld/f$s;Z)V

    :cond_2
    invoke-virtual {p0}, Ld/f;->f0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Ld/f$s;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Ld/f$s;->i:Landroid/view/View;

    :cond_3
    iget v3, p1, Ld/f$s;->a:I

    if-eqz v3, :cond_5

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, Ld/f;->w:Lj/s0;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lj/s0;->c()V

    :cond_6
    iget-object v4, p1, Ld/f$s;->i:Landroid/view/View;

    if-nez v4, :cond_15

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Ld/f;->y0()Ld/a;

    :cond_7
    iget-object v4, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v6, p1, Ld/f$s;->r:Z

    if-eqz v6, :cond_f

    :cond_8
    if-nez v4, :cond_a

    invoke-virtual {p0, p1}, Ld/f;->j0(Ld/f$s;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    if-nez v4, :cond_a

    :cond_9
    return v1

    :cond_a
    if-eqz v3, :cond_c

    iget-object v4, p0, Ld/f;->w:Lj/s0;

    if-eqz v4, :cond_c

    iget-object v4, p0, Ld/f;->x:Ld/f$h;

    if-nez v4, :cond_b

    new-instance v4, Ld/f$h;

    invoke-direct {v4, p0}, Ld/f$h;-><init>(Ld/f;)V

    iput-object v4, p0, Ld/f;->x:Ld/f$h;

    :cond_b
    iget-object v4, p0, Ld/f;->w:Lj/s0;

    iget-object v6, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    iget-object v7, p0, Ld/f;->x:Ld/f$h;

    invoke-interface {v4, v6, v7}, Lj/s0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    :cond_c
    iget-object v4, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->d0()V

    iget v4, p1, Ld/f$s;->a:I

    iget-object v6, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p1, v5}, Ld/f$s;->c(Landroidx/appcompat/view/menu/e;)V

    if-eqz v3, :cond_d

    iget-object p1, p0, Ld/f;->w:Lj/s0;

    if-eqz p1, :cond_d

    iget-object p2, p0, Ld/f;->x:Ld/f$h;

    invoke-interface {p1, v5, p2}, Lj/s0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    :cond_d
    return v1

    :cond_e
    iput-boolean v1, p1, Ld/f$s;->r:Z

    :cond_f
    iget-object v4, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->d0()V

    iget-object v4, p1, Ld/f$s;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    iget-object v6, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v6, v4}, Landroidx/appcompat/view/menu/e;->P(Landroid/os/Bundle;)V

    iput-object v5, p1, Ld/f$s;->s:Landroid/os/Bundle;

    :cond_10
    iget-object v4, p1, Ld/f$s;->i:Landroid/view/View;

    iget-object v6, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v3, :cond_11

    iget-object p2, p0, Ld/f;->w:Lj/s0;

    if-eqz p2, :cond_11

    iget-object v0, p0, Ld/f;->x:Ld/f$h;

    invoke-interface {p2, v5, v0}, Lj/s0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    :cond_11
    iget-object p1, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->c0()V

    return v1

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_2

    :cond_13
    const/4 p2, -0x1

    :goto_2
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_14

    const/4 p2, 0x1

    goto :goto_3

    :cond_14
    const/4 p2, 0x0

    :goto_3
    iput-boolean p2, p1, Ld/f$s;->p:Z

    iget-object v0, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/e;->setQwertyMode(Z)V

    iget-object p2, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/e;->c0()V

    :cond_15
    iput-boolean v2, p1, Ld/f$s;->m:Z

    iput-boolean v1, p1, Ld/f$s;->n:Z

    iput-object p1, p0, Ld/f;->S:Ld/f$s;

    return v2
.end method

.method public B(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ld/f;->W()V

    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Ld/f;->r:Ld/f$j;

    invoke-virtual {p1}, Lh/m;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final B0(Z)V
    .locals 5

    iget-object v0, p0, Ld/f;->w:Lj/s0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lj/s0;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/f;->w:Lj/s0;

    invoke-interface {v0}, Lj/s0;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p0}, Ld/f;->f0()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v3, p0, Ld/f;->w:Lj/s0;

    invoke-interface {v3}, Lj/s0;->b()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld/f;->w:Lj/s0;

    invoke-interface {p1}, Lj/s0;->f()Z

    iget-boolean p1, p0, Ld/f;->X:Z

    if-nez p1, :cond_4

    invoke-virtual {p0, v2, v1}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p1

    iget-object p1, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean p1, p0, Ld/f;->X:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Ld/f;->e0:Z

    if-eqz p1, :cond_3

    iget p1, p0, Ld/f;->f0:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Ld/f;->g0:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Ld/f;->g0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-virtual {p0, v2, v1}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p1

    iget-object v1, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    if-eqz v1, :cond_4

    iget-boolean v3, p1, Ld/f$s;->r:Z

    if-nez v3, :cond_4

    iget-object v3, p1, Ld/f$s;->i:Landroid/view/View;

    invoke-interface {v0, v2, v3, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Ld/f;->w:Lj/s0;

    invoke-interface {p1}, Lj/s0;->g()Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0, v2, v1}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p1

    iput-boolean v1, p1, Ld/f$s;->q:Z

    invoke-virtual {p0, p1, v2}, Ld/f;->O(Ld/f$s;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld/f;->x0(Ld/f$s;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/f;->W()V

    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/f;->r:Ld/f$j;

    invoke-virtual {p1}, Lh/m;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final C0(I)I
    .locals 2

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    return p1

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    :cond_1
    return p1
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Ld/f;->Z:I

    return-void
.end method

.method public final D0()Z
    .locals 1

    iget-boolean v0, p0, Ld/f;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld0/s0;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final E(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Ld/f;->v:Ljava/lang/CharSequence;

    iget-object v0, p0, Ld/f;->w:Lj/s0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lj/s0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld/f;->y0()Ld/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld/f;->y0()Ld/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/a;->s(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/f;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final E0(Landroid/view/ViewParent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eq p1, v1, :cond_3

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Ld0/s0;->v(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/f;->G(Z)Z

    move-result v0

    return v0
.end method

.method public F0(Lh/b$a;)Lh/b;
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Ld/f;->z:Lh/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/b;->c()V

    :cond_0
    new-instance v0, Ld/f$i;

    invoke-direct {v0, p0, p1}, Ld/f$i;-><init>(Ld/f;Lh/b$a;)V

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ld/a;->t(Lh/b$a;)Lh/b;

    move-result-object p1

    iput-object p1, p0, Ld/f;->z:Lh/b;

    if-eqz p1, :cond_1

    iget-object v1, p0, Ld/f;->s:Ld/c;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ld/c;->g(Lh/b;)V

    :cond_1
    iget-object p1, p0, Ld/f;->z:Lh/b;

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Ld/f;->G0(Lh/b$a;)Lh/b;

    move-result-object p1

    iput-object p1, p0, Ld/f;->z:Lh/b;

    :cond_2
    iget-object p1, p0, Ld/f;->z:Lh/b;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final G(Z)Z
    .locals 2

    iget-boolean v0, p0, Ld/f;->X:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Ld/f;->J()I

    move-result v0

    iget-object v1, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Ld/f;->n0(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Ld/f;->J0(IZ)Z

    move-result p1

    if-nez v0, :cond_1

    iget-object v1, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {p0, v1}, Ld/f;->c0(Landroid/content/Context;)Ld/f$l;

    move-result-object v1

    invoke-virtual {v1}, Ld/f$l;->e()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ld/f;->c0:Ld/f$l;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ld/f$l;->a()V

    :cond_2
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ld/f;->b0(Landroid/content/Context;)Ld/f$l;

    move-result-object v0

    invoke-virtual {v0}, Ld/f$l;->e()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ld/f;->d0:Ld/f$l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld/f$l;->a()V

    :cond_4
    :goto_1
    return p1
.end method

.method public G0(Lh/b$a;)Lh/b;
    .locals 7

    invoke-virtual {p0}, Ld/f;->V()V

    iget-object v0, p0, Ld/f;->z:Lh/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/b;->c()V

    :cond_0
    instance-of v0, p1, Ld/f$i;

    if-nez v0, :cond_1

    new-instance v0, Ld/f$i;

    invoke-direct {v0, p0, p1}, Ld/f$i;-><init>(Ld/f;Lh/b$a;)V

    move-object p1, v0

    :cond_1
    iget-object v0, p0, Ld/f;->s:Ld/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Ld/f;->X:Z

    if-nez v2, :cond_2

    :try_start_0
    invoke-interface {v0, p1}, Ld/c;->f(Lh/b$a;)Lh/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iput-object v0, p0, Ld/f;->z:Lh/b;

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ld/f;->O:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lc/a;->f:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    iget-object v5, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lh/d;

    iget-object v6, p0, Ld/f;->p:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Lh/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Ld/f;->p:Landroid/content/Context;

    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Lc/a;->i:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lf0/t;->b(Landroid/widget/PopupWindow;I)V

    iget-object v5, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    iget-object v6, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lc/a;->b:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v4, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v0, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Ld/f$f;

    invoke-direct {v0, p0}, Ld/f$f;-><init>(Ld/f;)V

    iput-object v0, p0, Ld/f;->C:Ljava/lang/Runnable;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    sget v4, Lc/f;->h:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ld/f;->a0()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_6
    :goto_2
    iget-object v0, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ld/f;->V()V

    iget-object v0, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    new-instance v0, Lh/e;

    iget-object v4, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-direct {v0, v4, v5, p1, v3}, Lh/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lh/b$a;Z)V

    invoke-virtual {v0}, Lh/b;->e()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lh/b$a;->a(Lh/b;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lh/b;->k()V

    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Lh/b;)V

    iput-object v0, p0, Ld/f;->z:Lh/b;

    invoke-virtual {p0}, Ld/f;->D0()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Ld0/s0;->b(Landroid/view/View;)Ld0/p1;

    move-result-object p1

    invoke-virtual {p1, v0}, Ld0/p1;->a(F)Ld0/p1;

    move-result-object p1

    iput-object p1, p0, Ld/f;->D:Ld0/p1;

    new-instance v0, Ld/f$g;

    invoke-direct {v0, p0}, Ld/f$g;-><init>(Ld/f;)V

    invoke-virtual {p1, v0}, Ld0/p1;->f(Ld0/q1;)Ld0/p1;

    goto :goto_4

    :cond_8
    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_9

    iget-object p1, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    :cond_9
    :goto_4
    iget-object p1, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_b

    iget-object p1, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/f;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_a
    iput-object v1, p0, Ld/f;->z:Lh/b;

    :cond_b
    :goto_5
    iget-object p1, p0, Ld/f;->z:Lh/b;

    if-eqz p1, :cond_c

    iget-object v0, p0, Ld/f;->s:Ld/c;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ld/c;->g(Lh/b;)V

    :cond_c
    iget-object p1, p0, Ld/f;->z:Lh/b;

    return-object p1
.end method

.method public final H()V
    .locals 5

    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->b(IIII)V

    iget-object v1, p0, Ld/f;->p:Landroid/content/Context;

    sget-object v2, Lc/j;->z0:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lc/j;->L0:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Lc/j;->M0:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Lc/j;->J0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_0
    sget v2, Lc/j;->K0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    sget v2, Lc/j;->H0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_2
    sget v2, Lc/j;->I0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final H0()V
    .locals 2

    iget-boolean v0, p0, Ld/f;->F:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Ld/f$j;

    if-nez v2, :cond_1

    new-instance v1, Ld/f$j;

    invoke-direct {v1, p0, v0}, Ld/f$j;-><init>(Ld/f;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ld/f;->r:Ld/f$j;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Ld/f;->n0:[I

    invoke-static {v0, v1, v2}, Lj/t1;->t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lj/t1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj/t1;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Lj/t1;->v()V

    iput-object p1, p0, Ld/f;->q:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I0()Ld/b;
    .locals 3

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Ld/b;

    if-eqz v2, :cond_0

    check-cast v0, Ld/b;

    return-object v0

    :cond_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final J()I
    .locals 2

    iget v0, p0, Ld/f;->Y:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ld/d;->j()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final J0(IZ)Z
    .locals 6

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ld/f;->P(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Ld/f;->l0()Z

    move-result v2

    iget-object v3, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v4, 0x1

    if-eq v3, v0, :cond_1

    if-eqz p2, :cond_1

    if-nez v2, :cond_1

    iget-boolean p2, p0, Ld/f;->U:Z

    if-eqz p2, :cond_1

    sget-boolean p2, Ld/f;->o0:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Ld/f;->V:Z

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v5, p2, Landroid/app/Activity;

    if-eqz v5, :cond_1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isChild()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Ld/f;->k:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lr/c;->k(Landroid/app/Activity;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    if-eq v3, v0, :cond_2

    invoke-virtual {p0, v0, v2, v1}, Ld/f;->K0(IZLandroid/content/res/Configuration;)V

    goto :goto_1

    :cond_2
    move v4, p2

    :goto_1
    if-eqz v4, :cond_3

    iget-object p2, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v0, p2, Ld/b;

    if-eqz v0, :cond_3

    check-cast p2, Ld/b;

    invoke-virtual {p2, p1}, Ld/b;->A(I)V

    :cond_3
    return v4
.end method

.method public K(ILd/f$s;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Ld/f;->R:[Ld/f$s;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Ld/f$s;->o:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Ld/f;->X:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Ld/f;->r:Ld/f$j;

    invoke-virtual {p2}, Lh/m;->a()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public final K0(IZLandroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ge p1, p3, :cond_1

    invoke-static {v0}, Ld/m;->a(Landroid/content/res/Resources;)V

    :cond_1
    iget p3, p0, Ld/f;->Z:I

    if-eqz p3, :cond_2

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->setTheme(I)V

    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    iget-object p1, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget p3, p0, Ld/f;->Z:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    if-eqz p2, :cond_4

    iget-object p1, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_4

    check-cast p1, Landroid/app/Activity;

    instance-of p2, p1, Landroidx/lifecycle/g;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/g;

    invoke-interface {p2}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/d;->b()Landroidx/lifecycle/d$b;

    move-result-object p2

    sget-object p3, Landroidx/lifecycle/d$b;->k:Landroidx/lifecycle/d$b;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/d$b;->c(Landroidx/lifecycle/d$b;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Ld/f;->W:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public L(Landroidx/appcompat/view/menu/e;)V
    .locals 2

    iget-boolean v0, p0, Ld/f;->Q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->Q:Z

    iget-object v0, p0, Ld/f;->w:Lj/s0;

    invoke-interface {v0}, Lj/s0;->i()V

    invoke-virtual {p0}, Ld/f;->f0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ld/f;->X:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/f;->Q:Z

    return-void
.end method

.method public final L0(Ld0/t1;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld0/t1;->k()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_10

    iget-object v2, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_e

    iget-object v4, p0, Ld/f;->i0:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Ld/f;->i0:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Ld/f;->j0:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Ld/f;->i0:Landroid/graphics/Rect;

    iget-object v6, p0, Ld/f;->j0:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ld0/t1;->i()I

    move-result p2

    invoke-virtual {p1}, Ld0/t1;->k()I

    move-result v7

    invoke-virtual {p1}, Ld0/t1;->j()I

    move-result v8

    invoke-virtual {p1}, Ld0/t1;->h()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Ld/f;->G:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Lj/z1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Ld/f;->G:Landroid/view/ViewGroup;

    invoke-static {v6}, Ld0/s0;->p(Landroid/view/View;)Ld0/t1;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ld0/t1;->i()I

    move-result v7

    :goto_2
    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Ld0/t1;->j()I

    move-result v6

    :goto_3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p2, 0x1

    :goto_5
    if-lez p1, :cond_8

    iget-object p1, p0, Ld/f;->I:Landroid/view/View;

    if-nez p1, :cond_8

    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Ld/f;->p:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ld/f;->I:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Ld/f;->G:Landroid/view/ViewGroup;

    iget-object v6, p0, Ld/f;->I:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Ld/f;->I:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_a

    :cond_9
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Ld/f;->I:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_6
    iget-object p1, p0, Ld/f;->I:Landroid/view/View;

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Ld/f;->I:Landroid/view/View;

    invoke-virtual {p0, p1}, Ld/f;->M0(Landroid/view/View;)V

    :cond_c
    iget-boolean p1, p0, Ld/f;->N:Z

    if-nez p1, :cond_d

    if-eqz v5, :cond_d

    const/4 v1, 0x0

    :cond_d
    move p1, v5

    move v5, p2

    goto :goto_8

    :cond_e
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_f

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, 0x0

    goto :goto_8

    :cond_f
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_11

    iget-object p2, p0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_10
    const/4 p1, 0x0

    :cond_11
    :goto_9
    iget-object p2, p0, Ld/f;->I:Landroid/view/View;

    if-eqz p2, :cond_13

    if-eqz p1, :cond_12

    goto :goto_a

    :cond_12
    const/16 v0, 0x8

    :goto_a
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return v1
.end method

.method public final M()V
    .locals 1

    iget-object v0, p0, Ld/f;->c0:Ld/f$l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/f$l;->a()V

    :cond_0
    iget-object v0, p0, Ld/f;->d0:Ld/f$l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/f$l;->a()V

    :cond_1
    return-void
.end method

.method public final M0(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Ld0/s0;->s(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    sget v1, Lc/c;->b:I

    invoke-static {v0, v1}, Ls/a;->c(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    sget v1, Lc/c;->a:I

    invoke-static {v0, v1}, Ls/a;->c(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public N(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ld/f;->O(Ld/f$s;Z)V

    return-void
.end method

.method public O(Ld/f$s;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Ld/f$s;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/f;->w:Lj/s0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj/s0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p0, p1}, Ld/f;->L(Landroidx/appcompat/view/menu/e;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Ld/f$s;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Ld/f$s;->a:I

    invoke-virtual {p0, p2, p1, v1}, Ld/f;->K(ILd/f$s;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Ld/f$s;->m:Z

    iput-boolean p2, p1, Ld/f$s;->n:Z

    iput-boolean p2, p1, Ld/f$s;->o:Z

    iput-object v1, p1, Ld/f$s;->h:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ld/f$s;->q:Z

    iget-object p2, p0, Ld/f;->S:Ld/f$s;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Ld/f;->S:Ld/f$s;

    :cond_2
    return-void
.end method

.method public final P(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public final Q()Landroid/view/ViewGroup;
    .locals 7

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    sget-object v1, Lc/j;->z0:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lc/j;->E0:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    sget v2, Lc/j;->N0:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Ld/f;->z(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Ld/f;->z(I)Z

    :cond_1
    :goto_0
    sget v1, Lc/j;->F0:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ld/f;->z(I)Z

    :cond_2
    sget v1, Lc/j;->G0:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ld/f;->z(I)Z

    :cond_3
    sget v1, Lc/j;->A0:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ld/f;->O:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Ld/f;->X()V

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Ld/f;->P:Z

    const/4 v5, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Ld/f;->O:Z

    if-eqz v1, :cond_4

    sget v1, Lc/g;->f:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Ld/f;->M:Z

    iput-boolean v3, p0, Ld/f;->L:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v0, p0, Ld/f;->L:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Lc/a;->f:I

    invoke-virtual {v1, v6, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Lh/d;

    iget-object v4, p0, Ld/f;->p:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v4, v0}, Lh/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Ld/f;->p:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lc/g;->p:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lc/f;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lj/s0;

    iput-object v1, p0, Ld/f;->w:Lj/s0;

    invoke-virtual {p0}, Ld/f;->f0()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v1, v4}, Lj/s0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Ld/f;->M:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Ld/f;->w:Lj/s0;

    invoke-interface {v1, v2}, Lj/s0;->h(I)V

    :cond_6
    iget-boolean v1, p0, Ld/f;->J:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Ld/f;->w:Lj/s0;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lj/s0;->h(I)V

    :cond_7
    iget-boolean v1, p0, Ld/f;->K:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Ld/f;->w:Lj/s0;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lj/s0;->h(I)V

    goto :goto_2

    :cond_8
    move-object v0, v5

    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Ld/f;->N:Z

    if-eqz v1, :cond_a

    sget v1, Lc/g;->o:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    sget v1, Lc/g;->n:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_c

    new-instance v1, Ld/f$c;

    invoke-direct {v1, p0}, Ld/f$c;-><init>(Ld/f;)V

    invoke-static {v0, v1}, Ld0/s0;->N(Landroid/view/View;Ld0/w;)V

    goto :goto_3

    :cond_c
    instance-of v1, v0, Landroidx/appcompat/widget/b;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/b;

    new-instance v2, Ld/f$d;

    invoke-direct {v2, p0}, Ld/f$d;-><init>(Ld/f;)V

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/b;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/b$a;)V

    :cond_d
    :goto_3
    iget-object v1, p0, Ld/f;->w:Lj/s0;

    if-nez v1, :cond_e

    sget v1, Lc/f;->M:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ld/f;->H:Landroid/widget/TextView;

    :cond_e
    invoke-static {v0}, Lj/z1;->c(Landroid/view/View;)V

    sget v1, Lc/f;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, Ld/f;->q:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_f
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_10

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v2, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Ld/f$e;

    invoke-direct {v2, p0}, Ld/f$e;-><init>(Ld/f;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/f;->L:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/f;->M:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/f;->O:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/f;->N:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/f;->P:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public R(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Ld/f;->k0:Ld/l;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    sget-object v2, Lc/j;->z0:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lc/j;->D0:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ld/l;

    invoke-direct {v0}, Ld/l;-><init>()V

    iput-object v0, p0, Ld/f;->k0:Ld/l;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/l;

    iput-object v2, p0, Ld/f;->k0:Ld/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ld/l;

    invoke-direct {v0}, Ld/l;-><init>()V

    iput-object v0, p0, Ld/f;->k0:Ld/l;

    :cond_1
    :goto_0
    sget-boolean v8, Ld/f;->m0:Z

    if-eqz v8, :cond_4

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p0, v0}, Ld/f;->E0(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_3
    :goto_1
    move v7, v1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    iget-object v2, p0, Ld/f;->k0:Ld/l;

    const/4 v9, 0x1

    invoke-static {}, Lj/y1;->b()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, Ld/l;->q(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public S()V
    .locals 2

    iget-object v0, p0, Ld/f;->w:Lj/s0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj/s0;->i()V

    :cond_0
    iget-object v0, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld/f;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ld/f;->B:Landroid/widget/PopupWindow;

    :cond_2
    invoke-virtual {p0}, Ld/f;->V()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->close()V

    :cond_3
    return-void
.end method

.method public T(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v1, v0, Ld0/e$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Ld/k;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Ld0/e;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ld/f;->r:Ld/f$j;

    invoke-virtual {v0}, Lh/m;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, p1}, Ld/f;->p0(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, p1}, Ld/f;->s0(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public U(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object v1

    iget-object v2, v1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/e;->Q(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    iput-object v2, v1, Ld/f$s;->s:Landroid/os/Bundle;

    :cond_0
    iget-object v2, v1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/e;->d0()V

    iget-object v2, v1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/e;->clear()V

    :cond_1
    iput-boolean v0, v1, Ld/f$s;->r:Z

    iput-boolean v0, v1, Ld/f$s;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Ld/f;->w:Lj/s0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean p1, v0, Ld/f$s;->m:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ld/f;->A0(Ld/f$s;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Ld/f;->D:Ld0/p1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld0/p1;->b()V

    :cond_0
    return-void
.end method

.method public final W()V
    .locals 2

    iget-boolean v0, p0, Ld/f;->F:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ld/f;->Q()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Ld/f;->e0()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ld/f;->w:Lj/s0;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lj/s0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld/f;->y0()Ld/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ld/f;->y0()Ld/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/a;->s(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ld/f;->H:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ld/f;->H()V

    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ld/f;->w0(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->F:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object v0

    iget-boolean v1, p0, Ld/f;->X:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, v0, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Ld/f;->k0(I)V

    :cond_4
    return-void
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/f;->I(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Y(Landroid/view/Menu;)Ld/f$s;
    .locals 5

    iget-object v0, p0, Ld/f;->R:[Ld/f$s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Ld/f;->f0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ld/f;->X:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->D()Landroidx/appcompat/view/menu/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/f;->Y(Landroid/view/Menu;)Ld/f$s;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Ld/f$s;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a0()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/a;->j()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ld/f;->B0(Z)V

    return-void
.end method

.method public final b0(Landroid/content/Context;)Ld/f$l;
    .locals 1

    iget-object v0, p0, Ld/f;->d0:Ld/f$l;

    if-nez v0, :cond_0

    new-instance v0, Ld/f$k;

    invoke-direct {v0, p0, p1}, Ld/f$k;-><init>(Ld/f;Landroid/content/Context;)V

    iput-object v0, p0, Ld/f;->d0:Ld/f$l;

    :cond_0
    iget-object p1, p0, Ld/f;->d0:Ld/f$l;

    return-object p1
.end method

.method public final c0(Landroid/content/Context;)Ld/f$l;
    .locals 1

    iget-object v0, p0, Ld/f;->c0:Ld/f$l;

    if-nez v0, :cond_0

    new-instance v0, Ld/f$m;

    invoke-static {p1}, Ld/o;->a(Landroid/content/Context;)Ld/o;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ld/f$m;-><init>(Ld/f;Ld/o;)V

    iput-object v0, p0, Ld/f;->c0:Ld/f$l;

    :cond_0
    iget-object p1, p0, Ld/f;->c0:Ld/f$l;

    return-object p1
.end method

.method public d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/f;->W()V

    iget-object v0, p0, Ld/f;->G:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/f;->r:Ld/f$j;

    invoke-virtual {p1}, Lh/m;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d0(IZ)Ld/f$s;
    .locals 3

    iget-object p2, p0, Ld/f;->R:[Ld/f$s;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ld/f$s;

    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Ld/f;->R:[Ld/f$s;

    move-object p2, v0

    :cond_2
    aget-object v0, p2, p1

    if-nez v0, :cond_3

    new-instance v0, Ld/f$s;

    invoke-direct {v0, p1}, Ld/f$s;-><init>(I)V

    aput-object v0, p2, p1

    :cond_3
    return-object v0
.end method

.method public final e0()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld/f;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/content/Context;
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->U:Z

    invoke-virtual {p0}, Ld/f;->J()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Ld/f;->n0(Landroid/content/Context;I)I

    move-result v1

    sget-boolean v2, Ld/f;->p0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1, v3}, Ld/f;->P(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    invoke-static {v4, v2}, Ld/f$q;->a(Landroid/view/ContextThemeWrapper;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    :cond_0
    instance-of v2, p1, Lh/d;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v1, v3}, Ld/f;->P(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_1
    move-object v4, p1

    check-cast v4, Lh/d;

    invoke-virtual {v4, v2}, Lh/d;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    nop

    :cond_1
    sget-boolean v2, Ld/f;->o0:Z

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Ld/d;->f(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2, v4}, Ld/f;->Z(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    :cond_3
    invoke-virtual {p0, p1, v1, v3}, Ld/f;->P(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Lh/d;

    sget v3, Lc/i;->c:I

    invoke-direct {v2, p1, v3}, Lh/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Lh/d;->a(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    goto :goto_1

    :catch_2
    nop

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lh/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Lu/h$d;->a(Landroid/content/res/Resources$Theme;)V

    :cond_5
    invoke-super {p0, v2}, Ld/d;->f(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application failed to obtain resources from itself"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final f0()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final g0()V
    .locals 3

    invoke-virtual {p0}, Ld/f;->W()V

    iget-boolean v0, p0, Ld/f;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/f;->t:Ld/a;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Ld/p;

    iget-object v1, p0, Ld/f;->k:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Ld/f;->M:Z

    invoke-direct {v0, v1, v2}, Ld/p;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Ld/f;->t:Ld/a;

    goto :goto_0

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Ld/p;

    iget-object v1, p0, Ld/f;->k:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Ld/p;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Ld/f;->t:Ld/a;

    :cond_2
    :goto_0
    iget-object v0, p0, Ld/f;->t:Ld/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Ld/f;->h0:Z

    invoke-virtual {v0, v1}, Ld/a;->q(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final h0(Ld/f$s;)Z
    .locals 3

    iget-object v0, p1, Ld/f$s;->i:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object v0, p1, Ld/f$s;->h:Landroid/view/View;

    return v1

    :cond_0
    iget-object v0, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ld/f;->y:Ld/f$t;

    if-nez v0, :cond_2

    new-instance v0, Ld/f$t;

    invoke-direct {v0, p0}, Ld/f$t;-><init>(Ld/f;)V

    iput-object v0, p0, Ld/f;->y:Ld/f$t;

    :cond_2
    iget-object v0, p0, Ld/f;->y:Ld/f$t;

    invoke-virtual {p1, v0}, Ld/f$s;->a(Landroidx/appcompat/view/menu/i$a;)Landroidx/appcompat/view/menu/j;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Ld/f$s;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ld/f;->W()V

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Ld/f$s;)Z
    .locals 2

    invoke-virtual {p0}, Ld/f;->a0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld/f$s;->d(Landroid/content/Context;)V

    new-instance v0, Ld/f$r;

    iget-object v1, p1, Ld/f$s;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Ld/f$r;-><init>(Ld/f;Landroid/content/Context;)V

    iput-object v0, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    iput v0, p1, Ld/f$s;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public final j0(Ld/f$s;)Z
    .locals 6

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    iget v1, p1, Ld/f$s;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Ld/f;->w:Lj/s0;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lc/a;->f:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v5, Lc/a;->g:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_1
    sget v5, Lc/a;->g:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    new-instance v1, Lh/d;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lh/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    :cond_4
    new-instance v1, Landroidx/appcompat/view/menu/e;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/e;->R(Landroidx/appcompat/view/menu/e$a;)V

    invoke-virtual {p1, v1}, Ld/f$s;->c(Landroidx/appcompat/view/menu/e;)V

    return v2
.end method

.method public k()I
    .locals 1

    iget v0, p0, Ld/f;->Y:I

    return v0
.end method

.method public final k0(I)V
    .locals 2

    iget v0, p0, Ld/f;->f0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ld/f;->f0:I

    iget-boolean p1, p0, Ld/f;->e0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/f;->g0:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Ld0/s0;->C(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Ld/f;->e0:Z

    :cond_0
    return-void
.end method

.method public l()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Ld/f;->u:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld/f;->g0()V

    new-instance v0, Lh/g;

    iget-object v1, p0, Ld/f;->t:Ld/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ld/a;->j()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld/f;->p:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lh/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/f;->u:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, p0, Ld/f;->u:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public final l0()Z
    .locals 7

    iget-boolean v0, p0, Ld/f;->b0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    const/high16 v3, 0x100c0000

    goto :goto_0

    :cond_1
    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    const/high16 v3, 0xc0000

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Ld/f;->p:Landroid/content/Context;

    iget-object v6, p0, Ld/f;->k:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ld/f;->a0:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Ld/f;->a0:Z

    :cond_4
    :goto_2
    iput-boolean v1, p0, Ld/f;->b0:Z

    iget-boolean v0, p0, Ld/f;->a0:Z

    return v0
.end method

.method public m()Ld/a;
    .locals 1

    invoke-virtual {p0}, Ld/f;->g0()V

    iget-object v0, p0, Ld/f;->t:Ld/a;

    return-object v0
.end method

.method public m0()Z
    .locals 1

    iget-boolean v0, p0, Ld/f;->E:Z

    return v0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Ld0/f;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Ld/f;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public n0(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Ld/f;->b0(Landroid/content/Context;)Ld/f$l;

    move-result-object p1

    invoke-virtual {p1}, Ld/f$l;->c()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/app/UiModeManager;

    invoke-static {p2, v0}, Ld/e;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Ld/f;->c0(Landroid/content/Context;)Ld/f$l;

    move-result-object p1

    invoke-virtual {p1}, Ld/f$l;->c()I

    move-result p1

    return p1

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/f;->k0(I)V

    return-void
.end method

.method public o0()Z
    .locals 2

    iget-object v0, p0, Ld/f;->z:Lh/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/b;->c()V

    return v1

    :cond_0
    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ld/f;->R(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ld/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Ld/f;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ld/f;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/a;->l(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Lj/i;->b()Lj/i;

    move-result-object p1

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lj/i;->g(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld/f;->G(Z)Z

    return-void
.end method

.method public p0(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, p2}, Ld/f;->q0(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Ld/f;->T:Z

    :goto_1
    return v2
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/f;->U:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/f;->G(Z)Z

    invoke-virtual {p0}, Ld/f;->X()V

    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lr/m;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ld/f;->y0()Ld/a;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Ld/f;->h0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ld/a;->q(Z)V

    :cond_1
    :goto_1
    invoke-static {p0}, Ld/d;->c(Ld/d;)V

    :cond_2
    iput-boolean p1, p0, Ld/f;->V:Z

    return-void
.end method

.method public final q0(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p1

    iget-boolean v0, p1, Ld/f$s;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld/f;->A0(Ld/f$s;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ld/d;->x(Ld/d;)V

    :cond_0
    iget-boolean v0, p0, Ld/f;->e0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld/f;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/f;->W:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->X:Z

    iget v0, p0, Ld/f;->Y:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ld/f;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ld/f;->l0:Lp/g;

    iget-object v1, p0, Ld/f;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ld/f;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Ld/f;->l0:Lp/g;

    iget-object v1, p0, Ld/f;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Ld/f;->t:Ld/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld/a;->m()V

    :cond_3
    invoke-virtual {p0}, Ld/f;->M()V

    return-void
.end method

.method public r0(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ld/a;->n(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Ld/f;->S:Ld/f$s;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, v1}, Ld/f;->z0(Ld/f$s;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ld/f;->S:Ld/f$s;

    if-eqz p1, :cond_1

    iput-boolean v1, p1, Ld/f$s;->n:Z

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Ld/f;->S:Ld/f$s;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0, v0, v1}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ld/f;->A0(Ld/f$s;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, p1, v2, p2, v1}, Ld/f;->z0(Ld/f$s;ILandroid/view/KeyEvent;I)Z

    move-result p2

    iput-boolean v0, p1, Ld/f$s;->m:Z

    if-eqz p2, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ld/f;->W()V

    return-void
.end method

.method public s0(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p2}, Ld/f;->t0(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    iget-boolean p1, p0, Ld/f;->T:Z

    iput-boolean v2, p0, Ld/f;->T:Z

    invoke-virtual {p0, v2, v2}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-boolean v0, p2, Ld/f$s;->o:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p0, p2, v1}, Ld/f;->O(Ld/f$s;Z)V

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Ld/f;->o0()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public t()V
    .locals 2

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/a;->r(Z)V

    :cond_0
    return-void
.end method

.method public final t0(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Ld/f;->z:Lh/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object v2

    if-nez p1, :cond_2

    iget-object p1, p0, Ld/f;->w:Lj/s0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lj/s0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ld/f;->p:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ld/f;->w:Lj/s0;

    invoke-interface {p1}, Lj/s0;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Ld/f;->X:Z

    if-nez p1, :cond_5

    invoke-virtual {p0, v2, p2}, Ld/f;->A0(Ld/f$s;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ld/f;->w:Lj/s0;

    invoke-interface {p1}, Lj/s0;->g()Z

    move-result v0

    goto :goto_2

    :cond_1
    iget-object p1, p0, Ld/f;->w:Lj/s0;

    invoke-interface {p1}, Lj/s0;->f()Z

    move-result v0

    goto :goto_2

    :cond_2
    iget-boolean p1, v2, Ld/f$s;->o:Z

    if-nez p1, :cond_6

    iget-boolean v3, v2, Ld/f$s;->n:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p1, v2, Ld/f$s;->m:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v2, Ld/f$s;->r:Z

    if-eqz p1, :cond_4

    iput-boolean v1, v2, Ld/f$s;->m:Z

    invoke-virtual {p0, v2, p2}, Ld/f;->A0(Ld/f$s;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0, v2, p2}, Ld/f;->x0(Ld/f$s;Landroid/view/KeyEvent;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0, v2, v0}, Ld/f;->O(Ld/f$s;Z)V

    move v0, p1

    :goto_2
    if-eqz v0, :cond_8

    iget-object p1, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    :cond_7
    const-string p1, "AppCompatDelegate"

    const-string p2, "Couldn\'t get audio manager"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return v0
.end method

.method public u(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public u0(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ld/a;->h(Z)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/f;->W:Z

    invoke-virtual {p0}, Ld/f;->F()Z

    return-void
.end method

.method public v0(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ld/a;->h(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ld/f;->d0(IZ)Ld/f$s;

    move-result-object p1

    iget-boolean v1, p1, Ld/f$s;->o:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Ld/f;->O(Ld/f$s;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/f;->W:Z

    invoke-virtual {p0}, Ld/f;->m()Ld/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ld/a;->r(Z)V

    :cond_0
    return-void
.end method

.method public w0(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public final x0(Ld/f$s;Landroid/view/KeyEvent;)V
    .locals 13

    iget-boolean v0, p1, Ld/f$s;->o:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Ld/f;->X:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p1, Ld/f$s;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ld/f;->f0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Ld/f$s;->a:I

    iget-object v4, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v2}, Ld/f;->O(Ld/f$s;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Ld/f;->p:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Ld/f;->A0(Ld/f$s;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Ld/f$s;->q:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, Ld/f$s;->i:Landroid/view/View;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_e

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_e

    const/4 v6, -0x1

    goto :goto_2

    :cond_7
    :goto_1
    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Ld/f;->i0(Ld/f$s;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_a

    :cond_8
    return-void

    :cond_9
    iget-boolean v3, p1, Ld/f$s;->q:Z

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    iget-object p2, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_a
    invoke-virtual {p0, p1}, Ld/f;->h0(Ld/f$s;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Ld/f$s;->b()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_3

    :cond_b
    iget-object p2, p1, Ld/f$s;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_c

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_c
    iget v3, p1, Ld/f$s;->b:I

    iget-object v5, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p1, Ld/f$s;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/f$s;->h:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    iget-object v3, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/f$s;->h:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Ld/f$s;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p1, Ld/f$s;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_e
    const/4 v6, -0x2

    :goto_2
    iput-boolean v1, p1, Ld/f$s;->n:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Ld/f$s;->d:I

    iget v9, p1, Ld/f$s;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, p1, Ld/f$s;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Ld/f$s;->f:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p1, Ld/f$s;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p1, Ld/f$s;->o:Z

    return-void

    :cond_f
    :goto_3
    iput-boolean v2, p1, Ld/f$s;->q:Z

    :cond_10
    :goto_4
    return-void
.end method

.method public final y0()Ld/a;
    .locals 1

    iget-object v0, p0, Ld/f;->t:Ld/a;

    return-object v0
.end method

.method public z(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Ld/f;->C0(I)I

    move-result p1

    iget-boolean v0, p0, Ld/f;->P:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Ld/f;->L:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_1

    iput-boolean v1, p0, Ld/f;->L:Z

    :cond_1
    if-eq p1, v3, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Ld/f;->H0()V

    iput-boolean v3, p0, Ld/f;->M:Z

    return v3

    :cond_3
    invoke-virtual {p0}, Ld/f;->H0()V

    iput-boolean v3, p0, Ld/f;->L:Z

    return v3

    :cond_4
    invoke-virtual {p0}, Ld/f;->H0()V

    iput-boolean v3, p0, Ld/f;->N:Z

    return v3

    :cond_5
    invoke-virtual {p0}, Ld/f;->H0()V

    iput-boolean v3, p0, Ld/f;->K:Z

    return v3

    :cond_6
    invoke-virtual {p0}, Ld/f;->H0()V

    iput-boolean v3, p0, Ld/f;->J:Z

    return v3

    :cond_7
    invoke-virtual {p0}, Ld/f;->H0()V

    iput-boolean v3, p0, Ld/f;->P:Z

    return v3
.end method

.method public final z0(Ld/f$s;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/f$s;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Ld/f;->A0(Ld/f$s;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Ld/f$s;->j:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/e;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Ld/f;->w:Lj/s0;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Ld/f;->O(Ld/f$s;Z)V

    :cond_3
    return v1
.end method

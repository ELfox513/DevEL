.class public final Landroidx/fragment/app/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/o;->m(Landroidx/fragment/app/v;Landroid/view/ViewGroup;Landroid/view/View;Lp/a;Landroidx/fragment/app/o$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Z

.field public final synthetic k:Lp/a;

.field public final synthetic p:Landroid/view/View;

.field public final synthetic q:Landroidx/fragment/app/v;

.field public final synthetic r:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLp/a;Landroid/view/View;Landroidx/fragment/app/v;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/o$c;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/o$c;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/o$c;->d:Z

    iput-object p4, p0, Landroidx/fragment/app/o$c;->k:Lp/a;

    iput-object p5, p0, Landroidx/fragment/app/o$c;->p:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/o$c;->q:Landroidx/fragment/app/v;

    iput-object p7, p0, Landroidx/fragment/app/o$c;->r:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/o$c;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/o$c;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/o$c;->d:Z

    iget-object v3, p0, Landroidx/fragment/app/o$c;->k:Lp/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/o;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLp/a;Z)V

    iget-object v0, p0, Landroidx/fragment/app/o$c;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/o$c;->q:Landroidx/fragment/app/v;

    iget-object v2, p0, Landroidx/fragment/app/o$c;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/v;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

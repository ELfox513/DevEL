.class public abstract Ld3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv2/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Lv2/d;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Double;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lt2/v;

.field public k:Z

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Ljava/lang/Object;

.field public o:Landroid/os/Bundle;

.field public p:Z

.field public q:Z

.field public r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ld3/v;->o:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    iput-boolean p1, p0, Ld3/v;->p:Z

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->i:Ljava/lang/String;

    return-void
.end method

.method public final C(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->g:Ljava/lang/Double;

    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->h:Ljava/lang/String;

    return-void
.end method

.method public abstract E(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public F(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final G(Lt2/v;)V
    .locals 0
    .param p1    # Lt2/v;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->j:Lt2/v;

    return-void
.end method

.method public final H(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->n:Ljava/lang/Object;

    return-void
.end method

.method public final I()Lt2/v;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->j:Lt2/v;

    return-object v0
.end method

.method public final J()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->m:Landroid/view/View;

    return-object v0
.end method

.method public final K()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public a()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->l:Landroid/view/View;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lv2/d;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->d:Lv2/d;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv2/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld3/v;->b:Ljava/util/List;

    return-object v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Ld3/v;->r:F

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Ld3/v;->q:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Ld3/v;->p:Z

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ld3/v;->h:Ljava/lang/String;

    return-object v0
.end method

.method public q(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    return-void
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Ld3/v;->k:Z

    return v0
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->f:Ljava/lang/String;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->c:Ljava/lang/String;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->e:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->a:Ljava/lang/String;

    return-void
.end method

.method public final x(Lv2/d;)V
    .locals 0
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Ld3/v;->d:Lv2/d;

    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv2/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ld3/v;->b:Ljava/util/List;

    return-void
.end method

.method public final z(Z)V
    .locals 0

    iput-boolean p1, p0, Ld3/v;->q:Z

    return-void
.end method

.class public final Lr4/o61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/mt2;

.field public final b:Lr4/im0;

.field public final c:Landroid/content/pm/ApplicationInfo;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/pm/PackageInfo;

.field public final g:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public final i:Lr4/ig2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ig2<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/mt2;Lr4/im0;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lr4/or3;Lb3/y1;Ljava/lang/String;Lr4/ig2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/mt2;",
            "Lr4/im0;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lr4/or3<",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;>;",
            "Lb3/y1;",
            "Ljava/lang/String;",
            "Lr4/ig2<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o61;->a:Lr4/mt2;

    iput-object p2, p0, Lr4/o61;->b:Lr4/im0;

    iput-object p3, p0, Lr4/o61;->c:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lr4/o61;->d:Ljava/lang/String;

    iput-object p5, p0, Lr4/o61;->e:Ljava/util/List;

    iput-object p6, p0, Lr4/o61;->f:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lr4/o61;->g:Lr4/or3;

    iput-object p9, p0, Lr4/o61;->h:Ljava/lang/String;

    iput-object p10, p0, Lr4/o61;->i:Lr4/ig2;

    return-void
.end method


# virtual methods
.method public final a()Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/o61;->a:Lr4/mt2;

    sget-object v1, Lr4/gt2;->b:Lr4/gt2;

    iget-object v2, p0, Lr4/o61;->i:Lr4/ig2;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lr4/ig2;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lr4/xs2;->a(Lr4/h83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/h83;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/og0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/o61;->a()Lr4/h83;

    move-result-object v0

    iget-object v1, p0, Lr4/o61;->a:Lr4/mt2;

    sget-object v2, Lr4/gt2;->d:Lr4/gt2;

    const/4 v3, 0x2

    new-array v3, v3, [Lr4/h83;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lr4/o61;->g:Lr4/or3;

    invoke-interface {v4}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/h83;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lr4/et2;->f(Ljava/lang/Object;[Lr4/h83;)Lr4/us2;

    move-result-object v1

    new-instance v2, Lr4/n61;

    invoke-direct {v2, p0, v0}, Lr4/n61;-><init>(Lr4/o61;Lr4/h83;)V

    invoke-virtual {v1, v2}, Lr4/us2;->a(Ljava/util/concurrent/Callable;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lr4/h83;)Lr4/og0;
    .locals 12

    new-instance v11, Lr4/og0;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lr4/o61;->b:Lr4/im0;

    iget-object v3, p0, Lr4/o61;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lr4/o61;->d:Ljava/lang/String;

    iget-object v5, p0, Lr4/o61;->e:Ljava/util/List;

    iget-object v6, p0, Lr4/o61;->f:Landroid/content/pm/PackageInfo;

    iget-object p1, p0, Lr4/o61;->g:Lr4/or3;

    invoke-interface {p1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/h83;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lr4/o61;->h:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lr4/og0;-><init>(Landroid/os/Bundle;Lr4/im0;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lr4/br2;Ljava/lang/String;)V

    return-object v11
.end method

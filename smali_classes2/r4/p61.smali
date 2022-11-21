.class public final Lr4/p61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/o61;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mt2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lb3/y1;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ig2<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/mt2;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lr4/is3<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Lr4/is3<",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;>;",
            "Lr4/is3<",
            "Lb3/y1;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Lr4/ig2<",
            "Landroid/os/Bundle;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p61;->a:Lr4/is3;

    iput-object p2, p0, Lr4/p61;->b:Lr4/is3;

    iput-object p3, p0, Lr4/p61;->c:Lr4/is3;

    iput-object p4, p0, Lr4/p61;->d:Lr4/is3;

    iput-object p5, p0, Lr4/p61;->e:Lr4/is3;

    iput-object p6, p0, Lr4/p61;->f:Lr4/is3;

    iput-object p7, p0, Lr4/p61;->g:Lr4/is3;

    iput-object p8, p0, Lr4/p61;->h:Lr4/is3;

    iput-object p9, p0, Lr4/p61;->i:Lr4/is3;

    iput-object p10, p0, Lr4/p61;->j:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/p61;->b()Lr4/o61;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/o61;
    .locals 12

    iget-object v0, p0, Lr4/p61;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/mt2;

    iget-object v0, p0, Lr4/p61;->b:Lr4/is3;

    check-cast v0, Lr4/pu0;

    invoke-virtual {v0}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v3

    iget-object v0, p0, Lr4/p61;->c:Lr4/is3;

    check-cast v0, Lr4/ew1;

    invoke-virtual {v0}, Lr4/ew1;->b()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, p0, Lr4/p61;->d:Lr4/is3;

    check-cast v0, Lr4/lw1;

    invoke-virtual {v0}, Lr4/lw1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lr4/rz;->c()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lr4/p61;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lr4/p61;->g:Lr4/is3;

    invoke-static {v0}, Lr4/tr3;->c(Lr4/is3;)Lr4/or3;

    move-result-object v8

    iget-object v0, p0, Lr4/p61;->h:Lr4/is3;

    check-cast v0, Lr4/lq2;

    invoke-virtual {v0}, Lr4/lq2;->b()Lb3/y1;

    move-result-object v9

    iget-object v0, p0, Lr4/p61;->i:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iget-object v0, p0, Lr4/p61;->j:Lr4/is3;

    check-cast v0, Lr4/jg2;

    invoke-virtual {v0}, Lr4/jg2;->b()Lr4/ig2;

    move-result-object v11

    new-instance v0, Lr4/o61;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lr4/o61;-><init>(Lr4/mt2;Lr4/im0;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lr4/or3;Lb3/y1;Ljava/lang/String;Lr4/ig2;)V

    return-object v0
.end method

.class public final Ly4/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly4/k1<",
        "Ly4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/n;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/n1<",
            "Landroid/app/Application;",
            ">;",
            "Ly4/n1<",
            "Ly4/d;",
            ">;",
            "Ly4/n1<",
            "Ly4/k0;",
            ">;",
            "Ly4/n1<",
            "Ly4/n;",
            ">;",
            "Ly4/n1<",
            "Ly4/e0;",
            ">;",
            "Ly4/n1<",
            "Ly4/i0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/a0;->a:Ly4/n1;

    iput-object p2, p0, Ly4/a0;->b:Ly4/n1;

    iput-object p3, p0, Ly4/a0;->c:Ly4/n1;

    iput-object p4, p0, Ly4/a0;->d:Ly4/n1;

    iput-object p5, p0, Ly4/a0;->e:Ly4/n1;

    iput-object p6, p0, Ly4/a0;->f:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Ly4/a0;->a:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Ly4/a0;->b:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ly4/d;

    iget-object v0, p0, Ly4/a0;->c:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ly4/k0;

    iget-object v0, p0, Ly4/a0;->d:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ly4/n;

    iget-object v0, p0, Ly4/a0;->e:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ly4/e0;

    iget-object v7, p0, Ly4/a0;->f:Ly4/n1;

    new-instance v0, Ly4/z;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ly4/z;-><init>(Landroid/app/Application;Ly4/d;Ly4/k0;Ly4/n;Ly4/e0;Ly4/n1;)V

    return-object v0
.end method

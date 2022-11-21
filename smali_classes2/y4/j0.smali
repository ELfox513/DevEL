.class public final Ly4/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly4/k1<",
        "Ly4/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly4/n1;Ly4/n1;Ly4/n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/n1<",
            "Ly4/k0;",
            ">;",
            "Ly4/n1<",
            "Landroid/os/Handler;",
            ">;",
            "Ly4/n1<",
            "Ly4/o0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/j0;->a:Ly4/n1;

    iput-object p2, p0, Ly4/j0;->b:Ly4/n1;

    iput-object p3, p0, Ly4/j0;->c:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly4/j0;->b()Ly4/i0;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ly4/i0;
    .locals 4

    iget-object v0, p0, Ly4/j0;->a:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/k0;

    sget-object v1, Ly4/g1;->a:Landroid/os/Handler;

    invoke-static {v1}, Ly4/m1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ly4/j0;->c:Ly4/n1;

    check-cast v2, Ly4/p0;

    invoke-virtual {v2}, Ly4/p0;->b()Ly4/o0;

    move-result-object v2

    new-instance v3, Ly4/i0;

    invoke-direct {v3, v0, v1, v2}, Ly4/i0;-><init>(Ly4/k0;Landroid/os/Handler;Ly4/o0;)V

    return-object v3
.end method

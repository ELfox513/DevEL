.class public final Lr4/re2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/se2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lr4/i83;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/re2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/re2;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/se2;
    .locals 2

    new-instance v0, Lr4/se2;

    iget-object v1, p0, Lr4/re2;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lr4/se2;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/se2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/re2;->a:Lr4/i83;

    new-instance v1, Lr4/qe2;

    invoke-direct {v1, p0}, Lr4/qe2;-><init>(Lr4/re2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

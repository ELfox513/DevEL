.class public final Lr4/ob2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/dg2<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lr4/nl0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/nl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ob2;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/ob2;->b:Lr4/nl0;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/dg2<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->N1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/ob2;->b:Lr4/nl0;

    invoke-virtual {v0}, Lr4/nl0;->r()Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/mb2;->a:Lr4/p03;

    iget-object v2, p0, Lr4/ob2;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

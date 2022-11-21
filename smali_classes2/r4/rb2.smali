.class public final Lr4/rb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/sb2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lm3/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm3/a;->a(Landroid/content/Context;)Lm3/b;

    move-result-object p1

    iput-object p1, p0, Lr4/rb2;->a:Lm3/b;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/sb2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->O1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/rb2;->a:Lm3/b;

    invoke-interface {v0}, Lm3/b;->a()Lj5/i;

    move-result-object v0

    invoke-static {v0}, Lr4/e03;->a(Lj5/i;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/qb2;->a:Lr4/p03;

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lr4/sb2;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lr4/sb2;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

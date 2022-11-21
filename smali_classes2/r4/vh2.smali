.class public final Lr4/vh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/wh2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/bl0;


# direct methods
.method public constructor <init>(Lr4/bl0;Lr4/i83;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vh2;->c:Lr4/bl0;

    iput-object p2, p0, Lr4/vh2;->a:Lr4/i83;

    iput-object p3, p0, Lr4/vh2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/wh2;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v1

    sget-object v2, Lr4/rz;->e4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v1

    :cond_0
    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lr4/h83;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lr4/y73;->n([Lr4/h83;)Lr4/w73;

    move-result-object v2

    new-instance v3, Lr4/uh2;

    invoke-direct {v3, v1, v0}, Lr4/uh2;-><init>(Lr4/h83;Lr4/h83;)V

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    invoke-virtual {v2, v3, v0}, Lr4/w73;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

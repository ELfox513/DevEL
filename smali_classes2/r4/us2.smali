.class public final Lr4/us2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/h83<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lr4/et2;


# direct methods
.method public synthetic constructor <init>(Lr4/et2;Ljava/lang/Object;Ljava/util/List;Lr4/vs2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/et2;",
            "Ljava/util/List<",
            "Lr4/h83;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lr4/us2;->c:Lr4/et2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/us2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lr4/us2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lr4/dt2;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/us2;->b:Ljava/util/List;

    invoke-static {v0}, Lr4/y73;->o(Ljava/lang/Iterable;)Lr4/w73;

    move-result-object v0

    sget-object v1, Lr4/ss2;->a:Ljava/util/concurrent/Callable;

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {v0, v1, v2}, Lr4/w73;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v7

    new-instance v1, Lr4/dt2;

    iget-object v4, p0, Lr4/us2;->c:Lr4/et2;

    iget-object v5, p0, Lr4/us2;->a:Ljava/lang/Object;

    iget-object v8, p0, Lr4/us2;->b:Ljava/util/List;

    invoke-static {v4}, Lr4/et2;->b(Lr4/et2;)Lr4/i83;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lr4/w73;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;Lr4/vs2;)V

    return-object v1
.end method

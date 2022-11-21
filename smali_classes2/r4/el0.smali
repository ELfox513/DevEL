.class public final Lr4/el0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lr4/h83<",
            "Lw2/a$a;",
            ">;"
        }
    .end annotation

    new-instance p2, Lr4/vm0;

    invoke-direct {p2}, Lr4/vm0;-><init>()V

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {p1}, Lr4/vl0;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    new-instance v1, Lr4/dl0;

    invoke-direct {v1, p0, p1, p2}, Lr4/dl0;-><init>(Lr4/el0;Landroid/content/Context;Lr4/vm0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object p2
.end method

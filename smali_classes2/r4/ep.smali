.class public final Lr4/ep;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lr4/to;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/to;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lr4/fp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/dp;

    invoke-direct {v0, p0}, Lr4/dp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lr4/dp;->e(Lr4/to;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

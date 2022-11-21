.class public final Lr4/lc3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lr4/r93;)Lr4/h93;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lr4/nc3;

    invoke-direct {v0}, Lr4/nc3;-><init>()V

    invoke-static {v0}, Lr4/ja3;->e(Lr4/ba3;)V

    const-class v0, Lr4/h93;

    invoke-virtual {p0, v0}, Lr4/r93;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/h93;

    return-object p0
.end method

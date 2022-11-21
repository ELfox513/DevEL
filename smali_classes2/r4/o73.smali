.class public Lr4/o73;
.super Lr4/z73;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/z73<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/z73;-><init>()V

    return-void
.end method

.method public static E(Lr4/h83;)Lr4/o73;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TV;>;)",
            "Lr4/o73<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lr4/o73;

    if-eqz v0, :cond_0

    check-cast p0, Lr4/o73;

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/p73;

    invoke-direct {v0, p0}, Lr4/p73;-><init>(Lr4/h83;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

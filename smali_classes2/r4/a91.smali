.class public final Lr4/a91;
.super Lr4/yc1;
.source "SourceFile"

# interfaces
.implements Lr4/c91;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/c91;",
        ">;",
        "Lr4/c91;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/c91;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final C0(Lr4/i31;)V
    .locals 1

    new-instance v0, Lr4/z81;

    invoke-direct {v0, p1}, Lr4/z81;-><init>(Lr4/i31;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

.class public final Lr4/rc3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/u93;",
        "Lr4/fd3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/p93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lr4/fd3;

    new-instance v0, Lr4/zj3;

    new-instance v1, Lr4/wj3;

    invoke-virtual {p1}, Lr4/fd3;->D()Lr4/ll3;

    move-result-object v2

    invoke-virtual {v2}, Lr4/ll3;->R()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lr4/wj3;-><init>([B)V

    invoke-virtual {p1}, Lr4/fd3;->E()Lr4/ld3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ld3;->C()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lr4/zj3;-><init>(Lr4/cd3;I)V

    return-object v0
.end method

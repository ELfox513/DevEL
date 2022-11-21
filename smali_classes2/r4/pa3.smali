.class public final Lr4/pa3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/c93;",
        "Lr4/od3;",
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
    .locals 5

    check-cast p1, Lr4/od3;

    new-instance v0, Lr4/jj3;

    new-instance v1, Lr4/ua3;

    invoke-direct {v1}, Lr4/ua3;-><init>()V

    invoke-virtual {p1}, Lr4/od3;->D()Lr4/ud3;

    move-result-object v2

    const-class v3, Lr4/uj3;

    invoke-virtual {v1, v2, v3}, Lr4/q93;->e(Lr4/ao3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/uj3;

    new-instance v2, Lr4/wc3;

    invoke-direct {v2}, Lr4/wc3;-><init>()V

    invoke-virtual {p1}, Lr4/od3;->E()Lr4/ng3;

    move-result-object v3

    const-class v4, Lr4/u93;

    invoke-virtual {v2, v3, v4}, Lr4/q93;->e(Lr4/ao3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/u93;

    invoke-virtual {p1}, Lr4/od3;->E()Lr4/ng3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ng3;->D()Lr4/tg3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/tg3;->C()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lr4/jj3;-><init>(Lr4/uj3;Lr4/u93;I)V

    return-object v0
.end method

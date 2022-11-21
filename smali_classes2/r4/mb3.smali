.class public final Lr4/mb3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/c93;",
        "Lr4/xh3;",
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
    .locals 2

    check-cast p1, Lr4/xh3;

    invoke-virtual {p1}, Lr4/xh3;->D()Lr4/ai3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ai3;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/t93;->a(Ljava/lang/String;)Lr4/s93;

    move-result-object v0

    invoke-interface {v0}, Lr4/s93;->a()Lr4/c93;

    move-result-object v0

    new-instance v1, Lr4/lb3;

    invoke-virtual {p1}, Lr4/xh3;->D()Lr4/ai3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ai3;->E()Lr4/zg3;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lr4/lb3;-><init>(Lr4/zg3;Lr4/c93;)V

    return-object v1
.end method

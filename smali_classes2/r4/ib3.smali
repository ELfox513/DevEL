.class public final Lr4/ib3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/c93;",
        "Lr4/rh3;",
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
    .locals 0

    check-cast p1, Lr4/rh3;

    invoke-virtual {p1}, Lr4/rh3;->D()Lr4/uh3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/uh3;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/t93;->a(Ljava/lang/String;)Lr4/s93;

    move-result-object p1

    invoke-interface {p1}, Lr4/s93;->a()Lr4/c93;

    move-result-object p1

    return-object p1
.end method

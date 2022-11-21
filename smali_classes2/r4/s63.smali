.class public final Lr4/s63;
.super Lr4/u63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/u63<",
        "TI;TO;",
        "Lr4/p03<",
        "-TI;+TO;>;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/h83;Lr4/p03;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "+TI;>;",
            "Lr4/p03<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lr4/u63;-><init>(Lr4/h83;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr4/p63;->u(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic G(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/p03;

    invoke-interface {p1, p2}, Lr4/p03;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

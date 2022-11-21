.class public final Lr4/cb3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/c93;",
        "Lr4/te3;",
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
    .locals 1

    check-cast p1, Lr4/te3;

    new-instance v0, Lr4/tb3;

    invoke-virtual {p1}, Lr4/te3;->D()Lr4/ll3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ll3;->R()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lr4/tb3;-><init>([B)V

    return-object v0
.end method

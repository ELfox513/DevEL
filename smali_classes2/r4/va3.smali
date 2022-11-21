.class public final Lr4/va3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/c93;",
        "Lr4/ee3;",
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

    check-cast p1, Lr4/ee3;

    new-instance v0, Lr4/ri3;

    invoke-virtual {p1}, Lr4/ee3;->E()Lr4/ll3;

    move-result-object v1

    invoke-virtual {v1}, Lr4/ll3;->R()[B

    move-result-object v1

    invoke-virtual {p1}, Lr4/ee3;->D()Lr4/ke3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ke3;->C()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lr4/ri3;-><init>([BI)V

    return-object v0
.end method

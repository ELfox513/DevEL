.class public final Lr4/bb3;
.super Lr4/q93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q93<",
        "Lr4/ne3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/p93;

    new-instance v1, Lr4/za3;

    const-class v2, Lr4/c93;

    invoke-direct {v1, v2}, Lr4/za3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lr4/ne3;

    invoke-direct {p0, v1, v0}, Lr4/q93;-><init>(Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method

.method public static synthetic k(II)Lr4/n93;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lr4/n93<",
            "Lr4/qe3;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lr4/qe3;->E()Lr4/pe3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/pe3;->v(I)Lr4/pe3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/qe3;

    new-instance v0, Lr4/n93;

    invoke-direct {v0, p0, p1}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/ne3;->E(Lr4/ll3;Lr4/bm3;)Lr4/ne3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)V
    .locals 2

    check-cast p1, Lr4/ne3;

    invoke-virtual {p1}, Lr4/ne3;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/dk3;->b(II)V

    invoke-virtual {p1}, Lr4/ne3;->D()Lr4/ll3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ll3;->o()I

    move-result p1

    invoke-static {p1}, Lr4/dk3;->a(I)V

    return-void
.end method

.method public final h()Lr4/o93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o93<",
            "Lr4/qe3;",
            "Lr4/ne3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/ab3;

    const-class v1, Lr4/qe3;

    invoke-direct {v0, p0, v1}, Lr4/ab3;-><init>(Lr4/bb3;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

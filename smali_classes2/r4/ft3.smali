.class public final Lr4/ft3;
.super Lr4/f04;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lr4/f04;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lr4/f04;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lr4/f04;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method

.method public constructor <init>(Lr4/f04;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/f04;-><init>(Lr4/f04;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lr4/ft3;
    .locals 1

    new-instance v0, Lr4/ft3;

    invoke-super {p0, p1}, Lr4/f04;->a(Ljava/lang/Object;)Lr4/f04;

    move-result-object p1

    invoke-direct {v0, p1}, Lr4/ft3;-><init>(Lr4/f04;)V

    return-object v0
.end method

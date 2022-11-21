.class public final Lr4/t24;
.super Lr4/uz3;
.source "SourceFile"

# interfaces
.implements Lr4/a34;


# direct methods
.method public constructor <init>(JJLr4/t04;Z)V
    .locals 8

    iget v5, p5, Lr4/t04;->f:I

    iget v6, p5, Lr4/t04;->c:I

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lr4/uz3;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final d(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/uz3;->e(J)J

    move-result-wide p1

    return-wide p1
.end method

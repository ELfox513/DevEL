.class public Lr4/ts3;
.super Lr4/e8;
.source "SourceFile"


# instance fields
.field public final c:Lr4/e8;


# direct methods
.method public constructor <init>(Lr4/e8;)V
    .locals 0

    invoke-direct {p0}, Lr4/e8;-><init>()V

    iput-object p1, p0, Lr4/ts3;->c:Lr4/e8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->a()I

    move-result v0

    return v0
.end method

.method public final b(IIZ)I
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1, p2, p3}, Lr4/e8;->b(IIZ)I

    move-result p1

    return p1
.end method

.method public final c(IIZ)I
    .locals 0

    iget-object p2, p0, Lr4/ts3;->c:Lr4/e8;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Lr4/e8;->c(IIZ)I

    move-result p1

    return p1
.end method

.method public final d(Z)I
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1}, Lr4/e8;->d(Z)I

    move-result p1

    return p1
.end method

.method public final e(Z)I
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1}, Lr4/e8;->e(Z)I

    move-result p1

    return p1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->g()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1}, Lr4/e8;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

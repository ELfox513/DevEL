.class public final Lr4/s6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ta;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/ta;

    invoke-direct {v0}, Lr4/ta;-><init>()V

    iput-object v0, p0, Lr4/s6;->a:Lr4/ta;

    return-void
.end method


# virtual methods
.method public final a(I)Lr4/s6;
    .locals 1

    iget-object v0, p0, Lr4/s6;->a:Lr4/ta;

    invoke-virtual {v0, p1}, Lr4/ta;->a(I)Lr4/ta;

    return-object p0
.end method

.method public final b(IZ)Lr4/s6;
    .locals 1

    iget-object v0, p0, Lr4/s6;->a:Lr4/ta;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lr4/ta;->a(I)Lr4/ta;

    :cond_0
    return-object p0
.end method

.method public final varargs c([I)Lr4/s6;
    .locals 4

    iget-object v0, p0, Lr4/s6;->a:Lr4/ta;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-virtual {v0, v3}, Lr4/ta;->a(I)Lr4/ta;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d(Lr4/t6;)Lr4/s6;
    .locals 3

    iget-object v0, p0, Lr4/s6;->a:Lr4/ta;

    invoke-static {p1}, Lr4/t6;->a(Lr4/t6;)Lr4/va;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lr4/va;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lr4/va;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lr4/ta;->a(I)Lr4/ta;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final e()Lr4/t6;
    .locals 3

    new-instance v0, Lr4/t6;

    iget-object v1, p0, Lr4/s6;->a:Lr4/ta;

    invoke-virtual {v1}, Lr4/ta;->b()Lr4/va;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/t6;-><init>(Lr4/va;Lr4/x6;)V

    return-object v0
.end method

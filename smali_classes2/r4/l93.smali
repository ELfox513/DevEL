.class public final Lr4/l93;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/zg3;


# direct methods
.method public constructor <init>(Lr4/zg3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l93;->a:Lr4/zg3;

    return-void
.end method

.method public static c(Ljava/lang/String;[BI)Lr4/l93;
    .locals 2

    new-instance v0, Lr4/l93;

    invoke-static {}, Lr4/zg3;->E()Lr4/yg3;

    move-result-object v1

    invoke-virtual {v1, p0}, Lr4/yg3;->v(Ljava/lang/String;)Lr4/yg3;

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p0

    invoke-virtual {v1, p0}, Lr4/yg3;->x(Lr4/ll3;)Lr4/yg3;

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    invoke-virtual {v1, p0}, Lr4/yg3;->z(I)Lr4/yg3;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/zg3;

    invoke-direct {v0, p0}, Lr4/l93;-><init>(Lr4/zg3;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/l93;->a:Lr4/zg3;

    invoke-virtual {v0}, Lr4/zg3;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lr4/l93;->a:Lr4/zg3;

    invoke-virtual {v0}, Lr4/zg3;->D()Lr4/ll3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ll3;->R()[B

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lr4/l93;->a:Lr4/zg3;

    invoke-virtual {v0}, Lr4/zg3;->M()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method

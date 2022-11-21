.class public final Lr4/iu3;
.super Lr4/ts3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/mu3;Lr4/e8;)V
    .locals 0

    invoke-direct {p0, p2}, Lr4/ts3;-><init>(Lr4/e8;)V

    return-void
.end method


# virtual methods
.method public final f(ILr4/d8;J)Lr4/d8;
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1, p2, p3, p4}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lr4/d8;->j:Z

    return-object p2
.end method

.method public final h(ILr4/b8;Z)Lr4/b8;
    .locals 1

    iget-object v0, p0, Lr4/ts3;->c:Lr4/e8;

    invoke-virtual {v0, p1, p2, p3}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lr4/b8;->f:Z

    return-object p2
.end method

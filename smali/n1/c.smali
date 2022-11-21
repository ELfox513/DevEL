.class public Ln1/c;
.super Lb2/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lx1/a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx1/a;

    return-object p1
.end method

.method public x(ILx1/a;)V
    .locals 2

    instance-of v0, p2, Lx1/d0;

    if-nez v0, :cond_1

    instance-of v0, p2, Lx1/e0;

    if-nez v0, :cond_1

    instance-of v0, p2, Lx1/p;

    if-nez v0, :cond_1

    instance-of v0, p2, Lx1/w;

    if-nez v0, :cond_1

    instance-of v0, p2, Lx1/o;

    if-nez v0, :cond_1

    instance-of v0, p2, Lx1/l;

    if-nez v0, :cond_1

    instance-of v0, p2, Lx1/y;

    if-nez v0, :cond_1

    instance-of v0, p2, Lx1/b0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad type for bootstrap argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method

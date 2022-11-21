.class public final Ln1/f;
.super Lb2/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public E(I)Ln1/e;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/e;

    return-object p1
.end method

.method public F(I)Ln1/e;
    .locals 3

    invoke-virtual {p0, p1}, Lb2/m;->A(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ln1/f;->E(I)Ln1/e;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H(ILn1/e;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lb2/m;->D(ILb2/l;)V

    return-void
.end method

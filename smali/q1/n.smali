.class public abstract Lq1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/f;


# instance fields
.field public final a:Lx1/e0;

.field public final b:I

.field public final c:Lx1/a0;

.field public final d:Lq1/b;


# direct methods
.method public constructor <init>(Lx1/e0;ILx1/a0;Lq1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lq1/n;->a:Lx1/e0;

    iput p2, p0, Lq1/n;->b:I

    iput-object p3, p0, Lq1/n;->c:Lx1/a0;

    iput-object p4, p0, Lq1/n;->d:Lq1/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lq1/n;->b:I

    return v0
.end method

.method public final c()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lq1/n;->a:Lx1/e0;

    return-object v0
.end method

.method public final d()Lx1/a0;
    .locals 1

    iget-object v0, p0, Lq1/n;->c:Lx1/a0;

    return-object v0
.end method

.method public final getAttributes()Lq1/b;
    .locals 1

    iget-object v0, p0, Lq1/n;->d:Lq1/b;

    return-object v0
.end method

.method public final getDescriptor()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lq1/n;->c:Lx1/a0;

    invoke-virtual {v0}, Lx1/a0;->n()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lq1/n;->c:Lx1/a0;

    invoke-virtual {v0}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq1/n;->c:Lx1/a0;

    invoke-virtual {v1}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

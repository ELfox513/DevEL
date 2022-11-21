.class public final Lm1/d;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lx1/g0;


# direct methods
.method public constructor <init>(Lx1/g0;)V
    .locals 1

    const-string v0, "ConstantValue"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    instance-of v0, p1, Lx1/d0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lx1/p;

    if-nez v0, :cond_1

    instance-of v0, p1, Lx1/w;

    if-nez v0, :cond_1

    instance-of v0, p1, Lx1/o;

    if-nez v0, :cond_1

    instance-of v0, p1, Lx1/l;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "constantValue == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad type for constantValue"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lm1/d;->b:Lx1/g0;

    return-void
.end method


# virtual methods
.method public a()Lx1/g0;
    .locals 1

    iget-object v0, p0, Lm1/d;->b:Lx1/g0;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

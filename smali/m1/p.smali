.class public final Lm1/p;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lx1/d0;


# direct methods
.method public constructor <init>(Lx1/d0;)V
    .locals 1

    const-string v0, "Signature"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lm1/p;->b:Lx1/d0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "signature == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lm1/p;->b:Lx1/d0;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

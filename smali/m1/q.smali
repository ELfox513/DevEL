.class public final Lm1/q;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lx1/d0;


# direct methods
.method public constructor <init>(Lx1/d0;)V
    .locals 1

    const-string v0, "SourceDebugExtension"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lm1/q;->b:Lx1/d0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "smapString == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lm1/q;->b:Lx1/d0;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lm1/q;->b:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->z()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

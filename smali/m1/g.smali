.class public final Lm1/g;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Ly1/e;


# direct methods
.method public constructor <init>(Ly1/e;)V
    .locals 1

    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ly1/e;->isMutable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iput-object p1, p0, Lm1/g;->b:Ly1/e;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb2/p;

    const-string v0, "exceptions.isMutable()"

    invoke-direct {p1, v0}, Lb2/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "exceptions == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ly1/e;
    .locals 1

    iget-object v0, p0, Lm1/g;->b:Ly1/e;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lm1/g;->b:Ly1/e;

    invoke-interface {v0}, Ly1/e;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.class public final Lm1/h;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Lm1/x;


# direct methods
.method public constructor <init>(Lm1/x;)V
    .locals 1

    const-string v0, "InnerClasses"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lb2/o;->isMutable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iput-object p1, p0, Lm1/h;->b:Lm1/x;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb2/p;

    const-string v0, "innerClasses.isMutable()"

    invoke-direct {p1, v0}, Lb2/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "innerClasses == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lm1/x;
    .locals 1

    iget-object v0, p0, Lm1/h;->b:Lm1/x;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lm1/h;->b:Lm1/x;

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

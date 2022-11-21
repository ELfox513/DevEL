.class public Lm1/b;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:Ln1/d;

.field public final c:I


# direct methods
.method public constructor <init>(Ln1/d;)V
    .locals 3

    const-string v0, "BootstrapMethods"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lm1/b;->b:Ln1/d;

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ln1/d;->x(I)Ln1/d$a;

    move-result-object v2

    invoke-virtual {v2}, Ln1/d$a;->a()Ln1/c;

    move-result-object v2

    invoke-virtual {v2}, Lb2/f;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lm1/b;->c:I

    return-void
.end method


# virtual methods
.method public a()Ln1/d;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Ln1/d;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lm1/b;->c:I

    return v0
.end method

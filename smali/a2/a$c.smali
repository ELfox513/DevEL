.class public La2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:[I

.field public final b:[I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, La2/a$c;->a:[I

    new-array p1, p1, [I

    iput-object p1, p0, La2/a$c;->b:[I

    const/4 p1, 0x0

    iput p1, p0, La2/a$c;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La2/a$c;->c:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, La2/a$c;->a:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, La2/a$c;->b:[I

    aget v1, p1, v0

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La2/a$c;->a:[I

    aput p1, v0, v1

    iget-object p1, p0, La2/a$c;->b:[I

    aput v2, p1, v1

    add-int/2addr v1, v2

    iput v1, p0, La2/a$c;->c:I

    return-void
.end method

.method public b()I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, La2/a$c;->c:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, La2/a$c;->b:[I

    aget v5, v5, v3

    if-ge v4, v5, :cond_0

    iget-object v0, p0, La2/a$c;->a:[I

    aget v0, v0, v3

    move v2, v0

    move v0, v3

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, La2/a$c;->b:[I

    aput v1, v3, v0

    return v2
.end method

.method public c()I
    .locals 1

    iget v0, p0, La2/a$c;->c:I

    return v0
.end method

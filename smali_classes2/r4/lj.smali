.class public final Lr4/lj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lr4/id;

.field public c:I


# direct methods
.method public varargs constructor <init>([Lr4/id;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lj;->b:[Lr4/id;

    const/4 p1, 0x1

    iput p1, p0, Lr4/lj;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Lr4/id;
    .locals 1

    iget-object v0, p0, Lr4/lj;->b:[Lr4/id;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Lr4/id;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    iget-object v1, p0, Lr4/lj;->b:[Lr4/id;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lr4/lj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/lj;

    iget-object v2, p0, Lr4/lj;->b:[Lr4/id;

    iget-object p1, p1, Lr4/lj;->b:[Lr4/id;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lr4/lj;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/lj;->b:[Lr4/id;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lr4/lj;->c:I

    :cond_0
    return v0
.end method

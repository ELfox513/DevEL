.class final Lnet/bytebuddy/jar/asm/Attribute$Set;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/jar/asm/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Set"
.end annotation


# static fields
.field private static final SIZE_INCREMENT:I = 0x6


# instance fields
.field private data:[Lnet/bytebuddy/jar/asm/Attribute;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    return-void
.end method

.method private add(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, 0x6

    new-array v2, v2, [Lnet/bytebuddy/jar/asm/Attribute;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method private contains(Lnet/bytebuddy/jar/asm/Attribute;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Attribute$Set;->contains(Lnet/bytebuddy/jar/asm/Attribute;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Attribute$Set;->add(Lnet/bytebuddy/jar/asm/Attribute;)V

    :cond_0
    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()[Lnet/bytebuddy/jar/asm/Attribute;
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    new-array v1, v0, [Lnet/bytebuddy/jar/asm/Attribute;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

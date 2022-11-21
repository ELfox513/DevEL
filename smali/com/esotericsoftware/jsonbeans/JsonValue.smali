.class public Lcom/esotericsoftware/jsonbeans/JsonValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;,
        Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;,
        Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/jsonbeans/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

.field public b:Ljava/lang/String;

.field public child:Lcom/esotericsoftware/jsonbeans/JsonValue;

.field public d:D

.field public k:J

.field public name:Ljava/lang/String;

.field public next:Lcom/esotericsoftware/jsonbeans/JsonValue;

.field public prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

.field public size:I


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->set(D)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->set(J)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->set(Z)V

    return-void
.end method

.method public static d(ILjava/lang/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(Lcom/esotericsoftware/jsonbeans/JsonValue;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->child()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isObject()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->next()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Lcom/esotericsoftware/jsonbeans/JsonValue;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->child()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->next()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public asBoolean()Z
    .locals 8

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-wide v6, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    iget-wide v4, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_6
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public asBooleanArray()[Z
    .locals 11

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    iget-wide v9, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    cmp-long v4, v9, v7

    if-eqz v4, :cond_0

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v9, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    cmp-long v4, v9, v7

    if-nez v4, :cond_0

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-nez v4, :cond_0

    goto :goto_1

    :cond_4
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_2
    aput-boolean v4, v0, v3

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public asByte()B
    .locals 6

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public asByteArray()[B
    .locals 10

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v4, v6

    :goto_1
    int-to-byte v4, v4

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    :goto_2
    aput-byte v4, v0, v3

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public asChar()C
    .locals 7

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v1, v0

    int-to-char v0, v1

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    return v2
.end method

.method public asCharArray()[C
    .locals 10

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_6

    sget-object v4, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_3

    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_2

    :cond_3
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v4, v6

    :goto_2
    int-to-char v4, v4

    goto :goto_3

    :cond_4
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    aput-char v4, v0, v3

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public asDouble()D
    .locals 5

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to double: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-double v0, v0

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    return-wide v0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public asDoubleArray()[D
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    sget-object v3, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to double: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-double v5, v5

    goto :goto_1

    :cond_3
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    :goto_1
    aput-wide v5, v0, v1

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asFloat()F
    .locals 5

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to float: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-float v0, v0

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-float v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public asFloatArray()[F
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    sget-object v3, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to float: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-float v3, v5

    goto :goto_1

    :cond_3
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-float v3, v5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :goto_1
    aput v3, v0, v1

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asInt()I
    .locals 6

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v1, v0

    return v1

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public asIntArray()[I
    .locals 10

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v4, v6

    goto :goto_1

    :cond_4
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_1
    aput v4, v0, v3

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asLong()J
    .locals 5

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    return-wide v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-long v0, v0

    return-wide v0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLongArray()[J
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    sget-object v3, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    const-wide/16 v7, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to long: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v7, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    goto :goto_1

    :cond_2
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-long v7, v5

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :cond_4
    :goto_1
    aput-wide v7, v0, v1

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asShort()S
    .locals 6

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v1, v0

    int-to-short v0, v1

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public asShortArray()[S
    .locals 10

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to short: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-int v4, v6

    :goto_1
    int-to-short v4, v4

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    :goto_2
    aput-short v4, v0, v3

    iget-object v1, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public asString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-string v0, "true"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    :goto_0
    return-object v0

    :cond_3
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    return-object v0
.end method

.method public asStringArray()[Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v2, :cond_6

    sget-object v3, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    const-string v3, "true"

    goto :goto_1

    :cond_2
    const-string v3, "false"

    goto :goto_1

    :cond_3
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-wide v5, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    :goto_1
    aput-object v3, v0, v1

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public child()Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-object v0
.end method

.method public get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asBoolean()Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asBoolean()Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asBoolean()Z

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getByte(I)B
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asByte()B

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asByte()B

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asByte()B

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getChar(I)C
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asChar()C

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asChar()C

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asChar()C

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getChild(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    return-object p1
.end method

.method public getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asDouble()D

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public getFloat(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asFloat()F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asFloat()F

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asFloat()F

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getInt(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asInt()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asInt()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asInt()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getLong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asLong()J

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public getShort(I)S
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asShort()S

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asShort()S

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asShort()S

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->getChild(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i(Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/StringBuilder;ILcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)V
    .locals 10

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isObject()Z

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x20

    const-string v3, ","

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->child()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "{}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_0
    invoke-static {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->e(Lcom/esotericsoftware/jsonbeans/JsonValue;)Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    :goto_0
    if-eqz v0, :cond_1

    const-string v6, "{\n"

    goto :goto_1

    :cond_1
    const-string v6, "{ "

    :goto_1
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->child()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v0, :cond_2

    invoke-static {p3, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->d(ILjava/lang/StringBuilder;)V

    :cond_2
    iget-object v7, p4, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;->outputType:Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-virtual {v6}, Lcom/esotericsoftware/jsonbeans/JsonValue;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/jsonbeans/OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {p0, v6, p2, v7, p4}, Lcom/esotericsoftware/jsonbeans/JsonValue;->i(Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/StringBuilder;ILcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)V

    invoke-virtual {v6}, Lcom/esotericsoftware/jsonbeans/JsonValue;->next()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v0, :cond_4

    const/16 v7, 0xa

    goto :goto_3

    :cond_4
    const/16 v7, 0x20

    :goto_3
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v5

    iget v8, p4, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v7, v8, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/esotericsoftware/jsonbeans/JsonValue;->next()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v6

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    sub-int/2addr p3, v4

    invoke-static {p3, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->d(ILjava/lang/StringBuilder;)V

    :cond_7
    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->child()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    if-nez v0, :cond_9

    const-string p1, "[]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_9
    invoke-static {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->e(Lcom/esotericsoftware/jsonbeans/JsonValue;)Z

    move-result v0

    xor-int/2addr v0, v4

    iget-boolean v5, p4, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;->wrapNumericArrays:Z

    if-nez v5, :cond_b

    invoke-static {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->g(Lcom/esotericsoftware/jsonbeans/JsonValue;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v5, 0x1

    :goto_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    :goto_6
    if-eqz v0, :cond_c

    const-string v7, "[\n"

    goto :goto_7

    :cond_c
    const-string v7, "[ "

    :goto_7
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->child()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v7

    :goto_8
    if-eqz v7, :cond_11

    if-eqz v0, :cond_d

    invoke-static {p3, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->d(ILjava/lang/StringBuilder;)V

    :cond_d
    add-int/lit8 v8, p3, 0x1

    invoke-virtual {p0, v7, p2, v8, p4}, Lcom/esotericsoftware/jsonbeans/JsonValue;->i(Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/StringBuilder;ILcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)V

    invoke-virtual {v7}, Lcom/esotericsoftware/jsonbeans/JsonValue;->next()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz v0, :cond_f

    const/16 v8, 0xa

    goto :goto_9

    :cond_f
    const/16 v8, 0x20

    :goto_9
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_10

    if-nez v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, p4, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_10

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v7}, Lcom/esotericsoftware/jsonbeans/JsonValue;->next()Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v7

    goto :goto_8

    :cond_11
    if-eqz v0, :cond_12

    sub-int/2addr p3, v4

    invoke-static {p3, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->d(ILjava/lang/StringBuilder;)V

    :cond_12
    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isString()Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p4, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;->outputType:Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/esotericsoftware/jsonbeans/OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_14
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_16

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asDouble()D

    move-result-wide p3

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asLong()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_15

    move-wide p3, v0

    :cond_15
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asLong()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_17
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_18

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_18
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_19

    const-string p1, "null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    return-void

    :cond_19
    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown object type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p2

    :goto_c
    goto :goto_b
.end method

.method public isArray()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoolean()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->booleanValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDouble()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->doubleValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLong()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->longValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->nullValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->doubleValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->longValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isObject()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->object:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->stringValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValue()Z
    .locals 3

    sget-object v0, Lcom/esotericsoftware/jsonbeans/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public iterator()Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;-><init>(Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->iterator()Lcom/esotericsoftware/jsonbeans/JsonValue$JsonIterator;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-object v0
.end method

.method public prettyPrint(Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->i(Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/StringBuilder;ILcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Lcom/esotericsoftware/jsonbeans/OutputType;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;-><init>()V

    iput-object p1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;->outputType:Lcom/esotericsoftware/jsonbeans/OutputType;

    iput p2, v0, Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->prettyPrint(Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prev()Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-object v0
.end method

.method public remove(I)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(I)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v0, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v0, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :cond_2
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v0, v1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v0, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :cond_2
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    return-object p1
.end method

.method public require(I)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public require(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public set(D)V
    .locals 0

    iput-wide p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    sget-object p1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->doubleValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-void
.end method

.method public set(J)V
    .locals 0

    iput-wide p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->d:D

    sget-object p1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->longValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object p1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->nullValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->stringValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    :goto_0
    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-void
.end method

.method public set(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->k:J

    sget-object p1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->booleanValue:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-void
.end method

.method public setPrev(Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-void
.end method

.method public setType(Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->minimal:Lcom/esotericsoftware/jsonbeans/OutputType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->prettyPrint(Lcom/esotericsoftware/jsonbeans/OutputType;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonValue;->a:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    return-object v0
.end method

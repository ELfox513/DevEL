.class public Lcom/badlogic/gdx/utils/JsonValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;,
        Lcom/badlogic/gdx/utils/JsonValue$ValueType;,
        Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public b:Ljava/lang/String;

.field public child:Lcom/badlogic/gdx/utils/JsonValue;

.field public d:D

.field public k:J

.field public name:Ljava/lang/String;

.field public next:Lcom/badlogic/gdx/utils/JsonValue;

.field public parent:Lcom/badlogic/gdx/utils/JsonValue;

.field public prev:Lcom/badlogic/gdx/utils/JsonValue;

.field public size:I


# direct methods
.method public constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Z)V

    return-void
.end method

.method public static d(ILcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(ILjava/io/Writer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 1

    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static i(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 1

    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An object child requires a name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p0, p1, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-void

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_3

    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->addChild(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asBoolean()Z
    .locals 8

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    iget-wide v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public asBooleanArray()[Z
    .locals 11

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v9, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v9, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    cmp-long v4, v9, v7

    if-nez v4, :cond_0

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-nez v4, :cond_0

    goto :goto_1

    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_2
    aput-boolean v4, v0, v3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public asByteArray()[B
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v4, v6

    :goto_1
    int-to-byte v4, v4

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    :goto_2
    aput-byte v4, v0, v3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v1, v0

    int-to-char v0, v1

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    return v2
.end method

.method public asCharArray()[C
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_6

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_2

    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v4, v6

    :goto_2
    int-to-char v4, v4

    goto :goto_3

    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    aput-char v4, v0, v3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-double v0, v0

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    return-wide v0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public asDoubleArray()[D
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-double v5, v5

    goto :goto_1

    :cond_3
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    :goto_1
    aput-wide v5, v0, v1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-float v0, v0

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-float v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public asFloatArray()[F
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-float v3, v5

    goto :goto_1

    :cond_3
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-float v3, v5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :goto_1
    aput v3, v0, v1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v1, v0

    return v1

    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public asIntArray()[I
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v4, v6

    goto :goto_1

    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_1
    aput v4, v0, v3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-long v0, v0

    return-wide v0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLongArray()[J
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v7, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    goto :goto_1

    :cond_2
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-long v7, v5

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :cond_4
    :goto_1
    aput-wide v7, v0, v1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v1, v0

    int-to-short v0, v1

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public asShortArray()[S
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-int v4, v6

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-int v4, v6

    :goto_1
    int-to-short v4, v4

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    :goto_2
    aput-short v4, v0, v3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

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

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

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
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    return-object v0
.end method

.method public asStringArray()[Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_8

    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

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

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    const-string v3, "true"

    goto :goto_1

    :cond_2
    const-string v3, "false"

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    :goto_1
    aput-object v3, v0, v1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

.method public child()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public get(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getByte(I)B
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getChar(I)C
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 0
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    return-object p1
.end method

.method public getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public getFloat(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getInt(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getLong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public getShort(I)S
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

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
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isArray()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLong()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

.method public iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->a:Lcom/badlogic/gdx/utils/JsonValue;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 4

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_0

    const-string p1, "{}"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    const/16 v0, 0x7b

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->k(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_4

    const-string p1, "[]"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->k(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_5

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_5
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_9

    move-wide v0, v2

    :cond_9
    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p1, "null"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_2
    return-void

    :cond_d
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown object type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public final l(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .locals 11

    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    const-string p1, "{}"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->g(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v6

    :goto_0
    if-eqz v1, :cond_1

    const-string v7, "{\n"

    goto :goto_1

    :cond_1
    const-string v7, "{ "

    :goto_1
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v7, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz v7, :cond_7

    if-eqz v1, :cond_2

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->d(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_2
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v8, ": "

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v8, p3, 0x1

    invoke-virtual {p0, v7, p2, v8, p4}, Lcom/badlogic/gdx/utils/JsonValue;->l(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_3

    sget-object v8, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v8, :cond_4

    :cond_3
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v8, :cond_4

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_4
    if-eqz v1, :cond_5

    const/16 v8, 0xa

    goto :goto_3

    :cond_5
    const/16 v8, 0x20

    :goto_3
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_6

    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    sub-int/2addr p3, v5

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->d(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_8
    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    :cond_9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_a

    const-string p1, "[]"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    :cond_a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->g(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    iget-boolean v6, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->wrapNumericArrays:Z

    if-nez v6, :cond_c

    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->i(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v6, 0x1

    :goto_5
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v7

    :goto_6
    if-eqz v1, :cond_d

    const-string v8, "[\n"

    goto :goto_7

    :cond_d
    const-string v8, "[ "

    :goto_7
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v8, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_8
    if-eqz v8, :cond_13

    if-eqz v1, :cond_e

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->d(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_e
    add-int/lit8 v9, p3, 0x1

    invoke-virtual {p0, v8, p2, v9, p4}, Lcom/badlogic/gdx/utils/JsonValue;->l(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_f

    sget-object v9, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v9, :cond_10

    :cond_f
    iget-object v9, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v9, :cond_10

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_10
    if-eqz v1, :cond_11

    const/16 v9, 0xa

    goto :goto_9

    :cond_11
    const/16 v9, 0x20

    :goto_9
    invoke-virtual {p2, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v6, :cond_12

    if-nez v1, :cond_12

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v7

    iget v10, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v9, v10, :cond_12

    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    goto :goto_6

    :cond_12
    iget-object v8, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_8

    :cond_13
    if-eqz v1, :cond_14

    sub-int/2addr p3, v5

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->d(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_14
    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    :cond_15
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result p3

    if-eqz p3, :cond_16

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_18

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p3

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_17

    move-wide p3, v0

    :cond_17
    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    :cond_18
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_19

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    :cond_19
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    :cond_1a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_1b

    const-string p1, "null"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_a
    return-void

    :cond_1b
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown object type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p2

    :goto_c
    goto :goto_b
.end method

.method public final m(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .locals 7

    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    const-string p1, "{}"

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_8

    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->g(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v6, 0x6

    if-le v1, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    const-string v6, "{\n"

    goto :goto_2

    :cond_3
    const-string v6, "{ "

    :goto_2
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_3
    if-eqz p1, :cond_8

    if-eqz v1, :cond_4

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->e(ILjava/io/Writer;)V

    :cond_4
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, p1, p2, v6, p4}, Lcom/badlogic/gdx/utils/JsonValue;->m(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_5

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v6, :cond_6

    :cond_5
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v6, :cond_6

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_6
    if-eqz v1, :cond_7

    const/16 v6, 0xa

    goto :goto_4

    :cond_7
    const/16 v6, 0x20

    :goto_4
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    sub-int/2addr p3, v5

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->e(ILjava/io/Writer;)V

    :cond_9
    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_b

    const-string p1, "[]"

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_8

    :cond_b
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->g(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_c

    const-string v6, "[\n"

    goto :goto_5

    :cond_c
    const-string v6, "[ "

    :goto_5
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_6
    if-eqz p1, :cond_11

    if-eqz v1, :cond_d

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->e(ILjava/io/Writer;)V

    :cond_d
    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, p1, p2, v6, p4}, Lcom/badlogic/gdx/utils/JsonValue;->m(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_e

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v6, :cond_f

    :cond_e
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v6, :cond_f

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_f
    if-eqz v1, :cond_10

    const/16 v6, 0xa

    goto :goto_7

    :cond_10
    const/16 v6, 0x20

    :goto_7
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_6

    :cond_11
    if-eqz v1, :cond_12

    sub-int/2addr p3, v5

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->e(ILjava/io/Writer;)V

    :cond_12
    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_8

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_16

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p3

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_15

    move-wide p3, v0

    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    :cond_16
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    :cond_17
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_18

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    :cond_18
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_19

    const-string p1, "null"

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :goto_8
    return-void

    :cond_19
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown object type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p2

    :goto_a
    goto :goto_9
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parent()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/JsonValue;->l(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    iput p2, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;Ljava/io/Writer;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 p1, 0x0

    invoke-virtual {p0, p0, p2, p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->m(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    return-void
.end method

.method public prev()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public remove(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    :cond_2
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    :cond_2
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return-object p1
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v2, :cond_1

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    :cond_1
    :goto_0
    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public require(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(DLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(JLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->d:D

    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->k:J

    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/utils/JsonValue;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public setPrev(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/utils/JsonValue;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public setType(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p0, v0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->k(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "[]"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_1

    const-string v0, "{}"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v0, :cond_6

    if-ne v0, p0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->a:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method

.class Lcom/prineside/luaj/Globals$StrReader;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrReader"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/Globals$StrReader;->b:I

    iput-object p1, p0, Lcom/prineside/luaj/Globals$StrReader;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/Globals$StrReader;->d:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/Globals$StrReader;->d:I

    iput v0, p0, Lcom/prineside/luaj/Globals$StrReader;->b:I

    return-void
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/Globals$StrReader;->b:I

    iget v1, p0, Lcom/prineside/luaj/Globals$StrReader;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/Globals$StrReader;->a:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/prineside/luaj/Globals$StrReader;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([CII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lcom/prineside/luaj/Globals$StrReader;->b:I

    iget v2, p0, Lcom/prineside/luaj/Globals$StrReader;->d:I

    if-ge v1, v2, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lcom/prineside/luaj/Globals$StrReader;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/prineside/luaj/Globals$StrReader;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/luaj/Globals$StrReader;->b:I

    goto :goto_0

    :cond_0
    if-gtz v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_1
    return v0
.end method

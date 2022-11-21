.class Lcom/prineside/luaj/Globals$UTF8Stream;
.super Lcom/prineside/luaj/Globals$AbstractBufferedStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTF8Stream"
.end annotation


# instance fields
.field public final k:[C

.field public final p:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lcom/prineside/luaj/Globals$AbstractBufferedStream;-><init>(I)V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->k:[C

    iput-object p1, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->p:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->p:Ljava/io/Reader;

    iget-object v1, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->k:[C

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->p:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-gez v0, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->k:[C

    int-to-char v0, v0

    aput-char v0, v1, v2

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->k:[C

    iget-object v3, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    iput v2, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    invoke-static {v1, v0, v3, v2}, Lcom/prineside/luaj/LuaString;->encodeToUtf8([CI[BI)I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Globals$UTF8Stream;->p:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

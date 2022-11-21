.class public Lcom/badlogic/gdx/utils/XmlWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/Writer;

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public indent:I

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->b:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->b:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v2
.end method

.method public element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->d:Ljava/lang/String;

    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/XmlWriter;->text(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object p1

    return-object p1
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public pop()Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->d:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const-string v2, "/>\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->c()V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlWriter;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    const-string v2, ">\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->k:Z

    return-object p0
.end method

.method public text(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->d()Z

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->k:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->c()V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->k:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_3
    return-object p0
.end method

.method public write([CII)V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->d()Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

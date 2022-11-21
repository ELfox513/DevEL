.class public Lcom/badlogic/gdx/utils/SerializationException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/utils/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/utils/SerializationException;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public addTrace(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "info cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public causedBy(Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p0, p0, p1}, Lcom/badlogic/gdx/utils/SerializationException;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    const-string v1, "Serialization trace:"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SerializationException;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

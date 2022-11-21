.class public Lcom/esotericsoftware/jsonbeans/Json;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;
    }
.end annotation


# instance fields
.field public a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Lcom/esotericsoftware/jsonbeans/OutputType;

.field public final e:Lcom/esotericsoftware/jsonbeans/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/esotericsoftware/jsonbeans/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/esotericsoftware/jsonbeans/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/esotericsoftware/jsonbeans/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/jsonbeans/JsonSerializer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/esotericsoftware/jsonbeans/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/esotericsoftware/jsonbeans/JsonSerializer;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "class"

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->c:Z

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->f:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->g:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->h:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->i:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->minimal:Lcom/esotericsoftware/jsonbeans/OutputType;

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->d:Lcom/esotericsoftware/jsonbeans/OutputType;

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/jsonbeans/OutputType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "class"

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->c:Z

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->f:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->g:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->h:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    new-instance v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->i:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->d:Lcom/esotericsoftware/jsonbeans/OutputType;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/ObjectMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-direct {v1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;

    invoke-direct {v6, v4}, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {v1, v5, v6}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addClassTag(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->f:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->g:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p2, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9

    const-string v0, ")"

    const-string v1, " ("

    iget-boolean v2, p0, Lcom/esotericsoftware/jsonbeans/Json;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/Json;->i:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->i:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v3, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/Json;->a(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/ObjectMap;

    move-result-object v3

    :cond_2
    iget v4, v3, Lcom/esotericsoftware/jsonbeans/ObjectMap;->size:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/esotericsoftware/jsonbeans/Json;->i:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v5, p1, v4}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->values()Lcom/esotericsoftware/jsonbeans/ObjectMap$Values;

    move-result-object v3

    invoke-virtual {v3}, Lcom/esotericsoftware/jsonbeans/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;

    iget-object v6, v6, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->a:Ljava/lang/reflect/Field;

    add-int/lit8 v7, v5, 0x1

    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v5
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/esotericsoftware/jsonbeans/JsonException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v3, v2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    new-instance v3, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    return-object v4

    :catch_3
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->i:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1, v3}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v1}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v1, p2}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/File;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/InputStream;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/Reader;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/File;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/InputStream;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/Reader;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;[CII)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "[CII)TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p3, p4, p5}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse([CII)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;[CII)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[CII)TT;"
        }
    .end annotation

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse([CII)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->f:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/esotericsoftware/jsonbeans/JsonSerializer<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->h:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/esotericsoftware/jsonbeans/JsonSerializer;

    return-object p1
.end method

.method public getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->g:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWriter()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    return-object v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    nop

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class cannot be created (non-static member class): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered JSON object when expected array of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    :goto_0
    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public prettyPrint(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/Json;->prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/jsonbeans/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/Object;Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/jsonbeans/Json;->prettyPrint(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->d:Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-virtual {p1, v0, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->prettyPrint(Lcom/esotericsoftware/jsonbeans/OutputType;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonReader;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->prettyPrint(Lcom/esotericsoftware/jsonbeans/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/jsonbeans/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/jsonbeans/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/jsonbeans/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/jsonbeans/Json;->a(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/ObjectMap;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p2}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_3

    iget-object p2, v1, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p5, p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-nez p4, :cond_2

    iget-object p4, v1, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->b:Ljava/lang/Class;

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p0, p5, p4, p3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/esotericsoftware/jsonbeans/JsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw p3

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p3, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error accessing field: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_3
    new-instance p1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Field not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFields(Ljava/lang/Object;Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/jsonbeans/Json;->a(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/ObjectMap;

    move-result-object v1

    :cond_0
    iget-object p2, p2, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;

    const-string v3, ")"

    const-string v4, " ("

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/esotericsoftware/jsonbeans/Json;->k:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v5, v2, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->a:Ljava/lang/reflect/Field;

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->b:Ljava/lang/Class;

    invoke-virtual {p0, v6, v2, p2}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/esotericsoftware/jsonbeans/JsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object p2, p2, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error accessing field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    return-void
.end method

.method public readValue(Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-class v4, Ljava/lang/Enum;

    const-class v5, Ljava/lang/Character;

    const-class v6, Ljava/lang/Byte;

    const-class v7, Ljava/lang/Short;

    const-class v8, Ljava/lang/Double;

    const-class v9, Ljava/lang/Long;

    const-class v10, Ljava/lang/Boolean;

    const-class v11, Ljava/lang/Float;

    const-class v12, Ljava/lang/Integer;

    const-class v13, Ljava/lang/String;

    const/4 v14, 0x0

    if-nez v3, :cond_0

    return-object v14

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isObject()Z

    move-result v15

    if-eqz v15, :cond_e

    iget-object v15, v1, Lcom/esotericsoftware/jsonbeans/Json;->b:Ljava/lang/String;

    if-nez v15, :cond_1

    move-object v15, v14

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v15, v14}, Lcom/esotericsoftware/jsonbeans/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_0
    if-eqz v15, :cond_3

    iget-object v0, v1, Lcom/esotericsoftware/jsonbeans/Json;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->remove(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    :try_start_0
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v14, v0

    iget-object v0, v1, Lcom/esotericsoftware/jsonbeans/Json;->f:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, v15}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v0, v14}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_c

    if-eq v0, v13, :cond_b

    if-eq v0, v12, :cond_b

    if-eq v0, v10, :cond_b

    if-eq v0, v11, :cond_b

    if-eq v0, v9, :cond_b

    if-eq v0, v8, :cond_b

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_b

    if-eq v0, v5, :cond_b

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/Json;->h:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v4, v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/esotericsoftware/jsonbeans/JsonSerializer;

    if-eqz v4, :cond_5

    invoke-interface {v4, v1, v3, v0}, Lcom/esotericsoftware/jsonbeans/JsonSerializer;->read(Lcom/esotericsoftware/jsonbeans/Json;Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/esotericsoftware/jsonbeans/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/esotericsoftware/jsonbeans/JsonSerializable;

    if-eqz v4, :cond_6

    move-object v2, v0

    check-cast v2, Lcom/esotericsoftware/jsonbeans/JsonSerializable;

    invoke-interface {v2, v1, v3}, Lcom/esotericsoftware/jsonbeans/JsonSerializable;->read(Lcom/esotericsoftware/jsonbeans/Json;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-object v0

    :cond_6
    instance-of v4, v0, Ljava/util/HashMap;

    if-eqz v4, :cond_8

    check-cast v0, Ljava/util/HashMap;

    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_2

    :cond_7
    return-object v0

    :cond_8
    instance-of v4, v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-eqz v4, :cond_a

    check-cast v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_3

    :cond_9
    return-object v0

    :cond_a
    invoke-virtual {v1, v0, v3}, Lcom/esotericsoftware/jsonbeans/Json;->readFields(Ljava/lang/Object;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-object v0

    :cond_b
    :goto_4
    const-string v2, "value"

    invoke-virtual {v1, v2, v0, v3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v2, v1, Lcom/esotericsoftware/jsonbeans/Json;->j:Lcom/esotericsoftware/jsonbeans/JsonSerializer;

    if-eqz v2, :cond_d

    invoke-interface {v2, v1, v3, v0}, Lcom/esotericsoftware/jsonbeans/JsonSerializer;->read(Lcom/esotericsoftware/jsonbeans/Json;Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v3

    :cond_e
    if-eqz v0, :cond_f

    iget-object v14, v1, Lcom/esotericsoftware/jsonbeans/Json;->h:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v14, v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/esotericsoftware/jsonbeans/JsonSerializer;

    if-eqz v14, :cond_f

    invoke-interface {v14, v1, v3, v0}, Lcom/esotericsoftware/jsonbeans/JsonSerializer;->read(Lcom/esotericsoftware/jsonbeans/Json;Lcom/esotericsoftware/jsonbeans/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isArray()Z

    move-result v14

    const-string v15, ")"

    move-object/from16 v16, v4

    const-string v4, " ("

    move-object/from16 v17, v5

    const-string v5, "Unable to convert value to required type: "

    move-object/from16 v18, v10

    const/4 v10, 0x0

    if-eqz v14, :cond_18

    if-eqz v0, :cond_14

    const-class v6, Ljava/lang/Object;

    if-eq v0, v6, :cond_14

    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v2, :cond_11

    move-object v2, v0

    :cond_11
    iget v4, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_5
    if-eqz v3, :cond_12

    add-int/lit8 v4, v10, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v10, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    move v10, v4

    goto :goto_5

    :cond_12
    return-object v0

    :cond_13
    new-instance v2, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    :goto_6
    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/esotericsoftware/jsonbeans/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_8

    :cond_16
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_9
    if-eqz v3, :cond_17

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_9

    :cond_17
    return-object v0

    :cond_18
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz v0, :cond_24

    :try_start_1
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_24

    if-ne v0, v11, :cond_19

    goto :goto_e

    :cond_19
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_23

    if-ne v0, v12, :cond_1a

    goto :goto_d

    :cond_1a
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_22

    if-ne v0, v9, :cond_1b

    goto :goto_c

    :cond_1b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_21

    if-ne v0, v8, :cond_1c

    goto :goto_b

    :cond_1c
    if-ne v0, v13, :cond_1d

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_20

    if-ne v0, v7, :cond_1e

    goto :goto_a

    :cond_1e
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1f

    if-ne v0, v6, :cond_25

    :cond_1f
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_20
    :goto_a
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_21
    :goto_b
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asDouble()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_22
    :goto_c
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asLong()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_23
    :goto_d
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_24
    :goto_e
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_25
    new-instance v2, Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_26
    move-object v2, v3

    :goto_f
    invoke-virtual {v2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz v0, :cond_27

    :try_start_2
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v0, v3, :cond_27

    move-object/from16 v3, v18

    if-ne v0, v3, :cond_28

    goto :goto_10

    :catch_2
    move-object/from16 v3, v18

    goto :goto_11

    :cond_27
    move-object/from16 v3, v18

    :goto_10
    :try_start_3
    invoke-virtual {v2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asBoolean()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    :cond_28
    :goto_11
    new-instance v14, Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-virtual {v2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    goto :goto_12

    :cond_29
    move-object/from16 v3, v18

    :goto_12
    invoke-virtual {v2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isString()Z

    move-result v14

    if-eqz v14, :cond_3f

    invoke-virtual {v2}, Lcom/esotericsoftware/jsonbeans/JsonValue;->asString()Ljava/lang/String;

    move-result-object v14

    if-eqz v0, :cond_3e

    if-ne v0, v13, :cond_2a

    goto/16 :goto_1b

    :cond_2a
    :try_start_4
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v13, :cond_35

    if-ne v0, v12, :cond_2b

    goto :goto_17

    :cond_2b
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v12, :cond_34

    if-ne v0, v11, :cond_2c

    goto :goto_16

    :cond_2c
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v11, :cond_33

    if-ne v0, v9, :cond_2d

    goto :goto_15

    :cond_2d
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v9, :cond_32

    if-ne v0, v8, :cond_2e

    goto :goto_14

    :cond_2e
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v8, :cond_31

    if-ne v0, v7, :cond_2f

    goto :goto_13

    :cond_2f
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v7, :cond_30

    if-ne v0, v6, :cond_36

    :cond_30
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_31
    :goto_13
    invoke-static {v14}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_32
    :goto_14
    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_33
    :goto_15
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_34
    :goto_16
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_35
    :goto_17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    :catch_4
    nop

    :cond_36
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v6, :cond_3d

    if-ne v0, v3, :cond_37

    goto :goto_1a

    :cond_37
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_3c

    move-object/from16 v3, v17

    if-ne v0, v3, :cond_38

    goto :goto_19

    :cond_38
    move-object/from16 v3, v16

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    array-length v6, v3

    :goto_18
    if-ge v10, v6, :cond_3a

    aget-object v7, v3, v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    aget-object v0, v3, v10

    return-object v0

    :cond_39
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_3a
    const-class v3, Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_3b

    return-object v14

    :cond_3b
    new-instance v3, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3c
    :goto_19
    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_3d
    :goto_1a
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3e
    :goto_1b
    return-object v14

    :cond_3f
    const/4 v2, 0x0

    return-object v2
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "TT;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p4}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p4, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "TT;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p5, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p4, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->get(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultSerializer(Lcom/esotericsoftware/jsonbeans/JsonSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->j:Lcom/esotericsoftware/jsonbeans/JsonSerializer;

    return-void
.end method

.method public setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/Json;->a(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/ObjectMap;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;

    if-eqz v0, :cond_1

    iput-object p3, v0, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->b:Ljava/lang/Class;

    return-void

    :cond_1
    new-instance p3, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setIgnoreUnknownFields(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->k:Z

    return-void
.end method

.method public setOutputType(Lcom/esotericsoftware/jsonbeans/OutputType;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->d:Lcom/esotericsoftware/jsonbeans/OutputType;

    return-void
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/esotericsoftware/jsonbeans/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/jsonbeans/JsonSerializer<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->h:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->b:Ljava/lang/String;

    return-void
.end method

.method public setUsePrototypes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->c:Z

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    instance-of v0, p1, Lcom/esotericsoftware/jsonbeans/JsonWriter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->d:Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->setOutputType(Lcom/esotericsoftware/jsonbeans/OutputType;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/File;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/File;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/esotericsoftware/jsonbeans/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing file: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    throw p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    .locals 0

    invoke-virtual {p0, p4}, Lcom/esotericsoftware/jsonbeans/Json;->setWriter(Ljava/io/Writer;)V

    const/4 p4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    iput-object p4, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    if-eqz p2, :cond_1

    :try_start_2
    iget-object p2, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {p2}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    iput-object p4, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    throw p1
.end method

.method public writeArrayEnd()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->pop()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->array()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->array()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/esotericsoftware/jsonbeans/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/esotericsoftware/jsonbeans/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/jsonbeans/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/jsonbeans/Json;->a(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/ObjectMap;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p2}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_2

    iget-object p2, v1, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->a:Ljava/lang/reflect/Field;

    if-nez p4, :cond_1

    iget-object p4, v1, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->b:Ljava/lang/Class;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v1, p3}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p4}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/esotericsoftware/jsonbeans/JsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw p3

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p3, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error accessing field: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    new-instance p1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Field not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFields(Ljava/lang/Object;)V
    .locals 11

    const-string v0, ")"

    const-string v1, " ("

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/jsonbeans/Json;->c(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/esotericsoftware/jsonbeans/Json;->e:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v4, v2}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-nez v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/jsonbeans/Json;->a(Ljava/lang/Class;)Lcom/esotericsoftware/jsonbeans/ObjectMap;

    move-result-object v4

    :cond_0
    const/4 v5, 0x0

    new-instance v6, Lcom/esotericsoftware/jsonbeans/ObjectMap$Values;

    invoke-direct {v6, v4}, Lcom/esotericsoftware/jsonbeans/ObjectMap$Values;-><init>(Lcom/esotericsoftware/jsonbeans/ObjectMap;)V

    invoke-virtual {v6}, Lcom/esotericsoftware/jsonbeans/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;

    iget-object v7, v6, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->a:Ljava/lang/reflect/Field;

    :try_start_0
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v3, :cond_3

    add-int/lit8 v9, v5, 0x1

    aget-object v5, v3, v5

    if-nez v8, :cond_1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v5, v9

    goto :goto_0

    :cond_2
    move v5, v9

    :cond_3
    iget-object v9, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    iget-object v6, v6, Lcom/esotericsoftware/jsonbeans/Json$FieldMetadata;->b:Ljava/lang/Class;

    invoke-virtual {p0, v8, v9, v6}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/esotericsoftware/jsonbeans/JsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v3, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;->addTrace(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance v3, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    return-void
.end method

.method public writeObjectEnd()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->pop()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->object()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->object()Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/jsonbeans/Json;->writeType(Ljava/lang/Class;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeObjectStart(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeObjectStart(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeType(Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->g:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/Json;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p1, v0, v0}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-class v4, Ljava/lang/Character;

    const-class v5, Ljava/lang/Byte;

    const-class v6, Ljava/lang/Short;

    const-class v7, Ljava/lang/Double;

    const-class v8, Ljava/lang/Long;

    const-class v9, Ljava/lang/Float;

    const-class v10, Ljava/lang/Boolean;

    const-class v11, Ljava/lang/Integer;

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->value(Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_18

    :cond_1
    if-eq v2, v12, :cond_18

    if-eq v2, v11, :cond_18

    if-eq v2, v10, :cond_18

    if-eq v2, v9, :cond_18

    if-eq v2, v8, :cond_18

    if-eq v2, v7, :cond_18

    if-eq v2, v6, :cond_18

    if-eq v2, v5, :cond_18

    if-ne v2, v4, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "value"

    if-nez v15, :cond_17

    if-eq v14, v12, :cond_17

    if-eq v14, v11, :cond_17

    if-eq v14, v10, :cond_17

    if-eq v14, v9, :cond_17

    if-eq v14, v8, :cond_17

    if-eq v14, v7, :cond_17

    if-eq v14, v6, :cond_17

    if-eq v14, v5, :cond_17

    if-ne v14, v4, :cond_3

    goto/16 :goto_8

    :cond_3
    :try_start_1
    instance-of v4, v0, Lcom/esotericsoftware/jsonbeans/JsonSerializable;

    if-eqz v4, :cond_4

    invoke-virtual {v1, v14, v2}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/esotericsoftware/jsonbeans/JsonSerializable;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/jsonbeans/JsonSerializable;->write(Lcom/esotericsoftware/jsonbeans/Json;)V

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectEnd()V

    return-void

    :cond_4
    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/Json;->h:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v4, v14}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/esotericsoftware/jsonbeans/JsonSerializer;

    if-eqz v4, :cond_5

    invoke-interface {v4, v1, v0, v2}, Lcom/esotericsoftware/jsonbeans/JsonSerializer;->write(Lcom/esotericsoftware/jsonbeans/Json;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void

    :cond_5
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_9

    if-eqz v2, :cond_7

    if-eq v14, v2, :cond_7

    const-class v4, Ljava/util/ArrayList;

    if-ne v14, v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialization of a Collection other than the known type is not supported.\nKnown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nActual type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeArrayStart()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeArrayEnd()V

    return-void

    :cond_9
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v3, :cond_a

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    :cond_a
    move-object v2, v3

    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeArrayStart()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_b

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v2, v6}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeArrayEnd()V

    return-void

    :cond_c
    instance-of v4, v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    if-eqz v4, :cond_f

    if-nez v2, :cond_d

    const-class v2, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    :cond_d
    invoke-virtual {v1, v14, v2}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap;->entries()Lcom/esotericsoftware/jsonbeans/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;

    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iget-object v5, v2, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/jsonbeans/Json;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iget-object v2, v2, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectEnd()V

    return-void

    :cond_f
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_12

    if-nez v2, :cond_10

    const-class v2, Ljava/util/HashMap;

    :cond_10
    invoke-virtual {v1, v14, v2}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, v1, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/jsonbeans/Json;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_5

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectEnd()V

    return-void

    :cond_12
    const-class v3, Ljava/lang/Enum;

    invoke-virtual {v3, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v2, :cond_14

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_6

    :cond_13
    iget-object v2, v1, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->value(Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    goto :goto_7

    :cond_14
    :goto_6
    invoke-virtual {v14}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v2, v1, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v2, v13}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iget-object v2, v1, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->value(Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectEnd()V

    :goto_7
    return-void

    :cond_16
    invoke-virtual {v1, v14, v2}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual/range {p0 .. p1}, Lcom/esotericsoftware/jsonbeans/Json;->writeFields(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectEnd()V

    return-void

    :cond_17
    :goto_8
    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v13, v0}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/Json;->writeObjectEnd()V

    return-void

    :cond_18
    :goto_9
    iget-object v2, v1, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->value(Ljava/lang/Object;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_a
    new-instance v2, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :goto_b
    throw v2

    :goto_c
    goto :goto_b
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p2, p1, p1}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/Json;->a:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/jsonbeans/JsonWriter;->name(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

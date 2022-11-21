.class public Lcom/badlogic/gdx/utils/Json;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Json$Serializable;,
        Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;,
        Lcom/badlogic/gdx/utils/Json$Serializer;,
        Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/JsonWriter;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/badlogic/gdx/utils/Json$Serializer;

.field public final l:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Json$FieldMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/Json$Serializer;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final q:[Ljava/lang/Object;

.field public final r:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "class"

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->c:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->i:Z

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->l:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->m:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->n:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->o:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->q:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->r:[Ljava/lang/Object;

    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->d:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "class"

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->c:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->i:Z

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->l:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->m:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->n:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->o:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Json;->q:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->r:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->d:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public addClassTag(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->m:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->n:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 12
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    const-string v0, ")"

    const-string v1, " ("

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Json;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v3

    iget v4, v3, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, p1, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/OrderedMap;->orderedKeys()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    iget-boolean v10, p0, Lcom/badlogic/gdx/utils/Json;->g:Z

    if-eqz v10, :cond_2

    iget-boolean v10, v9, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->c:Z

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, v9, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->a:Lcom/badlogic/gdx/utils/reflect/Field;

    add-int/lit8 v10, v8, 0x1

    :try_start_1
    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v4, v8
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v10

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    return-object v4

    :catch_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public copyFields(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    iget-object v4, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->a:Lcom/badlogic/gdx/utils/reflect/Field;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v2, v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->a:Lcom/badlogic/gdx/utils/reflect/Field;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error copying field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "To object is missing field: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Json$FieldMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->l:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v1, p1

    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getDeclaredFields(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Field;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/reflect/Field;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->isTransient()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->isSynthetic()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_6

    :try_start_0
    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    invoke-direct {v7, v5}, Lcom/badlogic/gdx/utils/Json$FieldMetadata;-><init>(Lcom/badlogic/gdx/utils/reflect/Field;)V

    invoke-virtual {v0, v6, v7}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/badlogic/gdx/utils/OrderedMap;->y:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/utils/Json;->g(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->l:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    nop

    const-class v2, Ljava/lang/Enum;

    invoke-static {v2, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

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

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isMemberClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isStaticClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class cannot be created (non-static member class): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered JSON object when expected array of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;[CII)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/Class;[CII)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[CII)TT;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->sort()V

    :cond_0
    return-void
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->m:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public getIgnoreUnknownFields()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->f:Z

    return v0
.end method

.method public getSerializer(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Json$Serializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Json$Serializer<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->o:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Json$Serializer;

    return-object p1
.end method

.method public getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->n:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getWriter()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->d:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readField(Ljava/lang/Object;Lcom/badlogic/gdx/utils/reflect/Field;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-string v0, ")"

    const-string v1, " ("

    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p0, p5, p4, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p4, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p4, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw p4

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error accessing field: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 8
    .param p4    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->a:Lcom/badlogic/gdx/utils/reflect/Field;

    if-nez p4, :cond_0

    iget-object p4, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->b:Ljava/lang/Class;

    :cond_0
    move-object v6, p4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Lcom/badlogic/gdx/utils/reflect/Field;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Field not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    const-string v3, ")"

    const-string v4, " ("

    if-nez v2, :cond_2

    iget-object v2, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Json;->f:Z

    if-nez v2, :cond_4

    iget-object v2, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/utils/Json;->e(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/Json;->g:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/Json;->h:Z

    if-nez v5, :cond_3

    iget-boolean v5, v2, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->c:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v2, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->a:Lcom/badlogic/gdx/utils/reflect/Field;

    :try_start_0
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->b:Ljava/lang/Class;

    invoke-virtual {p0, v6, v2, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, p1, v2}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error accessing field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    return-void
.end method

.method public readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 21
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-class v3, Ljava/lang/Enum;

    const-class v4, Ljava/lang/Character;

    const-class v5, Ljava/lang/Byte;

    const-class v6, Ljava/lang/Short;

    const-class v7, Ljava/lang/Double;

    const-class v8, Ljava/lang/Long;

    const-class v9, Ljava/lang/Boolean;

    const-class v10, Ljava/lang/String;

    const-class v11, Ljava/lang/Integer;

    const-class v12, Ljava/lang/Float;

    const/4 v13, 0x0

    if-nez v2, :cond_0

    return-object v13

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v14

    const-string v15, ")"

    const-string v13, " ("

    if-eqz v14, :cond_1f

    iget-object v14, v1, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    if-nez v14, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_0
    if-eqz v14, :cond_2

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/utils/Json;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {v14}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    move-object/from16 v0, p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v3, v1, Lcom/badlogic/gdx/utils/Json;->k:Lcom/badlogic/gdx/utils/Json$Serializer;

    if-eqz v3, :cond_4

    invoke-interface {v3, v1, v2, v0}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    iget-object v14, v1, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    if-eqz v14, :cond_7

    const-class v14, Ljava/util/Collection;

    invoke-static {v14, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "items"

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v14, p2

    goto/16 :goto_d

    :cond_6
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert object to collection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    iget-object v13, v1, Lcom/badlogic/gdx/utils/Json;->o:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/utils/Json$Serializer;

    if-eqz v13, :cond_8

    invoke-interface {v13, v1, v2, v0}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    if-eq v0, v10, :cond_1e

    if-eq v0, v11, :cond_1e

    if-eq v0, v9, :cond_1e

    if-eq v0, v12, :cond_1e

    if-eq v0, v8, :cond_1e

    if-eq v0, v7, :cond_1e

    if-eq v0, v6, :cond_1e

    if-eq v0, v5, :cond_1e

    if-eq v0, v4, :cond_1e

    invoke-static {v3, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    if-eqz v3, :cond_a

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-interface {v3, v1, v2}, Lcom/badlogic/gdx/utils/Json$Serializable;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :cond_a
    instance-of v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v3, :cond_c

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz v2, :cond_b

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    move-object/from16 v14, p2

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_b
    return-object v0

    :cond_c
    move-object/from16 v14, p2

    instance-of v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    if-eqz v3, :cond_e

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_3
    if-eqz v2, :cond_d

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v11, v4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3

    :cond_d
    return-object v0

    :cond_e
    instance-of v3, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    if-eqz v3, :cond_10

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_4
    if-eqz v2, :cond_f

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v12, v4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->put(Ljava/lang/Object;F)V

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4

    :cond_f
    return-object v0

    :cond_10
    instance-of v3, v0, Lcom/badlogic/gdx/utils/ObjectSet;

    const-string v4, "values"

    if-eqz v3, :cond_12

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_11

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_5

    :cond_11
    return-object v0

    :cond_12
    instance-of v3, v0, Lcom/badlogic/gdx/utils/IntMap;

    if-eqz v3, :cond_14

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_6
    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_6

    :cond_13
    return-object v0

    :cond_14
    instance-of v3, v0, Lcom/badlogic/gdx/utils/LongMap;

    if-eqz v3, :cond_16

    check-cast v0, Lcom/badlogic/gdx/utils/LongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_7
    if-eqz v2, :cond_15

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1, v14, v5, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_7

    :cond_15
    return-object v0

    :cond_16
    instance-of v3, v0, Lcom/badlogic/gdx/utils/IntSet;

    if-eqz v3, :cond_18

    check-cast v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    :goto_8
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_8

    :cond_17
    return-object v0

    :cond_18
    instance-of v3, v0, Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v3, :cond_1a

    check-cast v0, Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_9
    if-eqz v2, :cond_19

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_9

    :cond_19
    return-object v0

    :cond_1a
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_1d

    check-cast v0, Ljava/util/Map;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_a
    if-eqz v2, :cond_1c

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_a

    :cond_1c
    return-object v0

    :cond_1d
    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/Json;->readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :cond_1e
    :goto_c
    const-string v3, "value"

    invoke-virtual {v1, v3, v0, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    move-object v14, v0

    move-object/from16 v0, p1

    :goto_d
    move-object/from16 v16, v3

    if-eqz v0, :cond_21

    iget-object v3, v1, Lcom/badlogic/gdx/utils/Json;->o:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Json$Serializer;

    if-eqz v3, :cond_20

    invoke-interface {v3, v1, v2, v0}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_20
    const-class v3, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-interface {v3, v1, v2}, Lcom/badlogic/gdx/utils/Json$Serializable;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0

    :cond_21
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v3

    move-object/from16 v17, v4

    const-string v4, "Unable to convert value to required type: "

    move-object/from16 v18, v9

    const/4 v9, 0x0

    if-eqz v3, :cond_30

    if-eqz v0, :cond_22

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_23

    :cond_22
    const-class v0, Lcom/badlogic/gdx/utils/Array;

    :cond_23
    const-class v3, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-class v3, Lcom/badlogic/gdx/utils/Array;

    if-ne v0, v3, :cond_24

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    goto :goto_e

    :cond_24
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    :goto_e
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_f
    if-eqz v2, :cond_25

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_f

    :cond_25
    return-object v0

    :cond_26
    const-class v3, Lcom/badlogic/gdx/utils/Queue;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-class v3, Lcom/badlogic/gdx/utils/Queue;

    if-ne v0, v3, :cond_27

    new-instance v0, Lcom/badlogic/gdx/utils/Queue;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Queue;-><init>()V

    goto :goto_10

    :cond_27
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Queue;

    :goto_10
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_11
    if-eqz v2, :cond_28

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Queue;->addLast(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_11

    :cond_28
    return-object v0

    :cond_29
    const-class v3, Ljava/util/Collection;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_12

    :cond_2a
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_12
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_13
    if-eqz v2, :cond_2b

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_13

    :cond_2b
    return-object v0

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v14, :cond_2d

    move-object v14, v0

    :cond_2d
    iget v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-static {v0, v3}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_14
    if-eqz v2, :cond_2e

    add-int/lit8 v3, v9, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v9, v5}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move v9, v3

    goto :goto_14

    :cond_2e
    return-object v0

    :cond_2f
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_30
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eqz v0, :cond_3c

    :try_start_1
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_3c

    if-ne v0, v12, :cond_31

    goto :goto_19

    :cond_31
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_3b

    if-ne v0, v11, :cond_32

    goto :goto_18

    :cond_32
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_3a

    if-ne v0, v8, :cond_33

    goto :goto_17

    :cond_33
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_39

    if-ne v0, v7, :cond_34

    goto :goto_16

    :cond_34
    if-ne v0, v10, :cond_35

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_38

    if-ne v0, v6, :cond_36

    goto :goto_15

    :cond_36
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_37

    if-ne v0, v5, :cond_3d

    :cond_37
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_38
    :goto_15
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_39
    :goto_16
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3a
    :goto_17
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_3b
    :goto_18
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3c
    :goto_19
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_3d
    new-instance v3, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3e
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz v0, :cond_3f

    :try_start_2
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v0, v3, :cond_3f

    move-object/from16 v3, v18

    if-ne v0, v3, :cond_40

    goto :goto_1a

    :catch_2
    move-object/from16 v3, v18

    goto :goto_1b

    :cond_3f
    move-object/from16 v3, v18

    :goto_1a
    :try_start_3
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    :cond_40
    :goto_1b
    new-instance v14, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    goto :goto_1c

    :cond_41
    move-object/from16 v3, v18

    :goto_1c
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v14

    if-eqz v14, :cond_57

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v14

    if-eqz v0, :cond_56

    if-ne v0, v10, :cond_42

    goto/16 :goto_25

    :cond_42
    :try_start_4
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_4d

    if-ne v0, v11, :cond_43

    goto :goto_21

    :cond_43
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_4c

    if-ne v0, v12, :cond_44

    goto :goto_20

    :cond_44
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v10, :cond_4b

    if-ne v0, v8, :cond_45

    goto :goto_1f

    :cond_45
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v8, :cond_4a

    if-ne v0, v7, :cond_46

    goto :goto_1e

    :cond_46
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v7, :cond_49

    if-ne v0, v6, :cond_47

    goto :goto_1d

    :cond_47
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v6, :cond_48

    if-ne v0, v5, :cond_4e

    :cond_48
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_49
    :goto_1d
    invoke-static {v14}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_4a
    :goto_1e
    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4b
    :goto_1f
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_4c
    :goto_20
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_4d
    :goto_21
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    :catch_4
    nop

    :cond_4e
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_55

    if-ne v0, v3, :cond_4f

    goto :goto_24

    :cond_4f
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_54

    move-object/from16 v3, v17

    if-ne v0, v3, :cond_50

    goto :goto_23

    :cond_50
    move-object/from16 v3, v16

    invoke-static {v3, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    array-length v5, v3

    :goto_22
    if-ge v9, v5, :cond_52

    aget-object v6, v3, v9

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Json;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    return-object v6

    :cond_51
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_52
    const-class v3, Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_53

    return-object v14

    :cond_53
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_54
    :goto_23
    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_55
    :goto_24
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_56
    :goto_25
    return-object v14

    :cond_57
    const/4 v0, 0x0

    return-object v0
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

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
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultSerializer(Lcom/badlogic/gdx/utils/Json$Serializer;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/utils/Json$Serializer;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->k:Lcom/badlogic/gdx/utils/Json$Serializer;

    return-void
.end method

.method public setDeprecated(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    if-eqz v0, :cond_0

    iput-boolean p3, v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->c:Z

    return-void

    :cond_0
    new-instance p3, Lcom/badlogic/gdx/utils/SerializationException;

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

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    if-eqz v0, :cond_0

    iput-object p3, v0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->b:Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p3, Lcom/badlogic/gdx/utils/SerializationException;

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

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setEnumNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->i:Z

    return-void
.end method

.method public setIgnoreDeprecated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->g:Z

    return-void
.end method

.method public setIgnoreUnknownFields(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->f:Z

    return-void
.end method

.method public setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->d:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-void
.end method

.method public setQuoteLongValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->e:Z

    return-void
.end method

.method public setReadDeprecated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->h:Z

    return-void
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Json$Serializer<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->o:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSortFields(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->j:Z

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    return-void
.end method

.method public setUsePrototypes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->c:Z

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/utils/JsonWriter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/badlogic/gdx/utils/JsonWriter;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->d:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->e:Z

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->setQuoteLongValues(Z)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/Writer;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p4, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writer(ZLjava/lang/String;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error writing file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    const/4 p4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    iput-object p4, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    iput-object p4, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    throw p1
.end method

.method public writeArrayEnd()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object p1, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .param p4    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_1

    iget-object p2, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->a:Lcom/badlogic/gdx/utils/reflect/Field;

    if-nez p4, :cond_0

    iget-object p4, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->b:Ljava/lang/Class;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

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

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

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

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error accessing field: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/SerializationException;

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

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFields(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, ")"

    const-string v3, " ("

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Json;->c(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Json;->d(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/OrderedMap;->orderedKeys()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v7, :cond_6

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    iget-boolean v12, v1, Lcom/badlogic/gdx/utils/Json;->g:Z

    if-eqz v12, :cond_0

    iget-boolean v12, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->c:Z

    if-eqz v12, :cond_0

    move-object/from16 v13, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    goto/16 :goto_4

    :cond_0
    iget-object v12, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->a:Lcom/badlogic/gdx/utils/reflect/Field;

    move-object/from16 v13, p1

    :try_start_0
    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v0, :cond_5

    add-int/lit8 v15, v10, 0x1

    aget-object v10, v0, v10

    if-nez v14, :cond_1

    if-nez v10, :cond_1

    :goto_1
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    goto :goto_2

    :cond_1
    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    invoke-virtual {v14, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isArray()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isArray()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/badlogic/gdx/utils/Json;->q:[Ljava/lang/Object;

    aput-object v14, v0, v8

    move-object/from16 v17, v5

    iget-object v5, v1, Lcom/badlogic/gdx/utils/Json;->r:[Ljava/lang/Object;

    aput-object v10, v5, v8

    invoke-static {v0, v5}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v10, v15

    goto :goto_4

    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    :cond_4
    move v10, v15

    goto :goto_3

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    :goto_3
    iget-object v0, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v5, v11, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->b:Ljava/lang/Class;

    invoke-virtual {v1, v14, v0, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error accessing field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_6
    return-void
.end method

.method public writeObjectEnd()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->writeType(Ljava/lang/Class;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeObjectStart(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeObjectStart(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeType(Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p1, v0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-class v4, Ljava/lang/Character;

    const-class v5, Ljava/lang/Byte;

    const-class v6, Ljava/lang/Short;

    const-class v7, Ljava/lang/Double;

    const-class v8, Ljava/lang/Long;

    const-class v9, Ljava/lang/Boolean;

    const-class v10, Ljava/lang/String;

    const-class v11, Ljava/lang/Float;

    const-class v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_15

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_36

    :cond_1
    if-eq v2, v10, :cond_36

    if-eq v2, v12, :cond_36

    if-eq v2, v9, :cond_36

    if-eq v2, v11, :cond_36

    if-eq v2, v8, :cond_36

    if-eq v2, v7, :cond_36

    if-eq v2, v6, :cond_36

    if-eq v2, v5, :cond_36

    if-ne v2, v4, :cond_2

    goto/16 :goto_14

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "value"

    if-nez v15, :cond_35

    if-eq v14, v10, :cond_35

    if-eq v14, v12, :cond_35

    if-eq v14, v9, :cond_35

    if-eq v14, v11, :cond_35

    if-eq v14, v8, :cond_35

    if-eq v14, v7, :cond_35

    if-eq v14, v6, :cond_35

    if-eq v14, v5, :cond_35

    if-ne v14, v4, :cond_3

    goto/16 :goto_13

    :cond_3
    :try_start_1
    instance-of v4, v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    if-eqz v4, :cond_4

    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Json$Serializable;->write(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->o:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Json$Serializer;

    if-eqz v4, :cond_5

    invoke-interface {v4, v1, v0, v2}, Lcom/badlogic/gdx/utils/Json$Serializer;->write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void

    :cond_5
    instance-of v4, v0, Lcom/badlogic/gdx/utils/Array;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "\nActual type: "

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    if-eqz v2, :cond_7

    if-eq v14, v2, :cond_7

    :try_start_2
    const-class v4, Lcom/badlogic/gdx/utils/Array;

    if-ne v14, v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialization of an Array other than the known type is not supported.\nKnown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v6, v2, :cond_8

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void

    :cond_9
    instance-of v4, v0, Lcom/badlogic/gdx/utils/Queue;

    if-eqz v4, :cond_d

    if-eqz v2, :cond_b

    if-eq v14, v2, :cond_b

    const-class v4, Lcom/badlogic/gdx/utils/Queue;

    if-ne v14, v4, :cond_a

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialization of a Queue other than the known type is not supported.\nKnown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    check-cast v0, Lcom/badlogic/gdx/utils/Queue;

    iget v2, v0, Lcom/badlogic/gdx/utils/Queue;->size:I

    :goto_3
    if-ge v6, v2, :cond_c

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Queue;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void

    :cond_d
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    if-eqz v4, :cond_10

    const-class v4, Ljava/util/ArrayList;

    if-eq v14, v4, :cond_10

    if-eqz v2, :cond_e

    if-eq v2, v14, :cond_10

    :cond_e
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_5

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    :goto_6
    return-void

    :cond_12
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_15

    if-nez v3, :cond_13

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_7

    :cond_13
    move-object v2, v3

    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    :goto_8
    if-ge v6, v3, :cond_14

    invoke-static {v0, v6}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void

    :cond_15
    instance-of v4, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v4, :cond_18

    if-nez v2, :cond_16

    const-class v2, Lcom/badlogic/gdx/utils/ObjectMap;

    :cond_16
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Json;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_9

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_18
    instance-of v4, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    if-eqz v4, :cond_1b

    if-nez v2, :cond_19

    const-class v2, Lcom/badlogic/gdx/utils/ObjectIntMap;

    :cond_19
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v4, v2, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Json;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_a

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_1b
    instance-of v4, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    if-eqz v4, :cond_1e

    if-nez v2, :cond_1c

    const-class v2, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    :cond_1c
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap;->entries()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v4, v2, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Json;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_b

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_1e
    instance-of v4, v0, Lcom/badlogic/gdx/utils/ObjectSet;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "values"

    if-eqz v4, :cond_21

    if-nez v2, :cond_1f

    :try_start_3
    const-class v2, Lcom/badlogic/gdx/utils/ObjectSet;

    :cond_1f
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_c

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_21
    instance-of v4, v0, Lcom/badlogic/gdx/utils/IntMap;

    if-eqz v4, :cond_24

    if-nez v2, :cond_22

    const-class v2, Lcom/badlogic/gdx/utils/IntMap;

    :cond_22
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget v5, v2, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_24
    instance-of v4, v0, Lcom/badlogic/gdx/utils/LongMap;

    if-eqz v4, :cond_27

    if-nez v2, :cond_25

    const-class v2, Lcom/badlogic/gdx/utils/LongMap;

    :cond_25
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/LongMap$Entry;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-wide v5, v2, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_e

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_27
    instance-of v4, v0, Lcom/badlogic/gdx/utils/IntSet;

    if-eqz v4, :cond_2a

    if-nez v2, :cond_28

    const-class v2, Lcom/badlogic/gdx/utils/IntSet;

    :cond_28
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    check-cast v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v0

    :goto_f
    iget-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v12, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_f

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_2a
    instance-of v4, v0, Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v4, :cond_2d

    if-nez v2, :cond_2b

    const-class v2, Lcom/badlogic/gdx/utils/ArrayMap;

    :cond_2b
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_10
    if-ge v6, v2, :cond_2c

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Json;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v4, v0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_2d
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_30

    if-nez v2, :cond_2e

    const-class v2, Ljava/util/HashMap;

    :cond_2e
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Json;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_11

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_30
    const-class v3, Ljava/lang/Enum;

    invoke-static {v3, v14}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v14}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_31

    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    :cond_31
    iget-object v3, v1, Lcom/badlogic/gdx/utils/Json;->b:Ljava/lang/String;

    if-eqz v3, :cond_33

    if-eqz v2, :cond_32

    if-eq v2, v14, :cond_33

    :cond_32
    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto :goto_12

    :cond_33
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    :goto_12
    return-void

    :cond_34
    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->writeFields(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_35
    :goto_13
    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v13, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void

    :cond_36
    :goto_14
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_15
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_17

    :goto_16
    throw v2

    :goto_17
    goto :goto_16
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p2, p1, p1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->a:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

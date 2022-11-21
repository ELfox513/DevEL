.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;
.super Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->b(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 5

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    if-ne p2, v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iget-object p3, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v4, p3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    if-eq v1, v0, :cond_2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v4, p3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object p3, p3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 0

    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/Json;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->a(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object p1
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object p1

    return-object p1
.end method

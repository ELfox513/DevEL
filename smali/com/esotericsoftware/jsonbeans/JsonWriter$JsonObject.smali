.class Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/jsonbeans/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsonObject"
.end annotation


# instance fields
.field public final a:Z

.field public b:Z

.field public final synthetic c:Lcom/esotericsoftware/jsonbeans/JsonWriter;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/jsonbeans/JsonWriter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->c:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->a:Z

    iget-object p1, p1, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    if-eqz p2, :cond_0

    const/16 p2, 0x5b

    goto :goto_0

    :cond_0
    const/16 p2, 0x7b

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->c:Lcom/esotericsoftware/jsonbeans/JsonWriter;

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/JsonWriter;->a:Ljava/io/Writer;

    iget-boolean v1, p0, Lcom/esotericsoftware/jsonbeans/JsonWriter$JsonObject;->a:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x5d

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

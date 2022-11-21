.class final Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/Kryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSerializerEntry"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lcom/esotericsoftware/kryo/SerializerFactory;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->b:Lcom/esotericsoftware/kryo/SerializerFactory;

    return-void
.end method

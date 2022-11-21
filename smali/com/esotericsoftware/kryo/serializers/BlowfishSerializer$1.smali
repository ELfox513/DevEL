.class Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer$1;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;Ljava/io/OutputStream;I)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer$1;->a:Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;

    invoke-direct {p0, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
